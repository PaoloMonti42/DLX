library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity carry_select is 
	generic (N : integer := 32);
	Port (	A:	In	std_logic_vector(N-1  downto 0);
		B:	In	std_logic_vector(N-1  downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(N-1  downto 0));
end carry_select; 

architecture STRUCTURAL of carry_select is

  component rca_generic is 
	generic (N : integer := 16);
	Port (	A:	In	std_logic_vector(N-1  downto 0);
		B:	In	std_logic_vector(N-1  downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(N-1  downto 0);
		Co:	Out	std_logic);
  end component; 

  component MUX21_GENERIC is
	Generic (N: integer:= 8);
	Port (	A:	In	std_logic_vector(N-1 downto 0) ;
		B:	In	std_logic_vector(N-1 downto 0);
		SEL:	In	std_logic;
		Y:	Out	std_logic_vector(N-1 downto 0));
  end component;

  signal sum_carry0, sum_carry1 : std_logic_vector(N-1 downto 0);

begin

  

  RCA0 : rca_generic generic map(N) port map (A, B, '0', sum_carry0, open);
  RCA1 : rca_generic generic map(N) port map (A, B, '1', sum_carry1, open);

  MUX : mux21_generic generic map(N) port map(sum_carry1, sum_carry0, Ci, S);

end STRUCTURAL;


