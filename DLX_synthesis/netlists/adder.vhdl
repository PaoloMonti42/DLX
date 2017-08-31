
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_cla_adder_N32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_cla_adder_N32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_15 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_15;

architecture SYN_STRUCTURAL of rca_generic_N4_15 is

   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_60 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_59 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_58 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_57 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_14;

architecture SYN_STRUCTURAL of rca_generic_N4_14 is

   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_56 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_55 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_54 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_53 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_13;

architecture SYN_STRUCTURAL of rca_generic_N4_13 is

   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_52 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_51 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_50 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_49 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_12;

architecture SYN_STRUCTURAL of rca_generic_N4_12 is

   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_48 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_47 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_46 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_45 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_11;

architecture SYN_STRUCTURAL of rca_generic_N4_11 is

   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_44 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_43 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_42 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_41 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_10;

architecture SYN_STRUCTURAL of rca_generic_N4_10 is

   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_40 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_39 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_38 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_37 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_9;

architecture SYN_STRUCTURAL of rca_generic_N4_9 is

   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_36 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_35 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_34 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_33 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_8;

architecture SYN_STRUCTURAL of rca_generic_N4_8 is

   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_7;

architecture SYN_STRUCTURAL of rca_generic_N4_7 is

   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_28 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_27 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_26 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_25 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_6;

architecture SYN_STRUCTURAL of rca_generic_N4_6 is

   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_24 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_23 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_22 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_21 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_5;

architecture SYN_STRUCTURAL of rca_generic_N4_5 is

   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_20 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_19 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_18 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_17 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_4;

architecture SYN_STRUCTURAL of rca_generic_N4_4 is

   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_3;

architecture SYN_STRUCTURAL of rca_generic_N4_3 is

   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_12 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_11 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_10 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_9 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_2;

architecture SYN_STRUCTURAL of rca_generic_N4_2 is

   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_8 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_7 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_6 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_5 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_1;

architecture SYN_STRUCTURAL of rca_generic_N4_1 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_4 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_3 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_2 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_1 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_26 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_26;

architecture SYN_STRUCTURAL of PG_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => gout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);
   U3 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_25 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_25;

architecture SYN_STRUCTURAL of PG_25 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => gout);
   U2 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U3 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n3);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_24 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_24;

architecture SYN_STRUCTURAL of PG_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => gout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);
   U3 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_23 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_23;

architecture SYN_STRUCTURAL of PG_23 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => gout);
   U2 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U3 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n3);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_22 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_22;

architecture SYN_STRUCTURAL of PG_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => pleft, A2 => gleft, ZN => n2);
   U2 : NOR2_X1 port map( A1 => gright, A2 => gleft, ZN => n3);
   U3 : NOR2_X1 port map( A1 => n2, A2 => n3, ZN => gout);
   U4 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_21 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_21;

architecture SYN_STRUCTURAL of PG_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n2, B2 => n3, A => n4, ZN => gout);
   U2 : INV_X1 port map( A => pleft, ZN => n2);
   U3 : INV_X1 port map( A => gright, ZN => n3);
   U4 : INV_X1 port map( A => gleft, ZN => n4);
   U5 : AND2_X1 port map( A1 => pleft, A2 => pright, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_20 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_20;

architecture SYN_STRUCTURAL of PG_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => pleft, A2 => gleft, ZN => n2);
   U2 : NOR2_X1 port map( A1 => gright, A2 => gleft, ZN => n3);
   U3 : NOR2_X1 port map( A1 => n2, A2 => n3, ZN => gout);
   U4 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_19 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_19;

architecture SYN_STRUCTURAL of PG_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n2, A2 => n3, ZN => gout);
   U2 : NAND2_X1 port map( A1 => pleft, A2 => gright, ZN => n2);
   U3 : INV_X1 port map( A => gleft, ZN => n3);
   U4 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_18 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_18;

architecture SYN_STRUCTURAL of PG_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n2, B2 => n3, A => n4, ZN => gout);
   U2 : INV_X1 port map( A => gright, ZN => n2);
   U3 : INV_X1 port map( A => pleft, ZN => n3);
   U4 : INV_X1 port map( A => gleft, ZN => n4);
   U5 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_17 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_17;

architecture SYN_STRUCTURAL of PG_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n2, B2 => n3, A => n4, ZN => gout);
   U2 : INV_X1 port map( A => pleft, ZN => n2);
   U3 : INV_X1 port map( A => gright, ZN => n3);
   U4 : INV_X1 port map( A => gleft, ZN => n4);
   U5 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_16 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_16;

architecture SYN_STRUCTURAL of PG_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => gout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);
   U3 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_15 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_15;

architecture SYN_STRUCTURAL of PG_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => gout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);
   U3 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_14 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_14;

architecture SYN_STRUCTURAL of PG_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => gout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);
   U3 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_13 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_13;

architecture SYN_STRUCTURAL of PG_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => gout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);
   U3 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_12 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_12;

architecture SYN_STRUCTURAL of PG_12 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => pleft, A2 => gleft, ZN => n2);
   U2 : NOR2_X1 port map( A1 => gright, A2 => gleft, ZN => n3);
   U3 : NOR2_X1 port map( A1 => n2, A2 => n3, ZN => gout);
   U4 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_11 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_11;

architecture SYN_STRUCTURAL of PG_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n2, B2 => n3, A => n4, ZN => gout);
   U2 : INV_X1 port map( A => gright, ZN => n2);
   U3 : INV_X1 port map( A => pleft, ZN => n3);
   U4 : INV_X1 port map( A => gleft, ZN => n4);
   U5 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_10 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_10;

architecture SYN_STRUCTURAL of PG_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => pleft, A2 => gleft, ZN => n2);
   U2 : NOR2_X1 port map( A1 => gright, A2 => gleft, ZN => n3);
   U3 : NOR2_X1 port map( A1 => n2, A2 => n3, ZN => gout);
   U4 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_9 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_9;

architecture SYN_STRUCTURAL of PG_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => pleft, A2 => gleft, ZN => n2);
   U2 : NOR2_X1 port map( A1 => gright, A2 => gleft, ZN => n3);
   U3 : NOR2_X1 port map( A1 => n2, A2 => n3, ZN => gout);
   U4 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_8 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_8;

architecture SYN_STRUCTURAL of PG_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n2, B2 => n3, A => n4, ZN => gout);
   U2 : INV_X1 port map( A => gright, ZN => n2);
   U3 : INV_X1 port map( A => pleft, ZN => n3);
   U4 : INV_X1 port map( A => gleft, ZN => n4);
   U5 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_7 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_7;

architecture SYN_STRUCTURAL of PG_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => gout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);
   U3 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_6 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_6;

architecture SYN_STRUCTURAL of PG_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => gout);
   U3 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_5 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_5;

architecture SYN_STRUCTURAL of PG_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n2, B2 => n3, A => n4, ZN => gout);
   U2 : INV_X1 port map( A => gright, ZN => n2);
   U3 : INV_X1 port map( A => pleft, ZN => n3);
   U4 : INV_X1 port map( A => gleft, ZN => n4);
   U5 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_4 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_4;

architecture SYN_STRUCTURAL of PG_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U2 : INV_X1 port map( A => n3, ZN => gout);
   U3 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_3 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_3;

architecture SYN_STRUCTURAL of PG_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U2 : INV_X1 port map( A => n3, ZN => gout);
   U3 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_2 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_2;

architecture SYN_STRUCTURAL of PG_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => n2, B2 => n3, A => n4, ZN => gout);
   U2 : INV_X1 port map( A => gright, ZN => n2);
   U3 : INV_X1 port map( A => gleft, ZN => n3);
   U4 : NOR2_X1 port map( A1 => pleft, A2 => gleft, ZN => n4);
   U5 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_1 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_1;

architecture SYN_STRUCTURAL of PG_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U2 : INV_X1 port map( A => n3, ZN => gout);
   U3 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity G_9 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_9;

architecture SYN_STRUCTURAL of G_9 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => n2, B2 => n3, A => n4, ZN => gout);
   U2 : INV_X1 port map( A => gright, ZN => n2);
   U3 : INV_X1 port map( A => gleft, ZN => n3);
   U4 : NOR2_X1 port map( A1 => pleft, A2 => gleft, ZN => n4);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity G_8 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_8;

architecture SYN_STRUCTURAL of G_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity G_7 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_7;

architecture SYN_STRUCTURAL of G_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => gout);
   U2 : NAND2_X1 port map( A1 => gright, A2 => pleft, ZN => n3);
   U3 : INV_X1 port map( A => gleft, ZN => n4);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity G_6 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_6;

architecture SYN_STRUCTURAL of G_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => gout);
   U2 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n3);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity G_5 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_5;

architecture SYN_STRUCTURAL of G_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity G_4 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_4;

architecture SYN_STRUCTURAL of G_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity G_3 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_3;

architecture SYN_STRUCTURAL of G_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity G_2 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_2;

architecture SYN_STRUCTURAL of G_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => gout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n3);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity G_1 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_1;

architecture SYN_STRUCTURAL of G_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => gout);
   U2 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n3);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_31 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_31;

architecture SYN_STRUCTURAL of PGnet_block_31 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_30 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_30;

architecture SYN_STRUCTURAL of PGnet_block_30 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_29 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_29;

architecture SYN_STRUCTURAL of PGnet_block_29 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_28 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_28;

architecture SYN_STRUCTURAL of PGnet_block_28 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_27 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_27;

architecture SYN_STRUCTURAL of PGnet_block_27 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_26 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_26;

architecture SYN_STRUCTURAL of PGnet_block_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_25 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_25;

architecture SYN_STRUCTURAL of PGnet_block_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_24 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_24;

architecture SYN_STRUCTURAL of PGnet_block_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_23 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_23;

architecture SYN_STRUCTURAL of PGnet_block_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_22 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_22;

architecture SYN_STRUCTURAL of PGnet_block_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_21 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_21;

architecture SYN_STRUCTURAL of PGnet_block_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_20 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_20;

architecture SYN_STRUCTURAL of PGnet_block_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_19 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_19;

architecture SYN_STRUCTURAL of PGnet_block_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_18 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_18;

architecture SYN_STRUCTURAL of PGnet_block_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_17 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_17;

architecture SYN_STRUCTURAL of PGnet_block_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_16 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_16;

architecture SYN_STRUCTURAL of PGnet_block_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_15 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_15;

architecture SYN_STRUCTURAL of PGnet_block_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_14 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_14;

architecture SYN_STRUCTURAL of PGnet_block_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_13 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_13;

architecture SYN_STRUCTURAL of PGnet_block_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_12 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_12;

architecture SYN_STRUCTURAL of PGnet_block_12 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_11 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_11;

architecture SYN_STRUCTURAL of PGnet_block_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_10 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_10;

architecture SYN_STRUCTURAL of PGnet_block_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_9 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_9;

architecture SYN_STRUCTURAL of PGnet_block_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_8 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_8;

architecture SYN_STRUCTURAL of PGnet_block_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_7 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_7;

architecture SYN_STRUCTURAL of PGnet_block_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_6 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_6;

architecture SYN_STRUCTURAL of PGnet_block_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_5 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_5;

architecture SYN_STRUCTURAL of PGnet_block_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_4 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_4;

architecture SYN_STRUCTURAL of PGnet_block_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_3 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_3;

architecture SYN_STRUCTURAL of PGnet_block_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_2 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_2;

architecture SYN_STRUCTURAL of PGnet_block_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_1 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_1;

architecture SYN_STRUCTURAL of PGnet_block_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_95 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_95;

architecture SYN_ARCH1 of ND2_95 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_94 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_94;

architecture SYN_ARCH1 of ND2_94 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_93 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_93;

architecture SYN_ARCH1 of ND2_93 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_92 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_92;

architecture SYN_ARCH1 of ND2_92 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_91 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_91;

architecture SYN_ARCH1 of ND2_91 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_90 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_90;

architecture SYN_ARCH1 of ND2_90 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_89 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_89;

architecture SYN_ARCH1 of ND2_89 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_88 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_88;

architecture SYN_ARCH1 of ND2_88 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_87 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_87;

architecture SYN_ARCH1 of ND2_87 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_86 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_86;

architecture SYN_ARCH1 of ND2_86 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_85 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_85;

architecture SYN_ARCH1 of ND2_85 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_84 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_84;

architecture SYN_ARCH1 of ND2_84 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_83 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_83;

architecture SYN_ARCH1 of ND2_83 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_82 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_82;

architecture SYN_ARCH1 of ND2_82 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_81 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_81;

architecture SYN_ARCH1 of ND2_81 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_80 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_80;

architecture SYN_ARCH1 of ND2_80 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_79 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_79;

architecture SYN_ARCH1 of ND2_79 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_78 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_78;

architecture SYN_ARCH1 of ND2_78 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_77 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_77;

architecture SYN_ARCH1 of ND2_77 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_76 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_76;

architecture SYN_ARCH1 of ND2_76 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_75 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_75;

architecture SYN_ARCH1 of ND2_75 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_74 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_74;

architecture SYN_ARCH1 of ND2_74 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_73 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_73;

architecture SYN_ARCH1 of ND2_73 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_72 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_72;

architecture SYN_ARCH1 of ND2_72 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_71 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_71;

architecture SYN_ARCH1 of ND2_71 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_70 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_70;

architecture SYN_ARCH1 of ND2_70 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_69 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_69;

architecture SYN_ARCH1 of ND2_69 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_68 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_68;

architecture SYN_ARCH1 of ND2_68 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_67 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_67;

architecture SYN_ARCH1 of ND2_67 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_66 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_66;

architecture SYN_ARCH1 of ND2_66 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_65 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_65;

architecture SYN_ARCH1 of ND2_65 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_64 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_64;

architecture SYN_ARCH1 of ND2_64 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_63 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_63;

architecture SYN_ARCH1 of ND2_63 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_62 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_62;

architecture SYN_ARCH1 of ND2_62 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_61 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_61;

architecture SYN_ARCH1 of ND2_61 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_60 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_60;

architecture SYN_ARCH1 of ND2_60 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_59 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_59;

architecture SYN_ARCH1 of ND2_59 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_58 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_58;

architecture SYN_ARCH1 of ND2_58 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_57 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_57;

architecture SYN_ARCH1 of ND2_57 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_56 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_56;

architecture SYN_ARCH1 of ND2_56 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_55 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_55;

architecture SYN_ARCH1 of ND2_55 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_54 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_54;

architecture SYN_ARCH1 of ND2_54 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_53 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_53;

architecture SYN_ARCH1 of ND2_53 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_52 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_52;

architecture SYN_ARCH1 of ND2_52 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_51 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_51;

architecture SYN_ARCH1 of ND2_51 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_50 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_50;

architecture SYN_ARCH1 of ND2_50 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_49 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_49;

architecture SYN_ARCH1 of ND2_49 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_48 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_48;

architecture SYN_ARCH1 of ND2_48 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_47 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_47;

architecture SYN_ARCH1 of ND2_47 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_46 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_46;

architecture SYN_ARCH1 of ND2_46 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_45 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_45;

architecture SYN_ARCH1 of ND2_45 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_44 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_44;

architecture SYN_ARCH1 of ND2_44 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_43 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_43;

architecture SYN_ARCH1 of ND2_43 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_42 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_42;

architecture SYN_ARCH1 of ND2_42 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_41 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_41;

architecture SYN_ARCH1 of ND2_41 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_40 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_40;

architecture SYN_ARCH1 of ND2_40 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_39 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_39;

architecture SYN_ARCH1 of ND2_39 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_38 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_38;

architecture SYN_ARCH1 of ND2_38 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_37 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_37;

architecture SYN_ARCH1 of ND2_37 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_36 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_36;

architecture SYN_ARCH1 of ND2_36 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_35 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_35;

architecture SYN_ARCH1 of ND2_35 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_34 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_34;

architecture SYN_ARCH1 of ND2_34 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_33 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_33;

architecture SYN_ARCH1 of ND2_33 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_32 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_32;

architecture SYN_ARCH1 of ND2_32 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_31 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_31;

architecture SYN_ARCH1 of ND2_31 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_30 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_30;

architecture SYN_ARCH1 of ND2_30 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_29 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_29;

architecture SYN_ARCH1 of ND2_29 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_28 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_28;

architecture SYN_ARCH1 of ND2_28 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_27 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_27;

architecture SYN_ARCH1 of ND2_27 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_26 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_26;

architecture SYN_ARCH1 of ND2_26 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_25 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_25;

architecture SYN_ARCH1 of ND2_25 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_24 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_24;

architecture SYN_ARCH1 of ND2_24 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_23 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_23;

architecture SYN_ARCH1 of ND2_23 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_22 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_22;

architecture SYN_ARCH1 of ND2_22 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_21 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_21;

architecture SYN_ARCH1 of ND2_21 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_20 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_20;

architecture SYN_ARCH1 of ND2_20 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_19 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_19;

architecture SYN_ARCH1 of ND2_19 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_18 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_18;

architecture SYN_ARCH1 of ND2_18 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_17 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_17;

architecture SYN_ARCH1 of ND2_17 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_16 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_16;

architecture SYN_ARCH1 of ND2_16 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_15 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_15;

architecture SYN_ARCH1 of ND2_15 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_14 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_14;

architecture SYN_ARCH1 of ND2_14 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_13 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_13;

architecture SYN_ARCH1 of ND2_13 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_12 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_12;

architecture SYN_ARCH1 of ND2_12 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_11 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_11;

architecture SYN_ARCH1 of ND2_11 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_10 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_10;

architecture SYN_ARCH1 of ND2_10 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_9 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_9;

architecture SYN_ARCH1 of ND2_9 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_8 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_8;

architecture SYN_ARCH1 of ND2_8 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_7 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_7;

architecture SYN_ARCH1 of ND2_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_6 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_6;

architecture SYN_ARCH1 of ND2_6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_5 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_5;

architecture SYN_ARCH1 of ND2_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_4 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_4;

architecture SYN_ARCH1 of ND2_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_3 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_3;

architecture SYN_ARCH1 of ND2_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_2 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_2;

architecture SYN_ARCH1 of ND2_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_1 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_1;

architecture SYN_ARCH1 of ND2_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_31 is

   port( A : in std_logic;  Y : out std_logic);

end IV_31;

architecture SYN_BEHAVIORAL of IV_31 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_30 is

   port( A : in std_logic;  Y : out std_logic);

end IV_30;

architecture SYN_BEHAVIORAL of IV_30 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_29 is

   port( A : in std_logic;  Y : out std_logic);

end IV_29;

architecture SYN_BEHAVIORAL of IV_29 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_28 is

   port( A : in std_logic;  Y : out std_logic);

end IV_28;

architecture SYN_BEHAVIORAL of IV_28 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_27 is

   port( A : in std_logic;  Y : out std_logic);

end IV_27;

architecture SYN_BEHAVIORAL of IV_27 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_26 is

   port( A : in std_logic;  Y : out std_logic);

end IV_26;

architecture SYN_BEHAVIORAL of IV_26 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_25 is

   port( A : in std_logic;  Y : out std_logic);

end IV_25;

architecture SYN_BEHAVIORAL of IV_25 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_24 is

   port( A : in std_logic;  Y : out std_logic);

end IV_24;

architecture SYN_BEHAVIORAL of IV_24 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_23 is

   port( A : in std_logic;  Y : out std_logic);

end IV_23;

architecture SYN_BEHAVIORAL of IV_23 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_22 is

   port( A : in std_logic;  Y : out std_logic);

end IV_22;

architecture SYN_BEHAVIORAL of IV_22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_21 is

   port( A : in std_logic;  Y : out std_logic);

end IV_21;

architecture SYN_BEHAVIORAL of IV_21 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_20 is

   port( A : in std_logic;  Y : out std_logic);

end IV_20;

architecture SYN_BEHAVIORAL of IV_20 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_19 is

   port( A : in std_logic;  Y : out std_logic);

end IV_19;

architecture SYN_BEHAVIORAL of IV_19 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_18 is

   port( A : in std_logic;  Y : out std_logic);

end IV_18;

architecture SYN_BEHAVIORAL of IV_18 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_17 is

   port( A : in std_logic;  Y : out std_logic);

end IV_17;

architecture SYN_BEHAVIORAL of IV_17 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_16 is

   port( A : in std_logic;  Y : out std_logic);

end IV_16;

architecture SYN_BEHAVIORAL of IV_16 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_15 is

   port( A : in std_logic;  Y : out std_logic);

end IV_15;

architecture SYN_BEHAVIORAL of IV_15 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_14 is

   port( A : in std_logic;  Y : out std_logic);

end IV_14;

architecture SYN_BEHAVIORAL of IV_14 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_13 is

   port( A : in std_logic;  Y : out std_logic);

end IV_13;

architecture SYN_BEHAVIORAL of IV_13 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_12 is

   port( A : in std_logic;  Y : out std_logic);

end IV_12;

architecture SYN_BEHAVIORAL of IV_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_11 is

   port( A : in std_logic;  Y : out std_logic);

end IV_11;

architecture SYN_BEHAVIORAL of IV_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_10 is

   port( A : in std_logic;  Y : out std_logic);

end IV_10;

architecture SYN_BEHAVIORAL of IV_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_9 is

   port( A : in std_logic;  Y : out std_logic);

end IV_9;

architecture SYN_BEHAVIORAL of IV_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_8 is

   port( A : in std_logic;  Y : out std_logic);

end IV_8;

architecture SYN_BEHAVIORAL of IV_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_7 is

   port( A : in std_logic;  Y : out std_logic);

end IV_7;

architecture SYN_BEHAVIORAL of IV_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_6 is

   port( A : in std_logic;  Y : out std_logic);

end IV_6;

architecture SYN_BEHAVIORAL of IV_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_5 is

   port( A : in std_logic;  Y : out std_logic);

end IV_5;

architecture SYN_BEHAVIORAL of IV_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_4 is

   port( A : in std_logic;  Y : out std_logic);

end IV_4;

architecture SYN_BEHAVIORAL of IV_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_3 is

   port( A : in std_logic;  Y : out std_logic);

end IV_3;

architecture SYN_BEHAVIORAL of IV_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_2 is

   port( A : in std_logic;  Y : out std_logic);

end IV_2;

architecture SYN_BEHAVIORAL of IV_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_1 is

   port( A : in std_logic;  Y : out std_logic);

end IV_1;

architecture SYN_BEHAVIORAL of IV_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_31 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_31;

architecture SYN_STRUCTURAL of MUX21_31 is

   component ND2_91
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_92
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_93
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_31
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_31 port map( A => S, Y => SB);
   UND1 : ND2_93 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_92 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_91 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_30 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_30;

architecture SYN_STRUCTURAL of MUX21_30 is

   component ND2_88
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_89
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_90
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_30
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_30 port map( A => S, Y => SB);
   UND1 : ND2_90 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_89 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_88 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_29 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_29;

architecture SYN_STRUCTURAL of MUX21_29 is

   component ND2_85
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_86
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_87
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_29
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_29 port map( A => S, Y => SB);
   UND1 : ND2_87 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_86 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_85 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_28 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_28;

architecture SYN_STRUCTURAL of MUX21_28 is

   component ND2_82
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_83
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_84
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_28
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_28 port map( A => S, Y => SB);
   UND1 : ND2_84 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_83 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_82 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_27 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_27;

architecture SYN_STRUCTURAL of MUX21_27 is

   component ND2_79
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_80
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_81
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_27
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_27 port map( A => S, Y => SB);
   UND1 : ND2_81 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_80 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_79 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_26 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_26;

architecture SYN_STRUCTURAL of MUX21_26 is

   component ND2_76
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_77
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_78
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_26
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_26 port map( A => S, Y => SB);
   UND1 : ND2_78 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_77 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_76 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_25 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_25;

architecture SYN_STRUCTURAL of MUX21_25 is

   component ND2_73
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_74
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_75
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_25
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_25 port map( A => S, Y => SB);
   UND1 : ND2_75 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_74 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_73 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_24 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_24;

architecture SYN_STRUCTURAL of MUX21_24 is

   component ND2_70
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_71
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_72
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_24
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_24 port map( A => S, Y => SB);
   UND1 : ND2_72 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_71 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_70 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_23 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_23;

architecture SYN_STRUCTURAL of MUX21_23 is

   component ND2_67
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_68
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_69
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_23
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_23 port map( A => S, Y => SB);
   UND1 : ND2_69 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_68 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_67 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_22 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_22;

architecture SYN_STRUCTURAL of MUX21_22 is

   component ND2_64
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_65
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_66
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_22
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_22 port map( A => S, Y => SB);
   UND1 : ND2_66 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_65 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_64 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_21 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_21;

architecture SYN_STRUCTURAL of MUX21_21 is

   component ND2_61
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_62
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_63
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_21
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_21 port map( A => S, Y => SB);
   UND1 : ND2_63 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_62 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_61 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_20 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_20;

architecture SYN_STRUCTURAL of MUX21_20 is

   component ND2_58
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_59
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_60
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_20
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_20 port map( A => S, Y => SB);
   UND1 : ND2_60 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_59 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_58 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_19 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_19;

architecture SYN_STRUCTURAL of MUX21_19 is

   component ND2_55
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_56
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_57
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_19
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_19 port map( A => S, Y => SB);
   UND1 : ND2_57 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_56 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_55 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_18 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_18;

architecture SYN_STRUCTURAL of MUX21_18 is

   component ND2_52
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_53
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_54
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_18
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_18 port map( A => S, Y => SB);
   UND1 : ND2_54 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_53 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_52 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_17 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_17;

architecture SYN_STRUCTURAL of MUX21_17 is

   component ND2_49
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_50
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_51
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_17
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_17 port map( A => S, Y => SB);
   UND1 : ND2_51 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_50 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_49 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_16 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_16;

architecture SYN_STRUCTURAL of MUX21_16 is

   component ND2_46
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_47
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_48
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_16
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_16 port map( A => S, Y => SB);
   UND1 : ND2_48 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_47 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_46 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_15 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_15;

architecture SYN_STRUCTURAL of MUX21_15 is

   component ND2_43
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_44
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_45
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_15
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_15 port map( A => S, Y => SB);
   UND1 : ND2_45 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_44 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_43 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_14 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_14;

architecture SYN_STRUCTURAL of MUX21_14 is

   component ND2_40
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_41
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_42
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_14
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_14 port map( A => S, Y => SB);
   UND1 : ND2_42 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_41 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_40 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_13 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_13;

architecture SYN_STRUCTURAL of MUX21_13 is

   component ND2_37
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_38
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_39
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_13
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_13 port map( A => S, Y => SB);
   UND1 : ND2_39 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_38 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_37 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_12 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_12;

architecture SYN_STRUCTURAL of MUX21_12 is

   component ND2_34
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_35
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_36
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_12
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_12 port map( A => S, Y => SB);
   UND1 : ND2_36 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_35 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_34 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_11 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_11;

architecture SYN_STRUCTURAL of MUX21_11 is

   component ND2_31
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_32
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_33
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_11
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_11 port map( A => S, Y => SB);
   UND1 : ND2_33 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_32 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_31 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_10 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_10;

architecture SYN_STRUCTURAL of MUX21_10 is

   component ND2_28
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_29
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_30
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_10
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_10 port map( A => S, Y => SB);
   UND1 : ND2_30 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_29 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_28 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_9 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_9;

architecture SYN_STRUCTURAL of MUX21_9 is

   component ND2_25
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_26
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_27
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_9
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_9 port map( A => S, Y => SB);
   UND1 : ND2_27 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_26 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_25 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_8 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_8;

architecture SYN_STRUCTURAL of MUX21_8 is

   component ND2_22
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_23
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_24
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_8
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_8 port map( A => S, Y => SB);
   UND1 : ND2_24 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_23 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_22 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_7 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_7;

architecture SYN_STRUCTURAL of MUX21_7 is

   component ND2_19
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_20
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_21
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_7
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_7 port map( A => S, Y => SB);
   UND1 : ND2_21 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_20 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_19 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_6 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_6;

architecture SYN_STRUCTURAL of MUX21_6 is

   component ND2_16
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_17
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_18
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_6
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_6 port map( A => S, Y => SB);
   UND1 : ND2_18 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_17 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_16 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_5 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_5;

architecture SYN_STRUCTURAL of MUX21_5 is

   component ND2_13
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_14
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_15
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_5
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_5 port map( A => S, Y => SB);
   UND1 : ND2_15 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_14 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_13 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_4 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_4;

architecture SYN_STRUCTURAL of MUX21_4 is

   component ND2_10
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_11
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_12
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_4 port map( A => S, Y => SB);
   UND1 : ND2_12 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_11 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_10 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_3 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_3;

architecture SYN_STRUCTURAL of MUX21_3 is

   component ND2_7
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_8
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_9
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_3
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_3 port map( A => S, Y => SB);
   UND1 : ND2_9 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_8 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_7 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_2 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_2;

architecture SYN_STRUCTURAL of MUX21_2 is

   component ND2_4
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_5
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_6
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_2 port map( A => S, Y => SB);
   UND1 : ND2_6 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_5 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_4 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_1 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_1;

architecture SYN_STRUCTURAL of MUX21_1 is

   component ND2_1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_3
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_1 port map( A => S, Y => SB);
   UND1 : ND2_3 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_2 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_1 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_GENERIC_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_7;

architecture SYN_struct of MUX21_GENERIC_N4_7 is

   component MUX21_25
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_26
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_27
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_28
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   M_0 : MUX21_28 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   M_1 : MUX21_27 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   M_2 : MUX21_26 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   M_3 : MUX21_25 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_GENERIC_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_6;

architecture SYN_struct of MUX21_GENERIC_N4_6 is

   component MUX21_21
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_22
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_23
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_24
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   M_0 : MUX21_24 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   M_1 : MUX21_23 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   M_2 : MUX21_22 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   M_3 : MUX21_21 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_GENERIC_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_5;

architecture SYN_struct of MUX21_GENERIC_N4_5 is

   component MUX21_17
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_18
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_19
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_20
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   M_0 : MUX21_20 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   M_1 : MUX21_19 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   M_2 : MUX21_18 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   M_3 : MUX21_17 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_GENERIC_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_4;

architecture SYN_struct of MUX21_GENERIC_N4_4 is

   component MUX21_13
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_14
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_15
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_16
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   M_0 : MUX21_16 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   M_1 : MUX21_15 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   M_2 : MUX21_14 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   M_3 : MUX21_13 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_GENERIC_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_3;

architecture SYN_struct of MUX21_GENERIC_N4_3 is

   component MUX21_9
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_10
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_11
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_12
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   M_0 : MUX21_12 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   M_1 : MUX21_11 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   M_2 : MUX21_10 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   M_3 : MUX21_9 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_GENERIC_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_2;

architecture SYN_struct of MUX21_GENERIC_N4_2 is

   component MUX21_5
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_6
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_7
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_8
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   M_0 : MUX21_8 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   M_1 : MUX21_7 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   M_2 : MUX21_6 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   M_3 : MUX21_5 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_GENERIC_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_1;

architecture SYN_struct of MUX21_GENERIC_N4_1 is

   component MUX21_1
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_2
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_3
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_4
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   M_0 : MUX21_4 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   M_1 : MUX21_3 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   M_2 : MUX21_2 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   M_3 : MUX21_1 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity carry_select_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_N4_7;

architecture SYN_STRUCTURAL of carry_select_N4_7 is

   component MUX21_GENERIC_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_N4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_N4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_carry0_3_port, sum_carry0_2_port, 
      sum_carry0_1_port, sum_carry0_0_port, sum_carry1_3_port, 
      sum_carry1_2_port, sum_carry1_1_port, sum_carry1_0_port, net6204, net6205
      : std_logic;

begin
   
   RCA0 : rca_generic_N4_14 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1),
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_carry0_3_port, S(2) => sum_carry0_2_port, S(1) 
                           => sum_carry0_1_port, S(0) => sum_carry0_0_port, Co 
                           => net6205);
   RCA1 : rca_generic_N4_13 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1),
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_carry1_3_port, S(2) => sum_carry1_2_port, S(1) 
                           => sum_carry1_1_port, S(0) => sum_carry1_0_port, Co 
                           => net6204);
   MUX : MUX21_GENERIC_N4_7 port map( A(3) => sum_carry1_3_port, A(2) => 
                           sum_carry1_2_port, A(1) => sum_carry1_1_port, A(0) 
                           => sum_carry1_0_port, B(3) => sum_carry0_3_port, 
                           B(2) => sum_carry0_2_port, B(1) => sum_carry0_1_port
                           , B(0) => sum_carry0_0_port, SEL => Ci, Y(3) => S(3)
                           , Y(2) => S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity carry_select_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_N4_6;

architecture SYN_STRUCTURAL of carry_select_N4_6 is

   component MUX21_GENERIC_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_N4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_N4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_carry0_3_port, sum_carry0_2_port, 
      sum_carry0_1_port, sum_carry0_0_port, sum_carry1_3_port, 
      sum_carry1_2_port, sum_carry1_1_port, sum_carry1_0_port, net6204, net6205
      : std_logic;

begin
   
   RCA0 : rca_generic_N4_12 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1),
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_carry0_3_port, S(2) => sum_carry0_2_port, S(1) 
                           => sum_carry0_1_port, S(0) => sum_carry0_0_port, Co 
                           => net6205);
   RCA1 : rca_generic_N4_11 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1),
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_carry1_3_port, S(2) => sum_carry1_2_port, S(1) 
                           => sum_carry1_1_port, S(0) => sum_carry1_0_port, Co 
                           => net6204);
   MUX : MUX21_GENERIC_N4_6 port map( A(3) => sum_carry1_3_port, A(2) => 
                           sum_carry1_2_port, A(1) => sum_carry1_1_port, A(0) 
                           => sum_carry1_0_port, B(3) => sum_carry0_3_port, 
                           B(2) => sum_carry0_2_port, B(1) => sum_carry0_1_port
                           , B(0) => sum_carry0_0_port, SEL => Ci, Y(3) => S(3)
                           , Y(2) => S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity carry_select_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_N4_5;

architecture SYN_STRUCTURAL of carry_select_N4_5 is

   component MUX21_GENERIC_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_N4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_N4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_carry0_3_port, sum_carry0_2_port, 
      sum_carry0_1_port, sum_carry0_0_port, sum_carry1_3_port, 
      sum_carry1_2_port, sum_carry1_1_port, sum_carry1_0_port, net6204, net6205
      : std_logic;

begin
   
   RCA0 : rca_generic_N4_10 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1),
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_carry0_3_port, S(2) => sum_carry0_2_port, S(1) 
                           => sum_carry0_1_port, S(0) => sum_carry0_0_port, Co 
                           => net6205);
   RCA1 : rca_generic_N4_9 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_carry1_3_port, S(2) => sum_carry1_2_port, S(1) 
                           => sum_carry1_1_port, S(0) => sum_carry1_0_port, Co 
                           => net6204);
   MUX : MUX21_GENERIC_N4_5 port map( A(3) => sum_carry1_3_port, A(2) => 
                           sum_carry1_2_port, A(1) => sum_carry1_1_port, A(0) 
                           => sum_carry1_0_port, B(3) => sum_carry0_3_port, 
                           B(2) => sum_carry0_2_port, B(1) => sum_carry0_1_port
                           , B(0) => sum_carry0_0_port, SEL => Ci, Y(3) => S(3)
                           , Y(2) => S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity carry_select_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_N4_4;

architecture SYN_STRUCTURAL of carry_select_N4_4 is

   component MUX21_GENERIC_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_N4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_carry0_3_port, sum_carry0_2_port, 
      sum_carry0_1_port, sum_carry0_0_port, sum_carry1_3_port, 
      sum_carry1_2_port, sum_carry1_1_port, sum_carry1_0_port, net6204, net6205
      : std_logic;

begin
   
   RCA0 : rca_generic_N4_8 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_carry0_3_port, S(2) => sum_carry0_2_port, S(1) 
                           => sum_carry0_1_port, S(0) => sum_carry0_0_port, Co 
                           => net6205);
   RCA1 : rca_generic_N4_7 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_carry1_3_port, S(2) => sum_carry1_2_port, S(1) 
                           => sum_carry1_1_port, S(0) => sum_carry1_0_port, Co 
                           => net6204);
   MUX : MUX21_GENERIC_N4_4 port map( A(3) => sum_carry1_3_port, A(2) => 
                           sum_carry1_2_port, A(1) => sum_carry1_1_port, A(0) 
                           => sum_carry1_0_port, B(3) => sum_carry0_3_port, 
                           B(2) => sum_carry0_2_port, B(1) => sum_carry0_1_port
                           , B(0) => sum_carry0_0_port, SEL => Ci, Y(3) => S(3)
                           , Y(2) => S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity carry_select_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_N4_3;

architecture SYN_STRUCTURAL of carry_select_N4_3 is

   component MUX21_GENERIC_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_carry0_3_port, sum_carry0_2_port, 
      sum_carry0_1_port, sum_carry0_0_port, sum_carry1_3_port, 
      sum_carry1_2_port, sum_carry1_1_port, sum_carry1_0_port, net6204, net6205
      : std_logic;

begin
   
   RCA0 : rca_generic_N4_6 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_carry0_3_port, S(2) => sum_carry0_2_port, S(1) 
                           => sum_carry0_1_port, S(0) => sum_carry0_0_port, Co 
                           => net6205);
   RCA1 : rca_generic_N4_5 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_carry1_3_port, S(2) => sum_carry1_2_port, S(1) 
                           => sum_carry1_1_port, S(0) => sum_carry1_0_port, Co 
                           => net6204);
   MUX : MUX21_GENERIC_N4_3 port map( A(3) => sum_carry1_3_port, A(2) => 
                           sum_carry1_2_port, A(1) => sum_carry1_1_port, A(0) 
                           => sum_carry1_0_port, B(3) => sum_carry0_3_port, 
                           B(2) => sum_carry0_2_port, B(1) => sum_carry0_1_port
                           , B(0) => sum_carry0_0_port, SEL => Ci, Y(3) => S(3)
                           , Y(2) => S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity carry_select_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_N4_2;

architecture SYN_STRUCTURAL of carry_select_N4_2 is

   component MUX21_GENERIC_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_carry0_3_port, sum_carry0_2_port, 
      sum_carry0_1_port, sum_carry0_0_port, sum_carry1_3_port, 
      sum_carry1_2_port, sum_carry1_1_port, sum_carry1_0_port, net6204, net6205
      : std_logic;

begin
   
   RCA0 : rca_generic_N4_4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_carry0_3_port, S(2) => sum_carry0_2_port, S(1) 
                           => sum_carry0_1_port, S(0) => sum_carry0_0_port, Co 
                           => net6205);
   RCA1 : rca_generic_N4_3 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_carry1_3_port, S(2) => sum_carry1_2_port, S(1) 
                           => sum_carry1_1_port, S(0) => sum_carry1_0_port, Co 
                           => net6204);
   MUX : MUX21_GENERIC_N4_2 port map( A(3) => sum_carry1_3_port, A(2) => 
                           sum_carry1_2_port, A(1) => sum_carry1_1_port, A(0) 
                           => sum_carry1_0_port, B(3) => sum_carry0_3_port, 
                           B(2) => sum_carry0_2_port, B(1) => sum_carry0_1_port
                           , B(0) => sum_carry0_0_port, SEL => Ci, Y(3) => S(3)
                           , Y(2) => S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity carry_select_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_N4_1;

architecture SYN_STRUCTURAL of carry_select_N4_1 is

   component MUX21_GENERIC_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_carry0_3_port, sum_carry0_2_port, 
      sum_carry0_1_port, sum_carry0_0_port, sum_carry1_3_port, 
      sum_carry1_2_port, sum_carry1_1_port, sum_carry1_0_port, net6204, net6205
      : std_logic;

begin
   
   RCA0 : rca_generic_N4_2 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_carry0_3_port, S(2) => sum_carry0_2_port, S(1) 
                           => sum_carry0_1_port, S(0) => sum_carry0_0_port, Co 
                           => net6205);
   RCA1 : rca_generic_N4_1 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_carry1_3_port, S(2) => sum_carry1_2_port, S(1) 
                           => sum_carry1_1_port, S(0) => sum_carry1_0_port, Co 
                           => net6204);
   MUX : MUX21_GENERIC_N4_1 port map( A(3) => sum_carry1_3_port, A(2) => 
                           sum_carry1_2_port, A(1) => sum_carry1_1_port, A(0) 
                           => sum_carry1_0_port, B(3) => sum_carry0_3_port, 
                           B(2) => sum_carry0_2_port, B(1) => sum_carry0_1_port
                           , B(0) => sum_carry0_0_port, SEL => Ci, Y(3) => S(3)
                           , Y(2) => S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity ND2_0 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_0;

architecture SYN_ARCH1 of ND2_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity IV_0 is

   port( A : in std_logic;  Y : out std_logic);

end IV_0;

architecture SYN_BEHAVIORAL of IV_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_0 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_0;

architecture SYN_STRUCTURAL of MUX21_0 is

   component ND2_94
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_95
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_0
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_0
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_0 port map( A => S, Y => SB);
   UND1 : ND2_0 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_95 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_94 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);
   U1 : INV_X1 port map( A => n3, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity MUX21_GENERIC_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_0;

architecture SYN_struct of MUX21_GENERIC_N4_0 is

   component MUX21_29
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_30
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_31
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_0
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   M_0 : MUX21_0 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   M_1 : MUX21_31 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   M_2 : MUX21_30 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   M_3 : MUX21_29 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity rca_generic_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_N4_0;

architecture SYN_STRUCTURAL of rca_generic_N4_0 is

   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_63 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_62 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_61 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity carry_select_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_N4_0;

architecture SYN_STRUCTURAL of carry_select_N4_0 is

   component MUX21_GENERIC_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_N4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_carry0_3_port, sum_carry0_2_port, 
      sum_carry0_1_port, sum_carry0_0_port, sum_carry1_3_port, 
      sum_carry1_2_port, sum_carry1_1_port, sum_carry1_0_port, net6204, net6205
      : std_logic;

begin
   
   RCA0 : rca_generic_N4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_carry0_3_port, S(2) => sum_carry0_2_port, S(1) 
                           => sum_carry0_1_port, S(0) => sum_carry0_0_port, Co 
                           => net6205);
   RCA1 : rca_generic_N4_15 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1),
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_carry1_3_port, S(2) => sum_carry1_2_port, S(1) 
                           => sum_carry1_1_port, S(0) => sum_carry1_0_port, Co 
                           => net6204);
   MUX : MUX21_GENERIC_N4_0 port map( A(3) => sum_carry1_3_port, A(2) => 
                           sum_carry1_2_port, A(1) => sum_carry1_1_port, A(0) 
                           => sum_carry1_0_port, B(3) => sum_carry0_3_port, 
                           B(2) => sum_carry0_2_port, B(1) => sum_carry0_1_port
                           , B(0) => sum_carry0_0_port, SEL => Ci, Y(3) => S(3)
                           , Y(2) => S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PG_0 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_0;

architecture SYN_STRUCTURAL of PG_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n4 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => n2, B2 => n3, A => n4, ZN => gout);
   U2 : INV_X1 port map( A => pleft, ZN => n2);
   U3 : INV_X1 port map( A => gleft, ZN => n3);
   U4 : NOR2_X1 port map( A1 => gright, A2 => gleft, ZN => n4);
   U5 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity G_0 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_0;

architecture SYN_STRUCTURAL of G_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => pleft, A2 => gright, ZN => n2);
   U2 : NAND2_X1 port map( A1 => n2, A2 => n4, ZN => gout);
   U3 : INV_X1 port map( A => gleft, ZN => n4);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity PGnet_block_0 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_0;

architecture SYN_STRUCTURAL of PGnet_block_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => A, B2 => n1, A => n2, ZN => pout);
   U2 : INV_X4 port map( A => B, ZN => n1);
   U3 : NAND2_X1 port map( A1 => A, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity sum_generator_Nbits32_Nblocks8 is

   port( A, B : in std_logic_vector (31 downto 0);  Carry : in std_logic_vector
         (8 downto 0);  S : out std_logic_vector (31 downto 0);  Cout : out 
         std_logic);

end sum_generator_Nbits32_Nblocks8;

architecture SYN_STRUCTURAL of sum_generator_Nbits32_Nblocks8 is

   component carry_select_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;

begin
   Cout <= Carry(8);
   
   CS_0 : carry_select_N4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1),
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => Carry(0), S(3) => S(3), 
                           S(2) => S(2), S(1) => S(1), S(0) => S(0));
   CS_1 : carry_select_N4_7 port map( A(3) => A(7), A(2) => A(6), A(1) => A(5),
                           A(0) => A(4), B(3) => B(7), B(2) => B(6), B(1) => 
                           B(5), B(0) => B(4), Ci => Carry(1), S(3) => S(7), 
                           S(2) => S(6), S(1) => S(5), S(0) => S(4));
   CS_2 : carry_select_N4_6 port map( A(3) => A(11), A(2) => A(10), A(1) => 
                           A(9), A(0) => A(8), B(3) => B(11), B(2) => B(10), 
                           B(1) => B(9), B(0) => B(8), Ci => Carry(2), S(3) => 
                           S(11), S(2) => S(10), S(1) => S(9), S(0) => S(8));
   CS_3 : carry_select_N4_5 port map( A(3) => A(15), A(2) => A(14), A(1) => 
                           A(13), A(0) => A(12), B(3) => B(15), B(2) => B(14), 
                           B(1) => B(13), B(0) => B(12), Ci => Carry(3), S(3) 
                           => S(15), S(2) => S(14), S(1) => S(13), S(0) => 
                           S(12));
   CS_4 : carry_select_N4_4 port map( A(3) => A(19), A(2) => A(18), A(1) => 
                           A(17), A(0) => A(16), B(3) => B(19), B(2) => B(18), 
                           B(1) => B(17), B(0) => B(16), Ci => Carry(4), S(3) 
                           => S(19), S(2) => S(18), S(1) => S(17), S(0) => 
                           S(16));
   CS_5 : carry_select_N4_3 port map( A(3) => A(23), A(2) => A(22), A(1) => 
                           A(21), A(0) => A(20), B(3) => B(23), B(2) => B(22), 
                           B(1) => B(21), B(0) => B(20), Ci => Carry(5), S(3) 
                           => S(23), S(2) => S(22), S(1) => S(21), S(0) => 
                           S(20));
   CS_6 : carry_select_N4_2 port map( A(3) => A(27), A(2) => A(26), A(1) => 
                           A(25), A(0) => A(24), B(3) => B(27), B(2) => B(26), 
                           B(1) => B(25), B(0) => B(24), Ci => Carry(6), S(3) 
                           => S(27), S(2) => S(26), S(1) => S(25), S(0) => 
                           S(24));
   CS_7 : carry_select_N4_1 port map( A(3) => A(31), A(2) => A(30), A(1) => 
                           A(29), A(0) => A(28), B(3) => B(31), B(2) => B(30), 
                           B(1) => B(29), B(0) => B(28), Ci => Carry(7), S(3) 
                           => S(31), S(2) => S(30), S(1) => S(29), S(0) => 
                           S(28));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity carry_generator_N32_Nblocks8 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  Cout : 
         out std_logic_vector (8 downto 0));

end carry_generator_N32_Nblocks8;

architecture SYN_STRUCTURAL of carry_generator_N32_Nblocks8 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component G_1
      port( gleft, gright, pleft : in std_logic;  gout : out std_logic);
   end component;
   
   component G_2
      port( gleft, gright, pleft : in std_logic;  gout : out std_logic);
   end component;
   
   component G_3
      port( gleft, gright, pleft : in std_logic;  gout : out std_logic);
   end component;
   
   component G_4
      port( gleft, gright, pleft : in std_logic;  gout : out std_logic);
   end component;
   
   component PG_1
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_2
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component G_5
      port( gleft, gright, pleft : in std_logic;  gout : out std_logic);
   end component;
   
   component G_6
      port( gleft, gright, pleft : in std_logic;  gout : out std_logic);
   end component;
   
   component PG_3
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_4
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_5
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component G_7
      port( gleft, gright, pleft : in std_logic;  gout : out std_logic);
   end component;
   
   component PG_6
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_7
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_8
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_9
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_10
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_11
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_12
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component G_8
      port( gleft, gright, pleft : in std_logic;  gout : out std_logic);
   end component;
   
   component PG_13
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_14
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_15
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_16
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_17
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_18
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_19
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_20
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_21
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_22
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_23
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_24
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_25
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_26
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component PG_0
      port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
            std_logic);
   end component;
   
   component G_9
      port( gleft, gright, pleft : in std_logic;  gout : out std_logic);
   end component;
   
   component PGnet_block_1
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_2
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_3
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_4
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_5
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_6
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_7
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_8
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_9
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_10
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_11
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_12
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_13
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_14
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_15
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_16
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_17
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_18
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_19
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_20
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_21
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_22
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_23
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_24
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_25
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_26
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_27
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_28
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_29
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_30
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component PGnet_block_31
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   component G_0
      port( gleft, gright, pleft : in std_logic;  gout : out std_logic);
   end component;
   
   component PGnet_block_0
      port( A, B : in std_logic;  pout, gout : out std_logic);
   end component;
   
   signal Cout_8_port, Cout_7_port, Cout_6_port, Cout_5_port, n5, Cout_3_port, 
      n6, n7, g_cin, p_cin, Gsignal_1_31_port, Gsignal_1_30_port, 
      Gsignal_1_29_port, Gsignal_1_28_port, Gsignal_1_27_port, 
      Gsignal_1_26_port, Gsignal_1_25_port, Gsignal_1_24_port, 
      Gsignal_1_23_port, Gsignal_1_22_port, Gsignal_1_21_port, 
      Gsignal_1_20_port, Gsignal_1_19_port, Gsignal_1_18_port, 
      Gsignal_1_17_port, Gsignal_1_16_port, Gsignal_1_15_port, 
      Gsignal_1_14_port, Gsignal_1_13_port, Gsignal_1_12_port, 
      Gsignal_1_11_port, Gsignal_1_10_port, Gsignal_1_9_port, Gsignal_1_8_port,
      Gsignal_1_7_port, Gsignal_1_6_port, Gsignal_1_5_port, Gsignal_1_4_port, 
      Gsignal_1_3_port, Gsignal_1_2_port, Gsignal_1_1_port, Gsignal_1_0_port, 
      Gsignal_2_31_port, Gsignal_2_29_port, Gsignal_2_27_port, 
      Gsignal_2_25_port, Gsignal_2_23_port, Gsignal_2_21_port, 
      Gsignal_2_19_port, Gsignal_2_17_port, Gsignal_2_15_port, 
      Gsignal_2_13_port, Gsignal_2_11_port, Gsignal_2_9_port, Gsignal_2_7_port,
      Gsignal_2_5_port, Gsignal_2_3_port, Gsignal_2_1_port, Gsignal_3_31_port, 
      Gsignal_3_27_port, Gsignal_3_23_port, Gsignal_3_19_port, 
      Gsignal_3_15_port, Gsignal_3_11_port, Gsignal_3_7_port, Gsignal_4_31_port
      , Gsignal_4_23_port, Gsignal_4_15_port, Gsignal_5_31_port, 
      Gsignal_5_27_port, Psignal_1_31_port, Psignal_1_30_port, 
      Psignal_1_29_port, Psignal_1_28_port, Psignal_1_27_port, 
      Psignal_1_26_port, Psignal_1_25_port, Psignal_1_24_port, 
      Psignal_1_23_port, Psignal_1_22_port, Psignal_1_21_port, 
      Psignal_1_20_port, Psignal_1_19_port, Psignal_1_18_port, 
      Psignal_1_17_port, Psignal_1_16_port, Psignal_1_15_port, 
      Psignal_1_14_port, Psignal_1_13_port, Psignal_1_12_port, 
      Psignal_1_11_port, Psignal_1_10_port, Psignal_1_9_port, Psignal_1_8_port,
      Psignal_1_7_port, Psignal_1_6_port, Psignal_1_5_port, Psignal_1_4_port, 
      Psignal_1_3_port, Psignal_1_2_port, Psignal_1_1_port, Psignal_2_31_port, 
      Psignal_2_29_port, Psignal_2_27_port, Psignal_2_25_port, 
      Psignal_2_23_port, Psignal_2_21_port, Psignal_2_19_port, 
      Psignal_2_17_port, Psignal_2_15_port, Psignal_2_13_port, 
      Psignal_2_11_port, Psignal_2_9_port, Psignal_2_7_port, Psignal_2_5_port, 
      Psignal_2_3_port, Psignal_3_31_port, Psignal_3_27_port, Psignal_3_23_port
      , Psignal_3_19_port, Psignal_3_15_port, Psignal_3_11_port, 
      Psignal_3_7_port, Psignal_4_31_port, Psignal_4_23_port, Psignal_4_15_port
      , Psignal_5_31_port, Psignal_5_27_port, n1, Cout_2_port, Cout_4_port, 
      Cout_1_port : std_logic;

begin
   Cout <= ( Cout_8_port, Cout_7_port, Cout_6_port, Cout_5_port, Cout_4_port, 
      Cout_3_port, Cout_2_port, Cout_1_port, Ci );
   
   PGnet_Cin_0 : PGnet_block_0 port map( A => A(0), B => B(0), pout => p_cin, 
                           gout => g_cin);
   GCin_0 : G_0 port map( gleft => g_cin, gright => Ci, pleft => p_cin, gout =>
                           Gsignal_1_0_port);
   PGnet_1 : PGnet_block_31 port map( A => A(1), B => B(1), pout => 
                           Psignal_1_1_port, gout => Gsignal_1_1_port);
   PGnet_2 : PGnet_block_30 port map( A => A(2), B => B(2), pout => 
                           Psignal_1_2_port, gout => Gsignal_1_2_port);
   PGnet_3 : PGnet_block_29 port map( A => A(3), B => B(3), pout => 
                           Psignal_1_3_port, gout => Gsignal_1_3_port);
   PGnet_4 : PGnet_block_28 port map( A => A(4), B => B(4), pout => 
                           Psignal_1_4_port, gout => Gsignal_1_4_port);
   PGnet_5 : PGnet_block_27 port map( A => A(5), B => B(5), pout => 
                           Psignal_1_5_port, gout => Gsignal_1_5_port);
   PGnet_6 : PGnet_block_26 port map( A => A(6), B => B(6), pout => 
                           Psignal_1_6_port, gout => Gsignal_1_6_port);
   PGnet_7 : PGnet_block_25 port map( A => A(7), B => B(7), pout => 
                           Psignal_1_7_port, gout => Gsignal_1_7_port);
   PGnet_8 : PGnet_block_24 port map( A => A(8), B => B(8), pout => 
                           Psignal_1_8_port, gout => Gsignal_1_8_port);
   PGnet_9 : PGnet_block_23 port map( A => A(9), B => B(9), pout => 
                           Psignal_1_9_port, gout => Gsignal_1_9_port);
   PGnet_10 : PGnet_block_22 port map( A => A(10), B => B(10), pout => 
                           Psignal_1_10_port, gout => Gsignal_1_10_port);
   PGnet_11 : PGnet_block_21 port map( A => A(11), B => B(11), pout => 
                           Psignal_1_11_port, gout => Gsignal_1_11_port);
   PGnet_12 : PGnet_block_20 port map( A => A(12), B => B(12), pout => 
                           Psignal_1_12_port, gout => Gsignal_1_12_port);
   PGnet_13 : PGnet_block_19 port map( A => A(13), B => B(13), pout => 
                           Psignal_1_13_port, gout => Gsignal_1_13_port);
   PGnet_14 : PGnet_block_18 port map( A => A(14), B => B(14), pout => 
                           Psignal_1_14_port, gout => Gsignal_1_14_port);
   PGnet_15 : PGnet_block_17 port map( A => A(15), B => B(15), pout => 
                           Psignal_1_15_port, gout => Gsignal_1_15_port);
   PGnet_16 : PGnet_block_16 port map( A => A(16), B => B(16), pout => 
                           Psignal_1_16_port, gout => Gsignal_1_16_port);
   PGnet_17 : PGnet_block_15 port map( A => A(17), B => B(17), pout => 
                           Psignal_1_17_port, gout => Gsignal_1_17_port);
   PGnet_18 : PGnet_block_14 port map( A => A(18), B => B(18), pout => 
                           Psignal_1_18_port, gout => Gsignal_1_18_port);
   PGnet_19 : PGnet_block_13 port map( A => A(19), B => B(19), pout => 
                           Psignal_1_19_port, gout => Gsignal_1_19_port);
   PGnet_20 : PGnet_block_12 port map( A => A(20), B => B(20), pout => 
                           Psignal_1_20_port, gout => Gsignal_1_20_port);
   PGnet_21 : PGnet_block_11 port map( A => A(21), B => B(21), pout => 
                           Psignal_1_21_port, gout => Gsignal_1_21_port);
   PGnet_22 : PGnet_block_10 port map( A => A(22), B => B(22), pout => 
                           Psignal_1_22_port, gout => Gsignal_1_22_port);
   PGnet_23 : PGnet_block_9 port map( A => A(23), B => B(23), pout => 
                           Psignal_1_23_port, gout => Gsignal_1_23_port);
   PGnet_24 : PGnet_block_8 port map( A => A(24), B => B(24), pout => 
                           Psignal_1_24_port, gout => Gsignal_1_24_port);
   PGnet_25 : PGnet_block_7 port map( A => A(25), B => B(25), pout => 
                           Psignal_1_25_port, gout => Gsignal_1_25_port);
   PGnet_26 : PGnet_block_6 port map( A => A(26), B => B(26), pout => 
                           Psignal_1_26_port, gout => Gsignal_1_26_port);
   PGnet_27 : PGnet_block_5 port map( A => A(27), B => B(27), pout => 
                           Psignal_1_27_port, gout => Gsignal_1_27_port);
   PGnet_28 : PGnet_block_4 port map( A => A(28), B => B(28), pout => 
                           Psignal_1_28_port, gout => Gsignal_1_28_port);
   PGnet_29 : PGnet_block_3 port map( A => A(29), B => B(29), pout => 
                           Psignal_1_29_port, gout => Gsignal_1_29_port);
   PGnet_30 : PGnet_block_2 port map( A => A(30), B => B(30), pout => 
                           Psignal_1_30_port, gout => Gsignal_1_30_port);
   PGnet_31 : PGnet_block_1 port map( A => A(31), B => B(31), pout => 
                           Psignal_1_31_port, gout => Gsignal_1_31_port);
   Gblock_1_1 : G_9 port map( gleft => Gsignal_1_1_port, gright => 
                           Gsignal_1_0_port, pleft => Psignal_1_1_port, gout =>
                           Gsignal_2_1_port);
   PGblock_1_3 : PG_0 port map( gleft => Gsignal_1_3_port, gright => 
                           Gsignal_1_2_port, pleft => Psignal_1_3_port, pright 
                           => Psignal_1_2_port, pout => Psignal_2_3_port, gout 
                           => Gsignal_2_3_port);
   PGblock_1_5 : PG_26 port map( gleft => Gsignal_1_5_port, gright => 
                           Gsignal_1_4_port, pleft => Psignal_1_5_port, pright 
                           => Psignal_1_4_port, pout => Psignal_2_5_port, gout 
                           => Gsignal_2_5_port);
   PGblock_1_7 : PG_25 port map( gleft => Gsignal_1_7_port, gright => 
                           Gsignal_1_6_port, pleft => Psignal_1_7_port, pright 
                           => Psignal_1_6_port, pout => Psignal_2_7_port, gout 
                           => Gsignal_2_7_port);
   PGblock_1_9 : PG_24 port map( gleft => Gsignal_1_9_port, gright => 
                           Gsignal_1_8_port, pleft => Psignal_1_9_port, pright 
                           => Psignal_1_8_port, pout => Psignal_2_9_port, gout 
                           => Gsignal_2_9_port);
   PGblock_1_11 : PG_23 port map( gleft => Gsignal_1_11_port, gright => 
                           Gsignal_1_10_port, pleft => Psignal_1_11_port, 
                           pright => Psignal_1_10_port, pout => 
                           Psignal_2_11_port, gout => Gsignal_2_11_port);
   PGblock_1_13 : PG_22 port map( gleft => Gsignal_1_13_port, gright => 
                           Gsignal_1_12_port, pleft => Psignal_1_13_port, 
                           pright => Psignal_1_12_port, pout => 
                           Psignal_2_13_port, gout => Gsignal_2_13_port);
   PGblock_1_15 : PG_21 port map( gleft => Gsignal_1_15_port, gright => 
                           Gsignal_1_14_port, pleft => Psignal_1_15_port, 
                           pright => Psignal_1_14_port, pout => 
                           Psignal_2_15_port, gout => Gsignal_2_15_port);
   PGblock_1_17 : PG_20 port map( gleft => Gsignal_1_17_port, gright => 
                           Gsignal_1_16_port, pleft => Psignal_1_17_port, 
                           pright => Psignal_1_16_port, pout => 
                           Psignal_2_17_port, gout => Gsignal_2_17_port);
   PGblock_1_19 : PG_19 port map( gleft => Gsignal_1_19_port, gright => 
                           Gsignal_1_18_port, pleft => Psignal_1_19_port, 
                           pright => Psignal_1_18_port, pout => 
                           Psignal_2_19_port, gout => Gsignal_2_19_port);
   PGblock_1_21 : PG_18 port map( gleft => Gsignal_1_21_port, gright => 
                           Gsignal_1_20_port, pleft => Psignal_1_21_port, 
                           pright => Psignal_1_20_port, pout => 
                           Psignal_2_21_port, gout => Gsignal_2_21_port);
   PGblock_1_23 : PG_17 port map( gleft => Gsignal_1_23_port, gright => 
                           Gsignal_1_22_port, pleft => Psignal_1_23_port, 
                           pright => Psignal_1_22_port, pout => 
                           Psignal_2_23_port, gout => Gsignal_2_23_port);
   PGblock_1_25 : PG_16 port map( gleft => Gsignal_1_25_port, gright => 
                           Gsignal_1_24_port, pleft => Psignal_1_25_port, 
                           pright => Psignal_1_24_port, pout => 
                           Psignal_2_25_port, gout => Gsignal_2_25_port);
   PGblock_1_27 : PG_15 port map( gleft => Gsignal_1_27_port, gright => 
                           Gsignal_1_26_port, pleft => Psignal_1_27_port, 
                           pright => Psignal_1_26_port, pout => 
                           Psignal_2_27_port, gout => Gsignal_2_27_port);
   PGblock_1_29 : PG_14 port map( gleft => Gsignal_1_29_port, gright => 
                           Gsignal_1_28_port, pleft => Psignal_1_29_port, 
                           pright => Psignal_1_28_port, pout => 
                           Psignal_2_29_port, gout => Gsignal_2_29_port);
   PGblock_1_31 : PG_13 port map( gleft => Gsignal_1_31_port, gright => 
                           Gsignal_1_30_port, pleft => Psignal_1_31_port, 
                           pright => Psignal_1_30_port, pout => 
                           Psignal_2_31_port, gout => Gsignal_2_31_port);
   Gblock_2_3 : G_8 port map( gleft => Gsignal_2_3_port, gright => 
                           Gsignal_2_1_port, pleft => Psignal_2_3_port, gout =>
                           n7);
   PGblock_2_7 : PG_12 port map( gleft => Gsignal_2_7_port, gright => 
                           Gsignal_2_5_port, pleft => Psignal_2_7_port, pright 
                           => Psignal_2_5_port, pout => Psignal_3_7_port, gout 
                           => Gsignal_3_7_port);
   PGblock_2_11 : PG_11 port map( gleft => Gsignal_2_11_port, gright => 
                           Gsignal_2_9_port, pleft => Psignal_2_11_port, pright
                           => Psignal_2_9_port, pout => Psignal_3_11_port, gout
                           => Gsignal_3_11_port);
   PGblock_2_15 : PG_10 port map( gleft => Gsignal_2_15_port, gright => 
                           Gsignal_2_13_port, pleft => Psignal_2_15_port, 
                           pright => Psignal_2_13_port, pout => 
                           Psignal_3_15_port, gout => Gsignal_3_15_port);
   PGblock_2_19 : PG_9 port map( gleft => Gsignal_2_19_port, gright => 
                           Gsignal_2_17_port, pleft => Psignal_2_19_port, 
                           pright => Psignal_2_17_port, pout => 
                           Psignal_3_19_port, gout => Gsignal_3_19_port);
   PGblock_2_23 : PG_8 port map( gleft => Gsignal_2_23_port, gright => 
                           Gsignal_2_21_port, pleft => Psignal_2_23_port, 
                           pright => Psignal_2_21_port, pout => 
                           Psignal_3_23_port, gout => Gsignal_3_23_port);
   PGblock_2_27 : PG_7 port map( gleft => Gsignal_2_27_port, gright => 
                           Gsignal_2_25_port, pleft => Psignal_2_27_port, 
                           pright => Psignal_2_25_port, pout => 
                           Psignal_3_27_port, gout => Gsignal_3_27_port);
   PGblock_2_31 : PG_6 port map( gleft => Gsignal_2_31_port, gright => 
                           Gsignal_2_29_port, pleft => Psignal_2_31_port, 
                           pright => Psignal_2_29_port, pout => 
                           Psignal_3_31_port, gout => Gsignal_3_31_port);
   Gblock_3_7 : G_7 port map( gleft => Gsignal_3_7_port, gright => n7, pleft =>
                           Psignal_3_7_port, gout => n6);
   PGblock_3_15 : PG_5 port map( gleft => Gsignal_3_15_port, gright => 
                           Gsignal_3_11_port, pleft => Psignal_3_15_port, 
                           pright => Psignal_3_11_port, pout => 
                           Psignal_4_15_port, gout => Gsignal_4_15_port);
   PGblock_3_23 : PG_4 port map( gleft => Gsignal_3_23_port, gright => 
                           Gsignal_3_19_port, pleft => Psignal_3_23_port, 
                           pright => Psignal_3_19_port, pout => 
                           Psignal_4_23_port, gout => Gsignal_4_23_port);
   PGblock_3_31 : PG_3 port map( gleft => Gsignal_3_31_port, gright => 
                           Gsignal_3_27_port, pleft => Psignal_3_31_port, 
                           pright => Psignal_3_27_port, pout => 
                           Psignal_4_31_port, gout => Gsignal_4_31_port);
   Gblock_4_11 : G_6 port map( gleft => Gsignal_3_11_port, gright => n1, pleft 
                           => Psignal_3_11_port, gout => Cout_3_port);
   Gblock_4_15 : G_5 port map( gleft => Gsignal_4_15_port, gright => n6, pleft 
                           => Psignal_4_15_port, gout => n5);
   PGblock_4_27 : PG_2 port map( gleft => Gsignal_3_27_port, gright => 
                           Gsignal_4_23_port, pleft => Psignal_3_27_port, 
                           pright => Psignal_4_23_port, pout => 
                           Psignal_5_27_port, gout => Gsignal_5_27_port);
   PGblock_4_31 : PG_1 port map( gleft => Gsignal_4_31_port, gright => 
                           Gsignal_4_23_port, pleft => Psignal_4_31_port, 
                           pright => Psignal_4_23_port, pout => 
                           Psignal_5_31_port, gout => Gsignal_5_31_port);
   Gblock_5_19 : G_4 port map( gleft => Gsignal_3_19_port, gright => n5, pleft 
                           => Psignal_3_19_port, gout => Cout_5_port);
   Gblock_5_23 : G_3 port map( gleft => Gsignal_4_23_port, gright => n5, pleft 
                           => Psignal_4_23_port, gout => Cout_6_port);
   Gblock_5_27 : G_2 port map( gleft => Gsignal_5_27_port, gright => n5, pleft 
                           => Psignal_5_27_port, gout => Cout_7_port);
   Gblock_5_31 : G_1 port map( gleft => Gsignal_5_31_port, gright => 
                           Cout_4_port, pleft => Psignal_5_31_port, gout => 
                           Cout_8_port);
   U1 : BUF_X1 port map( A => n5, Z => Cout_4_port);
   U2 : CLKBUF_X1 port map( A => n6, Z => n1);
   U3 : CLKBUF_X1 port map( A => n1, Z => Cout_2_port);
   U4 : CLKBUF_X1 port map( A => n7, Z => Cout_1_port);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_cla_adder_N32.all;

entity cla_adder_N32 is

   generic( N : Integer := 32);
   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  Cout : 
         out std_logic;  Sum : out std_logic_vector (31 downto 0));

end cla_adder_N32;

architecture SYN_struct of cla_adder_N32 is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component sum_generator_Nbits32_Nblocks8
      port( A, B : in std_logic_vector (31 downto 0);  Carry : in 
            std_logic_vector (8 downto 0);  S : out std_logic_vector (31 downto
            0);  Cout : out std_logic);
   end component;
   
   component carry_generator_N32_Nblocks8
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  Cout
            : out std_logic_vector (8 downto 0));
   end component;
   
   signal Carry_8_port, Carry_7_port, Carry_6_port, Carry_5_port, Carry_4_port,
      Carry_3_port, Carry_2_port, Carry_1_port, Carry_0_port, n1, n2 : 
      std_logic;

begin
   
   CG : carry_generator_N32_Nblocks8 port map( A(31) => A(31), A(30) => A(30), 
                           A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => Ci, Cout(8) => 
                           Carry_8_port, Cout(7) => Carry_7_port, Cout(6) => 
                           Carry_6_port, Cout(5) => Carry_5_port, Cout(4) => 
                           Carry_4_port, Cout(3) => Carry_3_port, Cout(2) => 
                           Carry_2_port, Cout(1) => Carry_1_port, Cout(0) => 
                           Carry_0_port);
   SG : sum_generator_Nbits32_Nblocks8 port map( A(31) => A(31), A(30) => A(30)
                           , A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => n1, A(14) 
                           => A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => n2, B(31) => B(31), B(30) => B(30), B(29) => 
                           B(29), B(28) => B(28), B(27) => B(27), B(26) => 
                           B(26), B(25) => B(25), B(24) => B(24), B(23) => 
                           B(23), B(22) => B(22), B(21) => B(21), B(20) => 
                           B(20), B(19) => B(19), B(18) => B(18), B(17) => 
                           B(17), B(16) => B(16), B(15) => B(15), B(14) => 
                           B(14), B(13) => B(13), B(12) => B(12), B(11) => 
                           B(11), B(10) => B(10), B(9) => B(9), B(8) => B(8), 
                           B(7) => B(7), B(6) => B(6), B(5) => B(5), B(4) => 
                           B(4), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Carry(8) => Carry_8_port, Carry(7) => 
                           Carry_7_port, Carry(6) => Carry_6_port, Carry(5) => 
                           Carry_5_port, Carry(4) => Carry_4_port, Carry(3) => 
                           Carry_3_port, Carry(2) => Carry_2_port, Carry(1) => 
                           Carry_1_port, Carry(0) => Carry_0_port, S(31) => 
                           Sum(31), S(30) => Sum(30), S(29) => Sum(29), S(28) 
                           => Sum(28), S(27) => Sum(27), S(26) => Sum(26), 
                           S(25) => Sum(25), S(24) => Sum(24), S(23) => Sum(23)
                           , S(22) => Sum(22), S(21) => Sum(21), S(20) => 
                           Sum(20), S(19) => Sum(19), S(18) => Sum(18), S(17) 
                           => Sum(17), S(16) => Sum(16), S(15) => Sum(15), 
                           S(14) => Sum(14), S(13) => Sum(13), S(12) => Sum(12)
                           , S(11) => Sum(11), S(10) => Sum(10), S(9) => Sum(9)
                           , S(8) => Sum(8), S(7) => Sum(7), S(6) => Sum(6), 
                           S(5) => Sum(5), S(4) => Sum(4), S(3) => Sum(3), S(2)
                           => Sum(2), S(1) => Sum(1), S(0) => Sum(0), Cout => 
                           Cout);
   U1 : BUF_X2 port map( A => A(0), Z => n2);
   U2 : BUF_X1 port map( A => A(15), Z => n1);

end SYN_struct;
