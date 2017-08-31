library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity CSA is 
	generic (Nbits : integer := 32);
	Port (	A:	In	std_logic_vector(Nbits-1  downto 0);
		B:	In	std_logic_vector(Nbits-1  downto 0);
		C:	In	std_logic_vector(Nbits-1 downto 0);
		S:	Out	std_logic_vector(Nbits-1  downto 0);
		Cout:	Out	std_logic_vector(Nbits-1 downto 0));
end CSA; 

architecture struct of CSA is

  component FA is 
	Port (	A:	In	std_logic;
		B:	In	std_logic;
		Ci:	In	std_logic;
		S:	Out	std_logic;
		Co:	Out	std_logic);
  end component; 

begin

GEN_ADD : for i in 0 to Nbits-2 generate
	FullAdd : FA port map (A(i), B(i), C(i), S(i), Cout(i+1));
end generate GEN_ADD;

LastFA : FA port map (A(Nbits-1), B(Nbits-1), C(Nbits-1), S(Nbits-1), open);

Cout(0) <= '0';

end struct;


