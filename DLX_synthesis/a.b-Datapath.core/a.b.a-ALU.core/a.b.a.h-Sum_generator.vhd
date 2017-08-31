library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity sum_generator is 
	generic (Nbits : integer := 32;
		 Nblocks : integer := 8);
	Port (	A:	In	std_logic_vector(Nbits-1  downto 0);
		B:	In	std_logic_vector(Nbits-1  downto 0);
		Carry:	In	std_logic_vector(Nblocks downto 0);
		S:	Out	std_logic_vector(Nbits-1  downto 0);
		Cout:	Out	std_logic);
end sum_generator; 

architecture STRUCTURAL of sum_generator is

  component carry_select is 
	generic (N : integer := 32);
	Port (	A:	In	std_logic_vector(N-1  downto 0);
		B:	In	std_logic_vector(N-1  downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(N-1  downto 0));
  end component; 

  constant radix : integer := Nbits/Nblocks;

begin

  cs_gen : for i in 0 to Nblocks-1 generate
		CS : carry_select generic map(radix) port map (A(i*radix + radix-1 downto i*radix), B(i*radix + radix-1 downto i*radix), Carry(i), S(i*radix + radix-1 downto i*radix));
  end generate cs_gen;

  Cout <= Carry(Nblocks);

end STRUCTURAL;


