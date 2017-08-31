library ieee;
use ieee.std_logic_1164.all;

entity counter is
port (  clk, rst : in std_logic;
	tc : out std_logic);
end counter;

architecture rtl of counter is
begin
	process(clk, rst)
	variable i: natural := 3;
	begin
		if (rst = '0') then
			i := 2;
			tc <= '1';
		elsif (clk'event and clk = '1') then
			if (i > 0) then
				i := i - 1;	
			end if;
			if (i = 0) then 
				tc <= '0';
			else
				tc <= '1';
			end if;
		end if;
	end process;
end rtl;
