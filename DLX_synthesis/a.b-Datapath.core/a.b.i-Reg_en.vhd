library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity reg_en is
	generic ( N : integer := 8 );
	port (clk : in std_logic;
			rst : in std_logic;
			en : in std_logic;
			d_in : in std_logic_vector (N-1 downto 0);
			d_out : out std_logic_vector (N-1 downto 0));
end reg_en;

architecture behav of reg_en is

begin
	process(clk)
	
	begin
	
	if(clk = '1' and clk'event) then
		if(rst = '0') then --active low rst and synch
			d_out <= (others => '0');
		else 
			if (en = '1') then
				d_out <= d_in;
			end if;
		end if;
	end if;
end process;

end behav;

