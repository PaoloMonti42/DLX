library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.myTypes.all;

entity stack is
	generic (
		Nbit : integer := 32;
		Nwords : integer := 256
	);
	port (
		clk : 		in std_logic;
		reset : 	in std_logic;
		enable : 	in std_logic;
		rd : 		in std_logic;
		wr : 		in std_logic;
		datain : 	in std_logic_vector((Nbit - 1) downto 0);
		dataout : 	out std_logic_vector((Nbit - 1) downto 0)
	);
end stack;

architecture behav of stack is

	type reg_array is array(0 to Nwords-1) of std_logic_vector(Nbit - 1 downto 0);
 	signal data : reg_array;
begin
	process(clk)
	variable sp : integer := 0;
	begin
		if (clk'event and clk = '1') then
			if (reset = '0') then
				--stack pointer points at the first empty memory location
				sp := 0;
				-- reset everything to 0; not really needed
				data <= (others => (others => '0')); 
			else
				if (enable = '1') then
					if (rd = '1' and wr = '0') then
						-- since sp points at empty, first decrement then read
						sp := sp - 1;
						dataout <= data(sp);
					elsif (wr = '1' and rd = '0') then
						-- since sp points at empty, first write then increment
						data(sp) <= datain;
						sp := sp + 1;
						-- no output when reading
						dataout <= (others => 'Z');
					else
						-- if invalid combination of commands, no output
						dataout <= (others => 'Z');
					end if;
				else
					-- not enabled, no output
					dataout <= (others => 'Z');
				end if;
			end if;
		end if;
	end process;
 
end behav;
