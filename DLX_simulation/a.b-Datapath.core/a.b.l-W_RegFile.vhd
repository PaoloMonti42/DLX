library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all; --include rf_pack to compute the logarithm

entity w_reg_file is
	generic (
		M : integer := 8; --# globals 
		N : integer := 8; --# registers for each group (IN, OUT, locals)
		F : integer := 16; --# windows
		Nbit : integer := 32 --# bits of incoming and outgoing data
	);
	port (
		clk : 		in std_logic;
		reset : 	in std_logic;
		enable : 	in std_logic;
		rd1 : 		in std_logic;
		rd2 : 		in std_logic;
		wr : 		in std_logic;
		add_wr : 	in std_logic_vector((log2f(3 * N + M) - 1) downto 0); --address of write
		add_rd1 : 	in std_logic_vector((log2f(3 * N + M) - 1) downto 0); --address of read from port 1
		add_rd2 : 	in std_logic_vector((log2f(3 * N + M) - 1) downto 0); --address of read from port 2
		datain : 	in std_logic_vector((Nbit - 1) downto 0);
		out1 : 		out std_logic_vector((Nbit - 1) downto 0);
		out2 : 		out std_logic_vector((Nbit - 1) downto 0);
		call : 		in std_logic;
		ret : 		in std_logic;
		spill : 	out std_logic;
		fill : 		out std_logic;
		to_mem : 	out std_logic_vector((Nbit - 1) downto 0); --data going to memory at every spill operation
		from_mem : 	in std_logic_vector((NBit - 1) downto 0) --data coming from memory at every fill operation
	);
end w_reg_file;

architecture behav of w_reg_file is

	subtype reg_addr is natural range 0 to (2 * N * F + M - 1); -- tot # registers is 2 * reg per group * windows + globals (IN and OUT overlap)
	type reg_array is array(reg_addr) of std_logic_vector(Nbit - 1 downto 0); -- array of signals to simulate registers
	signal registers : reg_array;
	signal cwp, swp : std_logic_vector(log2f(2 * N * (F - 1)) downto 0); 	-- Current Window Pointer indicates the address of the first register of the active window; 
										-- Saved Window Pointer indicates the address of the first register of the last spilled window
										-- Here we assume 2*N*F is a power of two so that cwp and swp automatically wrap around their bounds when incremented or decremented, since they are std_logic_vectors

	signal imspilling, imfilling : std_logic; --signals that will be assigned to 'fill' and 'spill' since they are outputs and cannot be read
 
begin
reg : process (clk, reset, enable, rd1, rd2, wr, add_wr, add_rd1, add_rd2, datain, call, ret, from_mem)
variable i : integer := 1; --variable used to keep track of the number of registers already filled/spilled
variable first, moved : integer;
variable lastcwp : std_logic_vector(log2f(2 * N * (F - 1)) downto 0);
begin
	--if (clk'EVENT and clk = '1') then --everything is synchrounous to the rising edge of clk
		
		if (reset = '0') then
			registers <= (others => (others => '0')); 		-- this is how the reset should work
			for i in 0 to 2*N*F+M-1 loop
				registers(i) <= conv_std_logic_vector(i, Nbit); -- for debug purposes, this is very convenient
			end loop;
			cwp <= (others => '0');
			swp <= conv_std_logic_vector(2 * N * (F-2), swp'high+1); -- we decided that a spill is necessary before accessing the last window, or the subroutine could modify its OUT registers, effectively corrupting the IN registers of the first window. If this is not necessary, the reset value of swp should be 2 * N * (F-1)
			imfilling <= '0';
			imspilling <= '0';
		else
			if (imspilling = '0' and imfilling = '0') then
				to_mem <= (others => 'Z'); --if I am not spilling nor filling the output towards the memory is at high impedance
				if (clk = '1' and clk'event) then		
					if (moved > 0) then
						moved := moved - 1;
					end if;
					if (wr = '1') then
						if (conv_integer(add_wr) /= 0) then
							if (add_wr >= 3 * N) then --I am writing to globals
								registers(conv_integer(add_wr) + (2 * N * F) - (3 * N)) <= datain; --we convert add_wr into the correct address for globals (which are at the "bottom" of the register file): 2*N*F (bottom of the reg file) - 3*N (IN, OUT and globals of the currently active window). 
							elsif (moved > 0) then
								registers(conv_integer(add_wr) + conv_integer(lastcwp)) <= datain;
							else
								registers((conv_integer(add_wr) + conv_integer(cwp)) mod (2 * N * F)) <= datain; --cwp is summed to add_wr to write the write to the correct register in the "non-shadowed" part of reg file. Mod allows cwp to wrap as soon as the end of reg file (minus globals) is reached.
							end if;
						end if;
					end if;

					if (call = '1') then 
						if (cwp = swp) then	-- If they are pointing to the same window, I need to spill before continuing
							imspilling <= '1';
							i := conv_integer(cwp+2*N); -- the first register to spill is the first of the next window
							to_mem <= registers(i); -- I output to the memory a cycle in advance to allow synchronization with the memory
						end if;
						lastcwp := cwp;
						moved := 3;
						cwp <= cwp + 2 * N; --cwp is updated to the next window in any case
						

					elsif (ret = '1') then --If i'm returning from a subroutine
						if (swp = cwp - 4*N) then -- If cwp is about to move into the location pointed by sw, I cannot continue before filling
							imfilling <= '1';
							i := conv_integer(cwp) - N - 1; -- the first register to fill is the last of the INs of the current window
							first := 1;	-- flag to discard the first value coming from the memory 
						end if;
						cwp <= cwp - 2 * N; --cwp is updated to the previous window in case
						lastcwp := cwp;
						moved := 3;
						
					end if;
 				end if;
				if (enable = '1') then
					if (rd1 = '1') then
						if (conv_integer(add_rd1) = 0) then
							out1 <= conv_std_logic_vector(0, Nbit);
						else
							if(wr = '1' and add_wr = add_rd1) then
								out1 <= datain; 
							elsif (add_rd1 >= 3 * N) then --I am reading globals
								out1 <= registers(conv_integer(add_rd1) + (2 * N * F) - (3 * N));
							else
								out1 <= registers((conv_integer(add_rd1) + conv_integer(cwp)) mod (2 * N * F));	
							end if;
						end if;
					end if;
 
					if (rd2 = '1') then
						if (conv_integer(add_rd2) = 0) then
							out2 <= conv_std_logic_vector(0, Nbit);
						else
							if(wr = '1' and add_wr = add_rd2) then
								out2 <= datain; 
							elsif (add_rd2 >= 3 * N) then --I am reading globals
								out2 <= registers(conv_integer(add_rd2) + (2 * N * F) - (3 * N));
							else
								out2 <= registers((conv_integer(add_rd2) + conv_integer(cwp)) mod (2 * N * F));
							end if;
						end if;
					end if;
				else
					--out1 <= (others => 'Z'); --if the enable is 0 the outputs are at high impedance
					--out2 <= (others => 'Z');
				end if;
			elsif (imspilling = '1' and clk = '1' and clk'event) then
				if (i /= (conv_integer(cwp)+3*N-1) mod (2*N*F)) then -- we stop when i has done all the 3*N registers
					i := i + 1;
					i := i mod (2*N*F);	-- wrap around and avoid globals
					to_mem <= registers(i);
				else
					imspilling <= '0'; -- spilling is over
					swp <= cwp;	   -- swp is updated
					to_mem <= (others => 'Z');
				end if;
			elsif (imfilling = '1' and clk = '1' and clk'event) then
				if (i /= cwp-2*N+1) then	-- we stop when i has done all the 3*N registers backwards
					if first = 1 then
						first := 0;  -- we want to discard the first value from the from_mem bus, because the memory hasn't responded yet 
					else
						registers(i) <= from_mem;
						i := i - 1;
						i := (i+2*N*F) mod (2*N*F); -- wrap around and avoid globals
					end if;
				else	
					imfilling <= '0';  -- filling is over
					swp <= cwp - 2*N;  -- swp is updated
				end if;
			end if;
		end if;
	--end if;
end process;

spill <= imspilling;
fill <= imfilling;

 
end behav;
