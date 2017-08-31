library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity comparator is
  port(C : in std_logic;
       Sum : in bus32;
       sign : in std_logic;
       gt : out std_logic;
       get : out std_logic;
       lt : out std_logic;
       let : out std_logic;
       eq : out std_logic;
       neq : out std_logic
        );
end comparator;

architecture behav of comparator is
  signal Z, nC : std_logic;
  signal tmp : bus32;

begin
  Z <= '1' when Sum = x"00000000" else '0';
  nC <= C xor sign;

  gt <= nC and (not Z);
  get <= nC;
  lt <= not nC;
  let <= (not nC) or Z;
  eq <= Z;
  neq <= not Z;

end behav;
