library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity adder_sub is
	generic (N : integer := 32);
	Port (	A:	In	std_logic_vector(N-1  downto 0);
		B:	In	std_logic_vector(N-1  downto 0);
		Ci:	In	std_logic;
		Cout:	Out	std_logic;
    Sum: out std_logic_vector(N-1 downto 0));
end adder_sub;


architecture struct of adder_sub is


component cla_adder is
	generic (N : integer := 32);
	Port (	A:	In	std_logic_vector(N-1  downto 0);
		B:	In	std_logic_vector(N-1  downto 0);
		Ci:	In	std_logic;
		Cout:	Out	std_logic;
                Sum: out std_logic_vector(N-1 downto 0));
end component;

component generic_xor is
generic (N : integer := 32);
port (A : in std_logic_vector (N-1 downto 0);
      B : in std_logic;
      Y : out std_logic_vector (N-1 downto 0));
end component;

signal B_in : std_logic_vector(N-1 downto 0);

begin

xor_g : generic_xor generic map (N) port map (B, Ci, B_in);
add : cla_adder generic map (N) port map (A, B_in, Ci, Cout, Sum);

end struct;
