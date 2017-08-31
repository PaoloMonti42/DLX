library ieee;
use ieee.std_logic_1164.all;
use work.myTypes.all;

entity logical is
  port (A : in bus32;
        B : in bus32;
        sel : in std_logic_vector(3 downto 0);
        Y : out bus32);
end logical;

architecture behav of logical is

signal l0, l1, l2, l3 : bus32;

begin

  L_0 : for i in 0 to 31 generate
    l0(i) <= not (sel(3) and (not A(i)) and (not B(i)));
  end generate L_0;
  L_1 : for i in 0 to 31 generate
    l1(i) <= not (sel(2) and (not A(i)) and B(i));
  end generate L_1;
  L_2 : for i in 0 to 31 generate
    l2(i) <= not (sel(1) and A(i) and (not B(i)));
  end generate L_2;
  L_3 : for i in 0 to 31 generate
    l3(i) <= not (sel(0) and A(i) and B(i));
  end generate L_3;

  out_nand4 : for i in 0 to 31 generate
    Y(i) <= not (l0(i) and l1(i) and l2(i) and l3(i));
  end generate out_nand4;

end behav;
