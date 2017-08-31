library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.myTypes.all;

entity PC_incr is
	port(PC : in bus32;
	     NPC : out bus32);
end PC_incr;

architecture behav of PC_incr is
begin

NPC <= PC + x"00000004";

end behav;
