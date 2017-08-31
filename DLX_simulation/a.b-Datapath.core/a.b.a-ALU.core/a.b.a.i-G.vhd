library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity G is 
	Port (	gleft:	In	std_logic;
		gright:	In	std_logic;
		pleft:	In	std_logic;
		gout:	Out	std_logic);
end G; 

architecture STRUCTURAL of G is


begin

  gout <= gleft or (gright and pleft);

end STRUCTURAL;


