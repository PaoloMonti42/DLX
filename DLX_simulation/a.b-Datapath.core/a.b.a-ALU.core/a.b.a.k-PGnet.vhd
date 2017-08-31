library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity PGnet_block is 
	Port (	A:	In	std_logic;
		B:	In	std_logic;
		pout:	Out	std_logic;
		gout:	Out	std_logic);
end PGnet_block; 

architecture STRUCTURAL of PGnet_block is


begin

  gout <= A and B;
  pout <= A xor B;

end STRUCTURAL;


