library ieee;
use ieee.std_logic_1164.all;

entity generic_xor is
generic (N : integer := 32);
port (A : in std_logic_vector (N-1 downto 0);
      B : in std_logic;
      Y : out std_logic_vector (N-1 downto 0));
end generic_xor;

architecture struct of generic_xor is

component xor_gate is
port (A : in std_logic;
      B : in std_logic;
      Y : out std_logic);
end component;

begin

X : for i in 0 to N-1 generate
  X_gate : xor_gate port map (A(i), B,Y(i));

end generate X;

end struct;
