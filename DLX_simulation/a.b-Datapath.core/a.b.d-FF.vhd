library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ff is
	port (clk : in std_logic;
			rst : in std_logic;
			d_in : in std_logic;
			d_out : out std_logic);
end ff;

architecture behav of ff is

begin
	process(clk)
	
	begin
	
	if(clk = '1' and clk'event) then
		if(rst = '0') then --active low rst and synch
			d_out <= '0';
		else 
			d_out <= d_in;
		end if;
	end if;
end process;

end behav;

