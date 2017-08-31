library ieee;
use ieee.std_logic_1164.all;
use work.myTypes.all;

entity sign_ext is
	generic (Nstart : integer := 16;
		    Nend : integer := 32);
	port(Ain : in std_logic_Vector(Nstart- 1 downto 0);
	     Aout : out std_logic_Vector(Nend- 1 downto 0)); 
end sign_ext;

architecture behav of sign_ext is

begin
	Aout <= (Nend-1 downto Nstart => Ain(Nstart-1)) & Ain;
end behav; 
