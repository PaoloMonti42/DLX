library ieee;
use ieee.std_logic_1164.all;

entity MUX21_GENERIC is
	Generic (N: integer:= 8);
	Port (	A:	In	std_logic_vector(N-1 downto 0) ;
		B:	In	std_logic_vector(N-1 downto 0);
		SEL:	In	std_logic;
		Y:	Out	std_logic_vector(N-1 downto 0));
end MUX21_GENERIC;

architecture struct of MUX21_GENERIC is

 component mux21
    port (A : in  std_logic;
      B : in  std_logic;
      S : in std_logic;
      Y : out std_logic);
  end component;

begin  

 NMUX: for i in 0 to N-1 generate
   M: mux21 port map (
     A(i), B(i), SEL, Y(i));
 end generate NMUX;

end struct;

