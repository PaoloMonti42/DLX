library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use WORK.all;
use WORK.myTypes.all;

entity DRAM is
	generic(N: integer := 65536);
	port (  clk: 		IN std_logic;
		rst: 		IN std_logic;
		--enable: 	IN std_logic;
		WR: 		IN std_logic;
		sel_store:	IN std_logic_vector(1 downto 0);
		sel_load:	IN std_logic_vector(2 downto 0); 
		addr:	 	IN std_logic_vector((log2f(N) - 1) downto 0);
		d_in: 		IN bus32;
		d_out: 		OUT bus32);
end DRAM;

architecture behav of DRAM is

	type mem is array(0 to N-1) of bus32; 
	signal memory : mem; 

	
begin 
	rw: process(rst, wr, sel_store, sel_load, addr, d_in, clk)
        begin 
		
			if (rst = '0') then
				memory <= (others =>(others => '0'));
				d_out <= (others => 'Z');
			else		
				if (clk = '1' and clk'event) then
					if (WR = '1') then  
						case sel_store is
							when "11" =>  	-- executing a SW
								memory(conv_integer(addr)) <= d_in;
							when "01" =>	-- executing a SH
								memory(conv_integer(addr))(15 downto 0) <= d_in(15 downto 0);
							when "10" =>	-- executing a SB
								memory(conv_integer(addr))(7 downto 0) <= d_in(7  downto 0);
							when others =>  NULL;
						end case;
					end if;
				end if;
				if (WR = '0') then 
					case sel_load is
						when "111" =>  	-- executing a LW
								d_out <= memory(conv_integer(addr));
						when "101" =>	-- executing a LH
								d_out <= (31 downto 16 => memory(conv_integer(addr))(15)) & memory(conv_integer(addr))(15 downto 0);
						when "110" =>	-- executing a LB
								d_out <= (31 downto 8 => memory(conv_integer(addr))(7)) & memory(conv_integer(addr))(7 downto 0);  			
						when "001" =>	-- executing a LHU
								d_out <= x"0000" & memory(conv_integer(addr))(15 downto 0);
						when "010" =>	-- executing a LBU
								d_out <= x"000000" & memory(conv_integer(addr))(7 downto 0); 
						when others =>  NULL;
					end case;
				end if;
			end if;
		--end if;
     	end process;
end behav;


