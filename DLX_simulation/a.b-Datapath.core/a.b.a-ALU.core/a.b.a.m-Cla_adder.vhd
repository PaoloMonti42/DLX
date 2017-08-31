library ieee;  
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity cla_adder is 
	generic (N : integer := 32);
	Port (	A:	In	std_logic_vector(N-1  downto 0);
		B:	In	std_logic_vector(N-1  downto 0);
		Ci:	In	std_logic;
		Cout:	Out	std_logic;
                Sum: out std_logic_vector(N-1 downto 0));
end cla_adder;

architecture struct of cla_adder is


  component carry_generator
	generic (N : integer := 32;
		 Nblocks : integer := 8);
	Port (	A:	In	std_logic_vector(N-1  downto 0);
		B:	In	std_logic_vector(N-1  downto 0);
		Ci:	In	std_logic;
		Cout:	Out	std_logic_vector(Nblocks  downto 0));
end component;

        
component sum_generator
	generic (Nbits : integer := 32;
		 Nblocks : integer := 8);
	Port (	A:	In	std_logic_vector(Nbits-1  downto 0);
		B:	In	std_logic_vector(Nbits-1  downto 0);
		Carry:	In	std_logic_vector(Nblocks downto 0);
		S:	Out	std_logic_vector(Nbits-1  downto 0);
		Cout:	Out	std_logic);
end component;

constant Nblocks : integer := N/4;

signal Carry : std_logic_vector(Nblocks downto 0);

begin

  CG : carry_generator generic map (N, Nblocks) port map (A, B, Ci, Carry);
  SG: sum_generator generic map (N, Nblocks) port map (A, B, Carry, Sum, Cout);

end struct;
