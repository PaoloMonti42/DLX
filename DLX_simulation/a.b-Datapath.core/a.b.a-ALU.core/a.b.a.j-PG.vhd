library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity PG is 
	Port (	gleft:	In	std_logic;
		gright:	In	std_logic;
		pleft:	In	std_logic;
		pright:	In	std_logic;
		pout:	Out	std_logic;
		gout:	Out	std_logic);
end PG; 

architecture STRUCTURAL of PG is


begin

  gout <= gleft or (gright and pleft);
  pout <= pleft and pright;

end STRUCTURAL;


