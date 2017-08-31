library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity reg is
	generic ( N : integer := 8 );
	port (clk : in std_logic;
			rst : in std_logic;
			d_in : in std_logic_vector (N-1 downto 0);
			d_out : out std_logic_vector (N-1 downto 0));
end reg;

architecture behav of reg is

begin
	process(clk)
	
	begin
	
	if(clk = '1' and clk'event) then
		if(rst = '0') then --active high rst and synch
			d_out <= (others => '0');
		else 
			d_out <= d_in;
		end if;
	end if;
end process;

end behav;

