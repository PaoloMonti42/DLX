
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_booth_mul_N16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_booth_mul_N16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_255 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_255;

architecture SYN_BEHAVIORAL of FA_255 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n7, B => Ci, Z => S);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U4 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => n5, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_254 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_254;

architecture SYN_BEHAVIORAL of FA_254 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n6, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_253 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_253;

architecture SYN_BEHAVIORAL of FA_253 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U4 : CLKBUF_X1 port map( A => A, Z => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n6, B1 => n4, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_252 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_252;

architecture SYN_BEHAVIORAL of FA_252 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => n4, B1 => n6, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_251 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_251;

architecture SYN_BEHAVIORAL of FA_251 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n7, n8, n9, n10 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n9, ZN => n3);
   U2 : INV_X1 port map( A => B, ZN => n4);
   U3 : INV_X1 port map( A => Ci, ZN => n5);
   U4 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => Co);
   U5 : OR2_X1 port map( A1 => n3, A2 => n4, ZN => n7);
   U6 : OR2_X1 port map( A1 => n10, A2 => n5, ZN => n8);
   U7 : CLKBUF_X1 port map( A => A, Z => n9);
   U8 : XNOR2_X1 port map( A => n10, B => Ci, ZN => S);
   U9 : XNOR2_X1 port map( A => A, B => B, ZN => n10);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_250 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_250;

architecture SYN_BEHAVIORAL of FA_250 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Ci, ZN => n6);
   U2 : CLKBUF_X1 port map( A => A, Z => n3);
   U3 : NAND2_X1 port map( A1 => n5, A2 => n8, ZN => Co);
   U4 : OR2_X1 port map( A1 => n7, A2 => n6, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n3, A2 => B, ZN => n8);
   U6 : XNOR2_X1 port map( A => A, B => B, ZN => n7);
   U7 : XNOR2_X1 port map( A => n7, B => Ci, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_249 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_249;

architecture SYN_BEHAVIORAL of FA_249 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U1 : BUF_X1 port map( A => A, Z => n4);
   U2 : BUF_X1 port map( A => B, Z => n6);
   U3 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U5 : XNOR2_X1 port map( A => n4, B => n6, ZN => n5);
   U6 : AOI22_X1 port map( A1 => n6, A2 => n4, B1 => n8, B2 => Ci, ZN => n7);
   U7 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_248 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_248;

architecture SYN_BEHAVIORAL of FA_248 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n7 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Ci, ZN => n3);
   U2 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n7);
   U3 : XNOR2_X1 port map( A => n5, B => A, ZN => S);
   U4 : NOR2_X1 port map( A1 => A, A2 => B, ZN => n4);
   U5 : XNOR2_X1 port map( A => Ci, B => B, ZN => n5);
   U6 : OAI21_X1 port map( B1 => n3, B2 => n4, A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_247 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_247;

architecture SYN_BEHAVIORAL of FA_247 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n7 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n3, B2 => n4, A => n7, ZN => Co);
   U2 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n7);
   U3 : NOR2_X1 port map( A1 => A, A2 => B, ZN => n4);
   U4 : XNOR2_X1 port map( A => Ci, B => B, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n3);
   U6 : XNOR2_X1 port map( A => n5, B => A, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_246 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_246;

architecture SYN_BEHAVIORAL of FA_246 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net24970, net24967, n3, n4 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n3, B2 => net24967, A => net24970, ZN => Co);
   U2 : INV_X1 port map( A => Ci, ZN => net24967);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U4 : XNOR2_X1 port map( A => n3, B => Ci, ZN => S);
   U5 : CLKBUF_X1 port map( A => A, Z => n4);
   U6 : NAND2_X1 port map( A1 => B, A2 => n4, ZN => net24970);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_245 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_245;

architecture SYN_BEHAVIORAL of FA_245 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => A, A2 => n5, ZN => n6);
   U2 : NAND2_X1 port map( A1 => n4, A2 => B, ZN => n7);
   U3 : NAND2_X1 port map( A1 => n7, A2 => n6, ZN => n10);
   U4 : INV_X1 port map( A => A, ZN => n4);
   U5 : INV_X1 port map( A => B, ZN => n5);
   U6 : CLKBUF_X1 port map( A => A, Z => n8);
   U7 : XNOR2_X1 port map( A => n9, B => Ci, ZN => S);
   U8 : XNOR2_X1 port map( A => A, B => B, ZN => n9);
   U9 : INV_X1 port map( A => n11, ZN => Co);
   U10 : AOI22_X1 port map( A1 => B, A2 => n8, B1 => n10, B2 => Ci, ZN => n11);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_244 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_244;

architecture SYN_BEHAVIORAL of FA_244 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n5, ZN => S);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_243 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_243;

architecture SYN_BEHAVIORAL of FA_243 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U3 : XNOR2_X1 port map( A => Ci, B => n6, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n6);
   U6 : INV_X1 port map( A => n7, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n8, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_242 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_242;

architecture SYN_BEHAVIORAL of FA_242 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => Ci, B2 => n7, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_241 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_241;

architecture SYN_BEHAVIORAL of FA_241 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U4 : CLKBUF_X1 port map( A => B, Z => n6);
   U5 : CLKBUF_X1 port map( A => A, Z => n7);
   U6 : INV_X1 port map( A => n8, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n6, A2 => n7, B1 => Ci, B2 => n5, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_240 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_240;

architecture SYN_BEHAVIORAL of FA_240 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U5 : CLKBUF_X1 port map( A => A, Z => n6);
   U6 : INV_X1 port map( A => n7, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n6, B1 => n8, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_239 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_239;

architecture SYN_BEHAVIORAL of FA_239 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11, n12 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : CLKBUF_X1 port map( A => A, Z => n5);
   U4 : CLKBUF_X1 port map( A => B, Z => n6);
   U5 : NAND2_X1 port map( A1 => n8, A2 => A, ZN => n9);
   U6 : NAND2_X1 port map( A1 => B, A2 => n7, ZN => n10);
   U7 : NAND2_X1 port map( A1 => n9, A2 => n10, ZN => n12);
   U8 : INV_X1 port map( A => A, ZN => n7);
   U9 : INV_X1 port map( A => B, ZN => n8);
   U10 : INV_X1 port map( A => n11, ZN => Co);
   U11 : AOI22_X1 port map( A1 => n6, A2 => n5, B1 => n12, B2 => Ci, ZN => n11)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_238 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_238;

architecture SYN_BEHAVIORAL of FA_238 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => n3);
   U2 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => Co);
   U6 : CLKBUF_X1 port map( A => B, Z => n8);
   U7 : CLKBUF_X1 port map( A => A, Z => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_237 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_237;

architecture SYN_BEHAVIORAL of FA_237 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U4 : AOI22_X1 port map( A1 => n7, A2 => n6, B1 => Ci, B2 => n4, ZN => n3);
   U5 : CLKBUF_X1 port map( A => A, Z => n6);
   U6 : CLKBUF_X1 port map( A => B, Z => n7);
   U7 : INV_X1 port map( A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_236 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_236;

architecture SYN_BEHAVIORAL of FA_236 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n7, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_235 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_235;

architecture SYN_BEHAVIORAL of FA_235 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n6, n7, n8, n9, n10, n11, n12, n13 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n7, A2 => n6, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n13, A2 => Ci, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => Co);
   U4 : INV_X1 port map( A => n9, ZN => n6);
   U5 : INV_X1 port map( A => n8, ZN => n7);
   U6 : NAND2_X1 port map( A1 => B, A2 => n9, ZN => n10);
   U7 : NAND2_X1 port map( A1 => n8, A2 => A, ZN => n11);
   U8 : NAND2_X1 port map( A1 => n11, A2 => n10, ZN => n13);
   U9 : INV_X1 port map( A => B, ZN => n8);
   U10 : INV_X1 port map( A => A, ZN => n9);
   U11 : XNOR2_X1 port map( A => n12, B => Ci, ZN => S);
   U12 : XNOR2_X1 port map( A => A, B => B, ZN => n12);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_234 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_234;

architecture SYN_BEHAVIORAL of FA_234 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n7, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => n5, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_233 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_233;

architecture SYN_BEHAVIORAL of FA_233 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_232 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_232;

architecture SYN_BEHAVIORAL of FA_232 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_231 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_231;

architecture SYN_BEHAVIORAL of FA_231 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n4, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_230 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_230;

architecture SYN_BEHAVIORAL of FA_230 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U3 : INV_X1 port map( A => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_229 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_229;

architecture SYN_BEHAVIORAL of FA_229 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U4 : CLKBUF_X1 port map( A => A, Z => n6);
   U5 : AOI22_X1 port map( A1 => B, A2 => n6, B1 => n4, B2 => Ci, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_228 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_228;

architecture SYN_BEHAVIORAL of FA_228 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_227 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_227;

architecture SYN_BEHAVIORAL of FA_227 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_226 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_226;

architecture SYN_BEHAVIORAL of FA_226 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_225 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_225;

architecture SYN_BEHAVIORAL of FA_225 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_224 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_224;

architecture SYN_BEHAVIORAL of FA_224 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_223 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_223;

architecture SYN_BEHAVIORAL of FA_223 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U1 : NAND2_X1 port map( A1 => A, A2 => n5, ZN => n6);
   U2 : NAND2_X1 port map( A1 => n4, A2 => B, ZN => n7);
   U4 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => n9);
   U5 : INV_X1 port map( A => A, ZN => n4);
   U6 : INV_X1 port map( A => B, ZN => n5);
   U7 : INV_X1 port map( A => n8, ZN => Co);
   U8 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_222 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_222;

architecture SYN_BEHAVIORAL of FA_222 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U1 : NAND2_X1 port map( A1 => A, A2 => n5, ZN => n6);
   U2 : NAND2_X1 port map( A1 => n4, A2 => B, ZN => n7);
   U4 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => n9);
   U5 : INV_X1 port map( A => A, ZN => n4);
   U6 : INV_X1 port map( A => B, ZN => n5);
   U7 : INV_X1 port map( A => n8, ZN => Co);
   U8 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_221 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_221;

architecture SYN_BEHAVIORAL of FA_221 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_220 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_220;

architecture SYN_BEHAVIORAL of FA_220 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_219 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_219;

architecture SYN_BEHAVIORAL of FA_219 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_218 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_218;

architecture SYN_BEHAVIORAL of FA_218 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_217 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_217;

architecture SYN_BEHAVIORAL of FA_217 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_216 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_216;

architecture SYN_BEHAVIORAL of FA_216 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_215 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_215;

architecture SYN_BEHAVIORAL of FA_215 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_214 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_214;

architecture SYN_BEHAVIORAL of FA_214 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_213 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_213;

architecture SYN_BEHAVIORAL of FA_213 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_212 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_212;

architecture SYN_BEHAVIORAL of FA_212 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => n6, Z => n4);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n6, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_211 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_211;

architecture SYN_BEHAVIORAL of FA_211 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_210 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_210;

architecture SYN_BEHAVIORAL of FA_210 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_209 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_209;

architecture SYN_BEHAVIORAL of FA_209 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_208 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_208;

architecture SYN_BEHAVIORAL of FA_208 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_207 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_207;

architecture SYN_BEHAVIORAL of FA_207 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_206 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_206;

architecture SYN_BEHAVIORAL of FA_206 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U4 : CLKBUF_X1 port map( A => A, Z => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n6, B1 => n5, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_205 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_205;

architecture SYN_BEHAVIORAL of FA_205 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_204 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_204;

architecture SYN_BEHAVIORAL of FA_204 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => B, B => A, Z => n7);
   U1 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U5 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n7, B2 => Ci, ZN => n6);
   U6 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_203 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_203;

architecture SYN_BEHAVIORAL of FA_203 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n5);
   U5 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_202 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_202;

architecture SYN_BEHAVIORAL of FA_202 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => B, Z => n6);
   U2 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U5 : AOI22_X1 port map( A1 => n6, A2 => A, B1 => Ci, B2 => n5, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_201 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_201;

architecture SYN_BEHAVIORAL of FA_201 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U4 : CLKBUF_X1 port map( A => B, Z => n6);
   U5 : AOI22_X1 port map( A1 => n6, A2 => A, B1 => n4, B2 => Ci, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_200 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_200;

architecture SYN_BEHAVIORAL of FA_200 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n6, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_199 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_199;

architecture SYN_BEHAVIORAL of FA_199 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U1 : NAND2_X1 port map( A1 => n6, A2 => B, ZN => n9);
   U2 : INV_X1 port map( A => n7, ZN => n4);
   U4 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => n5);
   U5 : NAND2_X1 port map( A1 => A, A2 => n7, ZN => n8);
   U6 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => n11);
   U7 : INV_X1 port map( A => A, ZN => n6);
   U8 : INV_X1 port map( A => B, ZN => n7);
   U9 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => Ci, B2 => n11, ZN => n10);
   U10 : INV_X1 port map( A => n10, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_198 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_198;

architecture SYN_BEHAVIORAL of FA_198 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n7, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n7);
   U1 : OAI22_X1 port map( A1 => n3, A2 => n4, B1 => n5, B2 => n6, ZN => Co);
   U2 : INV_X1 port map( A => B, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n4);
   U6 : INV_X1 port map( A => n7, ZN => n5);
   U7 : INV_X1 port map( A => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_197 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_197;

architecture SYN_BEHAVIORAL of FA_197 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n6, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_196 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_196;

architecture SYN_BEHAVIORAL of FA_196 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_195 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_195;

architecture SYN_BEHAVIORAL of FA_195 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_194 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_194;

architecture SYN_BEHAVIORAL of FA_194 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_193 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_193;

architecture SYN_BEHAVIORAL of FA_193 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_192 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_192;

architecture SYN_BEHAVIORAL of FA_192 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U1 : INV_X1 port map( A => B, ZN => n4);
   U2 : XNOR2_X1 port map( A => A, B => n4, ZN => n6);
   U4 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n6, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_191 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_191;

architecture SYN_BEHAVIORAL of FA_191 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : AOI22_X1 port map( A1 => B, A2 => n4, B1 => n6, B2 => Ci, ZN => n5);
   U5 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_190 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_190;

architecture SYN_BEHAVIORAL of FA_190 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_189 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_189;

architecture SYN_BEHAVIORAL of FA_189 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n5, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_188 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_188;

architecture SYN_BEHAVIORAL of FA_188 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U1 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U5 : CLKBUF_X1 port map( A => A, Z => n6);
   U6 : INV_X1 port map( A => n7, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n6, B1 => n8, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_187 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_187;

architecture SYN_BEHAVIORAL of FA_187 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n8, n9, n10, n11 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => B, Z => n3);
   U2 : INV_X1 port map( A => n11, ZN => n4);
   U3 : INV_X1 port map( A => n3, ZN => n5);
   U4 : INV_X1 port map( A => Ci, ZN => n6);
   U5 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => Co);
   U6 : OR2_X1 port map( A1 => n4, A2 => n5, ZN => n8);
   U7 : OR2_X1 port map( A1 => n10, A2 => n6, ZN => n9);
   U8 : XNOR2_X1 port map( A => n10, B => Ci, ZN => S);
   U9 : XNOR2_X1 port map( A => A, B => B, ZN => n10);
   U10 : CLKBUF_X1 port map( A => A, Z => n11);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_186 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_186;

architecture SYN_BEHAVIORAL of FA_186 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n3, B2 => n4, A => n6, ZN => Co);
   U2 : INV_X1 port map( A => Ci, ZN => n3);
   U3 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U4 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_185 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_185;

architecture SYN_BEHAVIORAL of FA_185 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n5, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_184 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_184;

architecture SYN_BEHAVIORAL of FA_184 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22_X2
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U3 : XOR2_X1 port map( A => n8, B => Ci, Z => S);
   U1 : OAI22_X2 port map( A1 => n4, A2 => n5, B1 => n6, B2 => n7, ZN => Co);
   U2 : CLKBUF_X1 port map( A => A, Z => n3);
   U5 : INV_X1 port map( A => B, ZN => n4);
   U6 : INV_X1 port map( A => n3, ZN => n5);
   U7 : INV_X1 port map( A => n8, ZN => n6);
   U8 : INV_X1 port map( A => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_183 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_183;

architecture SYN_BEHAVIORAL of FA_183 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U4 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n3);
   U5 : INV_X1 port map( A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_182 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_182;

architecture SYN_BEHAVIORAL of FA_182 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n5, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_181 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_181;

architecture SYN_BEHAVIORAL of FA_181 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => B, B => A, Z => n7);
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n5, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_180 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_180;

architecture SYN_BEHAVIORAL of FA_180 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11, n12 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => B, Z => n10);
   U2 : CLKBUF_X1 port map( A => A, Z => n4);
   U3 : AOI22_X1 port map( A1 => n10, A2 => n4, B1 => n12, B2 => Ci, ZN => n11)
                           ;
   U4 : NAND2_X1 port map( A1 => n10, A2 => n6, ZN => n7);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => n8);
   U6 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => n12);
   U7 : INV_X1 port map( A => B, ZN => n5);
   U8 : INV_X1 port map( A => A, ZN => n6);
   U9 : XNOR2_X1 port map( A => n9, B => Ci, ZN => S);
   U10 : XNOR2_X1 port map( A => B, B => A, ZN => n9);
   U11 : INV_X1 port map( A => n11, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_179 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_179;

architecture SYN_BEHAVIORAL of FA_179 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : INV_X1 port map( A => B, ZN => n3);
   U2 : OAI21_X1 port map( B1 => n3, B2 => n4, A => n5, ZN => Co);
   U3 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U4 : XNOR2_X1 port map( A => B, B => A, ZN => n6);
   U5 : NAND2_X1 port map( A1 => A, A2 => Ci, ZN => n5);
   U6 : NOR2_X1 port map( A1 => A, A2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_178 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_178;

architecture SYN_BEHAVIORAL of FA_178 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n6, n7, n8 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n8, A2 => A, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n7, A2 => Ci, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => Co);
   U4 : XNOR2_X1 port map( A => B, B => A, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => n7);
   U6 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U7 : CLKBUF_X1 port map( A => B, Z => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_177 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_177;

architecture SYN_BEHAVIORAL of FA_177 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n6, ZN => n4);
   U2 : OR2_X1 port map( A1 => B, A2 => n6, ZN => n7);
   U3 : CLKBUF_X1 port map( A => n4, Z => n9);
   U4 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U5 : AND2_X1 port map( A1 => n7, A2 => n8, ZN => n5);
   U6 : NAND2_X1 port map( A1 => B, A2 => n6, ZN => n8);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => n11);
   U8 : INV_X1 port map( A => A, ZN => n6);
   U9 : INV_X1 port map( A => n10, ZN => Co);
   U10 : AOI22_X1 port map( A1 => B, A2 => n9, B1 => n11, B2 => Ci, ZN => n10);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_176 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_176;

architecture SYN_BEHAVIORAL of FA_176 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11, n12, n13 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => A, Z => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U3 : NAND2_X1 port map( A1 => B, A2 => n7, ZN => n8);
   U4 : NAND2_X1 port map( A1 => n6, A2 => A, ZN => n9);
   U5 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => n12);
   U6 : INV_X1 port map( A => B, ZN => n6);
   U7 : INV_X1 port map( A => A, ZN => n7);
   U8 : XNOR2_X1 port map( A => n10, B => Ci, ZN => S);
   U9 : XNOR2_X1 port map( A => B, B => n4, ZN => n10);
   U10 : CLKBUF_X1 port map( A => n4, Z => n11);
   U11 : INV_X1 port map( A => n13, ZN => Co);
   U12 : AOI22_X1 port map( A1 => n5, A2 => n11, B1 => n12, B2 => Ci, ZN => n13
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_175 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_175;

architecture SYN_BEHAVIORAL of FA_175 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U4 : CLKBUF_X1 port map( A => A, Z => n6);
   U5 : CLKBUF_X1 port map( A => B, Z => n7);
   U6 : INV_X1 port map( A => n8, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n7, A2 => n6, B1 => n5, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_174 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_174;

architecture SYN_BEHAVIORAL of FA_174 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U4 : AOI22_X1 port map( A1 => n7, A2 => n6, B1 => n5, B2 => Ci, ZN => n3);
   U5 : CLKBUF_X1 port map( A => B, Z => n7);
   U6 : CLKBUF_X1 port map( A => A, Z => n6);
   U7 : INV_X1 port map( A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_173 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_173;

architecture SYN_BEHAVIORAL of FA_173 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11, n12 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => A, Z => n10);
   U2 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U3 : AND2_X1 port map( A1 => n8, A2 => n9, ZN => n4);
   U4 : CLKBUF_X1 port map( A => B, Z => n11);
   U5 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => n5);
   U6 : NAND2_X1 port map( A1 => n7, A2 => B, ZN => n8);
   U7 : NAND2_X1 port map( A1 => n6, A2 => A, ZN => n9);
   U8 : INV_X1 port map( A => B, ZN => n6);
   U9 : INV_X1 port map( A => A, ZN => n7);
   U10 : INV_X1 port map( A => n12, ZN => Co);
   U11 : AOI22_X1 port map( A1 => n11, A2 => n10, B1 => n5, B2 => Ci, ZN => n12
                           );

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_172 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_172;

architecture SYN_BEHAVIORAL of FA_172 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11, n12, n13 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => B, Z => n11);
   U2 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U3 : AND2_X1 port map( A1 => n9, A2 => n10, ZN => n4);
   U4 : BUF_X1 port map( A => n7, Z => n5);
   U5 : INV_X1 port map( A => n5, ZN => n6);
   U6 : NAND2_X1 port map( A1 => n8, A2 => A, ZN => n9);
   U7 : NAND2_X1 port map( A1 => B, A2 => n7, ZN => n10);
   U8 : NAND2_X1 port map( A1 => n9, A2 => n10, ZN => n13);
   U9 : INV_X1 port map( A => A, ZN => n7);
   U10 : INV_X1 port map( A => B, ZN => n8);
   U11 : AOI22_X1 port map( A1 => n11, A2 => n6, B1 => n13, B2 => Ci, ZN => n12
                           );
   U12 : INV_X1 port map( A => n12, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_171 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_171;

architecture SYN_BEHAVIORAL of FA_171 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n6, n7, n8, n9, n10, n11, n12 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n7, A2 => A, ZN => n3);
   U2 : NAND2_X1 port map( A1 => Ci, A2 => n12, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => Co);
   U4 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U5 : AND2_X1 port map( A1 => n10, A2 => n11, ZN => n6);
   U6 : CLKBUF_X1 port map( A => B, Z => n7);
   U7 : NAND2_X1 port map( A1 => n9, A2 => A, ZN => n10);
   U8 : NAND2_X1 port map( A1 => B, A2 => n8, ZN => n11);
   U9 : NAND2_X1 port map( A1 => n11, A2 => n10, ZN => n12);
   U10 : INV_X1 port map( A => A, ZN => n8);
   U11 : INV_X1 port map( A => B, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_170 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_170;

architecture SYN_BEHAVIORAL of FA_170 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U5 : CLKBUF_X1 port map( A => B, Z => n7);
   U6 : INV_X1 port map( A => n8, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n7, A2 => n4, B1 => n6, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_169 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_169;

architecture SYN_BEHAVIORAL of FA_169 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : BUF_X1 port map( A => Ci, Z => n4);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n6, B2 => n4, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_168 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_168;

architecture SYN_BEHAVIORAL of FA_168 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_167 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_167;

architecture SYN_BEHAVIORAL of FA_167 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n6, ZN => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n5, ZN => S);
   U3 : AND2_X1 port map( A1 => n9, A2 => n8, ZN => n5);
   U4 : NAND2_X1 port map( A1 => n7, A2 => A, ZN => n8);
   U5 : NAND2_X1 port map( A1 => B, A2 => n6, ZN => n9);
   U6 : NAND2_X1 port map( A1 => n9, A2 => n8, ZN => n11);
   U7 : INV_X1 port map( A => A, ZN => n6);
   U8 : INV_X1 port map( A => B, ZN => n7);
   U9 : INV_X1 port map( A => n10, ZN => Co);
   U10 : AOI22_X1 port map( A1 => B, A2 => n4, B1 => n11, B2 => Ci, ZN => n10);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_166 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_166;

architecture SYN_BEHAVIORAL of FA_166 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : NAND2_X1 port map( A1 => B, A2 => n6, ZN => n7);
   U4 : NAND2_X1 port map( A1 => n5, A2 => A, ZN => n8);
   U5 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => n9);
   U6 : INV_X1 port map( A => B, ZN => n5);
   U7 : INV_X1 port map( A => A, ZN => n6);
   U8 : CLKBUF_X1 port map( A => B, Z => n10);
   U9 : AOI22_X1 port map( A1 => n10, A2 => A, B1 => n9, B2 => Ci, ZN => n11);
   U10 : INV_X1 port map( A => n11, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_165 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_165;

architecture SYN_BEHAVIORAL of FA_165 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => n4, B1 => n6, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_164 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_164;

architecture SYN_BEHAVIORAL of FA_164 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U2 : CLKBUF_X1 port map( A => A, Z => n4);
   U3 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U4 : XNOR2_X1 port map( A => A, B => B, ZN => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n4, B1 => n5, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_163 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_163;

architecture SYN_BEHAVIORAL of FA_163 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_162 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_162;

architecture SYN_BEHAVIORAL of FA_162 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_161 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_161;

architecture SYN_BEHAVIORAL of FA_161 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_160 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_160;

architecture SYN_BEHAVIORAL of FA_160 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_159 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_159;

architecture SYN_BEHAVIORAL of FA_159 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_158 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_158;

architecture SYN_BEHAVIORAL of FA_158 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_157 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_157;

architecture SYN_BEHAVIORAL of FA_157 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_156 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_156;

architecture SYN_BEHAVIORAL of FA_156 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_155 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_155;

architecture SYN_BEHAVIORAL of FA_155 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_154 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_154;

architecture SYN_BEHAVIORAL of FA_154 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_153 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_153;

architecture SYN_BEHAVIORAL of FA_153 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_152 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_152;

architecture SYN_BEHAVIORAL of FA_152 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_151 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_151;

architecture SYN_BEHAVIORAL of FA_151 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_150 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_150;

architecture SYN_BEHAVIORAL of FA_150 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_149 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_149;

architecture SYN_BEHAVIORAL of FA_149 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_148 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_148;

architecture SYN_BEHAVIORAL of FA_148 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_147 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_147;

architecture SYN_BEHAVIORAL of FA_147 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_146 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_146;

architecture SYN_BEHAVIORAL of FA_146 is

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
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_145 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_145;

architecture SYN_BEHAVIORAL of FA_145 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_144 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_144;

architecture SYN_BEHAVIORAL of FA_144 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_143 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_143;

architecture SYN_BEHAVIORAL of FA_143 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_142 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_142;

architecture SYN_BEHAVIORAL of FA_142 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_141 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_141;

architecture SYN_BEHAVIORAL of FA_141 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => n6, Z => n4);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_140 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_140;

architecture SYN_BEHAVIORAL of FA_140 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_139 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_139;

architecture SYN_BEHAVIORAL of FA_139 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n10, B => Ci, Z => S);
   U1 : OR2_X1 port map( A1 => A, A2 => n6, ZN => n8);
   U2 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => n4);
   U4 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : NAND2_X1 port map( A1 => A, A2 => n6, ZN => n7);
   U6 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => n10);
   U7 : INV_X1 port map( A => B, ZN => n6);
   U8 : INV_X1 port map( A => n9, ZN => Co);
   U9 : AOI22_X1 port map( A1 => B, A2 => n5, B1 => n4, B2 => Ci, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_138 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_138;

architecture SYN_BEHAVIORAL of FA_138 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : CLKBUF_X1 port map( A => n8, Z => n5);
   U3 : INV_X1 port map( A => n7, ZN => Co);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : AOI22_X1 port map( A1 => B, A2 => n4, B1 => n5, B2 => Ci, ZN => n7);
   U7 : XNOR2_X1 port map( A => n8, B => n6, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_137 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_137;

architecture SYN_BEHAVIORAL of FA_137 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U3 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => B, ZN => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n4, B1 => n5, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_136 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_136;

architecture SYN_BEHAVIORAL of FA_136 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => n6, Z => n4);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_135 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_135;

architecture SYN_BEHAVIORAL of FA_135 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_134 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_134;

architecture SYN_BEHAVIORAL of FA_134 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_133 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_133;

architecture SYN_BEHAVIORAL of FA_133 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U3 : INV_X1 port map( A => B, ZN => n6);
   U4 : XNOR2_X1 port map( A => n7, B => Ci, ZN => S);
   U5 : AND2_X1 port map( A1 => n12, A2 => n13, ZN => n7);
   U6 : NAND2_X1 port map( A1 => n4, A2 => n11, ZN => n8);
   U7 : INV_X1 port map( A => n14, ZN => Co);
   U8 : NAND2_X1 port map( A1 => n8, A2 => n13, ZN => n9);
   U9 : NAND2_X1 port map( A1 => n6, A2 => A, ZN => n12);
   U10 : NAND2_X1 port map( A1 => B, A2 => n10, ZN => n13);
   U11 : INV_X1 port map( A => A, ZN => n10);
   U12 : INV_X1 port map( A => n5, ZN => n11);
   U13 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n9, B2 => Ci, ZN => n14);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_132 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_132;

architecture SYN_BEHAVIORAL of FA_132 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n6, B2 => n4, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_131 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_131;

architecture SYN_BEHAVIORAL of FA_131 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_130 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_130;

architecture SYN_BEHAVIORAL of FA_130 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_129 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_129;

architecture SYN_BEHAVIORAL of FA_129 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_128 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_128;

architecture SYN_BEHAVIORAL of FA_128 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n7, B => Ci, Z => S);
   U1 : INV_X1 port map( A => B, ZN => n5);
   U2 : CLKBUF_X1 port map( A => A, Z => n4);
   U4 : XNOR2_X1 port map( A => A, B => n5, ZN => n7);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n4, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_127 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_127;

architecture SYN_BEHAVIORAL of FA_127 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n7, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : OAI22_X1 port map( A1 => n3, A2 => n4, B1 => n5, B2 => n6, ZN => Co);
   U2 : INV_X1 port map( A => B, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n4);
   U6 : INV_X1 port map( A => n7, ZN => n5);
   U7 : INV_X1 port map( A => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_126 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_126;

architecture SYN_BEHAVIORAL of FA_126 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n7, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => Ci, B2 => n7, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_125 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_125;

architecture SYN_BEHAVIORAL of FA_125 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n5, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_124 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_124;

architecture SYN_BEHAVIORAL of FA_124 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_123 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_123;

architecture SYN_BEHAVIORAL of FA_123 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n6, n7, n8, n9, n10 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => B, Z => n3);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n6, A2 => n9, ZN => Co);
   U4 : OR2_X1 port map( A1 => n8, A2 => n7, ZN => n6);
   U5 : NAND2_X1 port map( A1 => n10, A2 => n3, ZN => n9);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n8);
   U7 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U8 : CLKBUF_X1 port map( A => A, Z => n10);
   U9 : INV_X1 port map( A => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_122 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_122;

architecture SYN_BEHAVIORAL of FA_122 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Ci, ZN => n6);
   U2 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U3 : OR2_X1 port map( A1 => n7, A2 => n6, ZN => n4);
   U4 : NAND2_X1 port map( A1 => B, A2 => n8, ZN => n5);
   U5 : CLKBUF_X1 port map( A => A, Z => n8);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => n7, B => Ci, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_121 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_121;

architecture SYN_BEHAVIORAL of FA_121 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X2 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U4 : CLKBUF_X1 port map( A => A, Z => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n6, B1 => n5, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_120 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_120;

architecture SYN_BEHAVIORAL of FA_120 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : AOI22_X1 port map( A1 => B, A2 => n5, B1 => n4, B2 => Ci, ZN => n3);
   U2 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : INV_X1 port map( A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_119 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_119;

architecture SYN_BEHAVIORAL of FA_119 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n7);
   U1 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_118 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_118;

architecture SYN_BEHAVIORAL of FA_118 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => A, Z => n3);
   U2 : NOR2_X1 port map( A1 => B, A2 => n3, ZN => n5);
   U3 : NAND2_X1 port map( A1 => n3, A2 => B, ZN => n6);
   U4 : OAI21_X1 port map( B1 => n4, B2 => n5, A => n6, ZN => Co);
   U5 : XNOR2_X1 port map( A => B, B => n7, ZN => S);
   U6 : XNOR2_X1 port map( A => A, B => Ci, ZN => n7);
   U7 : INV_X1 port map( A => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_117 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_117;

architecture SYN_BEHAVIORAL of FA_117 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n5, n6, n7 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n6, B2 => n5, A => n7, ZN => Co);
   U2 : INV_X1 port map( A => Ci, ZN => n6);
   U3 : CLKBUF_X1 port map( A => B, Z => n3);
   U4 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U5 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U6 : NAND2_X1 port map( A1 => A, A2 => n3, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_116 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_116;

architecture SYN_BEHAVIORAL of FA_116 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net25654, net26717, net24871, n3, n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Ci, ZN => net24871);
   U2 : XNOR2_X1 port map( A => n3, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U4 : OR2_X1 port map( A1 => n3, A2 => net24871, ZN => net26717);
   U5 : CLKBUF_X1 port map( A => A, Z => net25654);
   U6 : NAND2_X1 port map( A1 => net26717, A2 => n5, ZN => Co);
   U7 : NAND2_X1 port map( A1 => net25654, A2 => B, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_115 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_115;

architecture SYN_BEHAVIORAL of FA_115 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n7 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Ci, ZN => n3);
   U2 : OAI21_X1 port map( B1 => n4, B2 => n3, A => n7, ZN => Co);
   U3 : XNOR2_X1 port map( A => Ci, B => A, ZN => n5);
   U4 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n7);
   U5 : XNOR2_X1 port map( A => B, B => n5, ZN => S);
   U6 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_114 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_114;

architecture SYN_BEHAVIORAL of FA_114 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net23681, net26232, net26672, n3, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n3, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => net26672);
   U4 : NAND2_X1 port map( A1 => net26672, A2 => Ci, ZN => net23681);
   U5 : CLKBUF_X1 port map( A => A, Z => net26232);
   U6 : NAND2_X1 port map( A1 => n5, A2 => net23681, ZN => Co);
   U7 : NAND2_X1 port map( A1 => B, A2 => net26232, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_113 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_113;

architecture SYN_BEHAVIORAL of FA_113 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n5, n6, n7 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n5, B2 => n6, A => n3, ZN => Co);
   U2 : NAND2_X1 port map( A1 => n7, A2 => B, ZN => n3);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n6);
   U4 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U5 : INV_X1 port map( A => Ci, ZN => n5);
   U6 : CLKBUF_X1 port map( A => A, Z => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_112 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_112;

architecture SYN_BEHAVIORAL of FA_112 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U2 : NAND2_X1 port map( A1 => n4, A2 => n7, ZN => Co);
   U3 : OR2_X1 port map( A1 => n5, A2 => n6, ZN => n4);
   U4 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_111 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_111;

architecture SYN_BEHAVIORAL of FA_111 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U4 : CLKBUF_X1 port map( A => B, Z => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n6, A2 => A, B1 => n4, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_110 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_110;

architecture SYN_BEHAVIORAL of FA_110 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net23379, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => A, Z => n11);
   U2 : NAND2_X1 port map( A1 => n13, A2 => net23379, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n7, A2 => Ci, ZN => n4);
   U4 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => Co);
   U5 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U6 : AND2_X1 port map( A1 => n12, A2 => n10, ZN => n6);
   U7 : NAND2_X1 port map( A1 => n12, A2 => n10, ZN => n7);
   U8 : NAND2_X1 port map( A1 => n8, A2 => B, ZN => n10);
   U9 : INV_X1 port map( A => A, ZN => n8);
   U10 : INV_X1 port map( A => n8, ZN => net23379);
   U11 : NAND2_X1 port map( A1 => n9, A2 => n11, ZN => n12);
   U12 : INV_X1 port map( A => B, ZN => n9);
   U13 : CLKBUF_X1 port map( A => B, Z => n13);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_109 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_109;

architecture SYN_BEHAVIORAL of FA_109 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => n6, A2 => n4, ZN => Co);
   U2 : AND2_X1 port map( A1 => n5, A2 => A, ZN => n4);
   U3 : CLKBUF_X1 port map( A => B, Z => n5);
   U4 : XNOR2_X1 port map( A => B, B => A, ZN => n8);
   U5 : XNOR2_X1 port map( A => Ci, B => n8, ZN => S);
   U6 : INV_X1 port map( A => Ci, ZN => n7);
   U7 : NOR2_X1 port map( A1 => n7, A2 => n8, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_108 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_108;

architecture SYN_BEHAVIORAL of FA_108 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n9, B => Ci, Z => S);
   U1 : CLKBUF_X1 port map( A => A, Z => n3);
   U2 : CLKBUF_X1 port map( A => n5, Z => n4);
   U4 : XNOR2_X1 port map( A => A, B => n5, ZN => n9);
   U5 : OAI22_X1 port map( A1 => n4, A2 => n6, B1 => n7, B2 => n8, ZN => Co);
   U6 : INV_X1 port map( A => B, ZN => n5);
   U7 : INV_X1 port map( A => n3, ZN => n6);
   U8 : INV_X1 port map( A => n9, ZN => n7);
   U9 : INV_X1 port map( A => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_107 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_107;

architecture SYN_BEHAVIORAL of FA_107 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n5, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U4 : AOI22_X1 port map( A1 => n7, A2 => n6, B1 => Ci, B2 => n4, ZN => n3);
   U5 : CLKBUF_X1 port map( A => B, Z => n7);
   U6 : CLKBUF_X1 port map( A => A, Z => n6);
   U7 : INV_X1 port map( A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_106 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_106;

architecture SYN_BEHAVIORAL of FA_106 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n4);
   U3 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U4 : CLKBUF_X1 port map( A => A, Z => n6);
   U5 : CLKBUF_X1 port map( A => B, Z => n7);
   U6 : INV_X1 port map( A => n8, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n7, A2 => n6, B1 => Ci, B2 => n5, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_105 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_105;

architecture SYN_BEHAVIORAL of FA_105 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n7, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => n5, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_104 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_104;

architecture SYN_BEHAVIORAL of FA_104 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U5 : CLKBUF_X1 port map( A => A, Z => n7);
   U6 : INV_X1 port map( A => n8, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n7, B1 => n6, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_103 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_103;

architecture SYN_BEHAVIORAL of FA_103 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => B, B => A, Z => n7);
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : XNOR2_X1 port map( A => Ci, B => n5, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n4, B1 => Ci, B2 => n7, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_102 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_102;

architecture SYN_BEHAVIORAL of FA_102 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X2
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U2 : OAI22_X2 port map( A1 => n4, A2 => n5, B1 => n3, B2 => n6, ZN => Co);
   U3 : INV_X1 port map( A => B, ZN => n4);
   U4 : INV_X1 port map( A => A, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : XNOR2_X1 port map( A => n7, B => Ci, ZN => S);
   U7 : XNOR2_X1 port map( A => A, B => B, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_101 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_101;

architecture SYN_BEHAVIORAL of FA_101 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n10, B => Ci, Z => S);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : OAI21_X1 port map( B1 => n7, B2 => B, A => n8, ZN => n10);
   U4 : CLKBUF_X1 port map( A => n7, Z => n5);
   U5 : INV_X1 port map( A => n5, ZN => n6);
   U6 : NAND2_X1 port map( A1 => B, A2 => n7, ZN => n8);
   U7 : INV_X1 port map( A => A, ZN => n7);
   U8 : INV_X1 port map( A => n9, ZN => Co);
   U9 : AOI22_X1 port map( A1 => n4, A2 => n6, B1 => n10, B2 => Ci, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_100 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_100;

architecture SYN_BEHAVIORAL of FA_100 is

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
   
   U3 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_99 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_99;

architecture SYN_BEHAVIORAL of FA_99 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n6, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => n4, B1 => n6, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_98 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_98;

architecture SYN_BEHAVIORAL of FA_98 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_97 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_97;

architecture SYN_BEHAVIORAL of FA_97 is

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

use work.CONV_PACK_booth_mul_N16.all;

entity FA_96 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_96;

architecture SYN_BEHAVIORAL of FA_96 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Ci, ZN => n4);
   U2 : INV_X1 port map( A => B, ZN => n5);
   U3 : XNOR2_X1 port map( A => n4, B => n7, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => n5, ZN => n7);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_95 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_95;

architecture SYN_BEHAVIORAL of FA_95 is

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
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_94 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_94;

architecture SYN_BEHAVIORAL of FA_94 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n8);
   U1 : CLKBUF_X1 port map( A => n8, Z => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : CLKBUF_X1 port map( A => A, Z => n6);
   U6 : INV_X1 port map( A => n7, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n5, A2 => n6, B1 => n8, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_93 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_93;

architecture SYN_BEHAVIORAL of FA_93 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U3 : XOR2_X1 port map( A => n7, B => Ci, Z => S);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_92 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_92;

architecture SYN_BEHAVIORAL of FA_92 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n7, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => n5, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_91 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_91;

architecture SYN_BEHAVIORAL of FA_91 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U4 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_90 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_90;

architecture SYN_BEHAVIORAL of FA_90 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : XOR2_X1 port map( A => n4, B => Ci, Z => S);
   U2 : AOI22_X1 port map( A1 => n6, A2 => n5, B1 => n4, B2 => Ci, ZN => n3);
   U3 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : CLKBUF_X1 port map( A => B, Z => n6);
   U6 : INV_X1 port map( A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_89 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_89;

architecture SYN_BEHAVIORAL of FA_89 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => A, Z => n5);
   U3 : CLKBUF_X1 port map( A => n5, Z => n6);
   U4 : XNOR2_X1 port map( A => Ci, B => n7, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n7);
   U6 : INV_X1 port map( A => n9, ZN => Co);
   U7 : XOR2_X1 port map( A => n5, B => B, Z => n8);
   U8 : AOI22_X1 port map( A1 => n4, A2 => n6, B1 => n8, B2 => Ci, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_88 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_88;

architecture SYN_BEHAVIORAL of FA_88 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : XNOR2_X1 port map( A => Ci, B => n4, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n5, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_87 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_87;

architecture SYN_BEHAVIORAL of FA_87 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U4 : CLKBUF_X1 port map( A => A, Z => n6);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n6, B1 => n4, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_86 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_86;

architecture SYN_BEHAVIORAL of FA_86 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_85 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_85;

architecture SYN_BEHAVIORAL of FA_85 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n7, B => n6, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => n3, ZN => n7);
   U3 : OAI22_X1 port map( A1 => n3, A2 => n4, B1 => n5, B2 => n6, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n3);
   U5 : INV_X1 port map( A => A, ZN => n4);
   U6 : INV_X1 port map( A => n7, ZN => n5);
   U7 : INV_X1 port map( A => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_84 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_84;

architecture SYN_BEHAVIORAL of FA_84 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n3, B => Ci, ZN => S);
   U2 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n5);
   U3 : OAI21_X1 port map( B1 => n3, B2 => n4, A => n5, ZN => Co);
   U4 : XNOR2_X1 port map( A => B, B => A, ZN => n3);
   U5 : INV_X1 port map( A => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_83 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_83;

architecture SYN_BEHAVIORAL of FA_83 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => B, B => A, ZN => n5);
   U4 : AOI22_X1 port map( A1 => n7, A2 => n6, B1 => n4, B2 => Ci, ZN => n3);
   U5 : CLKBUF_X1 port map( A => A, Z => n6);
   U6 : CLKBUF_X1 port map( A => B, Z => n7);
   U7 : INV_X1 port map( A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_82 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_82;

architecture SYN_BEHAVIORAL of FA_82 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => Ci, Z => S);
   U1 : XOR2_X1 port map( A => B, B => n6, Z => n3);
   U2 : XNOR2_X1 port map( A => B, B => n6, ZN => n4);
   U4 : OAI22_X1 port map( A1 => n5, A2 => n6, B1 => n3, B2 => n7, ZN => Co);
   U5 : INV_X1 port map( A => B, ZN => n5);
   U6 : INV_X1 port map( A => A, ZN => n6);
   U7 : INV_X1 port map( A => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_81 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_81;

architecture SYN_BEHAVIORAL of FA_81 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : OR2_X2 port map( A1 => n6, A2 => n4, ZN => Co);
   U2 : INV_X1 port map( A => Ci, ZN => n7);
   U3 : AND2_X1 port map( A1 => B, A2 => n5, ZN => n4);
   U4 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n8);
   U6 : XNOR2_X1 port map( A => n8, B => Ci, ZN => S);
   U7 : NOR2_X1 port map( A1 => n7, A2 => n8, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_80 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_80;

architecture SYN_BEHAVIORAL of FA_80 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XOR2_X2 port map( A => n7, B => Ci, Z => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n3);
   U3 : OAI22_X1 port map( A1 => n4, A2 => n5, B1 => n3, B2 => n6, ZN => Co);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : INV_X1 port map( A => A, ZN => n5);
   U6 : INV_X1 port map( A => Ci, ZN => n6);
   U7 : XOR2_X1 port map( A => A, B => B, Z => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_79 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_79;

architecture SYN_BEHAVIORAL of FA_79 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Ci, ZN => n6);
   U2 : OR2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U3 : AND2_X1 port map( A1 => A, A2 => B, ZN => n4);
   U4 : XNOR2_X1 port map( A => A, B => B, ZN => n7);
   U5 : XNOR2_X1 port map( A => n7, B => Ci, ZN => S);
   U6 : NOR2_X1 port map( A1 => n7, A2 => n6, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_78 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_78;

architecture SYN_BEHAVIORAL of FA_78 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Ci, ZN => n6);
   U2 : AND2_X1 port map( A1 => n5, A2 => n6, ZN => n3);
   U3 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U5 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U6 : AOI21_X1 port map( B1 => n5, B2 => n4, A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_77 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_77;

architecture SYN_BEHAVIORAL of FA_77 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Ci, ZN => n6);
   U2 : CLKBUF_X1 port map( A => A, Z => n3);
   U3 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => n7);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U6 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U7 : OAI21_X1 port map( B1 => n6, B2 => n5, A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_76 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_76;

architecture SYN_BEHAVIORAL of FA_76 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X2 port map( A => n5, B => B, ZN => S);
   U2 : NOR2_X1 port map( A1 => n3, A2 => n4, ZN => Co);
   U3 : AOI21_X1 port map( B1 => B, B2 => A, A => Ci, ZN => n4);
   U4 : XNOR2_X1 port map( A => A, B => Ci, ZN => n5);
   U5 : NOR2_X1 port map( A1 => B, A2 => A, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_75 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_75;

architecture SYN_BEHAVIORAL of FA_75 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => A, Z => n3);
   U2 : INV_X1 port map( A => Ci, ZN => n7);
   U3 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : NAND2_X1 port map( A1 => n6, A2 => n9, ZN => Co);
   U5 : OR2_X1 port map( A1 => n8, A2 => n7, ZN => n6);
   U6 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => n9);
   U7 : XNOR2_X1 port map( A => B, B => A, ZN => n8);
   U8 : XNOR2_X1 port map( A => n8, B => Ci, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_74 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_74;

architecture SYN_BEHAVIORAL of FA_74 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => A, Z => n7);
   U2 : INV_X1 port map( A => Ci, ZN => n3);
   U3 : OAI21_X1 port map( B1 => n3, B2 => n4, A => n5, ZN => Co);
   U4 : NAND2_X1 port map( A1 => B, A2 => n7, ZN => n5);
   U5 : NOR2_X1 port map( A1 => B, A2 => n7, ZN => n4);
   U6 : XNOR2_X1 port map( A => n6, B => B, ZN => S);
   U7 : XNOR2_X1 port map( A => A, B => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_73 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_73;

architecture SYN_BEHAVIORAL of FA_73 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => B, B => A, Z => n8);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => A, Z => n5);
   U3 : XNOR2_X1 port map( A => n6, B => Ci, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n6);
   U6 : INV_X1 port map( A => n7, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n4, A2 => n5, B1 => n8, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_72 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_72;

architecture SYN_BEHAVIORAL of FA_72 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => A, Z => n5);
   U3 : INV_X1 port map( A => n6, ZN => Co);
   U5 : XOR2_X1 port map( A => n4, B => Ci, Z => S);
   U6 : AOI22_X1 port map( A1 => B, A2 => n5, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_71 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_71;

architecture SYN_BEHAVIORAL of FA_71 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : XOR2_X1 port map( A => n5, B => Ci, Z => S);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_70 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_70;

architecture SYN_BEHAVIORAL of FA_70 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9, n10, n11 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n6, B => Ci, Z => S);
   U1 : CLKBUF_X1 port map( A => A, Z => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U4 : NAND2_X1 port map( A1 => n7, A2 => n10, ZN => n6);
   U5 : OR2_X1 port map( A1 => B, A2 => n9, ZN => n10);
   U6 : NAND2_X1 port map( A1 => B, A2 => n9, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n10, ZN => n8);
   U8 : INV_X1 port map( A => A, ZN => n9);
   U9 : INV_X1 port map( A => n11, ZN => Co);
   U10 : AOI22_X1 port map( A1 => n5, A2 => n4, B1 => n8, B2 => Ci, ZN => n11);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_69 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_69;

architecture SYN_BEHAVIORAL of FA_69 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n7);
   U1 : XNOR2_X1 port map( A => n4, B => Ci, ZN => S);
   U2 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U3 : CLKBUF_X1 port map( A => A, Z => n5);
   U5 : INV_X1 port map( A => n6, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n5, B1 => n7, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_68 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_68;

architecture SYN_BEHAVIORAL of FA_68 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => A, Z => n4);
   U2 : XNOR2_X1 port map( A => n5, B => Ci, ZN => S);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U4 : INV_X1 port map( A => n8, ZN => Co);
   U5 : CLKBUF_X1 port map( A => n4, Z => n6);
   U6 : XOR2_X1 port map( A => n4, B => B, Z => n7);
   U7 : AOI22_X1 port map( A1 => B, A2 => n6, B1 => n7, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_67 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_67;

architecture SYN_BEHAVIORAL of FA_67 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => A, Z => n5);
   U2 : INV_X1 port map( A => n7, ZN => Co);
   U3 : XNOR2_X2 port map( A => Ci, B => n4, ZN => S);
   U4 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U5 : XOR2_X1 port map( A => n5, B => B, Z => n6);
   U6 : AOI22_X1 port map( A1 => B, A2 => n5, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_66 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_66;

architecture SYN_BEHAVIORAL of FA_66 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n6);
   U1 : XNOR2_X1 port map( A => Ci, B => n6, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => S);
   U3 : INV_X1 port map( A => n5, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n6, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_65 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_65;

architecture SYN_BEHAVIORAL of FA_65 is

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

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);
   U2 : INV_X1 port map( A => n8, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);
   U2 : INV_X1 port map( A => n8, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n9, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n10);
   U1 : CLKBUF_X1 port map( A => n10, Z => n8);
   U2 : INV_X1 port map( A => n9, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n10, B2 => Ci, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);
   U2 : INV_X1 port map( A => n8, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n10);
   U1 : CLKBUF_X1 port map( A => n10, Z => n8);
   U2 : INV_X1 port map( A => n9, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n10, B2 => Ci, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n9, ZN => n8);
   U2 : INV_X1 port map( A => n8, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n8, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n10);
   U1 : CLKBUF_X1 port map( A => n10, Z => n8);
   U2 : INV_X1 port map( A => n9, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n10, B2 => Ci, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n9, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n9, ZN => n8);
   U2 : INV_X1 port map( A => n8, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => A, A2 => B, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);
   U2 : INV_X1 port map( A => n8, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10, n11 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n11);
   U1 : CLKBUF_X1 port map( A => A, Z => n8);
   U2 : CLKBUF_X1 port map( A => n11, Z => n9);
   U3 : XOR2_X1 port map( A => n9, B => Ci, Z => S);
   U5 : INV_X1 port map( A => n10, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n8, B1 => n11, B2 => Ci, ZN => n10);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n9, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);
   U2 : INV_X1 port map( A => n8, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n9, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n10, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n10);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n8);
   U2 : INV_X1 port map( A => n9, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n10, B2 => n8, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10, n11 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n9, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n11);
   U1 : CLKBUF_X1 port map( A => A, Z => n8);
   U2 : CLKBUF_X1 port map( A => n11, Z => n9);
   U5 : INV_X1 port map( A => n10, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => n8, B1 => n11, B2 => Ci, ZN => n10);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n10, B => Ci, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n10);
   U1 : CLKBUF_X1 port map( A => A, Z => n8);
   U2 : AOI22_X1 port map( A1 => B, A2 => n8, B1 => n10, B2 => Ci, ZN => n9);
   U5 : INV_X1 port map( A => n9, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n8, B => n10, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n10);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n8);
   U2 : INV_X1 port map( A => n9, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n10, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n8, n9 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n9);
   U1 : INV_X1 port map( A => n8, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n9, B2 => Ci, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10, n11, n12 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => B, B => A, Z => n12);
   U1 : CLKBUF_X1 port map( A => B, Z => n9);
   U2 : CLKBUF_X1 port map( A => n12, Z => n8);
   U3 : XOR2_X1 port map( A => n8, B => Ci, Z => S);
   U5 : CLKBUF_X1 port map( A => A, Z => n10);
   U6 : INV_X1 port map( A => n11, ZN => Co);
   U7 : AOI22_X1 port map( A1 => n9, A2 => n10, B1 => n12, B2 => Ci, ZN => n11)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10, n11, n12, n13, n14 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n13, B => n12, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n14);
   U1 : OAI22_X1 port map( A1 => n8, A2 => n9, B1 => n10, B2 => n11, ZN => Co);
   U2 : INV_X1 port map( A => B, ZN => n8);
   U5 : INV_X1 port map( A => A, ZN => n9);
   U6 : INV_X1 port map( A => Ci, ZN => n10);
   U7 : INV_X1 port map( A => n14, ZN => n11);
   U8 : CLKBUF_X1 port map( A => n14, Z => n12);
   U9 : CLKBUF_X1 port map( A => Ci, Z => n13);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10 : std_logic;

begin
   
   U4 : XOR2_X1 port map( A => A, B => B, Z => n10);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n8);
   U2 : XOR2_X1 port map( A => n8, B => n10, Z => S);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n10, ZN => n9);
   U5 : INV_X1 port map( A => n9, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n10, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n10);
   U1 : INV_X1 port map( A => n9, ZN => Co);
   U2 : CLKBUF_X1 port map( A => Ci, Z => n8);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n10, B2 => n8, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10, n11, n12 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n12, B => Ci, Z => S);
   U1 : INV_X1 port map( A => n8, ZN => n12);
   U2 : XNOR2_X1 port map( A => n9, B => n10, ZN => n8);
   U4 : OAI22_X1 port map( A1 => n9, A2 => n10, B1 => n8, B2 => n11, ZN => Co);
   U5 : INV_X1 port map( A => B, ZN => n9);
   U6 : INV_X1 port map( A => A, ZN => n10);
   U7 : INV_X1 port map( A => Ci, ZN => n11);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10, n11 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n8, B => n9, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n11);
   U1 : CLKBUF_X1 port map( A => n11, Z => n8);
   U2 : CLKBUF_X1 port map( A => Ci, Z => n9);
   U5 : INV_X1 port map( A => n10, ZN => Co);
   U6 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n11, ZN => n10);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n8, B => n10, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n10);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n8);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n10, ZN => n9);
   U5 : INV_X1 port map( A => n9, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n8, n9, n10 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n10, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n10);
   U1 : INV_X1 port map( A => n9, ZN => Co);
   U2 : CLKBUF_X1 port map( A => Ci, Z => n8);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n10, B2 => n8, ZN => n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

entity PG_20 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_20;

architecture SYN_STRUCTURAL of PG_20 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pleft, A2 => pright, ZN => pout);
   U2 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n6);
   U3 : INV_X1 port map( A => n6, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_17 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_17;

architecture SYN_STRUCTURAL of PG_17 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => pleft, Z => n6);
   U2 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n7);
   U3 : AND2_X1 port map( A1 => n6, A2 => pright, ZN => pout);
   U4 : INV_X1 port map( A => n7, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_12 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_12;

architecture SYN_STRUCTURAL of PG_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n6);
   U2 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U3 : INV_X1 port map( A => n6, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n6, n7, n8 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n6, B2 => n7, A => n8, ZN => gout);
   U2 : INV_X1 port map( A => gright, ZN => n6);
   U3 : INV_X1 port map( A => pleft, ZN => n7);
   U4 : INV_X1 port map( A => gleft, ZN => n8);
   U5 : AND2_X1 port map( A1 => pleft, A2 => pright, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_10 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_10;

architecture SYN_STRUCTURAL of PG_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6, n8 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n6, A2 => n8, ZN => gout);
   U2 : NAND2_X1 port map( A1 => gright, A2 => pleft, ZN => n6);
   U3 : AND2_X1 port map( A1 => pleft, A2 => pright, ZN => pout);
   U4 : INV_X1 port map( A => gleft, ZN => n8);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_9 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_9;

architecture SYN_STRUCTURAL of PG_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pleft, A2 => pright, ZN => pout);
   U2 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n6);
   U3 : INV_X1 port map( A => n6, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_8 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_8;

architecture SYN_STRUCTURAL of PG_8 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pleft, A2 => pright, ZN => pout);
   U2 : INV_X1 port map( A => n6, ZN => gout);
   U3 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n6);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_5 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_5;

architecture SYN_STRUCTURAL of PG_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n6);
   U3 : INV_X1 port map( A => n6, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_23 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_23;

architecture SYN_STRUCTURAL of PG_23 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pleft, A2 => pright, ZN => pout);
   U2 : INV_X1 port map( A => n5, ZN => gout);
   U3 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n5);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_19 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_19;

architecture SYN_STRUCTURAL of PG_19 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pleft, A2 => pright, ZN => pout);
   U2 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n5);
   U3 : INV_X1 port map( A => n5, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_16 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_16;

architecture SYN_STRUCTURAL of PG_16 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n5, ZN => gout);
   U2 : AND2_X1 port map( A1 => pleft, A2 => pright, ZN => pout);
   U3 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n5);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_15 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_15;

architecture SYN_STRUCTURAL of PG_15 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pleft, A2 => pright, ZN => pout);
   U2 : INV_X1 port map( A => n5, ZN => gout);
   U3 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n5);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n5, ZN => gout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n5);
   U3 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n5, ZN => gout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n5);
   U3 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_7 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_7;

architecture SYN_STRUCTURAL of PG_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7 : std_logic;

begin
   
   U1 : INV_X2 port map( A => pleft, ZN => n6);
   U2 : OAI21_X1 port map( B1 => n5, B2 => n6, A => n7, ZN => gout);
   U3 : INV_X1 port map( A => gright, ZN => n5);
   U4 : INV_X1 port map( A => gleft, ZN => n7);
   U5 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_6 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_6;

architecture SYN_STRUCTURAL of PG_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n5, ZN => gout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n5);
   U3 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U2 : INV_X1 port map( A => n5, ZN => gout);
   U3 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n5);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U2 : INV_X1 port map( A => n5, ZN => gout);
   U3 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n5);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity G_4 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_4;

architecture SYN_STRUCTURAL of G_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5 : std_logic;

begin
   
   U1 : INV_X2 port map( A => n5, ZN => gout);
   U2 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n5);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity G_3 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_3;

architecture SYN_STRUCTURAL of G_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n5, ZN => gout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n5);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity G_2 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_2;

architecture SYN_STRUCTURAL of G_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6 : std_logic;

begin
   
   U1 : OR2_X2 port map( A1 => n6, A2 => gleft, ZN => gout);
   U2 : AND2_X1 port map( A1 => gright, A2 => pleft, ZN => n6);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n5, ZN => gout);
   U2 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n5);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   U2 : XOR2_X1 port map( A => A, B => B, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

entity PGnet_block_25 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_25;

architecture SYN_STRUCTURAL of PGnet_block_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => pout);
   U1 : BUF_X1 port map( A => A, Z => n1);
   U3 : AND2_X1 port map( A1 => B, A2 => n1, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   U2 : XOR2_X1 port map( A => A, B => B, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   U2 : XOR2_X1 port map( A => A, B => B, Z => pout);
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

entity PGnet_block_20 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_20;

architecture SYN_STRUCTURAL of PGnet_block_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U2 : XOR2_X1 port map( A => n1, B => A, Z => pout);
   U1 : BUF_X1 port map( A => B, Z => n1);
   U3 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   U2 : XOR2_X1 port map( A => A, B => B, Z => pout);
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   U2 : XOR2_X1 port map( A => A, B => B, Z => pout);
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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
   
   U2 : XOR2_X1 port map( A => A, B => B, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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
   
   U2 : XOR2_X1 port map( A => A, B => B, Z => pout);
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   U2 : XOR2_X1 port map( A => A, B => B, Z => pout);
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   U2 : XOR2_X1 port map( A => A, B => B, Z => pout);
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   U2 : XOR2_X1 port map( A => A, B => B, Z => pout);
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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
   
   U2 : XOR2_X1 port map( A => A, B => B, Z => pout);
   U1 : AND2_X1 port map( A1 => A, A2 => B, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

entity ND2_37 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_37;

architecture SYN_ARCH1 of ND2_37 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => A, A2 => B, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

entity ND2_25 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_25;

architecture SYN_ARCH1 of ND2_25 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => A, A2 => B, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

entity ND2_15 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_15;

architecture SYN_ARCH1 of ND2_15 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => A, A2 => B, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

entity ND2_3 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_3;

architecture SYN_ARCH1 of ND2_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => A, A2 => B, ZN => Y);

end SYN_ARCH1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
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

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
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

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
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

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
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

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
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

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity CSA_Nbits32_5 is

   port( A, B, C : in std_logic_vector (31 downto 0);  S, Cout : out 
         std_logic_vector (31 downto 0));

end CSA_Nbits32_5;

architecture SYN_struct of CSA_Nbits32_5 is

   component FA_193
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_194
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_195
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_196
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_197
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_198
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_199
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_200
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_201
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_202
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_203
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_204
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_205
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_206
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_207
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_208
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_209
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_210
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_211
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_212
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_213
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_214
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_215
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_216
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_217
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_218
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_219
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_220
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_221
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_222
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_223
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_224
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal net6198 : std_logic;

begin
   
   Cout(0) <= '0';
   FullAdd_0 : FA_224 port map( A => A(0), B => B(0), Ci => C(0), S => S(0), Co
                           => Cout(1));
   FullAdd_1 : FA_223 port map( A => A(1), B => B(1), Ci => C(1), S => S(1), Co
                           => Cout(2));
   FullAdd_2 : FA_222 port map( A => A(2), B => B(2), Ci => C(2), S => S(2), Co
                           => Cout(3));
   FullAdd_3 : FA_221 port map( A => A(3), B => B(3), Ci => C(3), S => S(3), Co
                           => Cout(4));
   FullAdd_4 : FA_220 port map( A => A(4), B => B(4), Ci => C(4), S => S(4), Co
                           => Cout(5));
   FullAdd_5 : FA_219 port map( A => A(5), B => B(5), Ci => C(5), S => S(5), Co
                           => Cout(6));
   FullAdd_6 : FA_218 port map( A => A(6), B => B(6), Ci => C(6), S => S(6), Co
                           => Cout(7));
   FullAdd_7 : FA_217 port map( A => A(7), B => B(7), Ci => C(7), S => S(7), Co
                           => Cout(8));
   FullAdd_8 : FA_216 port map( A => A(8), B => B(8), Ci => C(8), S => S(8), Co
                           => Cout(9));
   FullAdd_9 : FA_215 port map( A => A(9), B => B(9), Ci => C(9), S => S(9), Co
                           => Cout(10));
   FullAdd_10 : FA_214 port map( A => A(10), B => B(10), Ci => C(10), S => 
                           S(10), Co => Cout(11));
   FullAdd_11 : FA_213 port map( A => A(11), B => B(11), Ci => C(11), S => 
                           S(11), Co => Cout(12));
   FullAdd_12 : FA_212 port map( A => A(12), B => B(12), Ci => C(12), S => 
                           S(12), Co => Cout(13));
   FullAdd_13 : FA_211 port map( A => A(13), B => B(13), Ci => C(13), S => 
                           S(13), Co => Cout(14));
   FullAdd_14 : FA_210 port map( A => A(14), B => B(14), Ci => C(14), S => 
                           S(14), Co => Cout(15));
   FullAdd_15 : FA_209 port map( A => A(15), B => B(15), Ci => C(15), S => 
                           S(15), Co => Cout(16));
   FullAdd_16 : FA_208 port map( A => A(16), B => B(16), Ci => C(16), S => 
                           S(16), Co => Cout(17));
   FullAdd_17 : FA_207 port map( A => A(17), B => B(17), Ci => C(17), S => 
                           S(17), Co => Cout(18));
   FullAdd_18 : FA_206 port map( A => A(18), B => B(18), Ci => C(18), S => 
                           S(18), Co => Cout(19));
   FullAdd_19 : FA_205 port map( A => A(19), B => B(19), Ci => C(19), S => 
                           S(19), Co => Cout(20));
   FullAdd_20 : FA_204 port map( A => A(20), B => B(20), Ci => C(20), S => 
                           S(20), Co => Cout(21));
   FullAdd_21 : FA_203 port map( A => A(21), B => B(21), Ci => C(21), S => 
                           S(21), Co => Cout(22));
   FullAdd_22 : FA_202 port map( A => A(22), B => B(22), Ci => C(22), S => 
                           S(22), Co => Cout(23));
   FullAdd_23 : FA_201 port map( A => A(23), B => B(23), Ci => C(23), S => 
                           S(23), Co => Cout(24));
   FullAdd_24 : FA_200 port map( A => A(24), B => B(24), Ci => C(24), S => 
                           S(24), Co => Cout(25));
   FullAdd_25 : FA_199 port map( A => A(25), B => B(25), Ci => C(25), S => 
                           S(25), Co => Cout(26));
   FullAdd_26 : FA_198 port map( A => A(26), B => B(26), Ci => C(26), S => 
                           S(26), Co => Cout(27));
   FullAdd_27 : FA_197 port map( A => A(27), B => B(27), Ci => C(27), S => 
                           S(27), Co => Cout(28));
   FullAdd_28 : FA_196 port map( A => A(28), B => B(28), Ci => C(28), S => 
                           S(28), Co => Cout(29));
   FullAdd_29 : FA_195 port map( A => A(29), B => B(29), Ci => C(29), S => 
                           S(29), Co => Cout(30));
   FullAdd_30 : FA_194 port map( A => A(30), B => B(30), Ci => C(30), S => 
                           S(30), Co => Cout(31));
   LastFA : FA_193 port map( A => A(31), B => B(31), Ci => C(31), S => S(31), 
                           Co => net6198);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity CSA_Nbits32_4 is

   port( A, B, C : in std_logic_vector (31 downto 0);  S, Cout : out 
         std_logic_vector (31 downto 0));

end CSA_Nbits32_4;

architecture SYN_struct of CSA_Nbits32_4 is

   component FA_161
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_162
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_163
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_164
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_165
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_166
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_167
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_168
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_169
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_170
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_171
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_172
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_173
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_174
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_175
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_176
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_177
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_178
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_179
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_180
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_181
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_182
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_183
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_184
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_185
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_186
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_187
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_188
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_189
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_190
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_191
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_192
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal net6198 : std_logic;

begin
   
   Cout(0) <= '0';
   FullAdd_0 : FA_192 port map( A => A(0), B => B(0), Ci => C(0), S => S(0), Co
                           => Cout(1));
   FullAdd_1 : FA_191 port map( A => A(1), B => B(1), Ci => C(1), S => S(1), Co
                           => Cout(2));
   FullAdd_2 : FA_190 port map( A => A(2), B => B(2), Ci => C(2), S => S(2), Co
                           => Cout(3));
   FullAdd_3 : FA_189 port map( A => A(3), B => B(3), Ci => C(3), S => S(3), Co
                           => Cout(4));
   FullAdd_4 : FA_188 port map( A => A(4), B => B(4), Ci => C(4), S => S(4), Co
                           => Cout(5));
   FullAdd_5 : FA_187 port map( A => A(5), B => B(5), Ci => C(5), S => S(5), Co
                           => Cout(6));
   FullAdd_6 : FA_186 port map( A => A(6), B => B(6), Ci => C(6), S => S(6), Co
                           => Cout(7));
   FullAdd_7 : FA_185 port map( A => A(7), B => B(7), Ci => C(7), S => S(7), Co
                           => Cout(8));
   FullAdd_8 : FA_184 port map( A => A(8), B => B(8), Ci => C(8), S => S(8), Co
                           => Cout(9));
   FullAdd_9 : FA_183 port map( A => A(9), B => B(9), Ci => C(9), S => S(9), Co
                           => Cout(10));
   FullAdd_10 : FA_182 port map( A => A(10), B => B(10), Ci => C(10), S => 
                           S(10), Co => Cout(11));
   FullAdd_11 : FA_181 port map( A => A(11), B => B(11), Ci => C(11), S => 
                           S(11), Co => Cout(12));
   FullAdd_12 : FA_180 port map( A => A(12), B => B(12), Ci => C(12), S => 
                           S(12), Co => Cout(13));
   FullAdd_13 : FA_179 port map( A => A(13), B => B(13), Ci => C(13), S => 
                           S(13), Co => Cout(14));
   FullAdd_14 : FA_178 port map( A => A(14), B => B(14), Ci => C(14), S => 
                           S(14), Co => Cout(15));
   FullAdd_15 : FA_177 port map( A => A(15), B => B(15), Ci => C(15), S => 
                           S(15), Co => Cout(16));
   FullAdd_16 : FA_176 port map( A => A(16), B => B(16), Ci => C(16), S => 
                           S(16), Co => Cout(17));
   FullAdd_17 : FA_175 port map( A => A(17), B => B(17), Ci => C(17), S => 
                           S(17), Co => Cout(18));
   FullAdd_18 : FA_174 port map( A => A(18), B => B(18), Ci => C(18), S => 
                           S(18), Co => Cout(19));
   FullAdd_19 : FA_173 port map( A => A(19), B => B(19), Ci => C(19), S => 
                           S(19), Co => Cout(20));
   FullAdd_20 : FA_172 port map( A => A(20), B => B(20), Ci => C(20), S => 
                           S(20), Co => Cout(21));
   FullAdd_21 : FA_171 port map( A => A(21), B => B(21), Ci => C(21), S => 
                           S(21), Co => Cout(22));
   FullAdd_22 : FA_170 port map( A => A(22), B => B(22), Ci => C(22), S => 
                           S(22), Co => Cout(23));
   FullAdd_23 : FA_169 port map( A => A(23), B => B(23), Ci => C(23), S => 
                           S(23), Co => Cout(24));
   FullAdd_24 : FA_168 port map( A => A(24), B => B(24), Ci => C(24), S => 
                           S(24), Co => Cout(25));
   FullAdd_25 : FA_167 port map( A => A(25), B => B(25), Ci => C(25), S => 
                           S(25), Co => Cout(26));
   FullAdd_26 : FA_166 port map( A => A(26), B => B(26), Ci => C(26), S => 
                           S(26), Co => Cout(27));
   FullAdd_27 : FA_165 port map( A => A(27), B => B(27), Ci => C(27), S => 
                           S(27), Co => Cout(28));
   FullAdd_28 : FA_164 port map( A => A(28), B => B(28), Ci => C(28), S => 
                           S(28), Co => Cout(29));
   FullAdd_29 : FA_163 port map( A => A(29), B => B(29), Ci => C(29), S => 
                           S(29), Co => Cout(30));
   FullAdd_30 : FA_162 port map( A => A(30), B => B(30), Ci => C(30), S => 
                           S(30), Co => Cout(31));
   LastFA : FA_161 port map( A => A(31), B => B(31), Ci => C(31), S => S(31), 
                           Co => net6198);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity CSA_Nbits32_3 is

   port( A, B, C : in std_logic_vector (31 downto 0);  S, Cout : out 
         std_logic_vector (31 downto 0));

end CSA_Nbits32_3;

architecture SYN_struct of CSA_Nbits32_3 is

   component FA_129
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_130
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_131
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_132
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_133
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_134
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_135
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_136
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_137
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_138
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_139
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_140
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_141
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_142
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_143
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_144
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_145
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_146
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_147
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_148
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_149
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_150
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_151
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_152
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_153
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_154
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_155
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_156
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_157
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_158
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_159
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_160
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal net6198 : std_logic;

begin
   
   Cout(0) <= '0';
   FullAdd_0 : FA_160 port map( A => A(0), B => B(0), Ci => C(0), S => S(0), Co
                           => Cout(1));
   FullAdd_1 : FA_159 port map( A => A(1), B => B(1), Ci => C(1), S => S(1), Co
                           => Cout(2));
   FullAdd_2 : FA_158 port map( A => A(2), B => B(2), Ci => C(2), S => S(2), Co
                           => Cout(3));
   FullAdd_3 : FA_157 port map( A => A(3), B => B(3), Ci => C(3), S => S(3), Co
                           => Cout(4));
   FullAdd_4 : FA_156 port map( A => A(4), B => B(4), Ci => C(4), S => S(4), Co
                           => Cout(5));
   FullAdd_5 : FA_155 port map( A => A(5), B => B(5), Ci => C(5), S => S(5), Co
                           => Cout(6));
   FullAdd_6 : FA_154 port map( A => A(6), B => B(6), Ci => C(6), S => S(6), Co
                           => Cout(7));
   FullAdd_7 : FA_153 port map( A => A(7), B => B(7), Ci => C(7), S => S(7), Co
                           => Cout(8));
   FullAdd_8 : FA_152 port map( A => A(8), B => B(8), Ci => C(8), S => S(8), Co
                           => Cout(9));
   FullAdd_9 : FA_151 port map( A => A(9), B => B(9), Ci => C(9), S => S(9), Co
                           => Cout(10));
   FullAdd_10 : FA_150 port map( A => A(10), B => B(10), Ci => C(10), S => 
                           S(10), Co => Cout(11));
   FullAdd_11 : FA_149 port map( A => A(11), B => B(11), Ci => C(11), S => 
                           S(11), Co => Cout(12));
   FullAdd_12 : FA_148 port map( A => A(12), B => B(12), Ci => C(12), S => 
                           S(12), Co => Cout(13));
   FullAdd_13 : FA_147 port map( A => A(13), B => B(13), Ci => C(13), S => 
                           S(13), Co => Cout(14));
   FullAdd_14 : FA_146 port map( A => A(14), B => B(14), Ci => C(14), S => 
                           S(14), Co => Cout(15));
   FullAdd_15 : FA_145 port map( A => A(15), B => B(15), Ci => C(15), S => 
                           S(15), Co => Cout(16));
   FullAdd_16 : FA_144 port map( A => A(16), B => B(16), Ci => C(16), S => 
                           S(16), Co => Cout(17));
   FullAdd_17 : FA_143 port map( A => A(17), B => B(17), Ci => C(17), S => 
                           S(17), Co => Cout(18));
   FullAdd_18 : FA_142 port map( A => A(18), B => B(18), Ci => C(18), S => 
                           S(18), Co => Cout(19));
   FullAdd_19 : FA_141 port map( A => A(19), B => B(19), Ci => C(19), S => 
                           S(19), Co => Cout(20));
   FullAdd_20 : FA_140 port map( A => A(20), B => B(20), Ci => C(20), S => 
                           S(20), Co => Cout(21));
   FullAdd_21 : FA_139 port map( A => A(21), B => B(21), Ci => C(21), S => 
                           S(21), Co => Cout(22));
   FullAdd_22 : FA_138 port map( A => A(22), B => B(22), Ci => C(22), S => 
                           S(22), Co => Cout(23));
   FullAdd_23 : FA_137 port map( A => A(23), B => B(23), Ci => C(23), S => 
                           S(23), Co => Cout(24));
   FullAdd_24 : FA_136 port map( A => A(24), B => B(24), Ci => C(24), S => 
                           S(24), Co => Cout(25));
   FullAdd_25 : FA_135 port map( A => A(25), B => B(25), Ci => C(25), S => 
                           S(25), Co => Cout(26));
   FullAdd_26 : FA_134 port map( A => A(26), B => B(26), Ci => C(26), S => 
                           S(26), Co => Cout(27));
   FullAdd_27 : FA_133 port map( A => A(27), B => B(27), Ci => C(27), S => 
                           S(27), Co => Cout(28));
   FullAdd_28 : FA_132 port map( A => A(28), B => B(28), Ci => C(28), S => 
                           S(28), Co => Cout(29));
   FullAdd_29 : FA_131 port map( A => A(29), B => B(29), Ci => C(29), S => 
                           S(29), Co => Cout(30));
   FullAdd_30 : FA_130 port map( A => A(30), B => B(30), Ci => C(30), S => 
                           S(30), Co => Cout(31));
   LastFA : FA_129 port map( A => A(31), B => B(31), Ci => C(31), S => S(31), 
                           Co => net6198);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity CSA_Nbits32_2 is

   port( A, B, C : in std_logic_vector (31 downto 0);  S, Cout : out 
         std_logic_vector (31 downto 0));

end CSA_Nbits32_2;

architecture SYN_struct of CSA_Nbits32_2 is

   component FA_97
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_98
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_99
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_100
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_101
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_102
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_103
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_104
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_105
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_106
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_107
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_108
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_109
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_110
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_111
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_112
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_113
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_114
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_115
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_116
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_117
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_118
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_119
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_120
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_121
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_122
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_123
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_124
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_125
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_126
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_127
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_128
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal net6198 : std_logic;

begin
   
   Cout(0) <= '0';
   FullAdd_0 : FA_128 port map( A => A(0), B => B(0), Ci => C(0), S => S(0), Co
                           => Cout(1));
   FullAdd_1 : FA_127 port map( A => A(1), B => B(1), Ci => C(1), S => S(1), Co
                           => Cout(2));
   FullAdd_2 : FA_126 port map( A => A(2), B => B(2), Ci => C(2), S => S(2), Co
                           => Cout(3));
   FullAdd_3 : FA_125 port map( A => A(3), B => B(3), Ci => C(3), S => S(3), Co
                           => Cout(4));
   FullAdd_4 : FA_124 port map( A => A(4), B => B(4), Ci => C(4), S => S(4), Co
                           => Cout(5));
   FullAdd_5 : FA_123 port map( A => A(5), B => B(5), Ci => C(5), S => S(5), Co
                           => Cout(6));
   FullAdd_6 : FA_122 port map( A => A(6), B => B(6), Ci => C(6), S => S(6), Co
                           => Cout(7));
   FullAdd_7 : FA_121 port map( A => A(7), B => B(7), Ci => C(7), S => S(7), Co
                           => Cout(8));
   FullAdd_8 : FA_120 port map( A => A(8), B => B(8), Ci => C(8), S => S(8), Co
                           => Cout(9));
   FullAdd_9 : FA_119 port map( A => A(9), B => B(9), Ci => C(9), S => S(9), Co
                           => Cout(10));
   FullAdd_10 : FA_118 port map( A => A(10), B => B(10), Ci => C(10), S => 
                           S(10), Co => Cout(11));
   FullAdd_11 : FA_117 port map( A => A(11), B => B(11), Ci => C(11), S => 
                           S(11), Co => Cout(12));
   FullAdd_12 : FA_116 port map( A => A(12), B => B(12), Ci => C(12), S => 
                           S(12), Co => Cout(13));
   FullAdd_13 : FA_115 port map( A => A(13), B => B(13), Ci => C(13), S => 
                           S(13), Co => Cout(14));
   FullAdd_14 : FA_114 port map( A => A(14), B => B(14), Ci => C(14), S => 
                           S(14), Co => Cout(15));
   FullAdd_15 : FA_113 port map( A => A(15), B => B(15), Ci => C(15), S => 
                           S(15), Co => Cout(16));
   FullAdd_16 : FA_112 port map( A => A(16), B => B(16), Ci => C(16), S => 
                           S(16), Co => Cout(17));
   FullAdd_17 : FA_111 port map( A => A(17), B => B(17), Ci => C(17), S => 
                           S(17), Co => Cout(18));
   FullAdd_18 : FA_110 port map( A => A(18), B => B(18), Ci => C(18), S => 
                           S(18), Co => Cout(19));
   FullAdd_19 : FA_109 port map( A => A(19), B => B(19), Ci => C(19), S => 
                           S(19), Co => Cout(20));
   FullAdd_20 : FA_108 port map( A => A(20), B => B(20), Ci => C(20), S => 
                           S(20), Co => Cout(21));
   FullAdd_21 : FA_107 port map( A => A(21), B => B(21), Ci => C(21), S => 
                           S(21), Co => Cout(22));
   FullAdd_22 : FA_106 port map( A => A(22), B => B(22), Ci => C(22), S => 
                           S(22), Co => Cout(23));
   FullAdd_23 : FA_105 port map( A => A(23), B => B(23), Ci => C(23), S => 
                           S(23), Co => Cout(24));
   FullAdd_24 : FA_104 port map( A => A(24), B => B(24), Ci => C(24), S => 
                           S(24), Co => Cout(25));
   FullAdd_25 : FA_103 port map( A => A(25), B => B(25), Ci => C(25), S => 
                           S(25), Co => Cout(26));
   FullAdd_26 : FA_102 port map( A => A(26), B => B(26), Ci => C(26), S => 
                           S(26), Co => Cout(27));
   FullAdd_27 : FA_101 port map( A => A(27), B => B(27), Ci => C(27), S => 
                           S(27), Co => Cout(28));
   FullAdd_28 : FA_100 port map( A => A(28), B => B(28), Ci => C(28), S => 
                           S(28), Co => Cout(29));
   FullAdd_29 : FA_99 port map( A => A(29), B => B(29), Ci => C(29), S => S(29)
                           , Co => Cout(30));
   FullAdd_30 : FA_98 port map( A => A(30), B => B(30), Ci => C(30), S => S(30)
                           , Co => Cout(31));
   LastFA : FA_97 port map( A => A(31), B => B(31), Ci => C(31), S => S(31), Co
                           => net6198);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity CSA_Nbits32_1 is

   port( A, B, C : in std_logic_vector (31 downto 0);  S, Cout : out 
         std_logic_vector (31 downto 0));

end CSA_Nbits32_1;

architecture SYN_struct of CSA_Nbits32_1 is

   component FA_65
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_66
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_67
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_68
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_69
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_70
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_71
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_72
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_73
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_74
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_75
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_76
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_77
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_78
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_79
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_80
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_81
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_82
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_83
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_84
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_85
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_86
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_87
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_88
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_89
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_90
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_91
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_92
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_93
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_94
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_95
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_96
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal net6198 : std_logic;

begin
   
   Cout(0) <= '0';
   FullAdd_0 : FA_96 port map( A => A(0), B => B(0), Ci => C(0), S => S(0), Co 
                           => Cout(1));
   FullAdd_1 : FA_95 port map( A => A(1), B => B(1), Ci => C(1), S => S(1), Co 
                           => Cout(2));
   FullAdd_2 : FA_94 port map( A => A(2), B => B(2), Ci => C(2), S => S(2), Co 
                           => Cout(3));
   FullAdd_3 : FA_93 port map( A => A(3), B => B(3), Ci => C(3), S => S(3), Co 
                           => Cout(4));
   FullAdd_4 : FA_92 port map( A => A(4), B => B(4), Ci => C(4), S => S(4), Co 
                           => Cout(5));
   FullAdd_5 : FA_91 port map( A => A(5), B => B(5), Ci => C(5), S => S(5), Co 
                           => Cout(6));
   FullAdd_6 : FA_90 port map( A => A(6), B => B(6), Ci => C(6), S => S(6), Co 
                           => Cout(7));
   FullAdd_7 : FA_89 port map( A => A(7), B => B(7), Ci => C(7), S => S(7), Co 
                           => Cout(8));
   FullAdd_8 : FA_88 port map( A => A(8), B => B(8), Ci => C(8), S => S(8), Co 
                           => Cout(9));
   FullAdd_9 : FA_87 port map( A => A(9), B => B(9), Ci => C(9), S => S(9), Co 
                           => Cout(10));
   FullAdd_10 : FA_86 port map( A => A(10), B => B(10), Ci => C(10), S => S(10)
                           , Co => Cout(11));
   FullAdd_11 : FA_85 port map( A => A(11), B => B(11), Ci => C(11), S => S(11)
                           , Co => Cout(12));
   FullAdd_12 : FA_84 port map( A => A(12), B => B(12), Ci => C(12), S => S(12)
                           , Co => Cout(13));
   FullAdd_13 : FA_83 port map( A => A(13), B => B(13), Ci => C(13), S => S(13)
                           , Co => Cout(14));
   FullAdd_14 : FA_82 port map( A => A(14), B => B(14), Ci => C(14), S => S(14)
                           , Co => Cout(15));
   FullAdd_15 : FA_81 port map( A => A(15), B => B(15), Ci => C(15), S => S(15)
                           , Co => Cout(16));
   FullAdd_16 : FA_80 port map( A => A(16), B => B(16), Ci => C(16), S => S(16)
                           , Co => Cout(17));
   FullAdd_17 : FA_79 port map( A => A(17), B => B(17), Ci => C(17), S => S(17)
                           , Co => Cout(18));
   FullAdd_18 : FA_78 port map( A => A(18), B => B(18), Ci => C(18), S => S(18)
                           , Co => Cout(19));
   FullAdd_19 : FA_77 port map( A => A(19), B => B(19), Ci => C(19), S => S(19)
                           , Co => Cout(20));
   FullAdd_20 : FA_76 port map( A => A(20), B => B(20), Ci => C(20), S => S(20)
                           , Co => Cout(21));
   FullAdd_21 : FA_75 port map( A => A(21), B => B(21), Ci => C(21), S => S(21)
                           , Co => Cout(22));
   FullAdd_22 : FA_74 port map( A => A(22), B => B(22), Ci => C(22), S => S(22)
                           , Co => Cout(23));
   FullAdd_23 : FA_73 port map( A => A(23), B => B(23), Ci => C(23), S => S(23)
                           , Co => Cout(24));
   FullAdd_24 : FA_72 port map( A => A(24), B => B(24), Ci => C(24), S => S(24)
                           , Co => Cout(25));
   FullAdd_25 : FA_71 port map( A => A(25), B => B(25), Ci => C(25), S => S(25)
                           , Co => Cout(26));
   FullAdd_26 : FA_70 port map( A => A(26), B => B(26), Ci => C(26), S => S(26)
                           , Co => Cout(27));
   FullAdd_27 : FA_69 port map( A => A(27), B => B(27), Ci => C(27), S => S(27)
                           , Co => Cout(28));
   FullAdd_28 : FA_68 port map( A => A(28), B => B(28), Ci => C(28), S => S(28)
                           , Co => Cout(29));
   FullAdd_29 : FA_67 port map( A => A(29), B => B(29), Ci => C(29), S => S(29)
                           , Co => Cout(30));
   FullAdd_30 : FA_66 port map( A => A(30), B => B(30), Ci => C(30), S => S(30)
                           , Co => Cout(31));
   LastFA : FA_65 port map( A => A(31), B => B(31), Ci => C(31), S => S(31), Co
                           => net6198);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity mux_N32_7 is

   port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end mux_N32_7;

architecture SYN_behav of mux_N32_7 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X3
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X4
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
      n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, 
      n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, 
      n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, 
      n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, 
      n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, 
      n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, 
      n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, 
      n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, 
      n238, n239, n240, n241, n242, n243, n244, n245, n246 : std_logic;

begin
   
   U1 : CLKBUF_X2 port map( A => n243, Z => n186);
   U2 : BUF_X1 port map( A => n244, Z => n187);
   U3 : NAND2_X1 port map( A1 => n216, A2 => n162, ZN => n79);
   U4 : NAND3_X1 port map( A1 => n164, A2 => n163, A3 => n80, ZN => O(26));
   U5 : INV_X1 port map( A => n79, ZN => n80);
   U6 : NAND2_X1 port map( A1 => n206, A2 => n167, ZN => n81);
   U7 : NAND3_X1 port map( A1 => n168, A2 => n169, A3 => n82, ZN => O(18));
   U8 : INV_X1 port map( A => n81, ZN => n82);
   U9 : NAND2_X1 port map( A1 => C(23), A2 => n186, ZN => n83);
   U10 : NAND4_X1 port map( A1 => n88, A2 => n112, A3 => n84, A4 => n217, ZN =>
                           O(27));
   U11 : AND3_X1 port map( A1 => Sel(2), A2 => n113, A3 => n191, ZN => n242);
   U12 : NOR3_X1 port map( A1 => n191, A2 => Sel(2), A3 => n190, ZN => n244);
   U13 : NAND2_X1 port map( A1 => C(27), A2 => n186, ZN => n84);
   U14 : NAND2_X1 port map( A1 => D(16), A2 => n188, ZN => n85);
   U15 : NAND2_X1 port map( A1 => D(11), A2 => n188, ZN => n86);
   U16 : NAND2_X1 port map( A1 => E(23), A2 => n183, ZN => n87);
   U17 : NAND2_X1 port map( A1 => D(27), A2 => n188, ZN => n88);
   U18 : AND2_X1 port map( A1 => n211, A2 => n127, ZN => n89);
   U19 : AND2_X1 port map( A1 => n212, A2 => n159, ZN => n90);
   U20 : NAND2_X1 port map( A1 => D(23), A2 => n189, ZN => n91);
   U21 : NAND2_X1 port map( A1 => D(17), A2 => n188, ZN => n92);
   U22 : NAND2_X1 port map( A1 => D(19), A2 => n189, ZN => n93);
   U23 : NAND2_X1 port map( A1 => E(16), A2 => n183, ZN => n94);
   U24 : NAND2_X1 port map( A1 => E(11), A2 => n183, ZN => n95);
   U25 : CLKBUF_X1 port map( A => n179, Z => n96);
   U26 : NOR2_X2 port map( A1 => n114, A2 => Sel(2), ZN => n179);
   U27 : CLKBUF_X1 port map( A => n241, Z => n178);
   U28 : CLKBUF_X1 port map( A => n240, Z => n97);
   U29 : AOI222_X4 port map( A1 => n191, A2 => Sel(0), B1 => n190, B2 => Sel(2)
                           , C1 => n193, C2 => Sel(1), ZN => n240);
   U30 : BUF_X1 port map( A => n240, Z => n177);
   U31 : CLKBUF_X1 port map( A => n240, Z => n175);
   U32 : NAND3_X1 port map( A1 => n126, A2 => n125, A3 => n89, ZN => O(21));
   U33 : NAND3_X1 port map( A1 => n160, A2 => n161, A3 => n90, ZN => O(22));
   U34 : NAND2_X1 port map( A1 => C(7), A2 => n117, ZN => n98);
   U35 : INV_X1 port map( A => n134, ZN => n99);
   U36 : NOR2_X1 port map( A1 => n100, A2 => n101, ZN => n236);
   U37 : AND2_X1 port map( A1 => E(7), A2 => n183, ZN => n100);
   U38 : NAND2_X1 port map( A1 => n98, A2 => n99, ZN => n101);
   U39 : AND3_X1 port map( A1 => n102, A2 => n103, A3 => n104, ZN => n222);
   U40 : NAND2_X1 port map( A1 => D(2), A2 => n187, ZN => n102);
   U41 : NAND2_X1 port map( A1 => C(2), A2 => n243, ZN => n103);
   U42 : NAND2_X1 port map( A1 => E(2), A2 => n181, ZN => n104);
   U43 : XOR2_X1 port map( A => Sel(0), B => Sel(1), Z => n105);
   U44 : NAND2_X1 port map( A1 => n106, A2 => n107, ZN => O(13));
   U45 : AND2_X1 port map( A1 => n150, A2 => n201, ZN => n106);
   U46 : NAND2_X1 port map( A1 => C(13), A2 => n186, ZN => n107);
   U47 : BUF_X2 port map( A => n242, Z => n183);
   U48 : NAND2_X1 port map( A1 => n108, A2 => n109, ZN => O(14));
   U49 : AND2_X1 port map( A1 => n132, A2 => n133, ZN => n108);
   U50 : NAND2_X1 port map( A1 => C(14), A2 => n186, ZN => n109);
   U51 : BUF_X2 port map( A => n241, Z => n180);
   U52 : NAND2_X1 port map( A1 => C(16), A2 => n243, ZN => n111);
   U53 : NAND4_X1 port map( A1 => n94, A2 => n111, A3 => n85, A4 => n204, ZN =>
                           O(16));
   U54 : NAND4_X1 port map( A1 => n119, A2 => n121, A3 => n215, A4 => n120, ZN 
                           => O(25));
   U55 : NAND4_X1 port map( A1 => n130, A2 => n129, A3 => n128, A4 => n214, ZN 
                           => O(24));
   U56 : NOR3_X1 port map( A1 => n146, A2 => n144, A3 => n145, ZN => n196);
   U57 : NAND4_X1 port map( A1 => n95, A2 => n110, A3 => n86, A4 => n198, ZN =>
                           O(11));
   U58 : INV_X1 port map( A => n137, ZN => n110);
   U59 : NAND3_X1 port map( A1 => n151, A2 => n203, A3 => n154, ZN => O(15));
   U60 : NAND4_X1 port map( A1 => n92, A2 => n166, A3 => n205, A4 => n165, ZN 
                           => O(17));
   U61 : INV_X1 port map( A => n118, ZN => n112);
   U62 : INV_X1 port map( A => Sel(0), ZN => n113);
   U63 : NAND4_X1 port map( A1 => n93, A2 => n207, A3 => n170, A4 => n171, ZN 
                           => O(19));
   U64 : NAND4_X1 port map( A1 => n210, A2 => n172, A3 => n174, A4 => n173, ZN 
                           => O(20));
   U65 : INV_X1 port map( A => n105, ZN => n114);
   U66 : NAND4_X1 port map( A1 => n83, A2 => n91, A3 => n87, A4 => n213, ZN => 
                           O(23));
   U67 : AND2_X1 port map( A1 => n157, A2 => n155, ZN => n115);
   U68 : AND2_X1 port map( A1 => n156, A2 => n115, ZN => n199);
   U69 : CLKBUF_X1 port map( A => n243, Z => n116);
   U70 : CLKBUF_X1 port map( A => n243, Z => n117);
   U71 : CLKBUF_X1 port map( A => n243, Z => n184);
   U72 : CLKBUF_X1 port map( A => n243, Z => n185);
   U73 : BUF_X1 port map( A => n242, Z => n181);
   U74 : BUF_X1 port map( A => n244, Z => n188);
   U75 : CLKBUF_X3 port map( A => n244, Z => n189);
   U76 : AND2_X1 port map( A1 => E(27), A2 => n183, ZN => n118);
   U77 : CLKBUF_X3 port map( A => n240, Z => n176);
   U78 : NAND2_X1 port map( A1 => D(25), A2 => n188, ZN => n119);
   U79 : NAND2_X1 port map( A1 => C(25), A2 => n185, ZN => n120);
   U80 : NAND2_X1 port map( A1 => E(25), A2 => n183, ZN => n121);
   U81 : NAND2_X1 port map( A1 => D(8), A2 => n189, ZN => n122);
   U82 : NAND2_X1 port map( A1 => C(8), A2 => n185, ZN => n123);
   U83 : NAND2_X1 port map( A1 => E(8), A2 => n182, ZN => n124);
   U84 : AND3_X1 port map( A1 => n122, A2 => n123, A3 => n124, ZN => n238);
   U85 : NAND2_X1 port map( A1 => E(21), A2 => n182, ZN => n125);
   U86 : NAND2_X1 port map( A1 => C(21), A2 => n186, ZN => n126);
   U87 : NAND2_X1 port map( A1 => D(21), A2 => n189, ZN => n127);
   U88 : NAND2_X1 port map( A1 => D(24), A2 => n189, ZN => n128);
   U89 : NAND2_X1 port map( A1 => C(24), A2 => n185, ZN => n129);
   U90 : NAND2_X1 port map( A1 => E(24), A2 => n182, ZN => n130);
   U91 : BUF_X2 port map( A => n242, Z => n182);
   U92 : INV_X1 port map( A => n202, ZN => n131);
   U93 : NAND2_X1 port map( A1 => E(14), A2 => n183, ZN => n132);
   U94 : NOR2_X1 port map( A1 => n158, A2 => n131, ZN => n133);
   U95 : AND2_X1 port map( A1 => D(7), A2 => n187, ZN => n134);
   U96 : AND2_X1 port map( A1 => n135, A2 => n136, ZN => n150);
   U97 : NAND2_X1 port map( A1 => E(13), A2 => n183, ZN => n135);
   U98 : NAND2_X1 port map( A1 => D(13), A2 => n188, ZN => n136);
   U99 : AND2_X1 port map( A1 => C(11), A2 => n184, ZN => n137);
   U100 : NAND2_X1 port map( A1 => n239, A2 => n238, ZN => O(8));
   U101 : NAND2_X1 port map( A1 => D(9), A2 => n189, ZN => n138);
   U102 : NAND2_X1 port map( A1 => C(9), A2 => n117, ZN => n139);
   U103 : NAND2_X1 port map( A1 => E(9), A2 => n182, ZN => n140);
   U104 : AND3_X1 port map( A1 => n138, A2 => n139, A3 => n140, ZN => n245);
   U105 : XOR2_X1 port map( A => Sel(0), B => Sel(1), Z => n192);
   U106 : AND2_X1 port map( A1 => n192, A2 => n193, ZN => n241);
   U107 : AND2_X2 port map( A1 => Sel(2), A2 => n105, ZN => n243);
   U108 : NAND2_X1 port map( A1 => D(1), A2 => n187, ZN => n141);
   U109 : NAND2_X1 port map( A1 => C(1), A2 => n243, ZN => n142);
   U110 : NAND2_X1 port map( A1 => E(1), A2 => n181, ZN => n143);
   U111 : AND3_X1 port map( A1 => n141, A2 => n142, A3 => n143, ZN => n208);
   U112 : AND2_X1 port map( A1 => D(10), A2 => n188, ZN => n144);
   U113 : AND2_X1 port map( A1 => C(10), A2 => n185, ZN => n145);
   U114 : AND2_X1 port map( A1 => E(10), A2 => n182, ZN => n146);
   U115 : NAND2_X1 port map( A1 => D(0), A2 => n187, ZN => n147);
   U116 : NAND2_X1 port map( A1 => C(0), A2 => n243, ZN => n148);
   U117 : NAND2_X1 port map( A1 => E(0), A2 => n181, ZN => n149);
   U118 : AND3_X1 port map( A1 => n147, A2 => n148, A3 => n149, ZN => n194);
   U119 : AND2_X1 port map( A1 => n153, A2 => n152, ZN => n151);
   U120 : NAND2_X1 port map( A1 => D(15), A2 => n189, ZN => n152);
   U121 : NAND2_X1 port map( A1 => C(15), A2 => n185, ZN => n153);
   U122 : NAND2_X1 port map( A1 => E(15), A2 => n183, ZN => n154);
   U123 : NAND2_X1 port map( A1 => n196, A2 => n197, ZN => O(10));
   U124 : NAND2_X1 port map( A1 => n229, A2 => n228, ZN => O(3));
   U125 : AOI22_X1 port map( A1 => B(3), A2 => n180, B1 => A(3), B2 => n175, ZN
                           => n229);
   U126 : NAND2_X1 port map( A1 => n223, A2 => n222, ZN => O(2));
   U127 : AOI22_X1 port map( A1 => B(2), A2 => n179, B1 => A(2), B2 => n240, ZN
                           => n223);
   U128 : AOI22_X1 port map( A1 => B(5), A2 => n180, B1 => A(5), B2 => n97, ZN 
                           => n233);
   U129 : AOI22_X1 port map( A1 => B(24), A2 => n179, B1 => A(24), B2 => n176, 
                           ZN => n214);
   U130 : AOI22_X1 port map( A1 => B(25), A2 => n179, B1 => A(25), B2 => n176, 
                           ZN => n215);
   U131 : AOI22_X1 port map( A1 => B(27), A2 => n179, B1 => A(27), B2 => n176, 
                           ZN => n217);
   U132 : AOI22_X1 port map( A1 => B(28), A2 => n96, B1 => A(28), B2 => n176, 
                           ZN => n219);
   U133 : AOI22_X1 port map( A1 => B(29), A2 => n96, B1 => A(29), B2 => n240, 
                           ZN => n221);
   U134 : AOI22_X1 port map( A1 => B(23), A2 => n179, B1 => A(23), B2 => n176, 
                           ZN => n213);
   U135 : AOI22_X1 port map( A1 => B(6), A2 => n180, B1 => A(6), B2 => n176, ZN
                           => n235);
   U136 : AOI22_X1 port map( A1 => B(21), A2 => n179, B1 => A(21), B2 => n240, 
                           ZN => n211);
   U137 : NAND2_X1 port map( A1 => n227, A2 => n226, ZN => O(31));
   U138 : AOI22_X1 port map( A1 => B(31), A2 => n180, B1 => A(31), B2 => n240, 
                           ZN => n227);
   U139 : AOI22_X1 port map( A1 => B(8), A2 => n180, B1 => A(8), B2 => n176, ZN
                           => n239);
   U140 : NAND2_X1 port map( A1 => n231, A2 => n230, ZN => O(4));
   U141 : AOI22_X1 port map( A1 => B(4), A2 => n180, B1 => A(4), B2 => n240, ZN
                           => n231);
   U142 : AOI222_X1 port map( A1 => D(4), A2 => n188, B1 => C(4), B2 => n243, 
                           C1 => E(4), C2 => n182, ZN => n230);
   U143 : NAND2_X1 port map( A1 => n236, A2 => n237, ZN => O(7));
   U144 : AOI22_X1 port map( A1 => B(7), A2 => n180, B1 => A(7), B2 => n97, ZN 
                           => n237);
   U145 : NAND2_X1 port map( A1 => n246, A2 => n245, ZN => O(9));
   U146 : AOI22_X1 port map( A1 => B(9), A2 => n180, B1 => A(9), B2 => n97, ZN 
                           => n246);
   U147 : AOI22_X1 port map( A1 => B(22), A2 => n179, B1 => A(22), B2 => n240, 
                           ZN => n212);
   U148 : AOI22_X1 port map( A1 => B(20), A2 => n179, B1 => A(20), B2 => n176, 
                           ZN => n210);
   U149 : AOI22_X1 port map( A1 => B(26), A2 => n179, B1 => A(26), B2 => n97, 
                           ZN => n216);
   U150 : NAND2_X1 port map( A1 => n225, A2 => n224, ZN => O(30));
   U151 : AOI22_X1 port map( A1 => B(30), A2 => n96, B1 => A(30), B2 => n240, 
                           ZN => n225);
   U152 : INV_X1 port map( A => Sel(1), ZN => n191);
   U153 : NAND2_X1 port map( A1 => D(12), A2 => n189, ZN => n155);
   U154 : NAND2_X1 port map( A1 => C(12), A2 => n186, ZN => n156);
   U155 : NAND2_X1 port map( A1 => E(12), A2 => n183, ZN => n157);
   U156 : AND2_X1 port map( A1 => D(14), A2 => n189, ZN => n158);
   U157 : NAND2_X1 port map( A1 => n235, A2 => n234, ZN => O(6));
   U158 : NAND2_X1 port map( A1 => n233, A2 => n232, ZN => O(5));
   U159 : AOI222_X1 port map( A1 => D(6), A2 => n188, B1 => C(6), B2 => n117, 
                           C1 => E(6), C2 => n182, ZN => n234);
   U160 : AOI222_X1 port map( A1 => D(5), A2 => n188, B1 => C(5), B2 => n116, 
                           C1 => E(5), C2 => n182, ZN => n232);
   U161 : AOI222_X1 port map( A1 => D(3), A2 => n189, B1 => C(3), B2 => n243, 
                           C1 => E(3), C2 => n181, ZN => n228);
   U162 : NAND2_X1 port map( A1 => n209, A2 => n208, ZN => O(1));
   U163 : NAND2_X1 port map( A1 => n199, A2 => n200, ZN => O(12));
   U164 : AOI22_X1 port map( A1 => B(18), A2 => n180, B1 => A(18), B2 => n177, 
                           ZN => n206);
   U165 : AOI22_X1 port map( A1 => B(19), A2 => n180, B1 => A(19), B2 => n176, 
                           ZN => n207);
   U166 : AOI22_X1 port map( A1 => B(17), A2 => n180, B1 => A(17), B2 => n176, 
                           ZN => n205);
   U167 : AOI22_X1 port map( A1 => B(16), A2 => n180, B1 => A(16), B2 => n176, 
                           ZN => n204);
   U168 : AOI22_X1 port map( A1 => B(15), A2 => n180, B1 => A(15), B2 => n176, 
                           ZN => n203);
   U169 : AOI22_X1 port map( A1 => B(14), A2 => n178, B1 => A(14), B2 => n177, 
                           ZN => n202);
   U170 : AOI22_X1 port map( A1 => B(13), A2 => n180, B1 => A(13), B2 => n176, 
                           ZN => n201);
   U171 : AOI22_X1 port map( A1 => B(12), A2 => n180, B1 => A(12), B2 => n177, 
                           ZN => n200);
   U172 : AOI22_X1 port map( A1 => B(11), A2 => n180, B1 => A(11), B2 => n176, 
                           ZN => n198);
   U173 : AOI22_X1 port map( A1 => B(10), A2 => n180, B1 => A(10), B2 => n176, 
                           ZN => n197);
   U174 : AOI22_X1 port map( A1 => B(1), A2 => n178, B1 => A(1), B2 => n240, ZN
                           => n209);
   U175 : AOI22_X1 port map( A1 => B(0), A2 => n178, B1 => A(0), B2 => n240, ZN
                           => n195);
   U176 : INV_X1 port map( A => Sel(2), ZN => n193);
   U177 : INV_X1 port map( A => Sel(0), ZN => n190);
   U178 : NAND2_X1 port map( A1 => n195, A2 => n194, ZN => O(0));
   U179 : NAND2_X1 port map( A1 => D(22), A2 => n189, ZN => n159);
   U180 : NAND2_X1 port map( A1 => C(22), A2 => n186, ZN => n160);
   U181 : NAND2_X1 port map( A1 => E(22), A2 => n183, ZN => n161);
   U182 : NAND2_X1 port map( A1 => n219, A2 => n218, ZN => O(28));
   U183 : NAND2_X1 port map( A1 => D(26), A2 => n189, ZN => n162);
   U184 : NAND2_X1 port map( A1 => C(26), A2 => n186, ZN => n163);
   U185 : NAND2_X1 port map( A1 => E(26), A2 => n182, ZN => n164);
   U186 : NAND2_X1 port map( A1 => C(17), A2 => n185, ZN => n165);
   U187 : NAND2_X1 port map( A1 => E(17), A2 => n182, ZN => n166);
   U188 : NAND2_X1 port map( A1 => D(18), A2 => n188, ZN => n167);
   U189 : NAND2_X1 port map( A1 => C(18), A2 => n185, ZN => n168);
   U190 : NAND2_X1 port map( A1 => E(18), A2 => n182, ZN => n169);
   U191 : NAND2_X1 port map( A1 => C(19), A2 => n186, ZN => n170);
   U192 : NAND2_X1 port map( A1 => E(19), A2 => n182, ZN => n171);
   U193 : NAND2_X1 port map( A1 => n221, A2 => n220, ZN => O(29));
   U194 : NAND2_X1 port map( A1 => D(20), A2 => n189, ZN => n172);
   U195 : NAND2_X1 port map( A1 => C(20), A2 => n186, ZN => n173);
   U196 : NAND2_X1 port map( A1 => E(20), A2 => n183, ZN => n174);
   U197 : AOI222_X1 port map( A1 => D(31), A2 => n188, B1 => C(31), B2 => n184,
                           C1 => E(31), C2 => n182, ZN => n226);
   U198 : AOI222_X1 port map( A1 => D(30), A2 => n189, B1 => C(30), B2 => n184,
                           C1 => E(30), C2 => n183, ZN => n224);
   U199 : AOI222_X1 port map( A1 => D(29), A2 => n188, B1 => C(29), B2 => n186,
                           C1 => E(29), C2 => n182, ZN => n220);
   U200 : AOI222_X1 port map( A1 => D(28), A2 => n189, B1 => C(28), B2 => n185,
                           C1 => E(28), C2 => n183, ZN => n218);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity mux_N32_6 is

   port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end mux_N32_6;

architecture SYN_behav of mux_N32_6 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
      n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, 
      n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, 
      n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, 
      n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, 
      n190, n191, n192, n193, n194, n195, n196, n197, n198 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => n195, Z => n124);
   U2 : BUF_X2 port map( A => n193, Z => n118);
   U3 : AND2_X1 port map( A1 => Sel(2), A2 => n132, ZN => n195);
   U4 : NAND2_X1 port map( A1 => C(22), A2 => n125, ZN => n79);
   U5 : NAND2_X1 port map( A1 => D(22), A2 => n128, ZN => n80);
   U6 : OR2_X1 port map( A1 => n94, A2 => n93, ZN => n81);
   U7 : NAND2_X1 port map( A1 => E(22), A2 => n122, ZN => n82);
   U8 : AND3_X1 port map( A1 => n83, A2 => n84, A3 => n85, ZN => n197);
   U9 : NAND2_X1 port map( A1 => D(9), A2 => n129, ZN => n83);
   U10 : NAND2_X1 port map( A1 => C(9), A2 => n126, ZN => n84);
   U11 : NAND2_X1 port map( A1 => E(9), A2 => n123, ZN => n85);
   U12 : NAND2_X1 port map( A1 => D(8), A2 => n129, ZN => n86);
   U13 : NAND2_X1 port map( A1 => C(8), A2 => n125, ZN => n87);
   U14 : NAND2_X1 port map( A1 => E(8), A2 => n123, ZN => n88);
   U15 : AND3_X1 port map( A1 => n86, A2 => n87, A3 => n88, ZN => n190);
   U16 : BUF_X2 port map( A => n193, Z => n119);
   U17 : AND2_X1 port map( A1 => n132, A2 => n133, ZN => n193);
   U18 : AOI222_X1 port map( A1 => D(16), A2 => n127, B1 => C(16), B2 => n126, 
                           C1 => E(16), C2 => n121, ZN => n148);
   U19 : NAND4_X1 port map( A1 => n114, A2 => n112, A3 => n113, A4 => n158, ZN 
                           => O(21));
   U20 : NAND4_X1 port map( A1 => n82, A2 => n80, A3 => n79, A4 => n159, ZN => 
                           O(22));
   U21 : NAND3_X1 port map( A1 => n99, A2 => n92, A3 => n157, ZN => O(20));
   U22 : NAND3_X1 port map( A1 => n96, A2 => n154, A3 => n104, ZN => O(19));
   U23 : BUF_X2 port map( A => n196, Z => n129);
   U24 : BUF_X2 port map( A => n195, Z => n126);
   U25 : BUF_X2 port map( A => n194, Z => n123);
   U26 : AND3_X1 port map( A1 => n89, A2 => n90, A3 => n91, ZN => n140);
   U27 : NAND2_X1 port map( A1 => D(12), A2 => n127, ZN => n89);
   U28 : NAND2_X1 port map( A1 => C(12), A2 => n126, ZN => n90);
   U29 : NAND2_X1 port map( A1 => E(12), A2 => n121, ZN => n91);
   U30 : AND2_X1 port map( A1 => n98, A2 => n97, ZN => n92);
   U31 : NOR2_X1 port map( A1 => n95, A2 => n81, ZN => n142);
   U32 : AND2_X1 port map( A1 => D(13), A2 => n127, ZN => n93);
   U33 : AND2_X1 port map( A1 => C(13), A2 => n125, ZN => n94);
   U34 : AND2_X1 port map( A1 => E(13), A2 => n121, ZN => n95);
   U35 : AOI222_X1 port map( A1 => D(17), A2 => n127, B1 => C(17), B2 => n126, 
                           C1 => E(17), C2 => n121, ZN => n150);
   U36 : AND2_X1 port map( A1 => n105, A2 => n103, ZN => n96);
   U37 : NAND2_X1 port map( A1 => D(20), A2 => n128, ZN => n97);
   U38 : NAND2_X1 port map( A1 => C(20), A2 => n126, ZN => n98);
   U39 : NAND2_X1 port map( A1 => E(20), A2 => n122, ZN => n99);
   U40 : BUF_X2 port map( A => n196, Z => n128);
   U41 : BUF_X2 port map( A => n192, Z => n115);
   U42 : BUF_X2 port map( A => n194, Z => n121);
   U43 : CLKBUF_X1 port map( A => n193, Z => n120);
   U44 : BUF_X2 port map( A => n196, Z => n127);
   U45 : CLKBUF_X1 port map( A => n192, Z => n116);
   U46 : CLKBUF_X1 port map( A => n192, Z => n117);
   U47 : AOI222_X1 port map( A1 => n131, A2 => Sel(0), B1 => n130, B2 => Sel(2)
                           , C1 => n133, C2 => Sel(1), ZN => n192);
   U48 : NAND2_X1 port map( A1 => n173, A2 => n172, ZN => O(29));
   U49 : AOI22_X1 port map( A1 => B(29), A2 => n119, B1 => A(29), B2 => n116, 
                           ZN => n173);
   U50 : NAND2_X1 port map( A1 => n177, A2 => n176, ZN => O(30));
   U51 : AOI22_X1 port map( A1 => B(30), A2 => n119, B1 => A(30), B2 => n116, 
                           ZN => n177);
   U52 : NAND2_X1 port map( A1 => n198, A2 => n197, ZN => O(9));
   U53 : AOI22_X1 port map( A1 => B(9), A2 => n120, B1 => A(9), B2 => n117, ZN 
                           => n198);
   U54 : NAND2_X1 port map( A1 => n181, A2 => n180, ZN => O(3));
   U55 : AOI22_X1 port map( A1 => B(3), A2 => n120, B1 => A(3), B2 => n117, ZN 
                           => n181);
   U56 : AOI222_X1 port map( A1 => D(3), A2 => n129, B1 => C(3), B2 => n126, C1
                           => E(3), C2 => n123, ZN => n180);
   U57 : NAND2_X1 port map( A1 => n187, A2 => n186, ZN => O(6));
   U58 : AOI22_X1 port map( A1 => B(6), A2 => n120, B1 => A(6), B2 => n117, ZN 
                           => n187);
   U59 : AOI222_X1 port map( A1 => D(6), A2 => n129, B1 => C(6), B2 => n125, C1
                           => E(6), C2 => n123, ZN => n186);
   U60 : NAND2_X1 port map( A1 => n191, A2 => n190, ZN => O(8));
   U61 : AOI22_X1 port map( A1 => B(8), A2 => n120, B1 => A(8), B2 => n117, ZN 
                           => n191);
   U62 : NAND2_X1 port map( A1 => n189, A2 => n188, ZN => O(7));
   U63 : AOI22_X1 port map( A1 => B(7), A2 => n120, B1 => A(7), B2 => n117, ZN 
                           => n189);
   U64 : AOI222_X1 port map( A1 => D(7), A2 => n129, B1 => C(7), B2 => n125, C1
                           => E(7), C2 => n123, ZN => n188);
   U65 : NAND2_X1 port map( A1 => n140, A2 => n141, ZN => O(12));
   U66 : AOI22_X1 port map( A1 => B(12), A2 => n118, B1 => A(12), B2 => n115, 
                           ZN => n141);
   U67 : NAND2_X1 port map( A1 => n151, A2 => n150, ZN => O(17));
   U68 : AOI22_X1 port map( A1 => B(17), A2 => n118, B1 => A(17), B2 => n115, 
                           ZN => n151);
   U69 : NAND2_X1 port map( A1 => n153, A2 => n152, ZN => O(18));
   U70 : AOI22_X1 port map( A1 => B(18), A2 => n118, B1 => A(18), B2 => n115, 
                           ZN => n153);
   U71 : AOI222_X1 port map( A1 => D(18), A2 => n127, B1 => C(18), B2 => n126, 
                           C1 => E(18), C2 => n121, ZN => n152);
   U72 : NAND2_X1 port map( A1 => n147, A2 => n146, ZN => O(15));
   U73 : AOI22_X1 port map( A1 => B(15), A2 => n118, B1 => A(15), B2 => n115, 
                           ZN => n147);
   U74 : AOI222_X1 port map( A1 => D(15), A2 => n127, B1 => C(15), B2 => n125, 
                           C1 => E(15), C2 => n121, ZN => n146);
   U75 : NAND2_X1 port map( A1 => n137, A2 => n136, ZN => O(10));
   U76 : AOI22_X1 port map( A1 => B(10), A2 => n118, B1 => A(10), B2 => n115, 
                           ZN => n137);
   U77 : AOI222_X1 port map( A1 => D(10), A2 => n127, B1 => C(10), B2 => n125, 
                           C1 => E(10), C2 => n121, ZN => n136);
   U78 : NAND2_X1 port map( A1 => n143, A2 => n142, ZN => O(13));
   U79 : AOI22_X1 port map( A1 => B(13), A2 => n118, B1 => A(13), B2 => n115, 
                           ZN => n143);
   U80 : NAND2_X1 port map( A1 => n149, A2 => n148, ZN => O(16));
   U81 : AOI22_X1 port map( A1 => B(16), A2 => n118, B1 => A(16), B2 => n115, 
                           ZN => n149);
   U82 : NAND2_X1 port map( A1 => n135, A2 => n134, ZN => O(0));
   U83 : AOI22_X1 port map( A1 => B(0), A2 => n118, B1 => A(0), B2 => n115, ZN 
                           => n135);
   U84 : AOI222_X1 port map( A1 => D(0), A2 => n127, B1 => C(0), B2 => n124, C1
                           => E(0), C2 => n121, ZN => n134);
   U85 : NAND2_X1 port map( A1 => n175, A2 => n174, ZN => O(2));
   U86 : AOI22_X1 port map( A1 => B(2), A2 => n119, B1 => A(2), B2 => n116, ZN 
                           => n175);
   U87 : AOI222_X1 port map( A1 => D(2), A2 => n128, B1 => C(2), B2 => n124, C1
                           => E(2), C2 => n122, ZN => n174);
   U88 : NAND2_X1 port map( A1 => n156, A2 => n155, ZN => O(1));
   U89 : AOI22_X1 port map( A1 => B(1), A2 => n118, B1 => A(1), B2 => n115, ZN 
                           => n156);
   U90 : AOI222_X1 port map( A1 => D(1), A2 => n127, B1 => C(1), B2 => n124, C1
                           => E(1), C2 => n121, ZN => n155);
   U91 : NAND2_X1 port map( A1 => n145, A2 => n144, ZN => O(14));
   U92 : AOI22_X1 port map( A1 => B(14), A2 => n118, B1 => A(14), B2 => n115, 
                           ZN => n145);
   U93 : AOI222_X1 port map( A1 => D(14), A2 => n127, B1 => C(14), B2 => n126, 
                           C1 => E(14), C2 => n121, ZN => n144);
   U94 : AOI22_X1 port map( A1 => B(20), A2 => n119, B1 => A(20), B2 => n116, 
                           ZN => n157);
   U95 : AOI22_X1 port map( A1 => B(26), A2 => n119, B1 => A(26), B2 => n116, 
                           ZN => n167);
   U96 : AOI22_X1 port map( A1 => B(27), A2 => n119, B1 => A(27), B2 => n116, 
                           ZN => n169);
   U97 : NOR3_X1 port map( A1 => Sel(0), A2 => Sel(1), A3 => n133, ZN => n194);
   U98 : NOR3_X1 port map( A1 => n131, A2 => Sel(2), A3 => n130, ZN => n196);
   U99 : XNOR2_X1 port map( A => n130, B => Sel(1), ZN => n132);
   U100 : AOI22_X1 port map( A1 => B(22), A2 => n119, B1 => A(22), B2 => n116, 
                           ZN => n159);
   U101 : AOI22_X1 port map( A1 => B(24), A2 => n119, B1 => A(24), B2 => n116, 
                           ZN => n163);
   U102 : AOI22_X1 port map( A1 => B(19), A2 => n118, B1 => A(19), B2 => n115, 
                           ZN => n154);
   U103 : AOI22_X1 port map( A1 => B(21), A2 => n119, B1 => A(21), B2 => n116, 
                           ZN => n158);
   U104 : INV_X1 port map( A => Sel(0), ZN => n130);
   U105 : AOI22_X1 port map( A1 => B(25), A2 => n119, B1 => A(25), B2 => n116, 
                           ZN => n165);
   U106 : NAND2_X1 port map( A1 => n179, A2 => n178, ZN => O(31));
   U107 : AOI22_X1 port map( A1 => B(31), A2 => n120, B1 => A(31), B2 => n117, 
                           ZN => n179);
   U108 : NAND2_X1 port map( A1 => n171, A2 => n170, ZN => O(28));
   U109 : AOI22_X1 port map( A1 => B(28), A2 => n119, B1 => A(28), B2 => n116, 
                           ZN => n171);
   U110 : NAND2_X1 port map( A1 => n139, A2 => n138, ZN => O(11));
   U111 : AOI22_X1 port map( A1 => B(11), A2 => n118, B1 => A(11), B2 => n115, 
                           ZN => n139);
   U112 : AOI222_X1 port map( A1 => D(11), A2 => n127, B1 => C(11), B2 => n125,
                           C1 => E(11), C2 => n121, ZN => n138);
   U113 : INV_X1 port map( A => Sel(2), ZN => n133);
   U114 : NAND2_X1 port map( A1 => n185, A2 => n184, ZN => O(5));
   U115 : AOI22_X1 port map( A1 => B(5), A2 => n120, B1 => A(5), B2 => n117, ZN
                           => n185);
   U116 : AOI222_X1 port map( A1 => D(5), A2 => n129, B1 => C(5), B2 => n126, 
                           C1 => E(5), C2 => n123, ZN => n184);
   U117 : NAND2_X1 port map( A1 => n183, A2 => n182, ZN => O(4));
   U118 : AOI22_X1 port map( A1 => B(4), A2 => n120, B1 => A(4), B2 => n117, ZN
                           => n183);
   U119 : AOI222_X1 port map( A1 => D(4), A2 => n129, B1 => C(4), B2 => n125, 
                           C1 => E(4), C2 => n123, ZN => n182);
   U120 : AOI22_X1 port map( A1 => B(23), A2 => n119, B1 => A(23), B2 => n116, 
                           ZN => n161);
   U121 : INV_X1 port map( A => Sel(1), ZN => n131);
   U122 : NAND2_X1 port map( A1 => D(23), A2 => n128, ZN => n100);
   U123 : NAND2_X1 port map( A1 => C(23), A2 => n125, ZN => n101);
   U124 : NAND2_X1 port map( A1 => E(23), A2 => n122, ZN => n102);
   U125 : AND3_X1 port map( A1 => n100, A2 => n101, A3 => n102, ZN => n160);
   U126 : NAND2_X1 port map( A1 => D(19), A2 => n127, ZN => n103);
   U127 : NAND2_X1 port map( A1 => C(19), A2 => n125, ZN => n104);
   U128 : NAND2_X1 port map( A1 => E(19), A2 => n121, ZN => n105);
   U129 : AND2_X1 port map( A1 => D(25), A2 => n128, ZN => n106);
   U130 : AND2_X1 port map( A1 => C(25), A2 => n126, ZN => n107);
   U131 : AND2_X1 port map( A1 => E(25), A2 => n122, ZN => n108);
   U132 : NOR3_X1 port map( A1 => n106, A2 => n107, A3 => n108, ZN => n164);
   U133 : NAND2_X1 port map( A1 => D(24), A2 => n128, ZN => n109);
   U134 : NAND2_X1 port map( A1 => C(24), A2 => n126, ZN => n110);
   U135 : NAND2_X1 port map( A1 => E(24), A2 => n122, ZN => n111);
   U136 : AND3_X1 port map( A1 => n109, A2 => n110, A3 => n111, ZN => n162);
   U137 : NAND2_X1 port map( A1 => n169, A2 => n168, ZN => O(27));
   U138 : NAND2_X1 port map( A1 => D(21), A2 => n128, ZN => n112);
   U139 : NAND2_X1 port map( A1 => C(21), A2 => n125, ZN => n113);
   U140 : NAND2_X1 port map( A1 => E(21), A2 => n122, ZN => n114);
   U141 : BUF_X2 port map( A => n195, Z => n125);
   U142 : BUF_X2 port map( A => n194, Z => n122);
   U143 : NAND2_X1 port map( A1 => n167, A2 => n166, ZN => O(26));
   U144 : NAND2_X1 port map( A1 => n161, A2 => n160, ZN => O(23));
   U145 : NAND2_X1 port map( A1 => n163, A2 => n162, ZN => O(24));
   U146 : NAND2_X1 port map( A1 => n164, A2 => n165, ZN => O(25));
   U147 : AOI222_X1 port map( A1 => D(31), A2 => n129, B1 => C(31), B2 => n125,
                           C1 => E(31), C2 => n123, ZN => n178);
   U148 : AOI222_X1 port map( A1 => D(30), A2 => n128, B1 => C(30), B2 => n126,
                           C1 => E(30), C2 => n122, ZN => n176);
   U149 : AOI222_X1 port map( A1 => D(29), A2 => n128, B1 => C(29), B2 => n125,
                           C1 => E(29), C2 => n122, ZN => n172);
   U150 : AOI222_X1 port map( A1 => D(28), A2 => n128, B1 => C(28), B2 => n126,
                           C1 => E(28), C2 => n122, ZN => n170);
   U151 : AOI222_X1 port map( A1 => D(26), A2 => n128, B1 => C(26), B2 => n125,
                           C1 => E(26), C2 => n122, ZN => n166);
   U152 : AOI222_X1 port map( A1 => D(27), A2 => n128, B1 => C(27), B2 => n126,
                           C1 => E(27), C2 => n122, ZN => n168);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity mux_N32_5 is

   port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end mux_N32_5;

architecture SYN_behav of mux_N32_5 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X3
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X4
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
      n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, 
      n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, 
      n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, 
      n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, 
      n190, n191, n192, n193, n194, n195 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n107, A2 => n80, ZN => O(21));
   U2 : NAND3_X1 port map( A1 => n108, A2 => n155, A3 => n106, ZN => n79);
   U3 : INV_X1 port map( A => n79, ZN => n80);
   U4 : XOR2_X1 port map( A => Sel(0), B => Sel(1), Z => n129);
   U5 : AOI222_X1 port map( A1 => n128, A2 => Sel(0), B1 => n127, B2 => Sel(2),
                           C1 => n130, C2 => Sel(1), ZN => n189);
   U6 : AND2_X1 port map( A1 => n156, A2 => n109, ZN => n81);
   U7 : BUF_X4 port map( A => n192, Z => n121);
   U8 : AND2_X2 port map( A1 => Sel(2), A2 => n129, ZN => n192);
   U9 : NAND3_X1 port map( A1 => n111, A2 => n110, A3 => n81, ZN => O(22));
   U10 : AND2_X1 port map( A1 => D(1), A2 => n124, ZN => n82);
   U11 : AND2_X1 port map( A1 => C(1), A2 => n121, ZN => n83);
   U12 : AND2_X1 port map( A1 => E(1), A2 => n118, ZN => n84);
   U13 : NOR3_X1 port map( A1 => n82, A2 => n83, A3 => n84, ZN => n151);
   U14 : AND2_X1 port map( A1 => D(12), A2 => n124, ZN => n85);
   U15 : AND2_X1 port map( A1 => C(12), A2 => n121, ZN => n86);
   U16 : AND2_X1 port map( A1 => E(12), A2 => n118, ZN => n87);
   U17 : NOR3_X1 port map( A1 => n85, A2 => n86, A3 => n87, ZN => n137);
   U18 : AND2_X1 port map( A1 => Sel(2), A2 => n129, ZN => n123);
   U19 : BUF_X2 port map( A => n190, Z => n116);
   U20 : BUF_X2 port map( A => n189, Z => n113);
   U21 : AND2_X1 port map( A1 => n129, A2 => n130, ZN => n190);
   U22 : NAND2_X1 port map( A1 => n154, A2 => n153, ZN => O(20));
   U23 : NAND2_X1 port map( A1 => D(13), A2 => n124, ZN => n88);
   U24 : NAND2_X1 port map( A1 => C(13), A2 => n121, ZN => n89);
   U25 : NAND2_X1 port map( A1 => E(13), A2 => n118, ZN => n90);
   U26 : AND3_X1 port map( A1 => n88, A2 => n89, A3 => n90, ZN => n139);
   U27 : AOI222_X1 port map( A1 => D(16), A2 => n124, B1 => C(16), B2 => n121, 
                           C1 => E(16), C2 => n118, ZN => n145);
   U28 : NAND4_X1 port map( A1 => n147, A2 => n95, A3 => n96, A4 => n94, ZN => 
                           O(17));
   U29 : NAND4_X1 port map( A1 => n103, A2 => n104, A3 => n150, A4 => n105, ZN 
                           => O(19));
   U30 : NAND2_X1 port map( A1 => D(14), A2 => n124, ZN => n91);
   U31 : NAND2_X1 port map( A1 => C(14), A2 => n121, ZN => n92);
   U32 : NAND2_X1 port map( A1 => E(14), A2 => n118, ZN => n93);
   U33 : AND3_X1 port map( A1 => n91, A2 => n92, A3 => n93, ZN => n141);
   U34 : NAND2_X1 port map( A1 => D(17), A2 => n124, ZN => n94);
   U35 : NAND2_X1 port map( A1 => C(17), A2 => n121, ZN => n95);
   U36 : NAND2_X1 port map( A1 => E(17), A2 => n118, ZN => n96);
   U37 : NAND2_X1 port map( A1 => D(15), A2 => n124, ZN => n97);
   U38 : NAND2_X1 port map( A1 => C(15), A2 => n121, ZN => n98);
   U39 : NAND2_X1 port map( A1 => E(15), A2 => n118, ZN => n99);
   U40 : AND3_X1 port map( A1 => n97, A2 => n98, A3 => n99, ZN => n143);
   U41 : NAND2_X1 port map( A1 => D(18), A2 => n124, ZN => n100);
   U42 : NAND2_X1 port map( A1 => C(18), A2 => n121, ZN => n101);
   U43 : NAND2_X1 port map( A1 => E(18), A2 => n118, ZN => n102);
   U44 : AND3_X1 port map( A1 => n102, A2 => n101, A3 => n100, ZN => n148);
   U45 : NAND2_X1 port map( A1 => D(19), A2 => n124, ZN => n103);
   U46 : NAND2_X1 port map( A1 => C(19), A2 => n121, ZN => n104);
   U47 : NAND2_X1 port map( A1 => E(19), A2 => n118, ZN => n105);
   U48 : NAND2_X1 port map( A1 => D(21), A2 => n125, ZN => n106);
   U49 : NAND2_X1 port map( A1 => C(21), A2 => n122, ZN => n107);
   U50 : NAND2_X1 port map( A1 => E(21), A2 => n119, ZN => n108);
   U51 : BUF_X2 port map( A => n193, Z => n125);
   U52 : BUF_X2 port map( A => n191, Z => n119);
   U53 : CLKBUF_X3 port map( A => n190, Z => n115);
   U54 : BUF_X2 port map( A => n189, Z => n112);
   U55 : CLKBUF_X1 port map( A => n190, Z => n117);
   U56 : BUF_X2 port map( A => n193, Z => n124);
   U57 : CLKBUF_X1 port map( A => n189, Z => n114);
   U58 : BUF_X2 port map( A => n191, Z => n118);
   U59 : CLKBUF_X1 port map( A => n191, Z => n120);
   U60 : CLKBUF_X1 port map( A => n193, Z => n126);
   U61 : NAND2_X1 port map( A1 => n184, A2 => n183, ZN => O(6));
   U62 : AOI22_X1 port map( A1 => B(6), A2 => n117, B1 => A(6), B2 => n114, ZN 
                           => n184);
   U63 : AOI222_X1 port map( A1 => D(6), A2 => n126, B1 => C(6), B2 => n123, C1
                           => E(6), C2 => n120, ZN => n183);
   U64 : NAND2_X1 port map( A1 => n186, A2 => n185, ZN => O(7));
   U65 : AOI22_X1 port map( A1 => B(7), A2 => n117, B1 => A(7), B2 => n114, ZN 
                           => n186);
   U66 : AOI222_X1 port map( A1 => D(7), A2 => n126, B1 => C(7), B2 => n123, C1
                           => E(7), C2 => n120, ZN => n185);
   U67 : NAND2_X1 port map( A1 => n188, A2 => n187, ZN => O(8));
   U68 : AOI22_X1 port map( A1 => B(8), A2 => n117, B1 => A(8), B2 => n114, ZN 
                           => n188);
   U69 : AOI222_X1 port map( A1 => D(8), A2 => n126, B1 => C(8), B2 => n123, C1
                           => E(8), C2 => n120, ZN => n187);
   U70 : NAND2_X1 port map( A1 => n172, A2 => n171, ZN => O(2));
   U71 : AOI22_X1 port map( A1 => B(2), A2 => n116, B1 => A(2), B2 => n113, ZN 
                           => n172);
   U72 : AOI222_X1 port map( A1 => D(2), A2 => n125, B1 => C(2), B2 => n122, C1
                           => E(2), C2 => n119, ZN => n171);
   U73 : NAND2_X1 port map( A1 => n136, A2 => n135, ZN => O(11));
   U74 : AOI22_X1 port map( A1 => B(11), A2 => n115, B1 => A(11), B2 => n112, 
                           ZN => n136);
   U75 : AOI222_X1 port map( A1 => D(11), A2 => n124, B1 => C(11), B2 => n121, 
                           C1 => E(11), C2 => n118, ZN => n135);
   U76 : NAND2_X1 port map( A1 => n132, A2 => n131, ZN => O(0));
   U77 : AOI22_X1 port map( A1 => B(0), A2 => n115, B1 => A(0), B2 => n112, ZN 
                           => n132);
   U78 : AOI222_X1 port map( A1 => D(0), A2 => n124, B1 => C(0), B2 => n121, C1
                           => E(0), C2 => n118, ZN => n131);
   U79 : NAND2_X1 port map( A1 => n152, A2 => n151, ZN => O(1));
   U80 : AOI22_X1 port map( A1 => B(1), A2 => n115, B1 => A(1), B2 => n112, ZN 
                           => n152);
   U81 : NOR3_X1 port map( A1 => Sel(0), A2 => Sel(1), A3 => n130, ZN => n191);
   U82 : NOR3_X1 port map( A1 => n128, A2 => Sel(2), A3 => n127, ZN => n193);
   U83 : AOI22_X1 port map( A1 => B(24), A2 => n116, B1 => A(24), B2 => n113, 
                           ZN => n160);
   U84 : AOI22_X1 port map( A1 => B(17), A2 => n115, B1 => A(17), B2 => n112, 
                           ZN => n147);
   U85 : AOI22_X1 port map( A1 => B(27), A2 => n116, B1 => A(27), B2 => n113, 
                           ZN => n166);
   U86 : AOI22_X1 port map( A1 => B(26), A2 => n116, B1 => A(26), B2 => n113, 
                           ZN => n164);
   U87 : AOI22_X1 port map( A1 => B(22), A2 => n116, B1 => A(22), B2 => n113, 
                           ZN => n156);
   U88 : INV_X1 port map( A => Sel(0), ZN => n127);
   U89 : NAND2_X1 port map( A1 => n170, A2 => n169, ZN => O(29));
   U90 : AOI22_X1 port map( A1 => B(29), A2 => n116, B1 => A(29), B2 => n113, 
                           ZN => n170);
   U91 : NAND2_X1 port map( A1 => n168, A2 => n167, ZN => O(28));
   U92 : AOI22_X1 port map( A1 => B(28), A2 => n116, B1 => A(28), B2 => n113, 
                           ZN => n168);
   U93 : NAND2_X1 port map( A1 => n176, A2 => n175, ZN => O(31));
   U94 : AOI22_X1 port map( A1 => B(31), A2 => n117, B1 => A(31), B2 => n114, 
                           ZN => n176);
   U95 : NAND2_X1 port map( A1 => n148, A2 => n149, ZN => O(18));
   U96 : AOI22_X1 port map( A1 => B(18), A2 => n115, B1 => A(18), B2 => n112, 
                           ZN => n149);
   U97 : AOI22_X1 port map( A1 => B(21), A2 => n116, B1 => A(21), B2 => n113, 
                           ZN => n155);
   U98 : NAND2_X1 port map( A1 => n162, A2 => n161, ZN => O(25));
   U99 : AOI22_X1 port map( A1 => B(25), A2 => n116, B1 => A(25), B2 => n113, 
                           ZN => n162);
   U100 : NAND2_X1 port map( A1 => n174, A2 => n173, ZN => O(30));
   U101 : AOI22_X1 port map( A1 => B(30), A2 => n116, B1 => A(30), B2 => n113, 
                           ZN => n174);
   U102 : AOI222_X1 port map( A1 => D(30), A2 => n125, B1 => C(30), B2 => n122,
                           C1 => E(30), C2 => n119, ZN => n173);
   U103 : NAND2_X1 port map( A1 => n142, A2 => n141, ZN => O(14));
   U104 : AOI22_X1 port map( A1 => B(14), A2 => n115, B1 => A(14), B2 => n112, 
                           ZN => n142);
   U105 : NAND2_X1 port map( A1 => n140, A2 => n139, ZN => O(13));
   U106 : AOI22_X1 port map( A1 => B(13), A2 => n115, B1 => A(13), B2 => n112, 
                           ZN => n140);
   U107 : NAND2_X1 port map( A1 => n134, A2 => n133, ZN => O(10));
   U108 : AOI22_X1 port map( A1 => B(10), A2 => n115, B1 => A(10), B2 => n112, 
                           ZN => n134);
   U109 : AOI222_X1 port map( A1 => D(10), A2 => n124, B1 => C(10), B2 => n121,
                           C1 => E(10), C2 => n118, ZN => n133);
   U110 : NAND2_X1 port map( A1 => n146, A2 => n145, ZN => O(16));
   U111 : AOI22_X1 port map( A1 => B(16), A2 => n115, B1 => A(16), B2 => n112, 
                           ZN => n146);
   U112 : AOI22_X1 port map( A1 => B(20), A2 => n116, B1 => A(20), B2 => n113, 
                           ZN => n154);
   U113 : AOI222_X1 port map( A1 => D(20), A2 => n125, B1 => C(20), B2 => n122,
                           C1 => E(20), C2 => n119, ZN => n153);
   U114 : NAND2_X1 port map( A1 => n138, A2 => n137, ZN => O(12));
   U115 : AOI22_X1 port map( A1 => B(12), A2 => n115, B1 => A(12), B2 => n112, 
                           ZN => n138);
   U116 : AOI22_X1 port map( A1 => B(19), A2 => n115, B1 => A(19), B2 => n112, 
                           ZN => n150);
   U117 : NAND2_X1 port map( A1 => n144, A2 => n143, ZN => O(15));
   U118 : AOI22_X1 port map( A1 => B(15), A2 => n115, B1 => A(15), B2 => n112, 
                           ZN => n144);
   U119 : NAND2_X1 port map( A1 => n195, A2 => n194, ZN => O(9));
   U120 : AOI22_X1 port map( A1 => B(9), A2 => n117, B1 => A(9), B2 => n114, ZN
                           => n195);
   U121 : AOI222_X1 port map( A1 => D(9), A2 => n126, B1 => C(9), B2 => n123, 
                           C1 => E(9), C2 => n120, ZN => n194);
   U122 : NAND2_X1 port map( A1 => n158, A2 => n157, ZN => O(23));
   U123 : AOI22_X1 port map( A1 => B(23), A2 => n116, B1 => A(23), B2 => n113, 
                           ZN => n158);
   U124 : NAND2_X1 port map( A1 => n178, A2 => n177, ZN => O(3));
   U125 : AOI22_X1 port map( A1 => B(3), A2 => n117, B1 => A(3), B2 => n114, ZN
                           => n178);
   U126 : AOI222_X1 port map( A1 => D(3), A2 => n126, B1 => C(3), B2 => n123, 
                           C1 => E(3), C2 => n120, ZN => n177);
   U127 : NAND2_X1 port map( A1 => n180, A2 => n179, ZN => O(4));
   U128 : AOI22_X1 port map( A1 => B(4), A2 => n117, B1 => A(4), B2 => n114, ZN
                           => n180);
   U129 : AOI222_X1 port map( A1 => D(4), A2 => n126, B1 => C(4), B2 => n123, 
                           C1 => E(4), C2 => n120, ZN => n179);
   U130 : NAND2_X1 port map( A1 => n182, A2 => n181, ZN => O(5));
   U131 : AOI22_X1 port map( A1 => B(5), A2 => n117, B1 => A(5), B2 => n114, ZN
                           => n182);
   U132 : AOI222_X1 port map( A1 => D(5), A2 => n126, B1 => C(5), B2 => n123, 
                           C1 => E(5), C2 => n120, ZN => n181);
   U133 : INV_X1 port map( A => Sel(2), ZN => n130);
   U134 : INV_X1 port map( A => Sel(1), ZN => n128);
   U135 : NAND2_X1 port map( A1 => n160, A2 => n159, ZN => O(24));
   U136 : NAND2_X1 port map( A1 => n166, A2 => n165, ZN => O(27));
   U137 : NAND2_X1 port map( A1 => n164, A2 => n163, ZN => O(26));
   U138 : AOI222_X1 port map( A1 => D(26), A2 => n125, B1 => C(26), B2 => n122,
                           C1 => E(26), C2 => n119, ZN => n163);
   U139 : NAND2_X1 port map( A1 => D(22), A2 => n125, ZN => n109);
   U140 : NAND2_X1 port map( A1 => C(22), A2 => n122, ZN => n110);
   U141 : NAND2_X1 port map( A1 => E(22), A2 => n119, ZN => n111);
   U142 : BUF_X2 port map( A => n192, Z => n122);
   U143 : AOI222_X1 port map( A1 => D(31), A2 => n126, B1 => C(31), B2 => n123,
                           C1 => E(31), C2 => n120, ZN => n175);
   U144 : AOI222_X1 port map( A1 => D(29), A2 => n125, B1 => C(29), B2 => n122,
                           C1 => E(29), C2 => n119, ZN => n169);
   U145 : AOI222_X1 port map( A1 => D(28), A2 => n125, B1 => C(28), B2 => n122,
                           C1 => E(28), C2 => n119, ZN => n167);
   U146 : AOI222_X1 port map( A1 => D(24), A2 => n125, B1 => C(24), B2 => n122,
                           C1 => E(24), C2 => n119, ZN => n159);
   U147 : AOI222_X1 port map( A1 => D(23), A2 => n125, B1 => C(23), B2 => n122,
                           C1 => E(23), C2 => n119, ZN => n157);
   U148 : AOI222_X1 port map( A1 => D(27), A2 => n125, B1 => C(27), B2 => n122,
                           C1 => E(27), C2 => n119, ZN => n165);
   U149 : AOI222_X1 port map( A1 => D(25), A2 => n125, B1 => C(25), B2 => n122,
                           C1 => E(25), C2 => n119, ZN => n161);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity mux_N32_4 is

   port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end mux_N32_4;

architecture SYN_behav of mux_N32_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI222_X4
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X2
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
      n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, 
      n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, 
      n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, 
      n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, 
      n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201 : 
      std_logic;

begin
   
   U1 : NAND4_X2 port map( A1 => n102, A2 => n103, A3 => n101, A4 => n164, ZN 
                           => O(22));
   U2 : AOI222_X1 port map( A1 => n138, A2 => Sel(0), B1 => n137, B2 => Sel(2),
                           C1 => n140, C2 => Sel(1), ZN => n195);
   U3 : AND2_X1 port map( A1 => Sel(2), A2 => n139, ZN => n198);
   U4 : BUF_X2 port map( A => n198, Z => n132);
   U5 : AND2_X1 port map( A1 => n165, A2 => n107, ZN => n79);
   U6 : NAND2_X1 port map( A1 => D(20), A2 => n135, ZN => n80);
   U7 : AOI222_X4 port map( A1 => D(14), A2 => n134, B1 => C(14), B2 => n131, 
                           C1 => E(14), C2 => n128, ZN => n151);
   U8 : XOR2_X1 port map( A => Sel(0), B => Sel(1), Z => n139);
   U9 : NAND4_X1 port map( A1 => n84, A2 => n85, A3 => n80, A4 => n162, ZN => 
                           O(20));
   U10 : NAND3_X1 port map( A1 => n108, A2 => n109, A3 => n79, ZN => O(23));
   U11 : AND2_X1 port map( A1 => D(2), A2 => n135, ZN => n81);
   U12 : AND2_X1 port map( A1 => C(2), A2 => n132, ZN => n82);
   U13 : AND2_X1 port map( A1 => E(2), A2 => n129, ZN => n83);
   U14 : NOR3_X1 port map( A1 => n81, A2 => n82, A3 => n83, ZN => n177);
   U15 : NAND2_X1 port map( A1 => C(20), A2 => n132, ZN => n84);
   U16 : NAND2_X1 port map( A1 => E(20), A2 => n129, ZN => n85);
   U17 : AOI222_X1 port map( A1 => D(16), A2 => n134, B1 => C(16), B2 => n131, 
                           C1 => E(16), C2 => n128, ZN => n155);
   U18 : NAND4_X1 port map( A1 => n112, A2 => n174, A3 => n110, A4 => n111, ZN 
                           => O(28));
   U19 : NAND4_X1 port map( A1 => n157, A2 => n90, A3 => n89, A4 => n91, ZN => 
                           O(17));
   U20 : NAND4_X1 port map( A1 => n99, A2 => n98, A3 => n163, A4 => n100, ZN =>
                           O(21));
   U21 : NAND4_X1 port map( A1 => n94, A2 => n93, A3 => n158, A4 => n92, ZN => 
                           O(18));
   U22 : NAND4_X1 port map( A1 => n96, A2 => n97, A3 => n159, A4 => n95, ZN => 
                           O(19));
   U23 : BUF_X2 port map( A => n198, Z => n133);
   U24 : AND2_X1 port map( A1 => n139, A2 => n140, ZN => n196);
   U25 : NAND2_X1 port map( A1 => D(0), A2 => n134, ZN => n86);
   U26 : NAND2_X1 port map( A1 => C(0), A2 => n131, ZN => n87);
   U27 : NAND2_X1 port map( A1 => E(0), A2 => n128, ZN => n88);
   U28 : AND3_X1 port map( A1 => n86, A2 => n87, A3 => n88, ZN => n141);
   U29 : NAND2_X1 port map( A1 => D(17), A2 => n134, ZN => n89);
   U30 : NAND2_X1 port map( A1 => C(17), A2 => n131, ZN => n90);
   U31 : NAND2_X1 port map( A1 => E(17), A2 => n128, ZN => n91);
   U32 : NAND2_X1 port map( A1 => D(18), A2 => n134, ZN => n92);
   U33 : NAND2_X1 port map( A1 => C(18), A2 => n131, ZN => n93);
   U34 : NAND2_X1 port map( A1 => E(18), A2 => n128, ZN => n94);
   U35 : NAND2_X1 port map( A1 => D(19), A2 => n134, ZN => n95);
   U36 : NAND2_X1 port map( A1 => C(19), A2 => n131, ZN => n96);
   U37 : NAND2_X1 port map( A1 => E(19), A2 => n128, ZN => n97);
   U38 : NAND2_X1 port map( A1 => D(21), A2 => n135, ZN => n98);
   U39 : NAND2_X1 port map( A1 => C(21), A2 => n132, ZN => n99);
   U40 : NAND2_X1 port map( A1 => E(21), A2 => n129, ZN => n100);
   U41 : NAND2_X1 port map( A1 => D(22), A2 => n135, ZN => n101);
   U42 : NAND2_X1 port map( A1 => C(22), A2 => n132, ZN => n102);
   U43 : NAND2_X1 port map( A1 => E(22), A2 => n129, ZN => n103);
   U44 : NAND2_X1 port map( A1 => D(26), A2 => n135, ZN => n104);
   U45 : NAND2_X1 port map( A1 => C(26), A2 => n132, ZN => n105);
   U46 : NAND2_X1 port map( A1 => E(26), A2 => n129, ZN => n106);
   U47 : AND3_X1 port map( A1 => n105, A2 => n104, A3 => n106, ZN => n170);
   U48 : BUF_X2 port map( A => n196, Z => n126);
   U49 : BUF_X2 port map( A => n196, Z => n125);
   U50 : BUF_X2 port map( A => n195, Z => n123);
   U51 : BUF_X2 port map( A => n195, Z => n122);
   U52 : NAND2_X1 port map( A1 => D(23), A2 => n135, ZN => n107);
   U53 : NAND2_X1 port map( A1 => C(23), A2 => n132, ZN => n108);
   U54 : NAND2_X1 port map( A1 => E(23), A2 => n129, ZN => n109);
   U55 : BUF_X2 port map( A => n199, Z => n135);
   U56 : BUF_X2 port map( A => n197, Z => n129);
   U57 : CLKBUF_X1 port map( A => n196, Z => n127);
   U58 : BUF_X2 port map( A => n199, Z => n134);
   U59 : CLKBUF_X1 port map( A => n195, Z => n124);
   U60 : BUF_X2 port map( A => n198, Z => n131);
   U61 : BUF_X2 port map( A => n197, Z => n128);
   U62 : CLKBUF_X1 port map( A => n197, Z => n130);
   U63 : CLKBUF_X1 port map( A => n199, Z => n136);
   U64 : NAND2_X1 port map( A1 => n176, A2 => n175, ZN => O(29));
   U65 : AOI22_X1 port map( A1 => B(29), A2 => n126, B1 => A(29), B2 => n123, 
                           ZN => n176);
   U66 : NAND2_X1 port map( A1 => n146, A2 => n145, ZN => O(11));
   U67 : AOI22_X1 port map( A1 => B(11), A2 => n125, B1 => A(11), B2 => n122, 
                           ZN => n146);
   U68 : NAND2_X1 port map( A1 => n150, A2 => n149, ZN => O(13));
   U69 : AOI22_X1 port map( A1 => B(13), A2 => n125, B1 => A(13), B2 => n122, 
                           ZN => n150);
   U70 : NAND2_X1 port map( A1 => n201, A2 => n200, ZN => O(9));
   U71 : AOI22_X1 port map( A1 => B(9), A2 => n127, B1 => A(9), B2 => n124, ZN 
                           => n201);
   U72 : AOI222_X1 port map( A1 => D(9), A2 => n136, B1 => C(9), B2 => n133, C1
                           => E(9), C2 => n130, ZN => n200);
   U73 : AOI22_X1 port map( A1 => B(21), A2 => n126, B1 => A(21), B2 => n123, 
                           ZN => n163);
   U74 : AOI22_X1 port map( A1 => B(18), A2 => n125, B1 => A(18), B2 => n122, 
                           ZN => n158);
   U75 : AOI22_X1 port map( A1 => B(19), A2 => n125, B1 => A(19), B2 => n122, 
                           ZN => n159);
   U76 : NAND2_X1 port map( A1 => n154, A2 => n153, ZN => O(15));
   U77 : AOI22_X1 port map( A1 => B(15), A2 => n125, B1 => A(15), B2 => n122, 
                           ZN => n154);
   U78 : AOI222_X1 port map( A1 => D(15), A2 => n134, B1 => C(15), B2 => n131, 
                           C1 => E(15), C2 => n128, ZN => n153);
   U79 : AOI22_X1 port map( A1 => B(17), A2 => n125, B1 => A(17), B2 => n122, 
                           ZN => n157);
   U80 : NAND2_X1 port map( A1 => n142, A2 => n141, ZN => O(0));
   U81 : AOI22_X1 port map( A1 => B(0), A2 => n125, B1 => A(0), B2 => n122, ZN 
                           => n142);
   U82 : NAND2_X1 port map( A1 => n148, A2 => n147, ZN => O(12));
   U83 : AOI22_X1 port map( A1 => B(12), A2 => n125, B1 => A(12), B2 => n122, 
                           ZN => n148);
   U84 : AOI222_X1 port map( A1 => D(12), A2 => n134, B1 => C(12), B2 => n131, 
                           C1 => E(12), C2 => n128, ZN => n147);
   U85 : NAND2_X1 port map( A1 => n161, A2 => n160, ZN => O(1));
   U86 : AOI22_X1 port map( A1 => B(1), A2 => n125, B1 => A(1), B2 => n122, ZN 
                           => n161);
   U87 : AOI222_X1 port map( A1 => D(1), A2 => n134, B1 => C(1), B2 => n131, C1
                           => E(1), C2 => n128, ZN => n160);
   U88 : AOI22_X1 port map( A1 => B(23), A2 => n126, B1 => A(23), B2 => n123, 
                           ZN => n165);
   U89 : AOI22_X1 port map( A1 => B(22), A2 => n126, B1 => A(22), B2 => n123, 
                           ZN => n164);
   U90 : AOI22_X1 port map( A1 => B(20), A2 => n126, B1 => A(20), B2 => n123, 
                           ZN => n162);
   U91 : AOI22_X1 port map( A1 => B(26), A2 => n126, B1 => A(26), B2 => n123, 
                           ZN => n171);
   U92 : NOR3_X1 port map( A1 => Sel(0), A2 => Sel(1), A3 => n140, ZN => n197);
   U93 : NOR3_X1 port map( A1 => n138, A2 => Sel(2), A3 => n137, ZN => n199);
   U94 : AOI22_X1 port map( A1 => B(27), A2 => n126, B1 => A(27), B2 => n123, 
                           ZN => n173);
   U95 : AOI22_X1 port map( A1 => B(24), A2 => n126, B1 => A(24), B2 => n123, 
                           ZN => n167);
   U96 : AOI22_X1 port map( A1 => B(25), A2 => n126, B1 => A(25), B2 => n123, 
                           ZN => n169);
   U97 : NAND2_X1 port map( A1 => n180, A2 => n179, ZN => O(30));
   U98 : AOI22_X1 port map( A1 => B(30), A2 => n126, B1 => A(30), B2 => n123, 
                           ZN => n180);
   U99 : NAND2_X1 port map( A1 => n182, A2 => n181, ZN => O(31));
   U100 : AOI22_X1 port map( A1 => B(31), A2 => n127, B1 => A(31), B2 => n124, 
                           ZN => n182);
   U101 : INV_X1 port map( A => Sel(0), ZN => n137);
   U102 : NAND2_X1 port map( A1 => n156, A2 => n155, ZN => O(16));
   U103 : AOI22_X1 port map( A1 => B(16), A2 => n125, B1 => A(16), B2 => n122, 
                           ZN => n156);
   U104 : NAND2_X1 port map( A1 => n144, A2 => n143, ZN => O(10));
   U105 : AOI22_X1 port map( A1 => B(10), A2 => n125, B1 => A(10), B2 => n122, 
                           ZN => n144);
   U106 : AOI222_X1 port map( A1 => D(10), A2 => n134, B1 => C(10), B2 => n131,
                           C1 => E(10), C2 => n128, ZN => n143);
   U107 : NAND2_X1 port map( A1 => n152, A2 => n151, ZN => O(14));
   U108 : AOI22_X1 port map( A1 => B(14), A2 => n125, B1 => A(14), B2 => n122, 
                           ZN => n152);
   U109 : NAND2_X1 port map( A1 => n190, A2 => n189, ZN => O(6));
   U110 : AOI22_X1 port map( A1 => B(6), A2 => n127, B1 => A(6), B2 => n124, ZN
                           => n190);
   U111 : AOI222_X1 port map( A1 => D(6), A2 => n136, B1 => C(6), B2 => n133, 
                           C1 => E(6), C2 => n130, ZN => n189);
   U112 : NAND2_X1 port map( A1 => n184, A2 => n183, ZN => O(3));
   U113 : AOI22_X1 port map( A1 => B(3), A2 => n127, B1 => A(3), B2 => n124, ZN
                           => n184);
   U114 : AOI222_X1 port map( A1 => D(3), A2 => n136, B1 => C(3), B2 => n133, 
                           C1 => E(3), C2 => n130, ZN => n183);
   U115 : NAND2_X1 port map( A1 => n186, A2 => n185, ZN => O(4));
   U116 : AOI22_X1 port map( A1 => B(4), A2 => n127, B1 => A(4), B2 => n124, ZN
                           => n186);
   U117 : AOI222_X1 port map( A1 => D(4), A2 => n136, B1 => C(4), B2 => n133, 
                           C1 => E(4), C2 => n130, ZN => n185);
   U118 : NAND2_X1 port map( A1 => n192, A2 => n191, ZN => O(7));
   U119 : AOI22_X1 port map( A1 => B(7), A2 => n127, B1 => A(7), B2 => n124, ZN
                           => n192);
   U120 : AOI222_X1 port map( A1 => D(7), A2 => n136, B1 => C(7), B2 => n133, 
                           C1 => E(7), C2 => n130, ZN => n191);
   U121 : NAND2_X1 port map( A1 => n194, A2 => n193, ZN => O(8));
   U122 : AOI22_X1 port map( A1 => B(8), A2 => n127, B1 => A(8), B2 => n124, ZN
                           => n194);
   U123 : AOI222_X1 port map( A1 => D(8), A2 => n136, B1 => C(8), B2 => n133, 
                           C1 => E(8), C2 => n130, ZN => n193);
   U124 : NAND2_X1 port map( A1 => n188, A2 => n187, ZN => O(5));
   U125 : AOI22_X1 port map( A1 => B(5), A2 => n127, B1 => A(5), B2 => n124, ZN
                           => n188);
   U126 : AOI222_X1 port map( A1 => D(5), A2 => n136, B1 => C(5), B2 => n133, 
                           C1 => E(5), C2 => n130, ZN => n187);
   U127 : NAND2_X1 port map( A1 => n178, A2 => n177, ZN => O(2));
   U128 : AOI22_X1 port map( A1 => B(2), A2 => n126, B1 => A(2), B2 => n123, ZN
                           => n178);
   U129 : INV_X1 port map( A => Sel(2), ZN => n140);
   U130 : AOI22_X1 port map( A1 => B(28), A2 => n126, B1 => A(28), B2 => n123, 
                           ZN => n174);
   U131 : INV_X1 port map( A => Sel(1), ZN => n138);
   U132 : AOI222_X1 port map( A1 => D(13), A2 => n134, B1 => C(13), B2 => n131,
                           C1 => E(13), C2 => n128, ZN => n149);
   U133 : AOI222_X1 port map( A1 => D(11), A2 => n134, B1 => C(11), B2 => n131,
                           C1 => E(11), C2 => n128, ZN => n145);
   U134 : NAND2_X1 port map( A1 => D(28), A2 => n135, ZN => n110);
   U135 : NAND2_X1 port map( A1 => C(28), A2 => n132, ZN => n111);
   U136 : NAND2_X1 port map( A1 => E(28), A2 => n129, ZN => n112);
   U137 : AND2_X1 port map( A1 => D(27), A2 => n135, ZN => n113);
   U138 : AND2_X1 port map( A1 => C(27), A2 => n132, ZN => n114);
   U139 : AND2_X1 port map( A1 => E(27), A2 => n129, ZN => n115);
   U140 : NOR3_X1 port map( A1 => n115, A2 => n114, A3 => n113, ZN => n172);
   U141 : AND2_X1 port map( A1 => D(25), A2 => n135, ZN => n116);
   U142 : AND2_X1 port map( A1 => C(25), A2 => n132, ZN => n117);
   U143 : AND2_X1 port map( A1 => E(25), A2 => n129, ZN => n118);
   U144 : NOR3_X1 port map( A1 => n118, A2 => n117, A3 => n116, ZN => n168);
   U145 : NAND2_X1 port map( A1 => n168, A2 => n169, ZN => O(25));
   U146 : NAND2_X1 port map( A1 => n173, A2 => n172, ZN => O(27));
   U147 : NAND2_X1 port map( A1 => n170, A2 => n171, ZN => O(26));
   U148 : NAND2_X1 port map( A1 => D(24), A2 => n135, ZN => n119);
   U149 : NAND2_X1 port map( A1 => C(24), A2 => n132, ZN => n120);
   U150 : NAND2_X1 port map( A1 => E(24), A2 => n129, ZN => n121);
   U151 : AND3_X1 port map( A1 => n121, A2 => n120, A3 => n119, ZN => n166);
   U152 : AOI222_X1 port map( A1 => D(31), A2 => n136, B1 => C(31), B2 => n133,
                           C1 => E(31), C2 => n130, ZN => n181);
   U153 : AOI222_X1 port map( A1 => D(30), A2 => n135, B1 => C(30), B2 => n132,
                           C1 => E(30), C2 => n129, ZN => n179);
   U154 : AOI222_X1 port map( A1 => D(29), A2 => n135, B1 => C(29), B2 => n132,
                           C1 => E(29), C2 => n129, ZN => n175);
   U155 : NAND2_X1 port map( A1 => n167, A2 => n166, ZN => O(24));

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity mux_N32_3 is

   port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end mux_N32_3;

architecture SYN_behav of mux_N32_3 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI222_X4
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
      n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, 
      n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, 
      n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, 
      n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n179, n180, n181, n182, n183, n184, n185, n186 : std_logic;

begin
   
   U1 : AOI222_X1 port map( A1 => D(13), A2 => n113, B1 => C(13), B2 => n110, 
                           C1 => E(13), C2 => n107, ZN => n128);
   U2 : AND2_X1 port map( A1 => n118, A2 => n119, ZN => n181);
   U3 : OR2_X1 port map( A1 => n87, A2 => n86, ZN => n79);
   U4 : NAND2_X1 port map( A1 => D(19), A2 => n113, ZN => n80);
   U5 : NAND2_X1 port map( A1 => C(19), A2 => n110, ZN => n81);
   U6 : NAND2_X1 port map( A1 => E(19), A2 => n107, ZN => n82);
   U7 : AND3_X1 port map( A1 => n80, A2 => n81, A3 => n82, ZN => n140);
   U8 : NAND2_X1 port map( A1 => D(20), A2 => n114, ZN => n83);
   U9 : NAND2_X1 port map( A1 => C(20), A2 => n111, ZN => n84);
   U10 : NAND2_X1 port map( A1 => E(20), A2 => n108, ZN => n85);
   U11 : AND3_X1 port map( A1 => n83, A2 => n84, A3 => n85, ZN => n144);
   U12 : NAND4_X1 port map( A1 => n92, A2 => n93, A3 => n155, A4 => n94, ZN => 
                           O(26));
   U13 : NAND4_X1 port map( A1 => n99, A2 => n98, A3 => n100, A4 => n154, ZN =>
                           O(25));
   U14 : NOR2_X1 port map( A1 => n88, A2 => n79, ZN => n146);
   U15 : AND2_X1 port map( A1 => D(21), A2 => n114, ZN => n86);
   U16 : AND2_X1 port map( A1 => C(21), A2 => n111, ZN => n87);
   U17 : AND2_X1 port map( A1 => E(21), A2 => n108, ZN => n88);
   U18 : AOI222_X4 port map( A1 => D(18), A2 => n113, B1 => C(18), B2 => n110, 
                           C1 => E(18), C2 => n107, ZN => n138);
   U19 : AOI222_X4 port map( A1 => D(22), A2 => n114, B1 => C(22), B2 => n111, 
                           C1 => E(22), C2 => n108, ZN => n148);
   U20 : AOI222_X1 port map( A1 => D(23), A2 => n114, B1 => C(23), B2 => n111, 
                           C1 => E(23), C2 => n108, ZN => n150);
   U21 : NAND2_X1 port map( A1 => D(28), A2 => n114, ZN => n89);
   U22 : NAND2_X1 port map( A1 => C(28), A2 => n111, ZN => n90);
   U23 : NAND2_X1 port map( A1 => E(28), A2 => n108, ZN => n91);
   U24 : AND3_X1 port map( A1 => n89, A2 => n90, A3 => n91, ZN => n158);
   U25 : NAND2_X1 port map( A1 => D(26), A2 => n114, ZN => n92);
   U26 : NAND2_X1 port map( A1 => C(26), A2 => n111, ZN => n93);
   U27 : NAND2_X1 port map( A1 => E(26), A2 => n108, ZN => n94);
   U28 : BUF_X2 port map( A => n184, Z => n114);
   U29 : BUF_X2 port map( A => n182, Z => n108);
   U30 : BUF_X2 port map( A => n181, Z => n104);
   U31 : BUF_X2 port map( A => n184, Z => n113);
   U32 : BUF_X2 port map( A => n180, Z => n101);
   U33 : BUF_X2 port map( A => n183, Z => n110);
   U34 : BUF_X2 port map( A => n182, Z => n107);
   U35 : BUF_X1 port map( A => n181, Z => n105);
   U36 : CLKBUF_X1 port map( A => n181, Z => n106);
   U37 : BUF_X1 port map( A => n180, Z => n102);
   U38 : CLKBUF_X1 port map( A => n180, Z => n103);
   U39 : CLKBUF_X1 port map( A => n183, Z => n112);
   U40 : CLKBUF_X1 port map( A => n182, Z => n109);
   U41 : CLKBUF_X1 port map( A => n184, Z => n115);
   U42 : AOI222_X1 port map( A1 => n117, A2 => Sel(0), B1 => n116, B2 => Sel(2)
                           , C1 => n119, C2 => Sel(1), ZN => n180);
   U43 : NAND2_X1 port map( A1 => n171, A2 => n170, ZN => O(4));
   U44 : AOI22_X1 port map( A1 => B(4), A2 => n106, B1 => A(4), B2 => n103, ZN 
                           => n171);
   U45 : AOI222_X1 port map( A1 => D(4), A2 => n115, B1 => C(4), B2 => n112, C1
                           => E(4), C2 => n109, ZN => n170);
   U46 : NAND2_X1 port map( A1 => n151, A2 => n150, ZN => O(23));
   U47 : AOI22_X1 port map( A1 => B(23), A2 => n105, B1 => A(23), B2 => n102, 
                           ZN => n151);
   U48 : NAND2_X1 port map( A1 => n153, A2 => n152, ZN => O(24));
   U49 : AOI22_X1 port map( A1 => B(24), A2 => n105, B1 => A(24), B2 => n102, 
                           ZN => n153);
   U50 : AOI222_X1 port map( A1 => D(24), A2 => n114, B1 => C(24), B2 => n111, 
                           C1 => E(24), C2 => n108, ZN => n152);
   U51 : NAND2_X1 port map( A1 => n163, A2 => n162, ZN => O(2));
   U52 : AOI22_X1 port map( A1 => B(2), A2 => n105, B1 => A(2), B2 => n102, ZN 
                           => n163);
   U53 : AOI222_X1 port map( A1 => D(2), A2 => n114, B1 => C(2), B2 => n111, C1
                           => E(2), C2 => n108, ZN => n162);
   U54 : NAND2_X1 port map( A1 => n121, A2 => n120, ZN => O(0));
   U55 : AOI22_X1 port map( A1 => B(0), A2 => n104, B1 => A(0), B2 => n101, ZN 
                           => n121);
   U56 : AOI222_X1 port map( A1 => D(0), A2 => n113, B1 => C(0), B2 => n110, C1
                           => E(0), C2 => n107, ZN => n120);
   U57 : NAND2_X1 port map( A1 => n143, A2 => n142, ZN => O(1));
   U58 : AOI22_X1 port map( A1 => B(1), A2 => n104, B1 => A(1), B2 => n101, ZN 
                           => n143);
   U59 : AOI222_X1 port map( A1 => D(1), A2 => n113, B1 => C(1), B2 => n110, C1
                           => E(1), C2 => n107, ZN => n142);
   U60 : AOI22_X1 port map( A1 => B(26), A2 => n105, B1 => A(26), B2 => n102, 
                           ZN => n155);
   U61 : NOR3_X1 port map( A1 => Sel(0), A2 => Sel(1), A3 => n119, ZN => n182);
   U62 : NOR3_X1 port map( A1 => n117, A2 => Sel(2), A3 => n116, ZN => n184);
   U63 : AOI22_X1 port map( A1 => B(28), A2 => n105, B1 => A(28), B2 => n102, 
                           ZN => n159);
   U64 : XNOR2_X1 port map( A => n116, B => Sel(1), ZN => n118);
   U65 : AOI22_X1 port map( A1 => B(27), A2 => n105, B1 => A(27), B2 => n102, 
                           ZN => n157);
   U66 : NAND2_X1 port map( A1 => n161, A2 => n160, ZN => O(29));
   U67 : AOI22_X1 port map( A1 => B(29), A2 => n105, B1 => A(29), B2 => n102, 
                           ZN => n161);
   U68 : NAND2_X1 port map( A1 => n165, A2 => n164, ZN => O(30));
   U69 : AOI22_X1 port map( A1 => B(30), A2 => n105, B1 => A(30), B2 => n102, 
                           ZN => n165);
   U70 : NAND2_X1 port map( A1 => n167, A2 => n166, ZN => O(31));
   U71 : AOI22_X1 port map( A1 => B(31), A2 => n106, B1 => A(31), B2 => n103, 
                           ZN => n167);
   U72 : INV_X1 port map( A => Sel(0), ZN => n116);
   U73 : NAND2_X1 port map( A1 => n139, A2 => n138, ZN => O(18));
   U74 : AOI22_X1 port map( A1 => B(18), A2 => n104, B1 => A(18), B2 => n101, 
                           ZN => n139);
   U75 : NAND2_X1 port map( A1 => n141, A2 => n140, ZN => O(19));
   U76 : AOI22_X1 port map( A1 => B(19), A2 => n104, B1 => A(19), B2 => n101, 
                           ZN => n141);
   U77 : NAND2_X1 port map( A1 => n145, A2 => n144, ZN => O(20));
   U78 : AOI22_X1 port map( A1 => B(20), A2 => n105, B1 => A(20), B2 => n102, 
                           ZN => n145);
   U79 : NAND2_X1 port map( A1 => n135, A2 => n134, ZN => O(16));
   U80 : AOI22_X1 port map( A1 => B(16), A2 => n104, B1 => A(16), B2 => n101, 
                           ZN => n135);
   U81 : AOI222_X1 port map( A1 => D(16), A2 => n113, B1 => C(16), B2 => n110, 
                           C1 => E(16), C2 => n107, ZN => n134);
   U82 : NAND2_X1 port map( A1 => n137, A2 => n136, ZN => O(17));
   U83 : AOI22_X1 port map( A1 => B(17), A2 => n104, B1 => A(17), B2 => n101, 
                           ZN => n137);
   U84 : AOI222_X1 port map( A1 => D(17), A2 => n113, B1 => C(17), B2 => n110, 
                           C1 => E(17), C2 => n107, ZN => n136);
   U85 : NAND2_X1 port map( A1 => n131, A2 => n130, ZN => O(14));
   U86 : AOI22_X1 port map( A1 => B(14), A2 => n104, B1 => A(14), B2 => n101, 
                           ZN => n131);
   U87 : AOI222_X1 port map( A1 => D(14), A2 => n113, B1 => C(14), B2 => n110, 
                           C1 => E(14), C2 => n107, ZN => n130);
   U88 : NAND2_X1 port map( A1 => n127, A2 => n126, ZN => O(12));
   U89 : AOI22_X1 port map( A1 => B(12), A2 => n104, B1 => A(12), B2 => n101, 
                           ZN => n127);
   U90 : AOI222_X1 port map( A1 => D(12), A2 => n113, B1 => C(12), B2 => n110, 
                           C1 => E(12), C2 => n107, ZN => n126);
   U91 : NAND2_X1 port map( A1 => n133, A2 => n132, ZN => O(15));
   U92 : AOI22_X1 port map( A1 => B(15), A2 => n104, B1 => A(15), B2 => n101, 
                           ZN => n133);
   U93 : AOI222_X1 port map( A1 => D(15), A2 => n113, B1 => C(15), B2 => n110, 
                           C1 => E(15), C2 => n107, ZN => n132);
   U94 : NAND2_X1 port map( A1 => n125, A2 => n124, ZN => O(11));
   U95 : AOI22_X1 port map( A1 => B(11), A2 => n104, B1 => A(11), B2 => n101, 
                           ZN => n125);
   U96 : AOI222_X1 port map( A1 => D(11), A2 => n113, B1 => C(11), B2 => n110, 
                           C1 => E(11), C2 => n107, ZN => n124);
   U97 : NAND2_X1 port map( A1 => n129, A2 => n128, ZN => O(13));
   U98 : AOI22_X1 port map( A1 => B(13), A2 => n104, B1 => A(13), B2 => n101, 
                           ZN => n129);
   U99 : NAND2_X1 port map( A1 => n175, A2 => n174, ZN => O(6));
   U100 : AOI22_X1 port map( A1 => B(6), A2 => n106, B1 => A(6), B2 => n103, ZN
                           => n175);
   U101 : AOI222_X1 port map( A1 => D(6), A2 => n115, B1 => C(6), B2 => n112, 
                           C1 => E(6), C2 => n109, ZN => n174);
   U102 : NAND2_X1 port map( A1 => n169, A2 => n168, ZN => O(3));
   U103 : AOI22_X1 port map( A1 => B(3), A2 => n106, B1 => A(3), B2 => n103, ZN
                           => n169);
   U104 : AOI222_X1 port map( A1 => D(3), A2 => n115, B1 => C(3), B2 => n112, 
                           C1 => E(3), C2 => n109, ZN => n168);
   U105 : NAND2_X1 port map( A1 => n173, A2 => n172, ZN => O(5));
   U106 : AOI22_X1 port map( A1 => B(5), A2 => n106, B1 => A(5), B2 => n103, ZN
                           => n173);
   U107 : AOI222_X1 port map( A1 => D(5), A2 => n115, B1 => C(5), B2 => n112, 
                           C1 => E(5), C2 => n109, ZN => n172);
   U108 : NAND2_X1 port map( A1 => n177, A2 => n176, ZN => O(7));
   U109 : AOI22_X1 port map( A1 => B(7), A2 => n106, B1 => A(7), B2 => n103, ZN
                           => n177);
   U110 : AOI222_X1 port map( A1 => D(7), A2 => n115, B1 => C(7), B2 => n112, 
                           C1 => E(7), C2 => n109, ZN => n176);
   U111 : NAND2_X1 port map( A1 => n186, A2 => n185, ZN => O(9));
   U112 : AOI22_X1 port map( A1 => B(9), A2 => n106, B1 => A(9), B2 => n103, ZN
                           => n186);
   U113 : AOI222_X1 port map( A1 => D(9), A2 => n115, B1 => C(9), B2 => n112, 
                           C1 => E(9), C2 => n109, ZN => n185);
   U114 : NAND2_X1 port map( A1 => n179, A2 => n178, ZN => O(8));
   U115 : AOI22_X1 port map( A1 => B(8), A2 => n106, B1 => A(8), B2 => n103, ZN
                           => n179);
   U116 : AOI222_X1 port map( A1 => D(8), A2 => n115, B1 => C(8), B2 => n112, 
                           C1 => E(8), C2 => n109, ZN => n178);
   U117 : NAND2_X1 port map( A1 => n123, A2 => n122, ZN => O(10));
   U118 : AOI22_X1 port map( A1 => B(10), A2 => n104, B1 => A(10), B2 => n101, 
                           ZN => n123);
   U119 : AOI222_X1 port map( A1 => D(10), A2 => n113, B1 => C(10), B2 => n110,
                           C1 => E(10), C2 => n107, ZN => n122);
   U120 : NAND2_X1 port map( A1 => n149, A2 => n148, ZN => O(22));
   U121 : AOI22_X1 port map( A1 => B(22), A2 => n105, B1 => A(22), B2 => n102, 
                           ZN => n149);
   U122 : NAND2_X1 port map( A1 => n147, A2 => n146, ZN => O(21));
   U123 : AOI22_X1 port map( A1 => B(21), A2 => n105, B1 => A(21), B2 => n102, 
                           ZN => n147);
   U124 : INV_X1 port map( A => Sel(2), ZN => n119);
   U125 : AND2_X1 port map( A1 => Sel(2), A2 => n118, ZN => n183);
   U126 : AOI22_X1 port map( A1 => B(25), A2 => n105, B1 => A(25), B2 => n102, 
                           ZN => n154);
   U127 : INV_X1 port map( A => Sel(1), ZN => n117);
   U128 : NAND2_X1 port map( A1 => D(27), A2 => n114, ZN => n95);
   U129 : NAND2_X1 port map( A1 => C(27), A2 => n111, ZN => n96);
   U130 : NAND2_X1 port map( A1 => E(27), A2 => n108, ZN => n97);
   U131 : AND3_X1 port map( A1 => n95, A2 => n96, A3 => n97, ZN => n156);
   U132 : NAND2_X1 port map( A1 => n159, A2 => n158, ZN => O(28));
   U133 : NAND2_X1 port map( A1 => D(25), A2 => n114, ZN => n98);
   U134 : NAND2_X1 port map( A1 => C(25), A2 => n111, ZN => n99);
   U135 : NAND2_X1 port map( A1 => E(25), A2 => n108, ZN => n100);
   U136 : BUF_X2 port map( A => n183, Z => n111);
   U137 : NAND2_X1 port map( A1 => n156, A2 => n157, ZN => O(27));
   U138 : AOI222_X1 port map( A1 => D(31), A2 => n115, B1 => C(31), B2 => n112,
                           C1 => E(31), C2 => n109, ZN => n166);
   U139 : AOI222_X1 port map( A1 => D(30), A2 => n114, B1 => C(30), B2 => n111,
                           C1 => E(30), C2 => n108, ZN => n164);
   U140 : AOI222_X1 port map( A1 => D(29), A2 => n114, B1 => C(29), B2 => n111,
                           C1 => E(29), C2 => n108, ZN => n160);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity mux_N32_2 is

   port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end mux_N32_2;

architecture SYN_behav of mux_N32_2 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
      n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, 
      n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, 
      n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, 
      n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189 : 
      std_logic;

begin
   
   U1 : AOI222_X1 port map( A1 => D(13), A2 => n117, B1 => C(13), B2 => n114, 
                           C1 => E(13), C2 => n111, ZN => n132);
   U2 : AOI222_X1 port map( A1 => D(20), A2 => n118, B1 => C(20), B2 => n115, 
                           C1 => E(20), C2 => n112, ZN => n148);
   U3 : AOI222_X1 port map( A1 => D(18), A2 => n117, B1 => C(18), B2 => n114, 
                           C1 => E(18), C2 => n111, ZN => n142);
   U4 : AND2_X1 port map( A1 => n122, A2 => n123, ZN => n184);
   U5 : AOI222_X1 port map( A1 => n121, A2 => Sel(0), B1 => n120, B2 => Sel(2),
                           C1 => n123, C2 => Sel(1), ZN => n183);
   U6 : BUF_X1 port map( A => n185, Z => n112);
   U7 : AND2_X1 port map( A1 => n161, A2 => n102, ZN => n79);
   U8 : NAND2_X1 port map( A1 => D(28), A2 => n118, ZN => n80);
   U9 : BUF_X1 port map( A => n186, Z => n115);
   U10 : NAND2_X1 port map( A1 => C(28), A2 => n115, ZN => n81);
   U11 : AND2_X1 port map( A1 => n112, A2 => E(25), ZN => n82);
   U12 : NAND3_X1 port map( A1 => n103, A2 => n104, A3 => n79, ZN => O(27));
   U13 : INV_X1 port map( A => n118, ZN => n83);
   U14 : INV_X1 port map( A => D(25), ZN => n84);
   U15 : NOR2_X1 port map( A1 => n83, A2 => n84, ZN => n85);
   U16 : INV_X1 port map( A => C(25), ZN => n86);
   U17 : AND2_X1 port map( A1 => n87, A2 => n88, ZN => n158);
   U18 : OR2_X1 port map( A1 => n93, A2 => n86, ZN => n87);
   U19 : NOR2_X1 port map( A1 => n85, A2 => n82, ZN => n88);
   U20 : NAND2_X1 port map( A1 => E(28), A2 => n112, ZN => n89);
   U21 : NAND2_X1 port map( A1 => n151, A2 => n150, ZN => O(21));
   U22 : INV_X1 port map( A => D(23), ZN => n91);
   U23 : NOR2_X1 port map( A1 => n83, A2 => n91, ZN => n92);
   U24 : INV_X1 port map( A => n115, ZN => n93);
   U25 : INV_X1 port map( A => C(23), ZN => n94);
   U26 : INV_X1 port map( A => n112, ZN => n95);
   U27 : INV_X1 port map( A => E(23), ZN => n96);
   U28 : NOR2_X1 port map( A1 => n95, A2 => n96, ZN => n90);
   U29 : NOR2_X1 port map( A1 => n94, A2 => n93, ZN => n97);
   U30 : NOR2_X1 port map( A1 => n97, A2 => n98, ZN => n154);
   U31 : OR2_X1 port map( A1 => n90, A2 => n92, ZN => n98);
   U32 : NAND4_X1 port map( A1 => n89, A2 => n80, A3 => n81, A4 => n162, ZN => 
                           O(28));
   U33 : NAND4_X1 port map( A1 => n99, A2 => n101, A3 => n100, A4 => n160, ZN 
                           => O(26));
   U34 : AOI222_X1 port map( A1 => D(24), A2 => n118, B1 => C(24), B2 => n115, 
                           C1 => E(24), C2 => n112, ZN => n156);
   U35 : NAND2_X1 port map( A1 => D(26), A2 => n118, ZN => n99);
   U36 : NAND2_X1 port map( A1 => C(26), A2 => n115, ZN => n100);
   U37 : NAND2_X1 port map( A1 => E(26), A2 => n112, ZN => n101);
   U38 : BUF_X2 port map( A => n186, Z => n114);
   U39 : BUF_X1 port map( A => n184, Z => n108);
   U40 : CLKBUF_X1 port map( A => n184, Z => n109);
   U41 : CLKBUF_X1 port map( A => n184, Z => n110);
   U42 : BUF_X1 port map( A => n187, Z => n118);
   U43 : BUF_X1 port map( A => n187, Z => n117);
   U44 : BUF_X1 port map( A => n183, Z => n105);
   U45 : CLKBUF_X1 port map( A => n183, Z => n106);
   U46 : BUF_X1 port map( A => n185, Z => n111);
   U47 : CLKBUF_X1 port map( A => n183, Z => n107);
   U48 : CLKBUF_X1 port map( A => n186, Z => n116);
   U49 : CLKBUF_X1 port map( A => n185, Z => n113);
   U50 : CLKBUF_X1 port map( A => n187, Z => n119);
   U51 : NOR3_X1 port map( A1 => Sel(0), A2 => Sel(1), A3 => n123, ZN => n185);
   U52 : NOR3_X1 port map( A1 => n121, A2 => Sel(2), A3 => n120, ZN => n187);
   U53 : AOI22_X1 port map( A1 => B(29), A2 => n109, B1 => A(29), B2 => n106, 
                           ZN => n164);
   U54 : XNOR2_X1 port map( A => n120, B => Sel(1), ZN => n122);
   U55 : INV_X1 port map( A => Sel(0), ZN => n120);
   U56 : NAND2_X1 port map( A1 => n149, A2 => n148, ZN => O(20));
   U57 : AOI22_X1 port map( A1 => B(20), A2 => n109, B1 => A(20), B2 => n106, 
                           ZN => n149);
   U58 : NAND2_X1 port map( A1 => n168, A2 => n167, ZN => O(30));
   U59 : AOI22_X1 port map( A1 => B(30), A2 => n109, B1 => A(30), B2 => n106, 
                           ZN => n168);
   U60 : NAND2_X1 port map( A1 => n170, A2 => n169, ZN => O(31));
   U61 : AOI22_X1 port map( A1 => B(31), A2 => n110, B1 => A(31), B2 => n107, 
                           ZN => n170);
   U62 : AOI22_X1 port map( A1 => B(21), A2 => n109, B1 => A(21), B2 => n106, 
                           ZN => n151);
   U63 : AOI222_X1 port map( A1 => D(21), A2 => n118, B1 => C(21), B2 => n115, 
                           C1 => E(21), C2 => n112, ZN => n150);
   U64 : NAND2_X1 port map( A1 => n139, A2 => n138, ZN => O(16));
   U65 : AOI22_X1 port map( A1 => B(16), A2 => n108, B1 => A(16), B2 => n105, 
                           ZN => n139);
   U66 : AOI222_X1 port map( A1 => D(16), A2 => n117, B1 => C(16), B2 => n114, 
                           C1 => E(16), C2 => n111, ZN => n138);
   U67 : NAND2_X1 port map( A1 => n145, A2 => n144, ZN => O(19));
   U68 : AOI22_X1 port map( A1 => B(19), A2 => n108, B1 => A(19), B2 => n105, 
                           ZN => n145);
   U69 : AOI222_X1 port map( A1 => D(19), A2 => n117, B1 => C(19), B2 => n114, 
                           C1 => E(19), C2 => n111, ZN => n144);
   U70 : NAND2_X1 port map( A1 => n155, A2 => n154, ZN => O(23));
   U71 : AOI22_X1 port map( A1 => B(23), A2 => n109, B1 => A(23), B2 => n106, 
                           ZN => n155);
   U72 : NAND2_X1 port map( A1 => n135, A2 => n134, ZN => O(14));
   U73 : AOI22_X1 port map( A1 => B(14), A2 => n108, B1 => A(14), B2 => n105, 
                           ZN => n135);
   U74 : AOI222_X1 port map( A1 => D(14), A2 => n117, B1 => C(14), B2 => n114, 
                           C1 => E(14), C2 => n111, ZN => n134);
   U75 : AOI22_X1 port map( A1 => B(27), A2 => n109, B1 => A(27), B2 => n106, 
                           ZN => n161);
   U76 : NAND2_X1 port map( A1 => n137, A2 => n136, ZN => O(15));
   U77 : AOI22_X1 port map( A1 => B(15), A2 => n108, B1 => A(15), B2 => n105, 
                           ZN => n137);
   U78 : AOI222_X1 port map( A1 => D(15), A2 => n117, B1 => C(15), B2 => n114, 
                           C1 => E(15), C2 => n111, ZN => n136);
   U79 : NAND2_X1 port map( A1 => n133, A2 => n132, ZN => O(13));
   U80 : AOI22_X1 port map( A1 => B(13), A2 => n108, B1 => A(13), B2 => n105, 
                           ZN => n133);
   U81 : NAND2_X1 port map( A1 => n141, A2 => n140, ZN => O(17));
   U82 : AOI22_X1 port map( A1 => B(17), A2 => n108, B1 => A(17), B2 => n105, 
                           ZN => n141);
   U83 : AOI222_X1 port map( A1 => D(17), A2 => n117, B1 => C(17), B2 => n114, 
                           C1 => E(17), C2 => n111, ZN => n140);
   U84 : NAND2_X1 port map( A1 => n166, A2 => n165, ZN => O(2));
   U85 : AOI22_X1 port map( A1 => B(2), A2 => n109, B1 => A(2), B2 => n106, ZN 
                           => n166);
   U86 : AOI222_X1 port map( A1 => D(2), A2 => n118, B1 => C(2), B2 => n115, C1
                           => E(2), C2 => n112, ZN => n165);
   U87 : AOI22_X1 port map( A1 => B(28), A2 => n109, B1 => A(28), B2 => n106, 
                           ZN => n162);
   U88 : NAND2_X1 port map( A1 => n180, A2 => n179, ZN => O(7));
   U89 : AOI22_X1 port map( A1 => B(7), A2 => n110, B1 => A(7), B2 => n107, ZN 
                           => n180);
   U90 : AOI222_X1 port map( A1 => D(7), A2 => n119, B1 => C(7), B2 => n116, C1
                           => E(7), C2 => n113, ZN => n179);
   U91 : NAND2_X1 port map( A1 => n182, A2 => n181, ZN => O(8));
   U92 : AOI22_X1 port map( A1 => B(8), A2 => n110, B1 => A(8), B2 => n107, ZN 
                           => n182);
   U93 : AOI222_X1 port map( A1 => D(8), A2 => n119, B1 => C(8), B2 => n116, C1
                           => E(8), C2 => n113, ZN => n181);
   U94 : NAND2_X1 port map( A1 => n189, A2 => n188, ZN => O(9));
   U95 : AOI22_X1 port map( A1 => B(9), A2 => n110, B1 => A(9), B2 => n107, ZN 
                           => n189);
   U96 : AOI222_X1 port map( A1 => D(9), A2 => n119, B1 => C(9), B2 => n116, C1
                           => E(9), C2 => n113, ZN => n188);
   U97 : NAND2_X1 port map( A1 => n178, A2 => n177, ZN => O(6));
   U98 : AOI22_X1 port map( A1 => B(6), A2 => n110, B1 => A(6), B2 => n107, ZN 
                           => n178);
   U99 : AOI222_X1 port map( A1 => D(6), A2 => n119, B1 => C(6), B2 => n116, C1
                           => E(6), C2 => n113, ZN => n177);
   U100 : NAND2_X1 port map( A1 => n176, A2 => n175, ZN => O(5));
   U101 : AOI22_X1 port map( A1 => B(5), A2 => n110, B1 => A(5), B2 => n107, ZN
                           => n176);
   U102 : AOI222_X1 port map( A1 => D(5), A2 => n119, B1 => C(5), B2 => n116, 
                           C1 => E(5), C2 => n113, ZN => n175);
   U103 : NAND2_X1 port map( A1 => n174, A2 => n173, ZN => O(4));
   U104 : AOI22_X1 port map( A1 => B(4), A2 => n110, B1 => A(4), B2 => n107, ZN
                           => n174);
   U105 : AOI222_X1 port map( A1 => D(4), A2 => n119, B1 => C(4), B2 => n116, 
                           C1 => E(4), C2 => n113, ZN => n173);
   U106 : NAND2_X1 port map( A1 => n172, A2 => n171, ZN => O(3));
   U107 : AOI22_X1 port map( A1 => B(3), A2 => n110, B1 => A(3), B2 => n107, ZN
                           => n172);
   U108 : AOI222_X1 port map( A1 => D(3), A2 => n119, B1 => C(3), B2 => n116, 
                           C1 => E(3), C2 => n113, ZN => n171);
   U109 : NAND2_X1 port map( A1 => n129, A2 => n128, ZN => O(11));
   U110 : AOI22_X1 port map( A1 => B(11), A2 => n108, B1 => A(11), B2 => n105, 
                           ZN => n129);
   U111 : AOI222_X1 port map( A1 => D(11), A2 => n117, B1 => C(11), B2 => n114,
                           C1 => E(11), C2 => n111, ZN => n128);
   U112 : NAND2_X1 port map( A1 => n131, A2 => n130, ZN => O(12));
   U113 : AOI22_X1 port map( A1 => B(12), A2 => n108, B1 => A(12), B2 => n105, 
                           ZN => n131);
   U114 : AOI222_X1 port map( A1 => D(12), A2 => n117, B1 => C(12), B2 => n114,
                           C1 => E(12), C2 => n111, ZN => n130);
   U115 : NAND2_X1 port map( A1 => n127, A2 => n126, ZN => O(10));
   U116 : AOI22_X1 port map( A1 => B(10), A2 => n108, B1 => A(10), B2 => n105, 
                           ZN => n127);
   U117 : AOI222_X1 port map( A1 => D(10), A2 => n117, B1 => C(10), B2 => n114,
                           C1 => E(10), C2 => n111, ZN => n126);
   U118 : NAND2_X1 port map( A1 => n125, A2 => n124, ZN => O(0));
   U119 : AOI22_X1 port map( A1 => B(0), A2 => n108, B1 => A(0), B2 => n105, ZN
                           => n125);
   U120 : AOI222_X1 port map( A1 => D(0), A2 => n117, B1 => C(0), B2 => n114, 
                           C1 => E(0), C2 => n111, ZN => n124);
   U121 : NAND2_X1 port map( A1 => n147, A2 => n146, ZN => O(1));
   U122 : AOI22_X1 port map( A1 => B(1), A2 => n108, B1 => A(1), B2 => n105, ZN
                           => n147);
   U123 : AOI222_X1 port map( A1 => D(1), A2 => n117, B1 => C(1), B2 => n114, 
                           C1 => E(1), C2 => n111, ZN => n146);
   U124 : NAND2_X1 port map( A1 => n157, A2 => n156, ZN => O(24));
   U125 : AOI22_X1 port map( A1 => B(24), A2 => n109, B1 => A(24), B2 => n106, 
                           ZN => n157);
   U126 : NAND2_X1 port map( A1 => n143, A2 => n142, ZN => O(18));
   U127 : AOI22_X1 port map( A1 => B(18), A2 => n108, B1 => A(18), B2 => n105, 
                           ZN => n143);
   U128 : NAND2_X1 port map( A1 => n153, A2 => n152, ZN => O(22));
   U129 : AOI22_X1 port map( A1 => B(22), A2 => n109, B1 => A(22), B2 => n106, 
                           ZN => n153);
   U130 : AOI222_X1 port map( A1 => D(22), A2 => n118, B1 => C(22), B2 => n115,
                           C1 => E(22), C2 => n112, ZN => n152);
   U131 : AOI22_X1 port map( A1 => B(26), A2 => n109, B1 => A(26), B2 => n106, 
                           ZN => n160);
   U132 : INV_X1 port map( A => Sel(2), ZN => n123);
   U133 : AND2_X1 port map( A1 => Sel(2), A2 => n122, ZN => n186);
   U134 : NAND2_X1 port map( A1 => n159, A2 => n158, ZN => O(25));
   U135 : AOI22_X1 port map( A1 => B(25), A2 => n109, B1 => A(25), B2 => n106, 
                           ZN => n159);
   U136 : INV_X1 port map( A => Sel(1), ZN => n121);
   U137 : NAND2_X1 port map( A1 => n164, A2 => n163, ZN => O(29));
   U138 : NAND2_X1 port map( A1 => D(27), A2 => n118, ZN => n102);
   U139 : NAND2_X1 port map( A1 => C(27), A2 => n115, ZN => n103);
   U140 : NAND2_X1 port map( A1 => E(27), A2 => n112, ZN => n104);
   U141 : AOI222_X1 port map( A1 => D(31), A2 => n119, B1 => C(31), B2 => n116,
                           C1 => E(31), C2 => n113, ZN => n169);
   U142 : AOI222_X1 port map( A1 => D(30), A2 => n118, B1 => C(30), B2 => n115,
                           C1 => E(30), C2 => n112, ZN => n167);
   U143 : AOI222_X1 port map( A1 => D(29), A2 => n118, B1 => C(29), B2 => n115,
                           C1 => E(29), C2 => n112, ZN => n163);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity mux_N32_1 is

   port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end mux_N32_1;

architecture SYN_behav of mux_N32_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X4
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
      n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, 
      n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, 
      n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, 
      n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177 : 
      std_logic;

begin
   
   U1 : AOI222_X4 port map( A1 => D(17), A2 => n104, B1 => C(17), B2 => n102, 
                           C1 => E(17), C2 => n99, ZN => n127);
   U2 : AOI222_X1 port map( A1 => D(20), A2 => n105, B1 => C(20), B2 => n103, 
                           C1 => E(20), C2 => n100, ZN => n135);
   U3 : AOI222_X1 port map( A1 => D(22), A2 => n105, B1 => C(22), B2 => n103, 
                           C1 => E(22), C2 => n100, ZN => n139);
   U4 : AOI222_X1 port map( A1 => D(26), A2 => n105, B1 => C(26), B2 => n103, 
                           C1 => E(26), C2 => n100, ZN => n147);
   U5 : AOI222_X1 port map( A1 => D(25), A2 => n105, B1 => C(25), B2 => n103, 
                           C1 => E(25), C2 => n100, ZN => n145);
   U6 : AND2_X1 port map( A1 => Sel(2), A2 => n109, ZN => n174);
   U7 : INV_X1 port map( A => n105, ZN => n79);
   U8 : INV_X1 port map( A => D(30), ZN => n80);
   U9 : INV_X1 port map( A => n174, ZN => n81);
   U10 : INV_X1 port map( A => C(30), ZN => n82);
   U11 : INV_X1 port map( A => n100, ZN => n83);
   U12 : INV_X1 port map( A => E(30), ZN => n84);
   U13 : OR2_X1 port map( A1 => n79, A2 => n80, ZN => n85);
   U14 : NAND2_X1 port map( A1 => n86, A2 => n87, ZN => O(30));
   U15 : OR2_X1 port map( A1 => n83, A2 => n84, ZN => n86);
   U16 : OR2_X1 port map( A1 => n82, A2 => n81, ZN => n88);
   U17 : AND2_X1 port map( A1 => n88, A2 => n89, ZN => n87);
   U18 : AND2_X1 port map( A1 => n156, A2 => n85, ZN => n89);
   U19 : NAND4_X1 port map( A1 => n90, A2 => n92, A3 => n91, A4 => n153, ZN => 
                           O(29));
   U20 : AOI222_X1 port map( A1 => D(27), A2 => n105, B1 => C(27), B2 => n103, 
                           C1 => E(27), C2 => n100, ZN => n149);
   U21 : NAND2_X1 port map( A1 => D(29), A2 => n105, ZN => n90);
   U22 : NAND2_X1 port map( A1 => C(29), A2 => n174, ZN => n91);
   U23 : NAND2_X1 port map( A1 => E(29), A2 => n100, ZN => n92);
   U24 : BUF_X1 port map( A => n172, Z => n96);
   U25 : BUF_X1 port map( A => n172, Z => n97);
   U26 : BUF_X1 port map( A => n172, Z => n98);
   U27 : BUF_X1 port map( A => n175, Z => n104);
   U28 : BUF_X1 port map( A => n175, Z => n105);
   U29 : BUF_X1 port map( A => n171, Z => n93);
   U30 : BUF_X1 port map( A => n171, Z => n94);
   U31 : BUF_X1 port map( A => n174, Z => n102);
   U32 : BUF_X1 port map( A => n173, Z => n99);
   U33 : BUF_X1 port map( A => n171, Z => n95);
   U34 : BUF_X1 port map( A => n173, Z => n100);
   U35 : BUF_X1 port map( A => n174, Z => n103);
   U36 : BUF_X1 port map( A => n173, Z => n101);
   U37 : BUF_X1 port map( A => n175, Z => n106);
   U38 : AND2_X1 port map( A1 => n109, A2 => n110, ZN => n172);
   U39 : AOI222_X1 port map( A1 => n108, A2 => Sel(0), B1 => n107, B2 => Sel(2)
                           , C1 => n110, C2 => Sel(1), ZN => n171);
   U40 : AOI22_X1 port map( A1 => B(30), A2 => n97, B1 => A(30), B2 => n94, ZN 
                           => n156);
   U41 : NAND2_X1 port map( A1 => n132, A2 => n131, ZN => O(19));
   U42 : AOI22_X1 port map( A1 => B(19), A2 => n96, B1 => A(19), B2 => n93, ZN 
                           => n132);
   U43 : AOI222_X1 port map( A1 => D(19), A2 => n104, B1 => C(19), B2 => n102, 
                           C1 => E(19), C2 => n99, ZN => n131);
   U44 : NAND2_X1 port map( A1 => n116, A2 => n115, ZN => O(11));
   U45 : AOI22_X1 port map( A1 => B(11), A2 => n96, B1 => A(11), B2 => n93, ZN 
                           => n116);
   U46 : AOI222_X1 port map( A1 => D(11), A2 => n104, B1 => C(11), B2 => n102, 
                           C1 => E(11), C2 => n99, ZN => n115);
   U47 : NAND2_X1 port map( A1 => n118, A2 => n117, ZN => O(12));
   U48 : AOI22_X1 port map( A1 => B(12), A2 => n96, B1 => A(12), B2 => n93, ZN 
                           => n118);
   U49 : AOI222_X1 port map( A1 => D(12), A2 => n104, B1 => C(12), B2 => n102, 
                           C1 => E(12), C2 => n99, ZN => n117);
   U50 : NAND2_X1 port map( A1 => n136, A2 => n135, ZN => O(20));
   U51 : AOI22_X1 port map( A1 => B(20), A2 => n97, B1 => A(20), B2 => n94, ZN 
                           => n136);
   U52 : NAND2_X1 port map( A1 => n120, A2 => n119, ZN => O(13));
   U53 : AOI22_X1 port map( A1 => B(13), A2 => n96, B1 => A(13), B2 => n93, ZN 
                           => n120);
   U54 : AOI222_X1 port map( A1 => D(13), A2 => n104, B1 => C(13), B2 => n102, 
                           C1 => E(13), C2 => n99, ZN => n119);
   U55 : NAND2_X1 port map( A1 => n114, A2 => n113, ZN => O(10));
   U56 : AOI22_X1 port map( A1 => B(10), A2 => n96, B1 => A(10), B2 => n93, ZN 
                           => n114);
   U57 : AOI222_X1 port map( A1 => D(10), A2 => n104, B1 => C(10), B2 => n102, 
                           C1 => E(10), C2 => n99, ZN => n113);
   U58 : NAND2_X1 port map( A1 => n124, A2 => n123, ZN => O(15));
   U59 : AOI22_X1 port map( A1 => B(15), A2 => n96, B1 => A(15), B2 => n93, ZN 
                           => n124);
   U60 : AOI222_X1 port map( A1 => D(15), A2 => n104, B1 => C(15), B2 => n102, 
                           C1 => E(15), C2 => n99, ZN => n123);
   U61 : NAND2_X1 port map( A1 => n150, A2 => n149, ZN => O(27));
   U62 : AOI22_X1 port map( A1 => B(27), A2 => n97, B1 => A(27), B2 => n94, ZN 
                           => n150);
   U63 : NAND2_X1 port map( A1 => n128, A2 => n127, ZN => O(17));
   U64 : AOI22_X1 port map( A1 => B(17), A2 => n96, B1 => A(17), B2 => n93, ZN 
                           => n128);
   U65 : NAND2_X1 port map( A1 => n126, A2 => n125, ZN => O(16));
   U66 : AOI22_X1 port map( A1 => B(16), A2 => n96, B1 => A(16), B2 => n93, ZN 
                           => n126);
   U67 : AOI222_X1 port map( A1 => D(16), A2 => n104, B1 => C(16), B2 => n102, 
                           C1 => E(16), C2 => n99, ZN => n125);
   U68 : NOR3_X1 port map( A1 => Sel(0), A2 => Sel(1), A3 => n110, ZN => n173);
   U69 : NOR3_X1 port map( A1 => n108, A2 => Sel(2), A3 => n107, ZN => n175);
   U70 : AOI22_X1 port map( A1 => B(29), A2 => n97, B1 => A(29), B2 => n94, ZN 
                           => n153);
   U71 : XNOR2_X1 port map( A => n107, B => Sel(1), ZN => n109);
   U72 : AOI22_X1 port map( A1 => B(22), A2 => n97, B1 => A(22), B2 => n94, ZN 
                           => n140);
   U73 : NAND2_X1 port map( A1 => n122, A2 => n121, ZN => O(14));
   U74 : AOI22_X1 port map( A1 => B(14), A2 => n96, B1 => A(14), B2 => n93, ZN 
                           => n122);
   U75 : AOI222_X1 port map( A1 => D(14), A2 => n104, B1 => C(14), B2 => n102, 
                           C1 => E(14), C2 => n99, ZN => n121);
   U76 : INV_X1 port map( A => Sel(0), ZN => n107);
   U77 : NAND2_X1 port map( A1 => n158, A2 => n157, ZN => O(31));
   U78 : AOI22_X1 port map( A1 => B(31), A2 => n98, B1 => A(31), B2 => n95, ZN 
                           => n158);
   U79 : NAND2_X1 port map( A1 => n142, A2 => n141, ZN => O(23));
   U80 : AOI22_X1 port map( A1 => B(23), A2 => n97, B1 => A(23), B2 => n94, ZN 
                           => n142);
   U81 : AOI222_X1 port map( A1 => D(23), A2 => n105, B1 => C(23), B2 => n103, 
                           C1 => E(23), C2 => n100, ZN => n141);
   U82 : NAND2_X1 port map( A1 => n138, A2 => n137, ZN => O(21));
   U83 : AOI22_X1 port map( A1 => B(21), A2 => n97, B1 => A(21), B2 => n94, ZN 
                           => n138);
   U84 : AOI222_X1 port map( A1 => D(21), A2 => n105, B1 => C(21), B2 => n103, 
                           C1 => E(21), C2 => n100, ZN => n137);
   U85 : NAND2_X1 port map( A1 => n168, A2 => n167, ZN => O(7));
   U86 : AOI22_X1 port map( A1 => B(7), A2 => n98, B1 => A(7), B2 => n95, ZN =>
                           n168);
   U87 : AOI222_X1 port map( A1 => D(7), A2 => n106, B1 => C(7), B2 => n103, C1
                           => E(7), C2 => n101, ZN => n167);
   U88 : NAND2_X1 port map( A1 => n170, A2 => n169, ZN => O(8));
   U89 : AOI22_X1 port map( A1 => B(8), A2 => n98, B1 => A(8), B2 => n95, ZN =>
                           n170);
   U90 : AOI222_X1 port map( A1 => D(8), A2 => n106, B1 => C(8), B2 => n103, C1
                           => E(8), C2 => n101, ZN => n169);
   U91 : NAND2_X1 port map( A1 => n177, A2 => n176, ZN => O(9));
   U92 : AOI22_X1 port map( A1 => B(9), A2 => n98, B1 => A(9), B2 => n95, ZN =>
                           n177);
   U93 : AOI222_X1 port map( A1 => D(9), A2 => n106, B1 => C(9), B2 => n103, C1
                           => E(9), C2 => n101, ZN => n176);
   U94 : NAND2_X1 port map( A1 => n162, A2 => n161, ZN => O(4));
   U95 : AOI22_X1 port map( A1 => B(4), A2 => n98, B1 => A(4), B2 => n95, ZN =>
                           n162);
   U96 : AOI222_X1 port map( A1 => D(4), A2 => n106, B1 => C(4), B2 => n103, C1
                           => E(4), C2 => n101, ZN => n161);
   U97 : NAND2_X1 port map( A1 => n164, A2 => n163, ZN => O(5));
   U98 : AOI22_X1 port map( A1 => B(5), A2 => n98, B1 => A(5), B2 => n95, ZN =>
                           n164);
   U99 : AOI222_X1 port map( A1 => D(5), A2 => n106, B1 => C(5), B2 => n103, C1
                           => E(5), C2 => n101, ZN => n163);
   U100 : NAND2_X1 port map( A1 => n166, A2 => n165, ZN => O(6));
   U101 : AOI22_X1 port map( A1 => B(6), A2 => n98, B1 => A(6), B2 => n95, ZN 
                           => n166);
   U102 : AOI222_X1 port map( A1 => D(6), A2 => n106, B1 => C(6), B2 => n103, 
                           C1 => E(6), C2 => n101, ZN => n165);
   U103 : NAND2_X1 port map( A1 => n160, A2 => n159, ZN => O(3));
   U104 : AOI22_X1 port map( A1 => B(3), A2 => n98, B1 => A(3), B2 => n95, ZN 
                           => n160);
   U105 : AOI222_X1 port map( A1 => D(3), A2 => n106, B1 => C(3), B2 => n103, 
                           C1 => E(3), C2 => n101, ZN => n159);
   U106 : NAND2_X1 port map( A1 => n112, A2 => n111, ZN => O(0));
   U107 : AOI22_X1 port map( A1 => B(0), A2 => n96, B1 => A(0), B2 => n93, ZN 
                           => n112);
   U108 : AOI222_X1 port map( A1 => D(0), A2 => n104, B1 => C(0), B2 => n102, 
                           C1 => E(0), C2 => n99, ZN => n111);
   U109 : NAND2_X1 port map( A1 => n155, A2 => n154, ZN => O(2));
   U110 : AOI22_X1 port map( A1 => B(2), A2 => n97, B1 => A(2), B2 => n94, ZN 
                           => n155);
   U111 : AOI222_X1 port map( A1 => D(2), A2 => n105, B1 => C(2), B2 => n103, 
                           C1 => E(2), C2 => n100, ZN => n154);
   U112 : NAND2_X1 port map( A1 => n134, A2 => n133, ZN => O(1));
   U113 : AOI22_X1 port map( A1 => B(1), A2 => n96, B1 => A(1), B2 => n93, ZN 
                           => n134);
   U114 : AOI222_X1 port map( A1 => D(1), A2 => n104, B1 => C(1), B2 => n102, 
                           C1 => E(1), C2 => n99, ZN => n133);
   U115 : NAND2_X1 port map( A1 => n144, A2 => n143, ZN => O(24));
   U116 : AOI22_X1 port map( A1 => B(24), A2 => n97, B1 => A(24), B2 => n94, ZN
                           => n144);
   U117 : AOI222_X1 port map( A1 => D(24), A2 => n105, B1 => C(24), B2 => n103,
                           C1 => E(24), C2 => n100, ZN => n143);
   U118 : NAND2_X1 port map( A1 => n148, A2 => n147, ZN => O(26));
   U119 : AOI22_X1 port map( A1 => B(26), A2 => n97, B1 => A(26), B2 => n94, ZN
                           => n148);
   U120 : NAND2_X1 port map( A1 => n152, A2 => n151, ZN => O(28));
   U121 : AOI22_X1 port map( A1 => B(28), A2 => n97, B1 => A(28), B2 => n94, ZN
                           => n152);
   U122 : AOI222_X1 port map( A1 => D(28), A2 => n105, B1 => C(28), B2 => n103,
                           C1 => E(28), C2 => n100, ZN => n151);
   U123 : NAND2_X1 port map( A1 => n146, A2 => n145, ZN => O(25));
   U124 : AOI22_X1 port map( A1 => B(25), A2 => n97, B1 => A(25), B2 => n94, ZN
                           => n146);
   U125 : NAND2_X1 port map( A1 => n130, A2 => n129, ZN => O(18));
   U126 : AOI22_X1 port map( A1 => B(18), A2 => n96, B1 => A(18), B2 => n93, ZN
                           => n130);
   U127 : AOI222_X1 port map( A1 => D(18), A2 => n104, B1 => C(18), B2 => n102,
                           C1 => E(18), C2 => n99, ZN => n129);
   U128 : INV_X1 port map( A => Sel(2), ZN => n110);
   U129 : INV_X1 port map( A => Sel(1), ZN => n108);
   U130 : AOI222_X1 port map( A1 => D(31), A2 => n106, B1 => C(31), B2 => n103,
                           C1 => E(31), C2 => n101, ZN => n157);
   U131 : NAND2_X1 port map( A1 => n140, A2 => n139, ZN => O(22));

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);
   U1 : INV_X1 port map( A => n3, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);
   U1 : INV_X1 port map( A => n3, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
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

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
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

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
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

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_2 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_2;

architecture SYN_STRUCTURAL of PG_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n2);
   U3 : INV_X1 port map( A => n2, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity G_5 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_5;

architecture SYN_STRUCTURAL of G_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6 : std_logic;

begin
   
   U1 : OR2_X2 port map( A1 => gleft, A2 => n6, ZN => gout);
   U2 : AND2_X1 port map( A1 => gright, A2 => pleft, ZN => n6);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity G_6 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_6;

architecture SYN_STRUCTURAL of G_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X2 port map( A => n2, ZN => gout);
   U2 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n2);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_4 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_4;

architecture SYN_STRUCTURAL of PG_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U2 : AOI21_X1 port map( B1 => gright, B2 => pleft, A => gleft, ZN => n2);
   U3 : INV_X1 port map( A => n2, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity G_7 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_7;

architecture SYN_STRUCTURAL of G_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6, n7, n8 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n6, B2 => n7, A => n8, ZN => gout);
   U2 : INV_X1 port map( A => pleft, ZN => n6);
   U3 : INV_X1 port map( A => gright, ZN => n7);
   U4 : INV_X1 port map( A => gleft, ZN => n8);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity G_8 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_8;

architecture SYN_STRUCTURAL of G_8 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => gout);
   U2 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n2);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_18 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_18;

architecture SYN_STRUCTURAL of PG_18 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n6 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => pleft, Z => n6);
   U2 : AND2_X1 port map( A1 => n6, A2 => pright, ZN => pout);
   U3 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n2);
   U4 : INV_X1 port map( A => n2, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_21 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_21;

architecture SYN_STRUCTURAL of PG_21 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U2 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n2);
   U3 : INV_X1 port map( A => n2, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_22 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_22;

architecture SYN_STRUCTURAL of PG_22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n6 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => pleft, Z => n6);
   U2 : AND2_X1 port map( A1 => n6, A2 => pright, ZN => pout);
   U3 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n2);
   U4 : INV_X1 port map( A => n2, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_24 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_24;

architecture SYN_STRUCTURAL of PG_24 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => gout);
   U2 : AND2_X1 port map( A1 => pleft, A2 => pright, ZN => pout);
   U3 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n2);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_25 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_25;

architecture SYN_STRUCTURAL of PG_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => gleft, A2 => gright, ZN => n5);
   U2 : NOR2_X1 port map( A1 => pleft, A2 => gleft, ZN => n6);
   U3 : NOR2_X1 port map( A1 => n6, A2 => n5, ZN => gout);
   U4 : AND2_X1 port map( A1 => pleft, A2 => pright, ZN => pout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_26 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_26;

architecture SYN_STRUCTURAL of PG_26 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n5 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => pleft, Z => n5);
   U2 : AND2_X1 port map( A1 => pright, A2 => n5, ZN => pout);
   U3 : INV_X1 port map( A => n2, ZN => gout);
   U4 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n2);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PG_0 is

   port( gleft, gright, pleft, pright : in std_logic;  pout, gout : out 
         std_logic);

end PG_0;

architecture SYN_STRUCTURAL of PG_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => pright, A2 => pleft, ZN => pout);
   U2 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n2);
   U3 : INV_X1 port map( A => n2, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity G_9 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_9;

architecture SYN_STRUCTURAL of G_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

entity G_0 is

   port( gleft, gright, pleft : in std_logic;  gout : out std_logic);

end G_0;

architecture SYN_STRUCTURAL of G_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => pleft, B2 => gright, A => gleft, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity PGnet_block_0 is

   port( A, B : in std_logic;  pout, gout : out std_logic);

end PGnet_block_0;

architecture SYN_STRUCTURAL of PGnet_block_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => A, B => B, Z => pout);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => gout);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

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

use work.CONV_PACK_booth_mul_N16.all;

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
   
   signal Cout_8_port, Cout_7_port, Cout_6_port, Cout_5_port, Cout_3_port, 
      g_cin, p_cin, Gsignal_1_31_port, Gsignal_1_30_port, Gsignal_1_29_port, 
      Gsignal_1_28_port, Gsignal_1_27_port, Gsignal_1_26_port, 
      Gsignal_1_25_port, Gsignal_1_24_port, Gsignal_1_23_port, 
      Gsignal_1_22_port, Gsignal_1_21_port, Gsignal_1_20_port, 
      Gsignal_1_19_port, Gsignal_1_18_port, Gsignal_1_17_port, 
      Gsignal_1_16_port, Gsignal_1_15_port, Gsignal_1_14_port, 
      Gsignal_1_13_port, Gsignal_1_12_port, Gsignal_1_11_port, 
      Gsignal_1_10_port, Gsignal_1_9_port, Gsignal_1_8_port, Gsignal_1_7_port, 
      Gsignal_1_6_port, Gsignal_1_5_port, Gsignal_1_4_port, Gsignal_1_3_port, 
      Gsignal_1_2_port, Gsignal_1_1_port, Gsignal_1_0_port, Gsignal_2_31_port, 
      Gsignal_2_29_port, Gsignal_2_27_port, Gsignal_2_25_port, 
      Gsignal_2_23_port, Gsignal_2_21_port, Gsignal_2_19_port, 
      Gsignal_2_17_port, Gsignal_2_15_port, Gsignal_2_13_port, 
      Gsignal_2_11_port, Gsignal_2_9_port, Gsignal_2_7_port, Gsignal_2_5_port, 
      Gsignal_2_3_port, Gsignal_2_1_port, Gsignal_3_31_port, Gsignal_3_27_port,
      Gsignal_3_23_port, Gsignal_3_19_port, Gsignal_3_15_port, 
      Gsignal_3_11_port, Gsignal_3_7_port, Gsignal_4_31_port, Gsignal_4_23_port
      , Gsignal_4_15_port, Gsignal_5_31_port, Gsignal_5_27_port, 
      Psignal_1_31_port, Psignal_1_30_port, Psignal_1_29_port, 
      Psignal_1_28_port, Psignal_1_27_port, Psignal_1_26_port, 
      Psignal_1_25_port, Psignal_1_24_port, Psignal_1_23_port, 
      Psignal_1_22_port, Psignal_1_21_port, Psignal_1_20_port, 
      Psignal_1_19_port, Psignal_1_18_port, Psignal_1_17_port, 
      Psignal_1_16_port, Psignal_1_15_port, Psignal_1_14_port, 
      Psignal_1_13_port, Psignal_1_12_port, Psignal_1_11_port, 
      Psignal_1_10_port, Psignal_1_9_port, Psignal_1_8_port, Psignal_1_7_port, 
      Psignal_1_6_port, Psignal_1_5_port, Psignal_1_4_port, Psignal_1_3_port, 
      Psignal_1_2_port, Psignal_1_1_port, Psignal_2_31_port, Psignal_2_29_port,
      Psignal_2_27_port, Psignal_2_25_port, Psignal_2_23_port, 
      Psignal_2_21_port, Psignal_2_19_port, Psignal_2_17_port, 
      Psignal_2_15_port, Psignal_2_13_port, Psignal_2_11_port, Psignal_2_9_port
      , Psignal_2_7_port, Psignal_2_5_port, Psignal_2_3_port, Psignal_3_31_port
      , Psignal_3_27_port, Psignal_3_23_port, Psignal_3_19_port, 
      Psignal_3_15_port, Psignal_3_11_port, Psignal_3_7_port, Psignal_4_31_port
      , Psignal_4_23_port, Psignal_4_15_port, Psignal_5_31_port, 
      Psignal_5_27_port, n1, n17, n18, n8, Cout_1_port, n10, Cout_2_port, n12, 
      n13, n14, n15, Cout_4_port : std_logic;

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
                           n18);
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
   Gblock_3_7 : G_7 port map( gleft => Gsignal_3_7_port, gright => n18, pleft 
                           => Psignal_3_7_port, gout => n1);
   PGblock_3_15 : PG_5 port map( gleft => Gsignal_3_15_port, gright => 
                           Gsignal_3_11_port, pleft => Psignal_3_15_port, 
                           pright => Psignal_3_11_port, pout => 
                           Psignal_4_15_port, gout => Gsignal_4_15_port);
   PGblock_3_23 : PG_4 port map( gleft => Gsignal_3_23_port, gright => 
                           Gsignal_3_19_port, pleft => Psignal_3_23_port, 
                           pright => Psignal_3_19_port, pout => 
                           Psignal_4_23_port, gout => Gsignal_4_23_port);
   PGblock_3_31 : PG_3 port map( gleft => Gsignal_3_31_port, gright => n12, 
                           pleft => Psignal_3_31_port, pright => 
                           Psignal_3_27_port, pout => Psignal_4_31_port, gout 
                           => Gsignal_4_31_port);
   Gblock_4_11 : G_6 port map( gleft => n10, gright => Cout_2_port, pleft => n8
                           , gout => Cout_3_port);
   Gblock_4_15 : G_5 port map( gleft => Gsignal_4_15_port, gright => n1, pleft 
                           => Psignal_4_15_port, gout => n17);
   PGblock_4_27 : PG_2 port map( gleft => Gsignal_3_27_port, gright => 
                           Gsignal_4_23_port, pleft => Psignal_3_27_port, 
                           pright => Psignal_4_23_port, pout => 
                           Psignal_5_27_port, gout => Gsignal_5_27_port);
   PGblock_4_31 : PG_1 port map( gleft => Gsignal_4_31_port, gright => n15, 
                           pleft => Psignal_4_31_port, pright => 
                           Psignal_4_23_port, pout => Psignal_5_31_port, gout 
                           => Gsignal_5_31_port);
   Gblock_5_19 : G_4 port map( gleft => n13, gright => n17, pleft => 
                           Psignal_3_19_port, gout => Cout_5_port);
   Gblock_5_23 : G_3 port map( gleft => n14, gright => n17, pleft => 
                           Psignal_4_23_port, gout => Cout_6_port);
   Gblock_5_27 : G_2 port map( gleft => Gsignal_5_27_port, gright => n17, pleft
                           => Psignal_5_27_port, gout => Cout_7_port);
   Gblock_5_31 : G_1 port map( gleft => Gsignal_5_31_port, gright => 
                           Cout_4_port, pleft => Psignal_5_31_port, gout => 
                           Cout_8_port);
   U1 : BUF_X1 port map( A => n1, Z => Cout_2_port);
   U2 : CLKBUF_X1 port map( A => Psignal_3_11_port, Z => n8);
   U3 : CLKBUF_X1 port map( A => n18, Z => Cout_1_port);
   U4 : CLKBUF_X1 port map( A => Gsignal_3_11_port, Z => n10);
   U5 : CLKBUF_X1 port map( A => n17, Z => Cout_4_port);
   U6 : CLKBUF_X1 port map( A => Gsignal_3_27_port, Z => n12);
   U7 : CLKBUF_X1 port map( A => Gsignal_3_19_port, Z => n13);
   U8 : BUF_X1 port map( A => Gsignal_4_23_port, Z => n14);
   U9 : CLKBUF_X1 port map( A => n14, Z => n15);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity FA_64 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_64;

architecture SYN_BEHAVIORAL of FA_64 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U2 : OAI22_X1 port map( A1 => n4, A2 => n5, B1 => n3, B2 => n6, ZN => Co);
   U3 : INV_X1 port map( A => B, ZN => n4);
   U4 : INV_X1 port map( A => A, ZN => n5);
   U5 : INV_X1 port map( A => Ci, ZN => n6);
   U6 : XNOR2_X1 port map( A => n7, B => Ci, ZN => S);
   U7 : XNOR2_X1 port map( A => B, B => A, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity cla_adder_N32 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  Cout : 
         out std_logic;  Sum : out std_logic_vector (31 downto 0));

end cla_adder_N32;

architecture SYN_struct of cla_adder_N32 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
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
      Carry_3_port, Carry_2_port, Carry_1_port, Carry_0_port, n3, n4, n5, n6, 
      n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, 
      n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36
      , n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50 : 
      std_logic;

begin
   
   CG : carry_generator_N32_Nblocks8 port map( A(31) => A(31), A(30) => A(30), 
                           A(29) => n22, A(28) => n47, A(27) => A(27), A(26) =>
                           A(26), A(25) => A(25), A(24) => n48, A(23) => A(23),
                           A(22) => n28, A(21) => A(21), A(20) => A(20), A(19) 
                           => A(19), A(18) => A(18), A(17) => A(17), A(16) => 
                           A(16), A(15) => A(15), A(14) => A(14), A(13) => 
                           A(13), A(12) => A(12), A(11) => A(11), A(10) => 
                           A(10), A(9) => A(9), A(8) => A(8), A(7) => A(7), 
                           A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3) => 
                           A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(31) => B(31), B(30) => B(30), B(29) => n36, B(28) 
                           => n44, B(27) => B(27), B(26) => B(26), B(25) => 
                           B(25), B(24) => n42, B(23) => B(23), B(22) => B(22),
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Ci => Ci, Cout(8) 
                           => Carry_8_port, Cout(7) => Carry_7_port, Cout(6) =>
                           Carry_6_port, Cout(5) => Carry_5_port, Cout(4) => 
                           Carry_4_port, Cout(3) => Carry_3_port, Cout(2) => 
                           Carry_2_port, Cout(1) => Carry_1_port, Cout(0) => 
                           Carry_0_port);
   SG : sum_generator_Nbits32_Nblocks8 port map( A(31) => A(31), A(30) => A(30)
                           , A(29) => A(29), A(28) => A(28), A(27) => n45, 
                           A(26) => n35, A(25) => n34, A(24) => A(24), A(23) =>
                           n50, A(22) => n28, A(21) => n37, A(20) => A(20), 
                           A(19) => n19, A(18) => n15, A(17) => n30, A(16) => 
                           A(16), A(15) => n41, A(14) => n40, A(13) => n39, 
                           A(12) => n6, A(11) => n27, A(10) => n24, A(9) => n32
                           , A(8) => A(8), A(7) => n16, A(6) => n14, A(5) => n3
                           , A(4) => A(4), A(3) => n20, A(2) => n5, A(1) => n13
                           , A(0) => n7, B(31) => B(31), B(30) => B(30), B(29) 
                           => B(29), B(28) => B(28), B(27) => n43, B(26) => n9,
                           B(25) => B(25), B(24) => B(24), B(23) => n49, B(22) 
                           => n11, B(21) => n46, B(20) => B(20), B(19) => n29, 
                           B(18) => n25, B(17) => n33, B(16) => B(16), B(15) =>
                           n31, B(14) => n26, B(13) => n38, B(12) => n23, B(11)
                           => n18, B(10) => n8, B(9) => n21, B(8) => B(8), B(7)
                           => n17, B(6) => n4, B(5) => n10, B(4) => B(4), B(3) 
                           => n12, B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           Carry(8) => Carry_8_port, Carry(7) => Carry_7_port, 
                           Carry(6) => Carry_6_port, Carry(5) => Carry_5_port, 
                           Carry(4) => Carry_4_port, Carry(3) => Carry_3_port, 
                           Carry(2) => Carry_2_port, Carry(1) => Carry_1_port, 
                           Carry(0) => Carry_0_port, S(31) => Sum(31), S(30) =>
                           Sum(30), S(29) => Sum(29), S(28) => Sum(28), S(27) 
                           => Sum(27), S(26) => Sum(26), S(25) => Sum(25), 
                           S(24) => Sum(24), S(23) => Sum(23), S(22) => Sum(22)
                           , S(21) => Sum(21), S(20) => Sum(20), S(19) => 
                           Sum(19), S(18) => Sum(18), S(17) => Sum(17), S(16) 
                           => Sum(16), S(15) => Sum(15), S(14) => Sum(14), 
                           S(13) => Sum(13), S(12) => Sum(12), S(11) => Sum(11)
                           , S(10) => Sum(10), S(9) => Sum(9), S(8) => Sum(8), 
                           S(7) => Sum(7), S(6) => Sum(6), S(5) => Sum(5), S(4)
                           => Sum(4), S(3) => Sum(3), S(2) => Sum(2), S(1) => 
                           Sum(1), S(0) => Sum(0), Cout => Cout);
   U1 : BUF_X1 port map( A => B(12), Z => n23);
   U2 : BUF_X2 port map( A => A(12), Z => n6);
   U3 : CLKBUF_X1 port map( A => A(5), Z => n3);
   U4 : BUF_X1 port map( A => A(25), Z => n34);
   U5 : CLKBUF_X1 port map( A => B(6), Z => n4);
   U6 : CLKBUF_X1 port map( A => A(2), Z => n5);
   U7 : CLKBUF_X1 port map( A => A(0), Z => n7);
   U8 : CLKBUF_X1 port map( A => B(10), Z => n8);
   U9 : CLKBUF_X1 port map( A => B(17), Z => n33);
   U10 : CLKBUF_X1 port map( A => A(9), Z => n32);
   U11 : CLKBUF_X1 port map( A => B(26), Z => n9);
   U12 : CLKBUF_X1 port map( A => B(5), Z => n10);
   U13 : CLKBUF_X1 port map( A => B(22), Z => n11);
   U14 : CLKBUF_X1 port map( A => A(17), Z => n30);
   U15 : CLKBUF_X1 port map( A => A(14), Z => n40);
   U16 : CLKBUF_X1 port map( A => B(3), Z => n12);
   U17 : CLKBUF_X1 port map( A => A(18), Z => n15);
   U18 : CLKBUF_X1 port map( A => A(1), Z => n13);
   U19 : CLKBUF_X1 port map( A => A(6), Z => n14);
   U20 : CLKBUF_X1 port map( A => A(7), Z => n16);
   U21 : CLKBUF_X1 port map( A => A(27), Z => n45);
   U22 : CLKBUF_X1 port map( A => B(7), Z => n17);
   U23 : CLKBUF_X1 port map( A => B(11), Z => n18);
   U24 : CLKBUF_X1 port map( A => A(19), Z => n19);
   U25 : CLKBUF_X1 port map( A => A(3), Z => n20);
   U26 : CLKBUF_X1 port map( A => B(9), Z => n21);
   U27 : CLKBUF_X1 port map( A => A(29), Z => n22);
   U28 : CLKBUF_X1 port map( A => A(10), Z => n24);
   U29 : CLKBUF_X1 port map( A => B(18), Z => n25);
   U30 : CLKBUF_X1 port map( A => B(14), Z => n26);
   U31 : CLKBUF_X1 port map( A => A(11), Z => n27);
   U32 : CLKBUF_X1 port map( A => A(13), Z => n39);
   U33 : BUF_X2 port map( A => A(22), Z => n28);
   U34 : CLKBUF_X1 port map( A => B(19), Z => n29);
   U35 : CLKBUF_X1 port map( A => B(15), Z => n31);
   U36 : CLKBUF_X1 port map( A => A(26), Z => n35);
   U37 : CLKBUF_X1 port map( A => B(29), Z => n36);
   U38 : CLKBUF_X1 port map( A => A(21), Z => n37);
   U39 : CLKBUF_X1 port map( A => A(15), Z => n41);
   U40 : CLKBUF_X1 port map( A => B(13), Z => n38);
   U41 : CLKBUF_X1 port map( A => B(24), Z => n42);
   U42 : CLKBUF_X1 port map( A => B(27), Z => n43);
   U43 : CLKBUF_X1 port map( A => B(28), Z => n44);
   U44 : CLKBUF_X1 port map( A => B(21), Z => n46);
   U45 : CLKBUF_X1 port map( A => A(28), Z => n47);
   U46 : CLKBUF_X1 port map( A => A(24), Z => n48);
   U47 : CLKBUF_X1 port map( A => B(23), Z => n49);
   U48 : CLKBUF_X1 port map( A => A(23), Z => n50);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity CSA_Nbits32_0 is

   port( A, B, C : in std_logic_vector (31 downto 0);  S, Cout : out 
         std_logic_vector (31 downto 0));

end CSA_Nbits32_0;

architecture SYN_struct of CSA_Nbits32_0 is

   component FA_225
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_226
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_227
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_228
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_229
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_230
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_231
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_232
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_233
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_234
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_235
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_236
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_237
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_238
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_239
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_240
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_241
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_242
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_243
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_244
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_245
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_246
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_247
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_248
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_249
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_250
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_251
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_252
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_253
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_254
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_255
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_64
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal net6198 : std_logic;

begin
   
   Cout(0) <= '0';
   FullAdd_0 : FA_64 port map( A => A(0), B => B(0), Ci => C(0), S => S(0), Co 
                           => Cout(1));
   FullAdd_1 : FA_255 port map( A => A(1), B => B(1), Ci => C(1), S => S(1), Co
                           => Cout(2));
   FullAdd_2 : FA_254 port map( A => A(2), B => B(2), Ci => C(2), S => S(2), Co
                           => Cout(3));
   FullAdd_3 : FA_253 port map( A => A(3), B => B(3), Ci => C(3), S => S(3), Co
                           => Cout(4));
   FullAdd_4 : FA_252 port map( A => A(4), B => B(4), Ci => C(4), S => S(4), Co
                           => Cout(5));
   FullAdd_5 : FA_251 port map( A => A(5), B => B(5), Ci => C(5), S => S(5), Co
                           => Cout(6));
   FullAdd_6 : FA_250 port map( A => A(6), B => B(6), Ci => C(6), S => S(6), Co
                           => Cout(7));
   FullAdd_7 : FA_249 port map( A => A(7), B => B(7), Ci => C(7), S => S(7), Co
                           => Cout(8));
   FullAdd_8 : FA_248 port map( A => A(8), B => B(8), Ci => C(8), S => S(8), Co
                           => Cout(9));
   FullAdd_9 : FA_247 port map( A => A(9), B => B(9), Ci => C(9), S => S(9), Co
                           => Cout(10));
   FullAdd_10 : FA_246 port map( A => A(10), B => B(10), Ci => C(10), S => 
                           S(10), Co => Cout(11));
   FullAdd_11 : FA_245 port map( A => A(11), B => B(11), Ci => C(11), S => 
                           S(11), Co => Cout(12));
   FullAdd_12 : FA_244 port map( A => A(12), B => B(12), Ci => C(12), S => 
                           S(12), Co => Cout(13));
   FullAdd_13 : FA_243 port map( A => A(13), B => B(13), Ci => C(13), S => 
                           S(13), Co => Cout(14));
   FullAdd_14 : FA_242 port map( A => A(14), B => B(14), Ci => C(14), S => 
                           S(14), Co => Cout(15));
   FullAdd_15 : FA_241 port map( A => A(15), B => B(15), Ci => C(15), S => 
                           S(15), Co => Cout(16));
   FullAdd_16 : FA_240 port map( A => A(16), B => B(16), Ci => C(16), S => 
                           S(16), Co => Cout(17));
   FullAdd_17 : FA_239 port map( A => A(17), B => B(17), Ci => C(17), S => 
                           S(17), Co => Cout(18));
   FullAdd_18 : FA_238 port map( A => A(18), B => B(18), Ci => C(18), S => 
                           S(18), Co => Cout(19));
   FullAdd_19 : FA_237 port map( A => A(19), B => B(19), Ci => C(19), S => 
                           S(19), Co => Cout(20));
   FullAdd_20 : FA_236 port map( A => A(20), B => B(20), Ci => C(20), S => 
                           S(20), Co => Cout(21));
   FullAdd_21 : FA_235 port map( A => A(21), B => B(21), Ci => C(21), S => 
                           S(21), Co => Cout(22));
   FullAdd_22 : FA_234 port map( A => A(22), B => B(22), Ci => C(22), S => 
                           S(22), Co => Cout(23));
   FullAdd_23 : FA_233 port map( A => A(23), B => B(23), Ci => C(23), S => 
                           S(23), Co => Cout(24));
   FullAdd_24 : FA_232 port map( A => A(24), B => B(24), Ci => C(24), S => 
                           S(24), Co => Cout(25));
   FullAdd_25 : FA_231 port map( A => A(25), B => B(25), Ci => C(25), S => 
                           S(25), Co => Cout(26));
   FullAdd_26 : FA_230 port map( A => A(26), B => B(26), Ci => C(26), S => 
                           S(26), Co => Cout(27));
   FullAdd_27 : FA_229 port map( A => A(27), B => B(27), Ci => C(27), S => 
                           S(27), Co => Cout(28));
   FullAdd_28 : FA_228 port map( A => A(28), B => B(28), Ci => C(28), S => 
                           S(28), Co => Cout(29));
   FullAdd_29 : FA_227 port map( A => A(29), B => B(29), Ci => C(29), S => 
                           S(29), Co => Cout(30));
   FullAdd_30 : FA_226 port map( A => A(30), B => B(30), Ci => C(30), S => 
                           S(30), Co => Cout(31));
   LastFA : FA_225 port map( A => A(31), B => B(31), Ci => C(31), S => S(31), 
                           Co => net6198);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity mux_N32_0 is

   port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
         std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto 0)
         );

end mux_N32_0;

architecture SYN_behav of mux_N32_0 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X3
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n9, n10, n11, n13, n15, n17, n18, n19, n21, n22, n23, n24, 
      n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n37, n38, n39, n41
      , n43, n45, n47, n49, n50, n51, n53, n55, n57, n59, n61, n63, n65, n67, 
      n69, n71, n72, net22651, net22649, net22647, net22657, net22655, net22653
      , net22663, net22661, net22659, net22669, net22667, net22665, net22675, 
      net22673, net22671, net26689, net26688, net26687, n8, n76, n74, n73, n7, 
      n6, n12, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
      n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, 
      n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, 
      n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, 
      n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, 
      n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, 
      n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, 
      n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, 
      n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, 
      n189, n190, n191, n192, n193, n194 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n35, A2 => n131, ZN => n79);
   U2 : NAND3_X1 port map( A1 => n133, A2 => n132, A3 => n80, ZN => O(26));
   U3 : INV_X1 port map( A => n79, ZN => n80);
   U4 : NAND3_X2 port map( A1 => n178, A2 => n179, A3 => n93, ZN => O(21));
   U5 : BUF_X1 port map( A => n10, Z => net22671);
   U6 : BUF_X2 port map( A => n10, Z => net22673);
   U7 : AND3_X1 port map( A1 => n81, A2 => n82, A3 => n83, ZN => n18);
   U8 : NAND2_X1 port map( A1 => C(5), A2 => net22657, ZN => n81);
   U9 : NAND2_X1 port map( A1 => D(5), A2 => net22651, ZN => n82);
   U10 : NAND2_X1 port map( A1 => E(5), A2 => net22661, ZN => n83);
   U11 : AND2_X1 port map( A1 => Sel(2), A2 => n74, ZN => n7);
   U12 : NAND2_X1 port map( A1 => n65, A2 => n175, ZN => n84);
   U13 : NAND3_X1 port map( A1 => n177, A2 => n176, A3 => n85, ZN => O(12));
   U14 : INV_X1 port map( A => n84, ZN => n85);
   U15 : NAND2_X1 port map( A1 => n41, A2 => n95, ZN => n86);
   U16 : NAND3_X1 port map( A1 => n112, A2 => n111, A3 => n87, ZN => O(23));
   U17 : INV_X1 port map( A => n86, ZN => n87);
   U18 : NAND2_X1 port map( A1 => n53, A2 => n158, ZN => n88);
   U19 : NAND3_X1 port map( A1 => n156, A2 => n157, A3 => n89, ZN => O(18));
   U20 : INV_X1 port map( A => n88, ZN => n89);
   U21 : NAND2_X1 port map( A1 => n55, A2 => n181, ZN => n90);
   U22 : NAND3_X1 port map( A1 => n183, A2 => n182, A3 => n91, ZN => O(17));
   U23 : INV_X1 port map( A => n90, ZN => n91);
   U24 : AND2_X1 port map( A1 => n39, A2 => n101, ZN => n92);
   U25 : AND2_X1 port map( A1 => n45, A2 => n102, ZN => n93);
   U26 : AND2_X1 port map( A1 => n69, A2 => n103, ZN => n94);
   U27 : NAND2_X1 port map( A1 => D(23), A2 => net22649, ZN => n95);
   U28 : AND2_X1 port map( A1 => n43, A2 => n152, ZN => n96);
   U29 : AND2_X1 port map( A1 => n67, A2 => n169, ZN => n97);
   U30 : AND2_X1 port map( A1 => n61, A2 => n146, ZN => n98);
   U31 : AND2_X1 port map( A1 => n59, A2 => n193, ZN => n99);
   U32 : AND2_X1 port map( A1 => n51, A2 => n155, ZN => n100);
   U33 : NAND2_X1 port map( A1 => D(24), A2 => net22649, ZN => n101);
   U34 : NAND2_X1 port map( A1 => D(21), A2 => net22649, ZN => n102);
   U35 : NAND2_X1 port map( A1 => D(10), A2 => net22647, ZN => n103);
   U36 : NAND2_X1 port map( A1 => E(10), A2 => net22663, ZN => n104);
   U37 : AND3_X1 port map( A1 => n105, A2 => n106, A3 => n107, ZN => n28);
   U38 : NAND2_X1 port map( A1 => D(2), A2 => net22649, ZN => n105);
   U39 : NAND2_X1 port map( A1 => C(2), A2 => net22655, ZN => n106);
   U40 : NAND2_X1 port map( A1 => E(2), A2 => net22661, ZN => n107);
   U41 : NAND3_X1 port map( A1 => n170, A2 => n171, A3 => n97, ZN => O(11));
   U42 : NAND3_X1 port map( A1 => n144, A2 => n145, A3 => n98, ZN => O(14));
   U43 : NAND3_X1 port map( A1 => n114, A2 => n113, A3 => n92, ZN => O(24));
   U44 : NAND3_X1 port map( A1 => n140, A2 => n194, A3 => n99, ZN => O(15));
   U45 : NAND3_X1 port map( A1 => n154, A2 => n153, A3 => n100, ZN => O(19));
   U46 : CLKBUF_X3 port map( A => n6, Z => net22649);
   U47 : NAND3_X1 port map( A1 => n116, A2 => n104, A3 => n94, ZN => O(10));
   U48 : AND2_X1 port map( A1 => D(30), A2 => net22649, ZN => n108);
   U49 : AND2_X1 port map( A1 => C(30), A2 => net22655, ZN => n109);
   U50 : AND2_X1 port map( A1 => E(30), A2 => net22661, ZN => n110);
   U51 : NOR3_X1 port map( A1 => n108, A2 => n109, A3 => n110, ZN => n26);
   U52 : NAND3_X1 port map( A1 => n150, A2 => n151, A3 => n96, ZN => O(22));
   U53 : NAND2_X1 port map( A1 => C(23), A2 => net22655, ZN => n111);
   U54 : NAND2_X1 port map( A1 => E(23), A2 => net22663, ZN => n112);
   U55 : NAND2_X1 port map( A1 => C(24), A2 => net22655, ZN => n113);
   U56 : NAND4_X1 port map( A1 => n122, A2 => n123, A3 => n124, A4 => n19, ZN 
                           => O(4));
   U57 : NAND4_X1 port map( A1 => n189, A2 => n188, A3 => n187, A4 => n63, ZN 
                           => O(13));
   U58 : NAND4_X1 port map( A1 => n192, A2 => n190, A3 => n47, A4 => n191, ZN 
                           => O(20));
   U59 : NAND2_X1 port map( A1 => E(22), A2 => n8, ZN => n150);
   U60 : NAND4_X1 port map( A1 => n13, A2 => n172, A3 => n173, A4 => n174, ZN 
                           => O(7));
   U61 : NAND4_X1 port map( A1 => n15, A2 => n136, A3 => n134, A4 => n135, ZN 
                           => O(6));
   U62 : INV_X1 port map( A => n180, ZN => n114);
   U63 : AND3_X2 port map( A1 => Sel(1), A2 => Sel(0), A3 => n73, ZN => n6);
   U64 : AND2_X2 port map( A1 => Sel(2), A2 => n74, ZN => net22655);
   U65 : AND3_X2 port map( A1 => Sel(2), A2 => n76, A3 => n115, ZN => n8);
   U66 : INV_X1 port map( A => Sel(1), ZN => n115);
   U67 : INV_X1 port map( A => n121, ZN => n116);
   U68 : AND2_X2 port map( A1 => Sel(2), A2 => n74, ZN => net22653);
   U69 : NAND3_X1 port map( A1 => n165, A2 => n57, A3 => n186, ZN => O(16));
   U70 : NOR3_X1 port map( A1 => n119, A2 => n118, A3 => n117, ZN => n12);
   U71 : NAND2_X1 port map( A1 => n12, A2 => n11, ZN => O(8));
   U72 : AND2_X1 port map( A1 => D(8), A2 => net22651, ZN => n117);
   U73 : BUF_X2 port map( A => n6, Z => net22651);
   U74 : AND2_X1 port map( A1 => C(8), A2 => net22657, ZN => n118);
   U75 : BUF_X2 port map( A => n7, Z => net22657);
   U76 : AND2_X1 port map( A1 => E(8), A2 => net22661, ZN => n119);
   U77 : BUF_X2 port map( A => n8, Z => net22661);
   U78 : BUF_X2 port map( A => n6, Z => net22647);
   U79 : INV_X1 port map( A => Sel(0), ZN => n76);
   U80 : XNOR2_X1 port map( A => n76, B => Sel(1), ZN => n120);
   U81 : NAND2_X1 port map( A1 => n76, A2 => Sel(2), ZN => net26688);
   U82 : XNOR2_X1 port map( A => n76, B => Sel(1), ZN => n74);
   U83 : NAND2_X1 port map( A1 => n115, A2 => Sel(0), ZN => net26687);
   U84 : BUF_X2 port map( A => n8, Z => net22663);
   U85 : CLKBUF_X1 port map( A => n8, Z => net22659);
   U86 : INV_X1 port map( A => Sel(2), ZN => n73);
   U87 : NAND2_X1 port map( A1 => n73, A2 => Sel(1), ZN => net26689);
   U88 : AND2_X1 port map( A1 => n120, A2 => n73, ZN => n9);
   U89 : AND2_X1 port map( A1 => C(10), A2 => net22653, ZN => n121);
   U90 : NAND2_X1 port map( A1 => C(4), A2 => net22657, ZN => n122);
   U91 : NAND2_X1 port map( A1 => E(4), A2 => net22661, ZN => n123);
   U92 : NAND2_X1 port map( A1 => D(4), A2 => net22651, ZN => n124);
   U93 : AND2_X1 port map( A1 => D(29), A2 => net22649, ZN => n125);
   U94 : AND2_X1 port map( A1 => C(29), A2 => net22655, ZN => n126);
   U95 : AND2_X1 port map( A1 => E(29), A2 => net22663, ZN => n127);
   U96 : NOR3_X1 port map( A1 => n125, A2 => n126, A3 => n127, ZN => n30);
   U97 : NAND2_X1 port map( A1 => D(28), A2 => net22649, ZN => n128);
   U98 : NAND2_X1 port map( A1 => C(28), A2 => net22655, ZN => n129);
   U99 : NAND2_X1 port map( A1 => E(28), A2 => net22661, ZN => n130);
   U100 : AND3_X1 port map( A1 => n128, A2 => n129, A3 => n130, ZN => n32);
   U101 : AND3_X2 port map( A1 => net26687, A2 => net26688, A3 => net26689, ZN 
                           => n10);
   U102 : BUF_X2 port map( A => n10, Z => net22675);
   U103 : NAND2_X1 port map( A1 => D(26), A2 => net22649, ZN => n131);
   U104 : NAND2_X1 port map( A1 => C(26), A2 => net22655, ZN => n132);
   U105 : NAND2_X1 port map( A1 => E(26), A2 => net22663, ZN => n133);
   U106 : NAND2_X1 port map( A1 => D(6), A2 => net22651, ZN => n134);
   U107 : NAND2_X1 port map( A1 => C(6), A2 => net22657, ZN => n135);
   U108 : NAND2_X1 port map( A1 => E(6), A2 => net22661, ZN => n136);
   U109 : AND2_X1 port map( A1 => D(27), A2 => net22649, ZN => n137);
   U110 : AND2_X1 port map( A1 => C(27), A2 => net22655, ZN => n138);
   U111 : AND2_X1 port map( A1 => E(27), A2 => net22661, ZN => n139);
   U112 : NOR3_X1 port map( A1 => n138, A2 => n137, A3 => n139, ZN => n34);
   U113 : NAND2_X1 port map( A1 => C(15), A2 => net22653, ZN => n140);
   U114 : AND2_X1 port map( A1 => D(25), A2 => net22649, ZN => n141);
   U115 : AND2_X1 port map( A1 => C(25), A2 => net22655, ZN => n142);
   U116 : AND2_X1 port map( A1 => E(25), A2 => net22663, ZN => n143);
   U117 : NOR3_X1 port map( A1 => n142, A2 => n143, A3 => n141, ZN => n38);
   U118 : NAND2_X1 port map( A1 => C(14), A2 => net22653, ZN => n144);
   U119 : NAND2_X1 port map( A1 => E(14), A2 => net22663, ZN => n145);
   U120 : NAND2_X1 port map( A1 => D(14), A2 => net22647, ZN => n146);
   U121 : NAND2_X1 port map( A1 => D(0), A2 => net22647, ZN => n147);
   U122 : NAND2_X1 port map( A1 => C(0), A2 => net22653, ZN => n148);
   U123 : NAND2_X1 port map( A1 => E(0), A2 => net22659, ZN => n149);
   U124 : AND3_X1 port map( A1 => n147, A2 => n148, A3 => n149, ZN => n72);
   U125 : NAND2_X1 port map( A1 => C(22), A2 => net22655, ZN => n151);
   U126 : NAND2_X1 port map( A1 => D(22), A2 => net22649, ZN => n152);
   U127 : NAND2_X1 port map( A1 => E(19), A2 => net22661, ZN => n153);
   U128 : NAND2_X1 port map( A1 => C(19), A2 => net22653, ZN => n154);
   U129 : NAND2_X1 port map( A1 => D(19), A2 => net22647, ZN => n155);
   U130 : NAND2_X1 port map( A1 => E(18), A2 => net22661, ZN => n156);
   U131 : NAND2_X1 port map( A1 => C(18), A2 => net22653, ZN => n157);
   U132 : NAND2_X1 port map( A1 => D(18), A2 => net22647, ZN => n158);
   U133 : NAND2_X1 port map( A1 => D(1), A2 => net22647, ZN => n159);
   U134 : NAND2_X1 port map( A1 => C(1), A2 => net22653, ZN => n160);
   U135 : NAND2_X1 port map( A1 => E(1), A2 => net22659, ZN => n161);
   U136 : AND3_X1 port map( A1 => n159, A2 => n160, A3 => n161, ZN => n50);
   U137 : NAND2_X1 port map( A1 => D(3), A2 => net22651, ZN => n162);
   U138 : NAND2_X1 port map( A1 => C(3), A2 => net22657, ZN => n163);
   U139 : NAND2_X1 port map( A1 => E(3), A2 => net22659, ZN => n164);
   U140 : AND3_X1 port map( A1 => n162, A2 => n163, A3 => n164, ZN => n22);
   U141 : AND2_X1 port map( A1 => n185, A2 => n184, ZN => n165);
   U142 : NAND2_X1 port map( A1 => n49, A2 => n50, ZN => O(1));
   U143 : NAND2_X1 port map( A1 => D(9), A2 => net22651, ZN => n166);
   U144 : NAND2_X1 port map( A1 => C(9), A2 => net22657, ZN => n167);
   U145 : NAND2_X1 port map( A1 => E(9), A2 => net22661, ZN => n168);
   U146 : AND3_X1 port map( A1 => n167, A2 => n168, A3 => n166, ZN => n5);
   U147 : NAND2_X1 port map( A1 => D(11), A2 => net22647, ZN => n169);
   U148 : NAND2_X1 port map( A1 => C(11), A2 => net22653, ZN => n170);
   U149 : NAND2_X1 port map( A1 => E(11), A2 => net22663, ZN => n171);
   U150 : BUF_X1 port map( A => n9, Z => net22667);
   U151 : CLKBUF_X3 port map( A => n9, Z => net22665);
   U152 : BUF_X1 port map( A => n9, Z => net22669);
   U153 : NAND2_X1 port map( A1 => n23, A2 => n24, ZN => O(31));
   U154 : AOI22_X1 port map( A1 => B(23), A2 => net22667, B1 => A(23), B2 => 
                           net22673, ZN => n41);
   U155 : AOI22_X1 port map( A1 => B(25), A2 => net22667, B1 => A(25), B2 => 
                           net22673, ZN => n37);
   U156 : AOI22_X1 port map( A1 => B(27), A2 => net22667, B1 => A(27), B2 => 
                           net22673, ZN => n33);
   U157 : AOI22_X1 port map( A1 => B(26), A2 => net22667, B1 => A(26), B2 => 
                           net22673, ZN => n35);
   U158 : AOI22_X1 port map( A1 => B(28), A2 => net22667, B1 => A(28), B2 => 
                           net22673, ZN => n31);
   U159 : AOI22_X1 port map( A1 => B(24), A2 => net22667, B1 => A(24), B2 => 
                           net22673, ZN => n39);
   U160 : AOI22_X1 port map( A1 => B(22), A2 => net22667, B1 => A(22), B2 => 
                           n10, ZN => n43);
   U161 : NAND2_X1 port map( A1 => n27, A2 => n28, ZN => O(2));
   U162 : AOI22_X1 port map( A1 => B(2), A2 => net22667, B1 => A(2), B2 => n10,
                           ZN => n27);
   U163 : AOI22_X1 port map( A1 => B(20), A2 => net22667, B1 => A(20), B2 => 
                           net22671, ZN => n47);
   U164 : NAND2_X1 port map( A1 => n29, A2 => n30, ZN => O(29));
   U165 : AOI22_X1 port map( A1 => B(29), A2 => net22667, B1 => A(29), B2 => 
                           net22673, ZN => n29);
   U166 : NAND2_X1 port map( A1 => n25, A2 => n26, ZN => O(30));
   U167 : AOI22_X1 port map( A1 => B(30), A2 => net22667, B1 => A(30), B2 => 
                           net22673, ZN => n25);
   U168 : AOI22_X1 port map( A1 => B(21), A2 => net22667, B1 => A(21), B2 => 
                           net22675, ZN => n45);
   U169 : NAND2_X1 port map( A1 => D(7), A2 => net22651, ZN => n172);
   U170 : NAND2_X1 port map( A1 => C(7), A2 => net22657, ZN => n173);
   U171 : NAND2_X1 port map( A1 => E(7), A2 => net22663, ZN => n174);
   U172 : NAND2_X1 port map( A1 => D(12), A2 => net22647, ZN => n175);
   U173 : NAND2_X1 port map( A1 => C(12), A2 => net22653, ZN => n176);
   U174 : NAND2_X1 port map( A1 => E(12), A2 => net22663, ZN => n177);
   U175 : NAND2_X1 port map( A1 => n22, A2 => n21, ZN => O(3));
   U176 : NAND2_X1 port map( A1 => n18, A2 => n17, ZN => O(5));
   U177 : AOI22_X1 port map( A1 => B(18), A2 => net22665, B1 => A(18), B2 => 
                           net22673, ZN => n53);
   U178 : AOI22_X1 port map( A1 => B(19), A2 => net22665, B1 => A(19), B2 => 
                           n10, ZN => n51);
   U179 : AOI22_X1 port map( A1 => B(17), A2 => net22665, B1 => A(17), B2 => 
                           n10, ZN => n55);
   U180 : AOI22_X1 port map( A1 => B(16), A2 => net22665, B1 => A(16), B2 => 
                           net22673, ZN => n57);
   U181 : AOI22_X1 port map( A1 => B(15), A2 => net22665, B1 => A(15), B2 => 
                           net22675, ZN => n59);
   U182 : AOI22_X1 port map( A1 => B(14), A2 => net22665, B1 => A(14), B2 => 
                           n10, ZN => n61);
   U183 : AOI22_X1 port map( A1 => B(13), A2 => net22665, B1 => A(13), B2 => 
                           net22671, ZN => n63);
   U184 : AOI22_X1 port map( A1 => B(12), A2 => net22665, B1 => A(12), B2 => 
                           net22671, ZN => n65);
   U185 : AOI22_X1 port map( A1 => B(11), A2 => net22665, B1 => A(11), B2 => 
                           net22675, ZN => n67);
   U186 : AOI22_X1 port map( A1 => B(10), A2 => net22665, B1 => A(10), B2 => 
                           net22675, ZN => n69);
   U187 : AOI22_X1 port map( A1 => B(1), A2 => net22665, B1 => A(1), B2 => n10,
                           ZN => n49);
   U188 : AOI22_X1 port map( A1 => B(0), A2 => net22665, B1 => A(0), B2 => n10,
                           ZN => n71);
   U189 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => O(9));
   U190 : NAND2_X1 port map( A1 => n71, A2 => n72, ZN => O(0));
   U191 : AOI22_X1 port map( A1 => B(31), A2 => net22669, B1 => A(31), B2 => 
                           net22673, ZN => n23);
   U192 : AOI22_X1 port map( A1 => B(8), A2 => net22669, B1 => A(8), B2 => 
                           net22671, ZN => n11);
   U193 : AOI22_X1 port map( A1 => B(9), A2 => net22669, B1 => A(9), B2 => 
                           net22675, ZN => n4);
   U194 : AOI22_X1 port map( A1 => B(7), A2 => net22669, B1 => A(7), B2 => 
                           net22675, ZN => n13);
   U195 : AOI22_X1 port map( A1 => B(5), A2 => net22669, B1 => A(5), B2 => 
                           net22675, ZN => n17);
   U196 : AOI22_X1 port map( A1 => B(4), A2 => net22669, B1 => A(4), B2 => 
                           net22671, ZN => n19);
   U197 : AOI22_X1 port map( A1 => B(6), A2 => net22669, B1 => A(6), B2 => 
                           net22675, ZN => n15);
   U198 : AOI22_X1 port map( A1 => B(3), A2 => net22669, B1 => A(3), B2 => n10,
                           ZN => n21);
   U199 : NAND2_X1 port map( A1 => C(21), A2 => net22655, ZN => n178);
   U200 : NAND2_X1 port map( A1 => E(21), A2 => net22661, ZN => n179);
   U201 : AND2_X1 port map( A1 => E(24), A2 => net22663, ZN => n180);
   U202 : NAND2_X1 port map( A1 => D(17), A2 => net22647, ZN => n181);
   U203 : NAND2_X1 port map( A1 => C(17), A2 => net22653, ZN => n182);
   U204 : NAND2_X1 port map( A1 => E(17), A2 => net22663, ZN => n183);
   U205 : NAND2_X1 port map( A1 => D(16), A2 => net22647, ZN => n184);
   U206 : NAND2_X1 port map( A1 => C(16), A2 => net22653, ZN => n185);
   U207 : NAND2_X1 port map( A1 => net22663, A2 => E(16), ZN => n186);
   U208 : NAND2_X1 port map( A1 => D(13), A2 => net22647, ZN => n187);
   U209 : NAND2_X1 port map( A1 => C(13), A2 => net22653, ZN => n188);
   U210 : NAND2_X1 port map( A1 => E(13), A2 => net22663, ZN => n189);
   U211 : NAND2_X1 port map( A1 => D(20), A2 => net22649, ZN => n190);
   U212 : NAND2_X1 port map( A1 => C(20), A2 => net22655, ZN => n191);
   U213 : NAND2_X1 port map( A1 => E(20), A2 => net22661, ZN => n192);
   U214 : NAND2_X1 port map( A1 => n38, A2 => n37, ZN => O(25));
   U215 : NAND2_X1 port map( A1 => D(15), A2 => net22647, ZN => n193);
   U216 : NAND2_X1 port map( A1 => E(15), A2 => net22663, ZN => n194);
   U217 : NAND2_X1 port map( A1 => n31, A2 => n32, ZN => O(28));
   U218 : NAND2_X1 port map( A1 => n34, A2 => n33, ZN => O(27));
   U219 : AOI222_X1 port map( A1 => D(31), A2 => net22651, B1 => C(31), B2 => 
                           net22657, C1 => E(31), C2 => net22663, ZN => n24);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity shift_mul_N16_S14 is

   port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
         std_logic_vector (31 downto 0));

end shift_mul_N16_S14;

architecture SYN_struct of shift_mul_N16_S14 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal X_Logic0_port, E_31_port, E_30_port, E_29_port, E_28_port, E_27_port,
      E_26_port, E_25_port, E_24_port, E_23_port, E_22_port, E_21_port, 
      E_20_port, E_19_port, E_18_port, E_17_port, E_16_port, n2, n3, n5, n7, n8
      , n9, n11, n12, n13, n15, n16, n17, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, D_30_port : std_logic;

begin
   B <= ( D_30_port, D_30_port, D_30_port, A(14), A(13), A(12), A(11), A(10), 
      A(9), A(8), A(7), A(6), A(5), A(4), A(3), A(2), A(1), A(0), X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port );
   C <= ( E_31_port, E_31_port, E_30_port, E_29_port, E_28_port, E_27_port, 
      E_26_port, E_25_port, E_24_port, E_23_port, E_22_port, E_21_port, 
      E_20_port, E_19_port, E_18_port, E_17_port, E_16_port, A(0), 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      );
   D <= ( D_30_port, D_30_port, A(14), A(13), A(12), A(11), A(10), A(9), A(8), 
      A(7), A(6), A(5), A(4), A(3), A(2), A(1), A(0), X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      );
   E <= ( E_31_port, E_30_port, E_29_port, E_28_port, E_27_port, E_26_port, 
      E_25_port, E_24_port, E_23_port, E_22_port, E_21_port, E_20_port, 
      E_19_port, E_18_port, E_17_port, E_16_port, A(0), X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      );
   
   X_Logic0_port <= '0';
   U25 : XOR2_X1 port map( A => n5, B => A(13), Z => E_28_port);
   U26 : XOR2_X1 port map( A => n7, B => A(11), Z => E_26_port);
   U28 : XOR2_X1 port map( A => n9, B => A(9), Z => E_24_port);
   U29 : XOR2_X1 port map( A => n11, B => A(7), Z => E_22_port);
   U31 : XOR2_X1 port map( A => n13, B => A(5), Z => E_20_port);
   U32 : XOR2_X1 port map( A => n24, B => A(3), Z => E_18_port);
   U33 : XOR2_X1 port map( A => A(1), B => A(0), Z => E_16_port);
   U2 : BUF_X1 port map( A => A(15), Z => D_30_port);
   U3 : OR2_X1 port map( A1 => n32, A2 => n11, ZN => n9);
   U4 : CLKBUF_X1 port map( A => n15, Z => n24);
   U5 : NAND3_X1 port map( A1 => n25, A2 => n26, A3 => n27, ZN => n15);
   U6 : INV_X1 port map( A => A(1), ZN => n25);
   U7 : INV_X1 port map( A => A(2), ZN => n26);
   U8 : INV_X1 port map( A => A(0), ZN => n27);
   U9 : OR2_X1 port map( A1 => A(6), A2 => A(5), ZN => n28);
   U10 : OR2_X2 port map( A1 => n28, A2 => n13, ZN => n11);
   U11 : OR2_X1 port map( A1 => A(10), A2 => A(9), ZN => n29);
   U12 : OR2_X2 port map( A1 => n29, A2 => n9, ZN => n7);
   U13 : OR2_X1 port map( A1 => A(3), A2 => A(4), ZN => n30);
   U14 : OR2_X2 port map( A1 => n30, A2 => n15, ZN => n13);
   U15 : OR2_X1 port map( A1 => A(11), A2 => A(12), ZN => n31);
   U16 : OR2_X2 port map( A1 => n31, A2 => n7, ZN => n5);
   U17 : OR2_X1 port map( A1 => A(7), A2 => A(8), ZN => n32);
   U18 : NOR2_X1 port map( A1 => n3, A2 => D_30_port, ZN => n33);
   U19 : OR2_X1 port map( A1 => n33, A2 => n3, ZN => n34);
   U20 : NAND2_X1 port map( A1 => n34, A2 => n38, ZN => E_30_port);
   U21 : OR3_X2 port map( A1 => A(13), A2 => A(14), A3 => n5, ZN => n3);
   U22 : INV_X1 port map( A => n38, ZN => E_31_port);
   U23 : XNOR2_X1 port map( A => A(12), B => n8, ZN => E_27_port);
   U24 : NOR2_X1 port map( A1 => A(11), A2 => n7, ZN => n8);
   U27 : XNOR2_X1 port map( A => A(8), B => n12, ZN => E_23_port);
   U30 : NOR2_X1 port map( A1 => A(7), A2 => n11, ZN => n12);
   U34 : OR2_X1 port map( A1 => n2, A2 => D_30_port, ZN => n38);
   U35 : XNOR2_X1 port map( A => n35, B => A(6), ZN => E_21_port);
   U36 : NOR2_X1 port map( A1 => n13, A2 => A(5), ZN => n35);
   U37 : XNOR2_X1 port map( A => n36, B => A(10), ZN => E_25_port);
   U38 : NOR2_X1 port map( A1 => n9, A2 => A(9), ZN => n36);
   U39 : XNOR2_X1 port map( A => n37, B => A(14), ZN => E_29_port);
   U40 : NOR2_X1 port map( A1 => n5, A2 => A(13), ZN => n37);
   U41 : XNOR2_X1 port map( A => A(4), B => n16, ZN => E_19_port);
   U42 : NOR2_X1 port map( A1 => A(3), A2 => n24, ZN => n16);
   U43 : XNOR2_X1 port map( A => A(2), B => n17, ZN => E_17_port);
   U44 : NOR2_X1 port map( A1 => A(0), A2 => A(1), ZN => n17);
   U45 : NOR2_X1 port map( A1 => n3, A2 => D_30_port, ZN => n2);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity shift_mul_N16_S12 is

   port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
         std_logic_vector (31 downto 0));

end shift_mul_N16_S12;

architecture SYN_struct of shift_mul_N16_S12 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal X_Logic0_port, E_28_port, E_27_port, E_26_port, E_25_port, E_24_port,
      E_23_port, E_22_port, E_21_port, E_20_port, E_19_port, E_18_port, 
      E_17_port, E_16_port, E_15_port, E_14_port, n2, n3, n5, n7, n8, n9, n11, 
      n12, n13, n15, n16, n17, C_28_port, B_14_port, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, D_28_port : 
      std_logic;

begin
   B <= ( D_28_port, D_28_port, D_28_port, D_28_port, D_28_port, A(14), A(13), 
      A(12), A(11), A(10), A(9), A(8), A(7), A(6), A(5), A(4), A(3), B_14_port,
      A(1), A(0), X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port );
   C <= ( C_28_port, C_28_port, C_28_port, C_28_port, E_28_port, E_27_port, 
      E_26_port, E_25_port, E_24_port, E_23_port, E_22_port, E_21_port, 
      E_20_port, E_19_port, E_18_port, E_17_port, E_16_port, E_15_port, 
      E_14_port, A(0), X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port );
   D <= ( D_28_port, D_28_port, D_28_port, D_28_port, A(14), A(13), A(12), 
      A(11), A(10), A(9), A(8), A(7), A(6), A(5), A(4), A(3), B_14_port, A(1), 
      A(0), X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port );
   E <= ( C_28_port, C_28_port, C_28_port, E_28_port, E_27_port, E_26_port, 
      E_25_port, E_24_port, E_23_port, E_22_port, E_21_port, E_20_port, 
      E_19_port, E_18_port, E_17_port, E_16_port, E_15_port, E_14_port, A(0), 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U25 : XOR2_X1 port map( A => n5, B => A(13), Z => E_26_port);
   U26 : XOR2_X1 port map( A => n7, B => A(11), Z => E_24_port);
   U28 : XOR2_X1 port map( A => n9, B => A(9), Z => E_22_port);
   U29 : XOR2_X1 port map( A => n11, B => A(7), Z => E_20_port);
   U31 : XOR2_X1 port map( A => n36, B => A(5), Z => E_18_port);
   U32 : XOR2_X1 port map( A => n30, B => A(3), Z => E_16_port);
   U33 : XOR2_X1 port map( A => A(1), B => A(0), Z => E_14_port);
   U2 : OR3_X1 port map( A1 => A(0), A2 => A(2), A3 => A(1), ZN => n15);
   U3 : NOR2_X1 port map( A1 => n38, A2 => D_28_port, ZN => C_28_port);
   U4 : CLKBUF_X1 port map( A => A(2), Z => B_14_port);
   U5 : NAND2_X1 port map( A1 => n26, A2 => n27, ZN => E_28_port);
   U6 : OR2_X1 port map( A1 => n38, A2 => n3, ZN => n26);
   U7 : OR2_X1 port map( A1 => n2, A2 => D_28_port, ZN => n27);
   U8 : OR2_X1 port map( A1 => n9, A2 => n31, ZN => n28);
   U9 : OR2_X2 port map( A1 => n28, A2 => n29, ZN => n3);
   U10 : OR2_X1 port map( A1 => n34, A2 => n33, ZN => n29);
   U11 : CLKBUF_X1 port map( A => n15, Z => n30);
   U12 : OR2_X1 port map( A1 => A(10), A2 => A(9), ZN => n31);
   U13 : OR2_X2 port map( A1 => n9, A2 => n31, ZN => n7);
   U14 : OR2_X1 port map( A1 => n34, A2 => D_28_port, ZN => n32);
   U15 : OR2_X1 port map( A1 => A(11), A2 => A(12), ZN => n33);
   U16 : OR2_X2 port map( A1 => n33, A2 => n7, ZN => n5);
   U17 : OR2_X1 port map( A1 => A(13), A2 => A(14), ZN => n34);
   U18 : OR2_X1 port map( A1 => A(7), A2 => A(8), ZN => n35);
   U19 : OR2_X2 port map( A1 => n35, A2 => n11, ZN => n9);
   U20 : OR2_X2 port map( A1 => n42, A2 => n13, ZN => n11);
   U21 : OR2_X1 port map( A1 => n37, A2 => n30, ZN => n36);
   U22 : OR2_X1 port map( A1 => A(4), A2 => A(3), ZN => n37);
   U23 : OR2_X1 port map( A1 => n37, A2 => n15, ZN => n13);
   U24 : NOR2_X1 port map( A1 => n3, A2 => D_28_port, ZN => n38);
   U27 : XNOR2_X1 port map( A => A(8), B => n12, ZN => E_21_port);
   U30 : XNOR2_X1 port map( A => A(12), B => n8, ZN => E_25_port);
   U34 : XNOR2_X1 port map( A => n39, B => A(6), ZN => E_19_port);
   U35 : NOR2_X1 port map( A1 => n36, A2 => A(5), ZN => n39);
   U36 : XNOR2_X1 port map( A => n40, B => A(10), ZN => E_23_port);
   U37 : NOR2_X1 port map( A1 => n9, A2 => A(9), ZN => n40);
   U38 : XNOR2_X1 port map( A => n41, B => A(14), ZN => E_27_port);
   U39 : NOR2_X1 port map( A1 => n5, A2 => A(13), ZN => n41);
   U40 : XNOR2_X1 port map( A => A(4), B => n16, ZN => E_17_port);
   U41 : XNOR2_X1 port map( A => B_14_port, B => n17, ZN => E_15_port);
   U42 : NOR2_X1 port map( A1 => A(0), A2 => A(1), ZN => n17);
   U43 : BUF_X1 port map( A => A(15), Z => D_28_port);
   U44 : OR2_X1 port map( A1 => A(5), A2 => A(6), ZN => n42);
   U45 : NOR2_X1 port map( A1 => A(7), A2 => n11, ZN => n12);
   U46 : NOR2_X1 port map( A1 => A(3), A2 => n30, ZN => n16);
   U47 : NOR2_X1 port map( A1 => A(11), A2 => n7, ZN => n8);
   U48 : NOR2_X1 port map( A1 => n32, A2 => n5, ZN => n2);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity shift_mul_N16_S10 is

   port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
         std_logic_vector (31 downto 0));

end shift_mul_N16_S10;

architecture SYN_struct of shift_mul_N16_S10 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal X_Logic0_port, C_25_port, E_25_port, E_24_port, E_23_port, E_22_port,
      E_21_port, E_20_port, E_19_port, E_18_port, E_17_port, E_16_port, 
      E_15_port, E_14_port, E_13_port, E_12_port, n2, n3, n5, n7, n8, n9, n12, 
      n13, n15, n16, n17, n24, n25, B_19_port, n27, n28, n29, n30, n31, n32, 
      n33, B_16_port, n35, B_10_port, n37, n38, n39, B_12_port, n41, n42, 
      E_26_port, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, E_31_port, 
      n55, D_29_port, B_25_port : std_logic;

begin
   B <= ( D_29_port, D_29_port, D_29_port, D_29_port, D_29_port, D_29_port, 
      B_25_port, A(14), A(13), A(12), A(11), A(10), B_19_port, A(8), A(7), 
      B_16_port, A(5), A(4), A(3), B_12_port, A(1), B_10_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port );
   C <= ( E_31_port, E_31_port, E_31_port, E_31_port, E_31_port, E_31_port, 
      C_25_port, E_25_port, E_24_port, E_23_port, E_22_port, E_21_port, 
      E_20_port, E_19_port, E_18_port, E_17_port, E_16_port, E_15_port, 
      E_14_port, E_13_port, E_12_port, B_10_port, X_Logic0_port, X_Logic0_port,
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port );
   D <= ( D_29_port, D_29_port, D_29_port, D_29_port, D_29_port, D_29_port, 
      A(14), A(13), A(12), A(11), A(10), B_19_port, A(8), A(7), B_16_port, A(5)
      , A(4), A(3), B_12_port, A(1), B_10_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port );
   E <= ( E_31_port, E_31_port, E_31_port, E_31_port, E_31_port, E_26_port, 
      E_25_port, E_24_port, E_23_port, E_22_port, E_21_port, E_20_port, 
      E_19_port, E_18_port, E_17_port, E_16_port, E_15_port, E_14_port, 
      E_13_port, E_12_port, B_10_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U25 : XOR2_X1 port map( A => n5, B => A(13), Z => E_24_port);
   U26 : XOR2_X1 port map( A => n7, B => A(11), Z => E_22_port);
   U28 : XOR2_X1 port map( A => n9, B => B_19_port, Z => E_20_port);
   U29 : XOR2_X1 port map( A => n38, B => A(7), Z => E_18_port);
   U31 : XOR2_X1 port map( A => n13, B => A(5), Z => E_16_port);
   U33 : XOR2_X1 port map( A => A(1), B => B_10_port, Z => E_12_port);
   U2 : CLKBUF_X1 port map( A => A(0), Z => n24);
   U3 : OR2_X1 port map( A1 => A(5), A2 => A(6), ZN => n51);
   U4 : OR2_X1 port map( A1 => n52, A2 => B_25_port, ZN => n55);
   U5 : NOR2_X1 port map( A1 => n51, A2 => n50, ZN => n25);
   U6 : CLKBUF_X1 port map( A => A(9), Z => B_19_port);
   U7 : OR2_X2 port map( A1 => n49, A2 => n39, ZN => n9);
   U8 : NAND3_X1 port map( A1 => n27, A2 => n28, A3 => n29, ZN => n15);
   U9 : INV_X1 port map( A => A(1), ZN => n27);
   U10 : INV_X1 port map( A => A(2), ZN => n28);
   U11 : INV_X1 port map( A => A(0), ZN => n29);
   U12 : NOR4_X1 port map( A1 => A(7), A2 => A(8), A3 => A(10), A4 => A(9), ZN 
                           => n31);
   U13 : NAND3_X1 port map( A1 => n30, A2 => n25, A3 => n31, ZN => n7);
   U14 : INV_X1 port map( A => n15, ZN => n30);
   U15 : OR2_X1 port map( A1 => n7, A2 => n48, ZN => n32);
   U16 : NOR2_X1 port map( A1 => n32, A2 => n33, ZN => n52);
   U17 : OR2_X1 port map( A1 => B_25_port, A2 => n42, ZN => n33);
   U18 : INV_X1 port map( A => n35, ZN => B_10_port);
   U19 : CLKBUF_X1 port map( A => A(6), Z => B_16_port);
   U20 : INV_X1 port map( A => n24, ZN => n35);
   U21 : NOR2_X1 port map( A1 => n3, A2 => B_25_port, ZN => n37);
   U22 : OR2_X1 port map( A1 => n51, A2 => n13, ZN => n39);
   U23 : OR2_X1 port map( A1 => n51, A2 => n13, ZN => n38);
   U24 : CLKBUF_X1 port map( A => A(2), Z => B_12_port);
   U27 : OR2_X1 port map( A1 => n37, A2 => B_25_port, ZN => n41);
   U30 : OR2_X1 port map( A1 => A(13), A2 => A(14), ZN => n42);
   U32 : OR2_X2 port map( A1 => n42, A2 => n5, ZN => n3);
   U34 : NAND2_X1 port map( A1 => n55, A2 => n53, ZN => E_26_port);
   U35 : OR2_X2 port map( A1 => n15, A2 => n50, ZN => n13);
   U36 : OR2_X2 port map( A1 => n48, A2 => n7, ZN => n5);
   U37 : CLKBUF_X1 port map( A => n15, Z => n44);
   U38 : XOR2_X1 port map( A => n44, B => A(3), Z => E_14_port);
   U39 : XNOR2_X1 port map( A => A(8), B => n12, ZN => E_19_port);
   U40 : XNOR2_X1 port map( A => A(12), B => n8, ZN => E_23_port);
   U41 : XNOR2_X1 port map( A => n45, B => A(10), ZN => E_21_port);
   U42 : NOR2_X1 port map( A1 => n9, A2 => A(9), ZN => n45);
   U43 : XNOR2_X1 port map( A => A(4), B => n16, ZN => E_15_port);
   U44 : XNOR2_X1 port map( A => B_12_port, B => n17, ZN => E_13_port);
   U45 : NOR2_X1 port map( A1 => B_10_port, A2 => A(1), ZN => n17);
   U46 : BUF_X1 port map( A => A(15), Z => B_25_port);
   U47 : XNOR2_X1 port map( A => n46, B => A(14), ZN => E_25_port);
   U48 : NOR2_X1 port map( A1 => n5, A2 => A(13), ZN => n46);
   U49 : XNOR2_X1 port map( A => n47, B => B_16_port, ZN => E_17_port);
   U50 : NOR2_X1 port map( A1 => n13, A2 => A(5), ZN => n47);
   U51 : OR2_X1 port map( A1 => A(11), A2 => A(12), ZN => n48);
   U52 : OR2_X1 port map( A1 => A(7), A2 => A(8), ZN => n49);
   U53 : OR2_X1 port map( A1 => A(4), A2 => A(3), ZN => n50);
   U54 : NOR2_X1 port map( A1 => n44, A2 => A(3), ZN => n16);
   U55 : NOR2_X1 port map( A1 => A(7), A2 => n39, ZN => n12);
   U56 : NOR2_X1 port map( A1 => A(11), A2 => n7, ZN => n8);
   U57 : BUF_X1 port map( A => A(15), Z => D_29_port);
   U58 : OR2_X1 port map( A1 => n2, A2 => n3, ZN => n53);
   U59 : NAND2_X1 port map( A1 => n41, A2 => n53, ZN => C_25_port);
   U60 : INV_X1 port map( A => n55, ZN => E_31_port);
   U61 : NOR2_X1 port map( A1 => n3, A2 => B_25_port, ZN => n2);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity shift_mul_N16_S8 is

   port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
         std_logic_vector (31 downto 0));

end shift_mul_N16_S8;

architecture SYN_struct of shift_mul_N16_S8 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal X_Logic0_port, C_27_port, C_22_port, E_22_port, E_21_port, E_20_port,
      E_19_port, E_18_port, E_17_port, E_16_port, E_15_port, E_14_port, 
      E_13_port, E_12_port, E_11_port, E_10_port, n2, n7, n8, n9, n11, n12, n13
      , n15, n16, n17, n24, n25, n26, E_28_port, n28, n29, n30, n31, n32, n33, 
      n34, n35, B_17_port, B_18_port, n38, n39, n40, n41, n42, n43, n44, n45, 
      B_8_port, n47, n48, B_10_port, E_24_port, n51, C_30_port, n53, n54, n55, 
      n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, 
      C_31_port, n70, C_26_port, E_25_port, D_24_port, B_27_port : std_logic;

begin
   B <= ( B_27_port, B_27_port, B_27_port, B_27_port, B_27_port, D_24_port, 
      D_24_port, D_24_port, D_24_port, A(14), A(13), A(12), A(11), B_18_port, 
      B_17_port, A(8), A(7), A(6), A(5), A(4), A(3), B_10_port, A(1), B_8_port,
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port );
   C <= ( C_31_port, C_30_port, E_28_port, C_30_port, C_27_port, C_26_port, 
      E_25_port, C_27_port, E_24_port, C_22_port, E_22_port, E_21_port, 
      E_20_port, E_19_port, E_18_port, E_17_port, E_16_port, E_15_port, 
      E_14_port, E_13_port, E_12_port, E_11_port, E_10_port, B_8_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port );
   D <= ( D_24_port, D_24_port, D_24_port, D_24_port, D_24_port, D_24_port, 
      D_24_port, D_24_port, A(14), A(13), A(12), A(11), B_18_port, B_17_port, 
      A(8), A(7), A(6), A(5), A(4), A(3), B_10_port, A(1), B_8_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port );
   E <= ( C_30_port, E_28_port, E_28_port, E_28_port, C_27_port, E_25_port, 
      E_25_port, E_24_port, C_22_port, E_22_port, E_21_port, E_20_port, 
      E_19_port, E_18_port, E_17_port, E_16_port, E_15_port, E_14_port, 
      E_13_port, E_12_port, E_11_port, E_10_port, B_8_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U26 : XOR2_X1 port map( A => n43, B => A(11), Z => E_20_port);
   U28 : XOR2_X1 port map( A => n9, B => B_17_port, Z => E_18_port);
   U29 : XOR2_X1 port map( A => n41, B => A(7), Z => E_16_port);
   U31 : XOR2_X1 port map( A => n42, B => A(5), Z => E_14_port);
   U32 : XOR2_X1 port map( A => n57, B => A(3), Z => E_12_port);
   U33 : XOR2_X1 port map( A => A(1), B => B_8_port, Z => E_10_port);
   U2 : OR2_X1 port map( A1 => n45, A2 => n35, ZN => n7);
   U3 : OR2_X1 port map( A1 => n45, A2 => n35, ZN => n43);
   U4 : NAND2_X1 port map( A1 => n24, A2 => n25, ZN => n56);
   U5 : NOR2_X1 port map( A1 => n59, A2 => n62, ZN => n24);
   U6 : NOR2_X1 port map( A1 => n63, A2 => n41, ZN => n25);
   U7 : OR2_X1 port map( A1 => n33, A2 => n34, ZN => E_24_port);
   U8 : OR2_X1 port map( A1 => A(5), A2 => A(6), ZN => n60);
   U9 : NAND3_X1 port map( A1 => n29, A2 => n30, A3 => n31, ZN => n26);
   U10 : BUF_X2 port map( A => C_26_port, Z => E_28_port);
   U11 : NOR2_X1 port map( A1 => n7, A2 => n63, ZN => n28);
   U12 : NAND3_X1 port map( A1 => n29, A2 => n30, A3 => n31, ZN => n15);
   U13 : INV_X1 port map( A => A(1), ZN => n29);
   U14 : INV_X1 port map( A => A(0), ZN => n30);
   U15 : INV_X1 port map( A => A(2), ZN => n31);
   U16 : NOR3_X1 port map( A1 => A(7), A2 => n60, A3 => n42, ZN => n12);
   U17 : NOR2_X1 port map( A1 => n43, A2 => A(11), ZN => n8);
   U18 : NOR2_X1 port map( A1 => n43, A2 => n63, ZN => n55);
   U19 : AOI21_X1 port map( B1 => n28, B2 => n32, A => A(15), ZN => C_27_port);
   U20 : INV_X1 port map( A => n66, ZN => n32);
   U21 : NOR2_X1 port map( A1 => n2, A2 => n64, ZN => n33);
   U22 : NOR2_X1 port map( A1 => n67, A2 => B_27_port, ZN => n34);
   U23 : OR2_X1 port map( A1 => n59, A2 => n62, ZN => n35);
   U24 : CLKBUF_X1 port map( A => A(9), Z => B_17_port);
   U25 : CLKBUF_X1 port map( A => A(10), Z => B_18_port);
   U27 : BUF_X1 port map( A => C_27_port, Z => C_30_port);
   U30 : NAND2_X1 port map( A1 => n38, A2 => n39, ZN => n65);
   U34 : NOR2_X1 port map( A1 => n44, A2 => n59, ZN => n38);
   U35 : NOR2_X1 port map( A1 => n51, A2 => n66, ZN => n39);
   U36 : NOR2_X1 port map( A1 => n40, A2 => n7, ZN => n67);
   U37 : OR2_X1 port map( A1 => n48, A2 => B_27_port, ZN => n40);
   U38 : OR2_X1 port map( A1 => n60, A2 => n13, ZN => n41);
   U39 : OR2_X1 port map( A1 => n60, A2 => n13, ZN => n45);
   U40 : BUF_X1 port map( A => A(0), Z => B_8_port);
   U41 : OR2_X2 port map( A1 => n26, A2 => n58, ZN => n42);
   U42 : OR2_X1 port map( A1 => n15, A2 => n58, ZN => n13);
   U43 : OR2_X1 port map( A1 => n59, A2 => n11, ZN => n9);
   U44 : OR2_X1 port map( A1 => n42, A2 => n60, ZN => n44);
   U45 : OR2_X1 port map( A1 => n60, A2 => n42, ZN => n11);
   U46 : OR2_X1 port map( A1 => n66, A2 => B_27_port, ZN => n47);
   U47 : OR2_X1 port map( A1 => n7, A2 => n48, ZN => n64);
   U48 : OR2_X1 port map( A1 => n66, A2 => n63, ZN => n48);
   U49 : BUF_X1 port map( A => A(2), Z => B_10_port);
   U50 : OR2_X1 port map( A1 => n63, A2 => n62, ZN => n51);
   U51 : XNOR2_X1 port map( A => A(8), B => n12, ZN => E_17_port);
   U52 : XNOR2_X1 port map( A => n53, B => B_18_port, ZN => E_19_port);
   U53 : NOR2_X1 port map( A1 => n9, A2 => B_17_port, ZN => n53);
   U54 : XNOR2_X1 port map( A => n54, B => A(6), ZN => E_15_port);
   U55 : NOR2_X1 port map( A1 => n42, A2 => A(5), ZN => n54);
   U56 : XNOR2_X1 port map( A => n55, B => A(13), ZN => E_22_port);
   U57 : BUF_X1 port map( A => A(15), Z => D_24_port);
   U58 : XNOR2_X1 port map( A => B_10_port, B => n17, ZN => E_11_port);
   U59 : NOR2_X1 port map( A1 => B_8_port, A2 => A(1), ZN => n17);
   U60 : XNOR2_X1 port map( A => A(4), B => n16, ZN => E_13_port);
   U61 : CLKBUF_X1 port map( A => n15, Z => n57);
   U62 : XNOR2_X1 port map( A => n8, B => A(12), ZN => E_21_port);
   U63 : NOR2_X1 port map( A1 => A(3), A2 => n57, ZN => n16);
   U64 : OR2_X1 port map( A1 => A(3), A2 => A(4), ZN => n58);
   U65 : OR2_X1 port map( A1 => A(7), A2 => A(8), ZN => n59);
   U66 : XNOR2_X1 port map( A => n61, B => A(14), ZN => C_22_port);
   U67 : NOR2_X1 port map( A1 => n56, A2 => A(13), ZN => n61);
   U68 : OR2_X1 port map( A1 => A(10), A2 => A(9), ZN => n62);
   U69 : OR2_X1 port map( A1 => A(11), A2 => A(12), ZN => n63);
   U70 : OR2_X1 port map( A1 => A(13), A2 => A(14), ZN => n66);
   U71 : NOR2_X1 port map( A1 => n65, A2 => B_27_port, ZN => n68);
   U72 : CLKBUF_X1 port map( A => E_28_port, Z => C_31_port);
   U73 : NOR2_X1 port map( A1 => n47, A2 => n56, ZN => n70);
   U74 : NOR2_X1 port map( A1 => n65, A2 => B_27_port, ZN => n2);
   U75 : BUF_X2 port map( A => A(15), Z => B_27_port);
   U76 : NOR2_X1 port map( A1 => n68, A2 => B_27_port, ZN => E_25_port);
   U77 : NOR2_X1 port map( A1 => n70, A2 => B_27_port, ZN => C_26_port);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity shift_mul_N16_S6 is

   port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
         std_logic_vector (31 downto 0));

end shift_mul_N16_S6;

architecture SYN_struct of shift_mul_N16_S6 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND4_X2
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal X_Logic0_port, n66, C_21_port, E_21_port, E_20_port, E_19_port, 
      E_18_port, E_17_port, E_16_port, E_15_port, E_14_port, E_13_port, 
      E_12_port, E_11_port, E_10_port, E_9_port, E_8_port, n2, n3, n4, n6, n8, 
      n10, n12, n13, n14, n16, n17, n24, n25, n26, n27, n28, n29, n30, n31, 
      E_31_port, n33, n34, n35, n36, n37, n38, n39, n40, B_14_port, n42, 
      E_22_port, C_26_port, E_23_port, n46, n47, n48, n49, n50, n51, n52, n53, 
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, D_22_port, B_23_port : 
      std_logic;

begin
   B <= ( B_23_port, B_23_port, B_23_port, B_23_port, B_23_port, B_23_port, 
      B_23_port, B_23_port, B_23_port, D_22_port, D_22_port, A(14), A(13), 
      A(12), A(11), A(10), A(9), B_14_port, A(7), A(6), A(5), A(4), A(3), A(2),
      A(1), A(0), X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port );
   C <= ( C_26_port, E_31_port, C_26_port, E_31_port, E_23_port, C_26_port, 
      C_26_port, C_26_port, E_23_port, C_26_port, C_21_port, E_21_port, 
      E_20_port, E_19_port, E_18_port, E_17_port, E_16_port, E_15_port, 
      E_14_port, E_13_port, E_12_port, E_11_port, E_10_port, E_9_port, E_8_port
      , A(0), X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port );
   D <= ( D_22_port, D_22_port, D_22_port, D_22_port, D_22_port, D_22_port, 
      D_22_port, D_22_port, D_22_port, D_22_port, A(14), A(13), A(12), A(11), 
      A(10), A(9), B_14_port, A(7), A(6), A(5), A(4), A(3), A(2), A(1), A(0), 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port );
   E <= ( E_31_port, C_26_port, E_31_port, C_26_port, E_23_port, C_26_port, 
      C_26_port, C_26_port, E_23_port, E_22_port, E_21_port, E_20_port, 
      E_19_port, E_18_port, E_17_port, E_16_port, E_15_port, E_14_port, 
      E_13_port, E_12_port, E_11_port, E_10_port, E_9_port, E_8_port, A(0), 
      X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U24 : XOR2_X1 port map( A => A(1), B => A(0), Z => E_8_port);
   U26 : XOR2_X1 port map( A => n6, B => A(13), Z => E_20_port);
   U29 : XOR2_X1 port map( A => n10, B => A(9), Z => E_16_port);
   U30 : XOR2_X1 port map( A => n12, B => A(7), Z => E_14_port);
   U32 : XOR2_X1 port map( A => n14, B => A(5), Z => E_12_port);
   U33 : XOR2_X1 port map( A => n42, B => A(3), Z => E_10_port);
   U2 : OR2_X2 port map( A1 => n61, A2 => n62, ZN => n58);
   U3 : OR2_X2 port map( A1 => n57, A2 => n58, ZN => n10);
   U4 : NAND3_X2 port map( A1 => n35, A2 => n36, A3 => n37, ZN => n16);
   U5 : NOR4_X1 port map( A1 => n57, A2 => n63, A3 => A(11), A4 => n58, ZN => 
                           n24);
   U6 : BUF_X1 port map( A => n16, Z => n42);
   U7 : OR2_X2 port map( A1 => A(10), A2 => A(9), ZN => n63);
   U8 : NOR2_X1 port map( A1 => n3, A2 => A(15), ZN => C_26_port);
   U9 : NAND2_X1 port map( A1 => n8, A2 => n26, ZN => n27);
   U10 : NAND2_X1 port map( A1 => n25, A2 => A(11), ZN => n28);
   U11 : NAND2_X1 port map( A1 => n27, A2 => n28, ZN => E_18_port);
   U12 : INV_X1 port map( A => n8, ZN => n25);
   U13 : INV_X1 port map( A => A(11), ZN => n26);
   U14 : NOR2_X1 port map( A1 => A(13), A2 => A(14), ZN => n29);
   U15 : OR2_X1 port map( A1 => n62, A2 => A(7), ZN => n30);
   U16 : AND4_X1 port map( A1 => n38, A2 => n39, A3 => n31, A4 => n40, ZN => 
                           n51);
   U17 : OR2_X1 port map( A1 => n16, A2 => n59, ZN => n57);
   U18 : NOR2_X1 port map( A1 => n14, A2 => n30, ZN => n13);
   U19 : AND2_X1 port map( A1 => n33, A2 => n34, ZN => n31);
   U20 : OR2_X1 port map( A1 => A(5), A2 => A(6), ZN => n62);
   U21 : BUF_X1 port map( A => E_23_port, Z => E_31_port);
   U22 : BUF_X2 port map( A => A(15), Z => B_23_port);
   U23 : OR2_X1 port map( A1 => n10, A2 => n63, ZN => n8);
   U25 : AND4_X2 port map( A1 => n48, A2 => n52, A3 => n46, A4 => n29, ZN => n3
                           );
   U27 : NAND2_X1 port map( A1 => n34, A2 => n33, ZN => n61);
   U28 : INV_X1 port map( A => A(7), ZN => n33);
   U31 : INV_X1 port map( A => A(8), ZN => n34);
   U34 : INV_X1 port map( A => A(1), ZN => n35);
   U35 : INV_X1 port map( A => A(0), ZN => n36);
   U36 : INV_X1 port map( A => A(2), ZN => n37);
   U37 : INV_X1 port map( A => n16, ZN => n38);
   U38 : INV_X1 port map( A => n59, ZN => n39);
   U39 : INV_X1 port map( A => n62, ZN => n40);
   U40 : OR2_X2 port map( A1 => n16, A2 => n59, ZN => n14);
   U41 : CLKBUF_X1 port map( A => A(8), Z => B_14_port);
   U42 : OR2_X1 port map( A1 => n66, A2 => n53, ZN => E_22_port);
   U43 : NOR2_X1 port map( A1 => n3, A2 => B_23_port, ZN => E_23_port);
   U44 : NOR2_X1 port map( A1 => n3, A2 => B_23_port, ZN => n66);
   U45 : INV_X1 port map( A => B_23_port, ZN => n46);
   U46 : NOR2_X1 port map( A1 => n60, A2 => n63, ZN => n47);
   U47 : NOR2_X1 port map( A1 => n57, A2 => n58, ZN => n48);
   U48 : NAND2_X1 port map( A1 => n51, A2 => n49, ZN => n4);
   U49 : AND2_X1 port map( A1 => n29, A2 => n47, ZN => n49);
   U50 : NOR2_X1 port map( A1 => n4, A2 => B_23_port, ZN => n50);
   U51 : XNOR2_X1 port map( A => n24, B => A(12), ZN => E_19_port);
   U52 : NAND2_X1 port map( A1 => n51, A2 => n52, ZN => n6);
   U53 : NOR2_X1 port map( A1 => n60, A2 => n63, ZN => n52);
   U54 : OR2_X1 port map( A1 => n62, A2 => n14, ZN => n12);
   U55 : OR2_X1 port map( A1 => n53, A2 => n66, ZN => C_21_port);
   U56 : NOR2_X1 port map( A1 => n50, A2 => n4, ZN => n53);
   U57 : XNOR2_X1 port map( A => n54, B => A(6), ZN => E_13_port);
   U58 : NOR2_X1 port map( A1 => n14, A2 => A(5), ZN => n54);
   U59 : XNOR2_X1 port map( A => n55, B => A(14), ZN => E_21_port);
   U60 : NOR2_X1 port map( A1 => n6, A2 => A(13), ZN => n55);
   U61 : XNOR2_X1 port map( A => n56, B => A(10), ZN => E_17_port);
   U62 : NOR2_X1 port map( A1 => n10, A2 => A(9), ZN => n56);
   U63 : BUF_X1 port map( A => A(15), Z => D_22_port);
   U64 : XNOR2_X1 port map( A => A(4), B => n17, ZN => E_11_port);
   U65 : XNOR2_X1 port map( A => A(2), B => n2, ZN => E_9_port);
   U66 : NOR2_X1 port map( A1 => A(0), A2 => A(1), ZN => n2);
   U67 : XNOR2_X1 port map( A => B_14_port, B => n13, ZN => E_15_port);
   U68 : OR2_X1 port map( A1 => A(4), A2 => A(3), ZN => n59);
   U69 : OR2_X1 port map( A1 => A(11), A2 => A(12), ZN => n60);
   U70 : NOR2_X1 port map( A1 => A(3), A2 => n42, ZN => n17);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity shift_mul_N16_S4 is

   port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
         std_logic_vector (31 downto 0));

end shift_mul_N16_S4;

architecture SYN_struct of shift_mul_N16_S4 is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal X_Logic0_port, E_20_port, E_19_port, E_18_port, E_17_port, E_16_port,
      E_15_port, E_14_port, E_13_port, E_12_port, E_11_port, E_10_port, 
      E_9_port, E_8_port, E_7_port, E_6_port, n2, n3, n4, n5, n11, n12, n14, 
      n15, n16, n24, n25, B_15_port, E_25_port, n28, n29, n30, E_22_port, n32, 
      n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, C_30_port, 
      n46, n47, n48, n49, n50, B_13_port, n52, n53, n54, n55, n56, C_19_port, 
      n58, E_30_port, E_28_port, n61, n62, n63, n64, n65, n66, n67, n68, n69, 
      n70, n71, n72, n73, n74, n75, n76, n77, n78, D_20_port, B_19_port, 
      B_31_port : std_logic;

begin
   B <= ( B_31_port, B_19_port, B_19_port, B_19_port, B_19_port, B_19_port, 
      B_19_port, B_19_port, B_19_port, B_19_port, B_19_port, B_19_port, 
      B_19_port, A(14), A(13), A(12), B_15_port, A(10), B_13_port, A(8), A(7), 
      A(6), A(5), A(4), A(3), A(2), A(1), A(0), X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port );
   C <= ( C_30_port, C_30_port, C_30_port, C_30_port, E_30_port, E_25_port, 
      E_28_port, E_28_port, E_30_port, E_25_port, E_25_port, E_25_port, 
      C_19_port, E_19_port, E_18_port, E_17_port, E_16_port, E_15_port, 
      E_14_port, E_13_port, E_12_port, E_11_port, E_10_port, E_9_port, E_8_port
      , E_7_port, E_6_port, A(0), X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port );
   D <= ( D_20_port, D_20_port, D_20_port, D_20_port, D_20_port, D_20_port, 
      D_20_port, D_20_port, D_20_port, D_20_port, D_20_port, D_20_port, A(14), 
      A(13), A(12), B_15_port, A(10), B_13_port, A(8), A(7), A(6), A(5), A(4), 
      A(3), A(2), A(1), A(0), X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port );
   E <= ( E_25_port, E_30_port, E_25_port, E_28_port, E_25_port, E_30_port, 
      E_25_port, E_25_port, E_30_port, E_22_port, E_22_port, E_20_port, 
      E_19_port, E_18_port, E_17_port, E_16_port, E_15_port, E_14_port, 
      E_13_port, E_12_port, E_11_port, E_10_port, E_9_port, E_8_port, E_7_port,
      E_6_port, A(0), X_Logic0_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U24 : XOR2_X1 port map( A => n58, B => A(3), Z => E_8_port);
   U25 : XOR2_X1 port map( A => A(1), B => A(0), Z => E_6_port);
   U28 : XOR2_X1 port map( A => n66, B => B_15_port, Z => E_16_port);
   U31 : XOR2_X1 port map( A => n14, B => A(7), Z => E_12_port);
   U33 : XOR2_X1 port map( A => n16, B => A(5), Z => E_10_port);
   U2 : NOR2_X2 port map( A1 => n75, A2 => B_31_port, ZN => E_25_port);
   U3 : CLKBUF_X1 port map( A => n50, Z => n24);
   U4 : OR2_X1 port map( A1 => n29, A2 => n54, ZN => n67);
   U5 : OR2_X1 port map( A1 => n5, A2 => B_31_port, ZN => n56);
   U6 : BUF_X1 port map( A => A(15), Z => B_31_port);
   U7 : NOR2_X1 port map( A1 => n74, A2 => B_31_port, ZN => n25);
   U8 : CLKBUF_X1 port map( A => A(11), Z => B_15_port);
   U9 : OR2_X2 port map( A1 => n55, A2 => n70, ZN => n16);
   U10 : OR2_X1 port map( A1 => A(5), A2 => A(6), ZN => n71);
   U11 : NOR2_X1 port map( A1 => n69, A2 => n71, ZN => n28);
   U12 : OR2_X2 port map( A1 => n73, A2 => n72, ZN => n54);
   U13 : NAND3_X1 port map( A1 => n40, A2 => n41, A3 => n65, ZN => n29);
   U14 : BUF_X1 port map( A => n12, Z => n50);
   U15 : XNOR2_X1 port map( A => n33, B => B_13_port, ZN => E_14_port);
   U16 : AND2_X1 port map( A1 => n33, A2 => n30, ZN => n32);
   U17 : NOR2_X1 port map( A1 => n54, A2 => n74, ZN => n30);
   U18 : NOR2_X1 port map( A1 => n48, A2 => B_31_port, ZN => E_22_port);
   U19 : AND2_X1 port map( A1 => n32, A2 => n44, ZN => n76);
   U20 : OR2_X1 port map( A1 => n71, A2 => n16, ZN => n14);
   U21 : NOR3_X1 port map( A1 => B_15_port, A2 => n73, A3 => n29, ZN => n11);
   U22 : AND3_X1 port map( A1 => n33, A2 => n25, A3 => n34, ZN => n75);
   U23 : INV_X1 port map( A => n29, ZN => n33);
   U26 : INV_X1 port map( A => n54, ZN => n34);
   U27 : NAND3_X1 port map( A1 => n35, A2 => n36, A3 => n37, ZN => n3);
   U29 : INV_X1 port map( A => A(1), ZN => n35);
   U30 : INV_X1 port map( A => A(0), ZN => n36);
   U32 : INV_X1 port map( A => A(2), ZN => n37);
   U34 : AOI21_X1 port map( B1 => n38, B2 => n39, A => A(15), ZN => E_30_port);
   U35 : INV_X1 port map( A => n67, ZN => n38);
   U36 : INV_X1 port map( A => n74, ZN => n39);
   U37 : NAND3_X1 port map( A1 => n40, A2 => n41, A3 => n28, ZN => n12);
   U38 : INV_X1 port map( A => n3, ZN => n40);
   U39 : INV_X1 port map( A => n70, ZN => n41);
   U40 : BUF_X1 port map( A => n55, Z => n58);
   U41 : OR2_X2 port map( A1 => A(11), A2 => A(12), ZN => n72);
   U42 : NOR2_X1 port map( A1 => n50, A2 => n73, ZN => n42);
   U43 : AND2_X1 port map( A1 => n42, A2 => n43, ZN => n5);
   U44 : AND2_X1 port map( A1 => n44, A2 => n53, ZN => n43);
   U45 : INV_X1 port map( A => B_31_port, ZN => n44);
   U46 : INV_X1 port map( A => n56, ZN => C_30_port);
   U47 : NOR2_X1 port map( A1 => n24, A2 => n73, ZN => n46);
   U48 : AND2_X1 port map( A1 => n46, A2 => n47, ZN => n48);
   U49 : AND2_X1 port map( A1 => n44, A2 => n53, ZN => n47);
   U50 : NOR2_X1 port map( A1 => n68, A2 => B_31_port, ZN => n49);
   U51 : BUF_X1 port map( A => n3, Z => n55);
   U52 : BUF_X1 port map( A => A(9), Z => B_13_port);
   U53 : NAND2_X1 port map( A1 => n52, A2 => n53, ZN => n68);
   U54 : NOR2_X1 port map( A1 => n50, A2 => n73, ZN => n52);
   U55 : NOR2_X1 port map( A1 => n72, A2 => n74, ZN => n53);
   U56 : OR2_X1 port map( A1 => n49, A2 => B_31_port, ZN => n78);
   U57 : NAND2_X1 port map( A1 => n77, A2 => n78, ZN => C_19_port);
   U58 : INV_X1 port map( A => n56, ZN => E_28_port);
   U59 : BUF_X1 port map( A => A(15), Z => B_19_port);
   U60 : XNOR2_X1 port map( A => A(12), B => n11, ZN => E_17_port);
   U61 : XNOR2_X1 port map( A => n61, B => A(13), ZN => E_18_port);
   U62 : NOR2_X1 port map( A1 => n72, A2 => n66, ZN => n61);
   U63 : XNOR2_X1 port map( A => n62, B => A(10), ZN => E_15_port);
   U64 : NOR2_X1 port map( A1 => n50, A2 => B_13_port, ZN => n62);
   U65 : XNOR2_X1 port map( A => n63, B => A(6), ZN => E_11_port);
   U66 : NOR2_X1 port map( A1 => n16, A2 => A(5), ZN => n63);
   U67 : XNOR2_X1 port map( A => n64, B => A(14), ZN => E_19_port);
   U68 : NOR2_X1 port map( A1 => n67, A2 => A(13), ZN => n64);
   U69 : XNOR2_X1 port map( A => A(8), B => n15, ZN => E_13_port);
   U70 : XNOR2_X1 port map( A => n2, B => A(4), ZN => E_9_port);
   U71 : XNOR2_X1 port map( A => A(2), B => n4, ZN => E_7_port);
   U72 : NOR2_X1 port map( A1 => A(0), A2 => A(1), ZN => n4);
   U73 : NOR2_X1 port map( A1 => n69, A2 => n71, ZN => n65);
   U74 : OR2_X1 port map( A1 => n73, A2 => n12, ZN => n66);
   U75 : OR2_X1 port map( A1 => A(8), A2 => A(7), ZN => n69);
   U76 : OR2_X1 port map( A1 => A(4), A2 => A(3), ZN => n70);
   U77 : OR2_X1 port map( A1 => A(10), A2 => A(9), ZN => n73);
   U78 : NOR2_X1 port map( A1 => A(3), A2 => n58, ZN => n2);
   U79 : NOR2_X1 port map( A1 => A(7), A2 => n14, ZN => n15);
   U80 : OR2_X1 port map( A1 => A(13), A2 => A(14), ZN => n74);
   U81 : OR2_X1 port map( A1 => n76, A2 => n68, ZN => n77);
   U82 : NAND2_X1 port map( A1 => n56, A2 => n77, ZN => E_20_port);
   U83 : BUF_X1 port map( A => A(15), Z => D_20_port);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity shift_mul_N16_S2 is

   port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
         std_logic_vector (31 downto 0));

end shift_mul_N16_S2;

architecture SYN_struct of shift_mul_N16_S2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal X_Logic0_port, E_18_port, E_17_port, E_16_port, E_15_port, E_14_port,
      E_13_port, E_12_port, E_11_port, E_10_port, E_9_port, E_8_port, E_7_port,
      E_6_port, E_5_port, E_4_port, n6, n8, n9, n10, n11, n12, n17, n21, 
      E_30_port, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, 
      n37, n38, n39, n40, n41, n42, n43, n44, C_26_port, n46, n47, E_20_port, 
      n49, C_29_port, B_4_port, n52, n53, n54, n55, n56, n57, n58, E_3_port, 
      n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74
      , n75, D_3_port, n77, n78, C_30_port, E_23_port, E_26_port, n82, 
      E_19_port, C_23_port, B_7_port, n86, D_9_port, n88, D_18_port, D_30_port,
      B_29_port : std_logic;

begin
   B <= ( B_29_port, B_29_port, B_29_port, B_29_port, B_29_port, D_30_port, 
      D_30_port, D_30_port, D_30_port, D_30_port, D_30_port, D_30_port, 
      D_30_port, D_30_port, D_30_port, A(14), A(13), A(12), A(11), A(10), A(9),
      A(8), A(7), D_9_port, B_7_port, A(4), A(3), B_4_port, A(1), D_3_port, 
      X_Logic0_port, X_Logic0_port );
   C <= ( C_30_port, C_30_port, C_29_port, E_26_port, C_26_port, C_26_port, 
      C_29_port, C_29_port, C_23_port, E_20_port, C_23_port, E_23_port, 
      C_30_port, E_26_port, E_18_port, E_17_port, E_16_port, E_15_port, 
      E_14_port, E_13_port, E_12_port, E_11_port, E_10_port, E_9_port, E_8_port
      , E_7_port, E_6_port, E_5_port, E_4_port, E_3_port, X_Logic0_port, 
      X_Logic0_port );
   D <= ( D_30_port, D_30_port, D_18_port, D_18_port, D_18_port, D_18_port, 
      D_18_port, D_18_port, D_18_port, D_18_port, D_18_port, D_18_port, 
      D_18_port, D_18_port, A(14), A(13), A(12), A(11), A(10), A(9), A(8), A(7)
      , D_9_port, B_7_port, A(4), A(3), B_4_port, A(1), D_3_port, X_Logic0_port
      , X_Logic0_port, X_Logic0_port );
   E <= ( C_30_port, E_30_port, C_29_port, C_29_port, C_26_port, E_26_port, 
      E_26_port, C_26_port, E_23_port, E_19_port, C_26_port, E_20_port, 
      E_19_port, E_18_port, E_17_port, E_16_port, E_15_port, E_14_port, 
      E_13_port, E_12_port, E_11_port, E_10_port, E_9_port, E_8_port, E_7_port,
      E_6_port, E_5_port, E_4_port, E_3_port, X_Logic0_port, X_Logic0_port, 
      X_Logic0_port );
   
   X_Logic0_port <= '0';
   U28 : XOR2_X1 port map( A => A(1), B => n52, Z => E_4_port);
   U2 : OR2_X1 port map( A1 => A(10), A2 => A(9), ZN => n78);
   U3 : CLKBUF_X1 port map( A => E_26_port, Z => E_30_port);
   U4 : AND3_X2 port map( A1 => n65, A2 => n29, A3 => n28, ZN => n31);
   U5 : CLKBUF_X1 port map( A => n65, Z => n25);
   U6 : BUF_X2 port map( A => A(15), Z => D_18_port);
   U7 : NOR2_X1 port map( A1 => A(13), A2 => A(14), ZN => n26);
   U8 : XNOR2_X1 port map( A => n27, B => A(7), ZN => E_10_port);
   U9 : AND2_X1 port map( A1 => n46, A2 => n30, ZN => n27);
   U10 : AND2_X1 port map( A1 => n49, A2 => n63, ZN => n28);
   U11 : AND2_X1 port map( A1 => n72, A2 => n26, ZN => n65);
   U12 : NOR2_X1 port map( A1 => n33, A2 => n70, ZN => n29);
   U13 : CLKBUF_X1 port map( A => n67, Z => n30);
   U14 : AND4_X1 port map( A1 => n65, A2 => n74, A3 => n75, A4 => n63, ZN => 
                           n11);
   U15 : AND2_X1 port map( A1 => n67, A2 => n35, ZN => n49);
   U16 : NAND3_X1 port map( A1 => n40, A2 => n41, A3 => n42, ZN => n33);
   U17 : NAND3_X1 port map( A1 => n40, A2 => n41, A3 => n42, ZN => n32);
   U18 : NAND3_X1 port map( A1 => n40, A2 => n41, A3 => n42, ZN => n9);
   U19 : XNOR2_X1 port map( A => n34, B => A(13), ZN => E_16_port);
   U20 : AND2_X1 port map( A1 => n47, A2 => n6, ZN => n34);
   U21 : NOR2_X1 port map( A1 => A(8), A2 => A(7), ZN => n35);
   U22 : XNOR2_X1 port map( A => n38, B => A(3), ZN => E_6_port);
   U23 : AND3_X1 port map( A1 => n6, A2 => n75, A3 => n36, ZN => n58);
   U24 : INV_X1 port map( A => n43, ZN => n36);
   U25 : AND4_X1 port map( A1 => n47, A2 => n37, A3 => n38, A4 => n39, ZN => 
                           n68);
   U26 : INV_X1 port map( A => n70, ZN => n37);
   U27 : INV_X1 port map( A => n33, ZN => n38);
   U29 : INV_X1 port map( A => A(13), ZN => n39);
   U30 : INV_X1 port map( A => A(1), ZN => n40);
   U31 : INV_X1 port map( A => A(0), ZN => n41);
   U32 : INV_X1 port map( A => A(2), ZN => n42);
   U33 : NOR2_X1 port map( A1 => A(15), A2 => n31, ZN => E_23_port);
   U34 : OAI21_X1 port map( B1 => n63, B2 => n12, A => n82, ZN => E_18_port);
   U35 : OR2_X1 port map( A1 => n11, A2 => B_29_port, ZN => n55);
   U36 : CLKBUF_X1 port map( A => C_29_port, Z => C_30_port);
   U37 : CLKBUF_X1 port map( A => n78, Z => n43);
   U38 : OR2_X1 port map( A1 => n31, A2 => B_29_port, ZN => n56);
   U39 : BUF_X1 port map( A => n52, Z => E_3_port);
   U40 : OR2_X1 port map( A1 => n11, A2 => B_29_port, ZN => n44);
   U41 : INV_X1 port map( A => n55, ZN => C_26_port);
   U42 : AND2_X1 port map( A1 => n29, A2 => n49, ZN => n71);
   U43 : NOR2_X1 port map( A1 => n70, A2 => n9, ZN => n46);
   U44 : AND2_X1 port map( A1 => n49, A2 => n57, ZN => n47);
   U45 : INV_X1 port map( A => n55, ZN => E_20_port);
   U46 : AND2_X1 port map( A1 => n46, A2 => n75, ZN => n73);
   U47 : INV_X1 port map( A => n56, ZN => C_29_port);
   U48 : BUF_X1 port map( A => A(2), Z => B_4_port);
   U49 : BUF_X1 port map( A => A(0), Z => n52);
   U50 : AND2_X1 port map( A1 => n46, A2 => n53, ZN => n69);
   U51 : AND2_X1 port map( A1 => n75, A2 => n54, ZN => n53);
   U52 : INV_X1 port map( A => A(9), ZN => n54);
   U53 : OR2_X1 port map( A1 => n31, A2 => B_29_port, ZN => n82);
   U54 : NOR2_X1 port map( A1 => n78, A2 => n77, ZN => n57);
   U55 : XNOR2_X1 port map( A => n58, B => A(11), ZN => E_14_port);
   U56 : NOR2_X1 port map( A1 => A(6), A2 => A(5), ZN => n67);
   U57 : NOR2_X1 port map( A1 => n70, A2 => n9, ZN => n60);
   U58 : AND2_X1 port map( A1 => n6, A2 => n61, ZN => n21);
   U59 : AND2_X1 port map( A1 => n62, A2 => n30, ZN => n61);
   U60 : INV_X1 port map( A => A(7), ZN => n62);
   U61 : INV_X1 port map( A => B_29_port, ZN => n63);
   U62 : AND2_X1 port map( A1 => n73, A2 => n64, ZN => n17);
   U63 : NOR2_X1 port map( A1 => n43, A2 => A(11), ZN => n64);
   U64 : NAND2_X1 port map( A1 => n71, A2 => n25, ZN => n12);
   U65 : XNOR2_X1 port map( A => n66, B => n88, ZN => E_9_port);
   U66 : NAND2_X1 port map( A1 => n60, A2 => n86, ZN => n66);
   U67 : XNOR2_X1 port map( A => n68, B => A(14), ZN => E_17_port);
   U68 : XNOR2_X1 port map( A => n69, B => A(10), ZN => E_13_port);
   U69 : BUF_X2 port map( A => A(15), Z => D_30_port);
   U70 : BUF_X2 port map( A => A(15), Z => B_29_port);
   U71 : OR2_X1 port map( A1 => A(4), A2 => A(3), ZN => n70);
   U72 : XNOR2_X1 port map( A => B_4_port, B => n10, ZN => E_5_port);
   U73 : NOR2_X1 port map( A1 => n52, A2 => A(1), ZN => n10);
   U74 : NOR2_X1 port map( A1 => n78, A2 => n77, ZN => n72);
   U75 : XNOR2_X1 port map( A => n73, B => A(9), ZN => E_12_port);
   U76 : XNOR2_X1 port map( A => n8, B => A(4), ZN => E_7_port);
   U77 : NOR2_X1 port map( A1 => n32, A2 => n70, ZN => n74);
   U78 : AND2_X1 port map( A1 => n67, A2 => n35, ZN => n75);
   U79 : XNOR2_X1 port map( A => A(8), B => n21, ZN => E_11_port);
   U80 : XNOR2_X1 port map( A => n17, B => A(12), ZN => E_15_port);
   U81 : BUF_X1 port map( A => E_3_port, Z => D_3_port);
   U82 : OR2_X1 port map( A1 => A(11), A2 => A(12), ZN => n77);
   U83 : NOR2_X1 port map( A1 => n32, A2 => A(3), ZN => n8);
   U84 : NOR2_X1 port map( A1 => n70, A2 => n32, ZN => n6);
   U85 : INV_X1 port map( A => A(6), ZN => n88);
   U86 : INV_X1 port map( A => n44, ZN => E_26_port);
   U87 : INV_X1 port map( A => n44, ZN => E_19_port);
   U88 : INV_X1 port map( A => n56, ZN => C_23_port);
   U89 : XNOR2_X1 port map( A => n60, B => B_7_port, ZN => E_8_port);
   U90 : INV_X1 port map( A => n86, ZN => B_7_port);
   U91 : INV_X1 port map( A => A(5), ZN => n86);
   U92 : INV_X1 port map( A => n88, ZN => D_9_port);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity shift_mul_N16_S0 is

   port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
         std_logic_vector (31 downto 0));

end shift_mul_N16_S0;

architecture SYN_struct of shift_mul_N16_S0 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X3
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal X_Logic0_port, E_16_port, E_15_port, E_14_port, E_13_port, E_12_port,
      E_11_port, E_10_port, E_9_port, E_8_port, E_7_port, C_5_port, E_5_port, 
      C_3_port, E_3_port, E_2_port, n2, n5, n6, n7, n8, n9, n10, n16, net22587,
      net22585, net22583, net23322, net23371, net23525, net23596, net23651, 
      net23780, net24289, net24553, net24645, net24662, net24741, net25119, 
      net25272, net25295, net24351, net24350, net26938, net26937, net23726, 
      net23480, net23479, n15, B_1_port, D_13_port, n26, C_24_port, n28, 
      E_4_port, C_15_port, n31, B_7_port, D_7_port, n34, B_5_port, E_24_port, 
      n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51
      , n52, n53, n54, n55, B_2_port, n57, n58, C_31_port, C_22_port, n61, n62,
      n63, E_27_port, C_20_port, C_29_port, n67, E_31_port, n69, n70, n71, n72,
      n73, n74, E_1_port, n76 : std_logic;

begin
   B <= ( net22587, net22587, net22587, net22587, net22587, net22587, net22587,
      net22587, net22587, net22585, net22585, net22585, net22585, net22585, 
      net22585, net22585, net22585, A(14), A(13), D_13_port, A(11), A(10), A(9)
      , A(8), B_7_port, D_7_port, B_5_port, A(4), A(3), B_2_port, B_1_port, 
      E_1_port );
   C <= ( C_31_port, C_24_port, C_29_port, C_31_port, E_24_port, C_24_port, 
      net25272, C_24_port, net25272, C_22_port, net25272, C_20_port, net25272, 
      E_27_port, C_29_port, C_22_port, C_15_port, E_15_port, E_14_port, 
      E_13_port, E_12_port, E_11_port, E_10_port, E_9_port, E_8_port, E_7_port,
      C_5_port, E_5_port, C_3_port, E_3_port, E_2_port, E_1_port );
   D <= ( net22585, net22585, net22585, net22585, net22583, net22583, net22583,
      net22583, net22583, net22583, net22583, net22583, net22583, net22583, 
      net22583, net22583, A(14), A(13), D_13_port, A(11), A(10), A(9), A(8), 
      B_7_port, D_7_port, B_5_port, A(4), A(3), B_2_port, B_1_port, E_1_port, 
      X_Logic0_port );
   E <= ( E_31_port, C_31_port, C_31_port, C_24_port, E_27_port, C_29_port, 
      net25272, E_24_port, C_29_port, net25272, E_27_port, E_24_port, net25272,
      C_29_port, C_29_port, E_16_port, E_15_port, E_14_port, E_13_port, 
      E_12_port, E_11_port, E_10_port, E_9_port, E_8_port, E_7_port, C_5_port, 
      E_5_port, E_4_port, E_3_port, E_2_port, E_1_port, X_Logic0_port );
   
   X_Logic0_port <= '0';
   U26 : XOR2_X1 port map( A => n5, B => B_5_port, Z => C_5_port);
   U27 : XOR2_X1 port map( A => net23322, B => A(3), Z => C_3_port);
   U28 : XOR2_X1 port map( A => B_1_port, B => E_1_port, Z => E_2_port);
   U33 : XOR2_X1 port map( A => n16, B => A(9), Z => E_10_port);
   U2 : OR2_X2 port map( A1 => n26, A2 => net24289, ZN => net24645);
   U3 : OR2_X1 port map( A1 => net23480, A2 => net23525, ZN => net23596);
   U4 : OR2_X2 port map( A1 => n52, A2 => n31, ZN => n10);
   U5 : BUF_X1 port map( A => A(1), Z => B_1_port);
   U6 : BUF_X1 port map( A => A(12), Z => D_13_port);
   U7 : BUF_X1 port map( A => C_3_port, Z => E_4_port);
   U8 : OR2_X1 port map( A1 => net23480, A2 => net23525, ZN => n26);
   U9 : OR2_X1 port map( A1 => net24553, A2 => net23726, ZN => n16);
   U10 : BUF_X1 port map( A => A(0), Z => E_1_port);
   U11 : BUF_X2 port map( A => A(15), Z => net22583);
   U12 : CLKBUF_X1 port map( A => net23480, Z => net23726);
   U13 : NOR2_X1 port map( A1 => n9, A2 => net22587, ZN => C_24_port);
   U14 : CLKBUF_X1 port map( A => n34, Z => B_5_port);
   U15 : OR2_X1 port map( A1 => net23479, A2 => net22587, ZN => n28);
   U16 : OR2_X1 port map( A1 => net24553, A2 => net22587, ZN => net24741);
   U17 : OR2_X1 port map( A1 => n38, A2 => net23371, ZN => net23479);
   U18 : OAI22_X1 port map( A1 => n37, A2 => A(15), B1 => n10, B2 => n70, ZN =>
                           C_15_port);
   U19 : CLKBUF_X1 port map( A => net23479, Z => n31);
   U20 : OR2_X2 port map( A1 => net23596, A2 => net24289, ZN => n52);
   U21 : BUF_X1 port map( A => E_24_port, Z => C_31_port);
   U22 : BUF_X1 port map( A => A(7), Z => B_7_port);
   U23 : BUF_X1 port map( A => A(6), Z => D_7_port);
   U24 : BUF_X1 port map( A => A(5), Z => n34);
   U25 : AOI21_X1 port map( B1 => n39, B2 => n42, A => A(15), ZN => E_24_port);
   U29 : NOR2_X1 port map( A1 => n28, A2 => net24645, ZN => n37);
   U30 : NAND3_X1 port map( A1 => n43, A2 => n44, A3 => n45, ZN => n38);
   U31 : OAI22_X1 port map( A1 => n37, A2 => A(15), B1 => n70, B2 => n10, ZN =>
                           E_16_port);
   U32 : AOI21_X1 port map( B1 => n39, B2 => n41, A => A(15), ZN => C_29_port);
   U34 : INV_X1 port map( A => net24350, ZN => n39);
   U35 : AOI21_X1 port map( B1 => n40, B2 => n41, A => A(15), ZN => E_27_port);
   U36 : INV_X1 port map( A => net24350, ZN => n40);
   U37 : INV_X1 port map( A => net24351, ZN => n41);
   U38 : AOI21_X1 port map( B1 => n40, B2 => n42, A => A(15), ZN => C_20_port);
   U39 : INV_X1 port map( A => net24289, ZN => n42);
   U40 : OR2_X2 port map( A1 => net24553, A2 => net23596, ZN => net24350);
   U41 : NAND3_X1 port map( A1 => n43, A2 => n44, A3 => n45, ZN => n7);
   U42 : INV_X1 port map( A => A(1), ZN => n43);
   U43 : INV_X1 port map( A => A(0), ZN => n44);
   U44 : INV_X1 port map( A => A(2), ZN => n45);
   U45 : XNOR2_X1 port map( A => n15, B => D_13_port, ZN => E_13_port);
   U46 : NOR2_X1 port map( A1 => n51, A2 => n49, ZN => n15);
   U47 : OR2_X1 port map( A1 => n46, A2 => net23726, ZN => n49);
   U48 : OR2_X1 port map( A1 => net23726, A2 => n46, ZN => n50);
   U49 : OR2_X1 port map( A1 => net23479, A2 => A(11), ZN => n51);
   U50 : NOR2_X1 port map( A1 => A(11), A2 => A(12), ZN => net23780);
   U51 : OR2_X1 port map( A1 => A(10), A2 => A(9), ZN => n46);
   U52 : NAND2_X1 port map( A1 => n47, A2 => n48, ZN => net23480);
   U53 : NOR2_X1 port map( A1 => A(7), A2 => A(8), ZN => n48);
   U54 : NOR2_X1 port map( A1 => A(5), A2 => A(6), ZN => n47);
   U55 : OR2_X1 port map( A1 => net23479, A2 => n26, ZN => net23651);
   U56 : OR2_X1 port map( A1 => n50, A2 => net23479, ZN => net25295);
   U57 : XNOR2_X1 port map( A => n2, B => A(8), ZN => E_9_port);
   U58 : BUF_X1 port map( A => n7, Z => net23322);
   U59 : OR2_X2 port map( A1 => n7, A2 => net23371, ZN => n5);
   U60 : OR2_X1 port map( A1 => n38, A2 => net23371, ZN => net24553);
   U61 : NAND2_X1 port map( A1 => net25295, A2 => net26938, ZN => n53);
   U62 : NAND2_X1 port map( A1 => net26937, A2 => A(11), ZN => n54);
   U63 : NAND2_X1 port map( A1 => n53, A2 => n54, ZN => E_12_port);
   U64 : INV_X1 port map( A => net25295, ZN => net26937);
   U65 : INV_X1 port map( A => A(11), ZN => net26938);
   U66 : NOR2_X1 port map( A1 => net24351, A2 => net24350, ZN => n55);
   U67 : NOR2_X1 port map( A1 => n55, A2 => net22587, ZN => net25272);
   U68 : OR2_X1 port map( A1 => net22587, A2 => net24289, ZN => net24351);
   U69 : CLKBUF_X3 port map( A => A(15), Z => net22587);
   U70 : OR2_X1 port map( A1 => n5, A2 => n26, ZN => net24662);
   U71 : BUF_X2 port map( A => A(15), Z => net22585);
   U72 : BUF_X1 port map( A => A(2), Z => B_2_port);
   U73 : NOR2_X1 port map( A1 => n52, A2 => net24741, ZN => n57);
   U74 : OR2_X1 port map( A1 => n5, A2 => net22587, ZN => n58);
   U75 : NOR2_X1 port map( A1 => n57, A2 => net22587, ZN => C_22_port);
   U76 : NAND2_X1 port map( A1 => net24662, A2 => n61, ZN => n62);
   U77 : NAND2_X1 port map( A1 => net25119, A2 => A(13), ZN => n63);
   U78 : NAND2_X1 port map( A1 => n62, A2 => n63, ZN => E_14_port);
   U79 : INV_X1 port map( A => net24662, ZN => net25119);
   U80 : INV_X1 port map( A => A(13), ZN => n61);
   U81 : XNOR2_X1 port map( A => n67, B => B_7_port, ZN => E_8_port);
   U82 : NOR2_X1 port map( A1 => n76, A2 => n5, ZN => n67);
   U83 : CLKBUF_X1 port map( A => E_27_port, Z => E_31_port);
   U84 : OR2_X1 port map( A1 => B_7_port, A2 => n76, ZN => n69);
   U85 : NOR2_X1 port map( A1 => n58, A2 => net24645, ZN => n70);
   U86 : OR2_X1 port map( A1 => A(14), A2 => A(13), ZN => net24289);
   U87 : XNOR2_X1 port map( A => n71, B => A(14), ZN => E_15_port);
   U88 : NOR2_X1 port map( A1 => net23651, A2 => A(13), ZN => n71);
   U89 : XNOR2_X1 port map( A => n72, B => D_7_port, ZN => E_7_port);
   U90 : NOR2_X1 port map( A1 => n5, A2 => B_5_port, ZN => n72);
   U91 : XNOR2_X1 port map( A => n73, B => A(10), ZN => E_11_port);
   U92 : NOR2_X1 port map( A1 => n16, A2 => A(9), ZN => n73);
   U93 : XNOR2_X1 port map( A => B_2_port, B => n8, ZN => E_3_port);
   U94 : NOR2_X1 port map( A1 => E_1_port, A2 => B_1_port, ZN => n8);
   U95 : XNOR2_X1 port map( A => n6, B => A(4), ZN => E_5_port);
   U96 : NAND2_X1 port map( A1 => net23780, A2 => n74, ZN => net23525);
   U97 : NOR2_X1 port map( A1 => A(10), A2 => A(9), ZN => n74);
   U98 : OR2_X1 port map( A1 => n34, A2 => A(6), ZN => n76);
   U99 : OR2_X1 port map( A1 => A(4), A2 => A(3), ZN => net23371);
   U100 : NOR2_X1 port map( A1 => n69, A2 => n5, ZN => n2);
   U101 : NOR2_X1 port map( A1 => A(3), A2 => net23322, ZN => n6);
   U102 : NOR2_X1 port map( A1 => net24645, A2 => n28, ZN => n9);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N16.all;

entity booth_mul_N16 is

   generic( N : Integer := 16);
   port( A, B : in std_logic_vector (15 downto 0);  Y : out std_logic_vector 
         (31 downto 0));

end booth_mul_N16;

architecture SYN_struct of booth_mul_N16 is

   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component cla_adder_N32
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  Cout
            : out std_logic;  Sum : out std_logic_vector (31 downto 0));
   end component;
   
   component CSA_Nbits32_1
      port( A, B, C : in std_logic_vector (31 downto 0);  S, Cout : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component CSA_Nbits32_2
      port( A, B, C : in std_logic_vector (31 downto 0);  S, Cout : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component CSA_Nbits32_3
      port( A, B, C : in std_logic_vector (31 downto 0);  S, Cout : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component CSA_Nbits32_4
      port( A, B, C : in std_logic_vector (31 downto 0);  S, Cout : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component CSA_Nbits32_5
      port( A, B, C : in std_logic_vector (31 downto 0);  S, Cout : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component CSA_Nbits32_0
      port( A, B, C : in std_logic_vector (31 downto 0);  S, Cout : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component mux_N32_1
      port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component mux_N32_2
      port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component mux_N32_3
      port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component mux_N32_4
      port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component mux_N32_5
      port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component mux_N32_6
      port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component mux_N32_7
      port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component mux_N32_0
      port( A, B, C, D, E : in std_logic_vector (31 downto 0);  Sel : in 
            std_logic_vector (2 downto 0);  O : out std_logic_vector (31 downto
            0));
   end component;
   
   component shift_mul_N16_S14
      port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component shift_mul_N16_S12
      port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component shift_mul_N16_S10
      port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component shift_mul_N16_S8
      port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component shift_mul_N16_S6
      port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component shift_mul_N16_S4
      port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component shift_mul_N16_S2
      port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
            std_logic_vector (31 downto 0));
   end component;
   
   component shift_mul_N16_S0
      port( A : in std_logic_vector (15 downto 0);  B, C, D, E : out 
            std_logic_vector (31 downto 0));
   end component;
   
   signal X_Logic0_port, muxInE_7_31_port, muxInE_7_30_port, muxInE_7_29_port, 
      muxInE_7_28_port, muxInE_7_27_port, muxInE_7_26_port, muxInE_7_25_port, 
      muxInE_7_24_port, muxInE_7_23_port, muxInE_7_22_port, muxInE_7_21_port, 
      muxInE_7_20_port, muxInE_7_19_port, muxInE_7_18_port, muxInE_7_17_port, 
      muxInE_7_16_port, muxInE_7_15_port, muxInE_7_14_port, muxInE_7_13_port, 
      muxInE_7_12_port, muxInE_7_11_port, muxInE_7_10_port, muxInE_7_9_port, 
      muxInE_7_8_port, muxInE_7_7_port, muxInE_7_6_port, muxInE_7_5_port, 
      muxInE_7_4_port, muxInE_7_3_port, muxInE_7_2_port, muxInE_7_1_port, 
      muxInE_7_0_port, muxInE_6_31_port, muxInE_6_30_port, muxInE_6_29_port, 
      muxInE_6_28_port, muxInE_6_27_port, muxInE_6_26_port, muxInE_6_25_port, 
      muxInE_6_24_port, muxInE_6_23_port, muxInE_6_22_port, muxInE_6_21_port, 
      muxInE_6_20_port, muxInE_6_19_port, muxInE_6_18_port, muxInE_6_17_port, 
      muxInE_6_16_port, muxInE_6_15_port, muxInE_6_14_port, muxInE_6_13_port, 
      muxInE_6_12_port, muxInE_6_11_port, muxInE_6_10_port, muxInE_6_9_port, 
      muxInE_6_8_port, muxInE_6_7_port, muxInE_6_6_port, muxInE_6_5_port, 
      muxInE_6_4_port, muxInE_6_3_port, muxInE_6_2_port, muxInE_6_1_port, 
      muxInE_6_0_port, muxInE_5_31_port, muxInE_5_30_port, muxInE_5_29_port, 
      muxInE_5_28_port, muxInE_5_27_port, muxInE_5_26_port, muxInE_5_25_port, 
      muxInE_5_24_port, muxInE_5_23_port, muxInE_5_22_port, muxInE_5_21_port, 
      muxInE_5_20_port, muxInE_5_19_port, muxInE_5_18_port, muxInE_5_17_port, 
      muxInE_5_16_port, muxInE_5_15_port, muxInE_5_14_port, muxInE_5_13_port, 
      muxInE_5_12_port, muxInE_5_11_port, muxInE_5_10_port, muxInE_5_9_port, 
      muxInE_5_8_port, muxInE_5_7_port, muxInE_5_6_port, muxInE_5_5_port, 
      muxInE_5_4_port, muxInE_5_3_port, muxInE_5_2_port, muxInE_5_1_port, 
      muxInE_5_0_port, muxInE_4_31_port, muxInE_4_30_port, muxInE_4_29_port, 
      muxInE_4_28_port, muxInE_4_27_port, muxInE_4_26_port, muxInE_4_25_port, 
      muxInE_4_24_port, muxInE_4_23_port, muxInE_4_22_port, muxInE_4_21_port, 
      muxInE_4_20_port, muxInE_4_19_port, muxInE_4_18_port, muxInE_4_17_port, 
      muxInE_4_16_port, muxInE_4_15_port, muxInE_4_14_port, muxInE_4_13_port, 
      muxInE_4_12_port, muxInE_4_11_port, muxInE_4_10_port, muxInE_4_9_port, 
      muxInE_4_8_port, muxInE_4_7_port, muxInE_4_6_port, muxInE_4_5_port, 
      muxInE_4_4_port, muxInE_4_3_port, muxInE_4_2_port, muxInE_4_1_port, 
      muxInE_4_0_port, muxInE_3_31_port, muxInE_3_30_port, muxInE_3_29_port, 
      muxInE_3_28_port, muxInE_3_27_port, muxInE_3_26_port, muxInE_3_25_port, 
      muxInE_3_24_port, muxInE_3_23_port, muxInE_3_22_port, muxInE_3_21_port, 
      muxInE_3_20_port, muxInE_3_19_port, muxInE_3_18_port, muxInE_3_17_port, 
      muxInE_3_16_port, muxInE_3_15_port, muxInE_3_14_port, muxInE_3_13_port, 
      muxInE_3_12_port, muxInE_3_11_port, muxInE_3_10_port, muxInE_3_9_port, 
      muxInE_3_8_port, muxInE_3_7_port, muxInE_3_6_port, muxInE_3_5_port, 
      muxInE_3_4_port, muxInE_3_3_port, muxInE_3_2_port, muxInE_3_1_port, 
      muxInE_3_0_port, muxInE_2_31_port, muxInE_2_30_port, muxInE_2_29_port, 
      muxInE_2_28_port, muxInE_2_27_port, muxInE_2_26_port, muxInE_2_25_port, 
      muxInE_2_24_port, muxInE_2_23_port, muxInE_2_22_port, muxInE_2_21_port, 
      muxInE_2_19_port, muxInE_2_18_port, muxInE_2_17_port, muxInE_2_16_port, 
      muxInE_2_15_port, muxInE_2_14_port, muxInE_2_13_port, muxInE_2_12_port, 
      muxInE_2_11_port, muxInE_2_10_port, muxInE_2_9_port, muxInE_2_8_port, 
      muxInE_2_7_port, muxInE_2_6_port, muxInE_2_5_port, muxInE_2_4_port, 
      muxInE_2_3_port, muxInE_2_2_port, muxInE_2_1_port, muxInE_2_0_port, 
      muxInE_1_31_port, muxInE_1_30_port, muxInE_1_29_port, muxInE_1_28_port, 
      muxInE_1_27_port, muxInE_1_26_port, muxInE_1_25_port, muxInE_1_24_port, 
      muxInE_1_23_port, muxInE_1_22_port, muxInE_1_21_port, muxInE_1_20_port, 
      muxInE_1_19_port, muxInE_1_18_port, muxInE_1_17_port, muxInE_1_16_port, 
      muxInE_1_15_port, muxInE_1_14_port, muxInE_1_13_port, muxInE_1_12_port, 
      muxInE_1_11_port, muxInE_1_10_port, muxInE_1_9_port, muxInE_1_8_port, 
      muxInE_1_7_port, muxInE_1_6_port, muxInE_1_5_port, muxInE_1_4_port, 
      muxInE_1_3_port, muxInE_1_2_port, muxInE_1_1_port, muxInE_1_0_port, 
      muxInE_0_31_port, muxInE_0_30_port, muxInE_0_29_port, muxInE_0_28_port, 
      muxInE_0_27_port, muxInE_0_26_port, muxInE_0_25_port, muxInE_0_24_port, 
      muxInE_0_23_port, muxInE_0_22_port, muxInE_0_21_port, muxInE_0_20_port, 
      muxInE_0_19_port, muxInE_0_18_port, muxInE_0_17_port, muxInE_0_16_port, 
      muxInE_0_15_port, muxInE_0_14_port, muxInE_0_13_port, muxInE_0_12_port, 
      muxInE_0_11_port, muxInE_0_10_port, muxInE_0_9_port, muxInE_0_8_port, 
      muxInE_0_7_port, muxInE_0_6_port, muxInE_0_5_port, muxInE_0_4_port, 
      muxInE_0_3_port, muxInE_0_2_port, muxInE_0_1_port, muxInE_0_0_port, 
      muxInD_7_31_port, muxInD_7_30_port, muxInD_7_29_port, muxInD_7_28_port, 
      muxInD_7_27_port, muxInD_7_26_port, muxInD_7_25_port, muxInD_7_24_port, 
      muxInD_7_23_port, muxInD_7_22_port, muxInD_7_21_port, muxInD_7_20_port, 
      muxInD_7_19_port, muxInD_7_18_port, muxInD_7_17_port, muxInD_7_16_port, 
      muxInD_7_15_port, muxInD_7_14_port, muxInD_7_13_port, muxInD_7_12_port, 
      muxInD_7_11_port, muxInD_7_10_port, muxInD_7_9_port, muxInD_7_8_port, 
      muxInD_7_7_port, muxInD_7_6_port, muxInD_7_5_port, muxInD_7_4_port, 
      muxInD_7_3_port, muxInD_7_2_port, muxInD_7_1_port, muxInD_7_0_port, 
      muxInD_6_31_port, muxInD_6_30_port, muxInD_6_29_port, muxInD_6_28_port, 
      muxInD_6_27_port, muxInD_6_26_port, muxInD_6_25_port, muxInD_6_24_port, 
      muxInD_6_23_port, muxInD_6_22_port, muxInD_6_21_port, muxInD_6_20_port, 
      muxInD_6_19_port, muxInD_6_18_port, muxInD_6_17_port, muxInD_6_16_port, 
      muxInD_6_15_port, muxInD_6_14_port, muxInD_6_13_port, muxInD_6_12_port, 
      muxInD_6_11_port, muxInD_6_10_port, muxInD_6_9_port, muxInD_6_8_port, 
      muxInD_6_7_port, muxInD_6_6_port, muxInD_6_5_port, muxInD_6_4_port, 
      muxInD_6_3_port, muxInD_6_2_port, muxInD_6_1_port, muxInD_6_0_port, 
      muxInD_5_31_port, muxInD_5_30_port, muxInD_5_29_port, muxInD_5_28_port, 
      muxInD_5_27_port, muxInD_5_26_port, muxInD_5_25_port, muxInD_5_24_port, 
      muxInD_5_23_port, muxInD_5_22_port, muxInD_5_21_port, muxInD_5_20_port, 
      muxInD_5_19_port, muxInD_5_18_port, muxInD_5_17_port, muxInD_5_16_port, 
      muxInD_5_15_port, muxInD_5_14_port, muxInD_5_13_port, muxInD_5_12_port, 
      muxInD_5_11_port, muxInD_5_10_port, muxInD_5_9_port, muxInD_5_8_port, 
      muxInD_5_7_port, muxInD_5_6_port, muxInD_5_5_port, muxInD_5_4_port, 
      muxInD_5_3_port, muxInD_5_2_port, muxInD_5_1_port, muxInD_5_0_port, 
      muxInD_4_31_port, muxInD_4_30_port, muxInD_4_29_port, muxInD_4_28_port, 
      muxInD_4_27_port, muxInD_4_26_port, muxInD_4_25_port, muxInD_4_24_port, 
      muxInD_4_23_port, muxInD_4_22_port, muxInD_4_21_port, muxInD_4_20_port, 
      muxInD_4_19_port, muxInD_4_18_port, muxInD_4_17_port, muxInD_4_16_port, 
      muxInD_4_15_port, muxInD_4_14_port, muxInD_4_13_port, muxInD_4_12_port, 
      muxInD_4_11_port, muxInD_4_10_port, muxInD_4_9_port, muxInD_4_8_port, 
      muxInD_4_7_port, muxInD_4_6_port, muxInD_4_5_port, muxInD_4_4_port, 
      muxInD_4_3_port, muxInD_4_2_port, muxInD_4_1_port, muxInD_4_0_port, 
      muxInD_3_31_port, muxInD_3_30_port, muxInD_3_29_port, muxInD_3_28_port, 
      muxInD_3_27_port, muxInD_3_26_port, muxInD_3_25_port, muxInD_3_24_port, 
      muxInD_3_23_port, muxInD_3_22_port, muxInD_3_21_port, muxInD_3_20_port, 
      muxInD_3_19_port, muxInD_3_18_port, muxInD_3_17_port, muxInD_3_16_port, 
      muxInD_3_15_port, muxInD_3_14_port, muxInD_3_13_port, muxInD_3_12_port, 
      muxInD_3_11_port, muxInD_3_10_port, muxInD_3_9_port, muxInD_3_8_port, 
      muxInD_3_7_port, muxInD_3_6_port, muxInD_3_5_port, muxInD_3_4_port, 
      muxInD_3_3_port, muxInD_3_2_port, muxInD_3_1_port, muxInD_3_0_port, 
      muxInD_2_31_port, muxInD_2_30_port, muxInD_2_29_port, muxInD_2_28_port, 
      muxInD_2_27_port, muxInD_2_26_port, muxInD_2_25_port, muxInD_2_24_port, 
      muxInD_2_23_port, muxInD_2_22_port, muxInD_2_21_port, muxInD_2_20_port, 
      muxInD_2_19_port, muxInD_2_18_port, muxInD_2_17_port, muxInD_2_16_port, 
      muxInD_2_15_port, muxInD_2_14_port, muxInD_2_13_port, muxInD_2_12_port, 
      muxInD_2_11_port, muxInD_2_10_port, muxInD_2_9_port, muxInD_2_8_port, 
      muxInD_2_7_port, muxInD_2_6_port, muxInD_2_5_port, muxInD_2_4_port, 
      muxInD_2_3_port, muxInD_2_2_port, muxInD_2_1_port, muxInD_2_0_port, 
      muxInD_1_31_port, muxInD_1_30_port, muxInD_1_29_port, muxInD_1_28_port, 
      muxInD_1_27_port, muxInD_1_26_port, muxInD_1_25_port, muxInD_1_24_port, 
      muxInD_1_23_port, muxInD_1_22_port, muxInD_1_21_port, muxInD_1_20_port, 
      muxInD_1_19_port, muxInD_1_18_port, muxInD_1_17_port, muxInD_1_16_port, 
      muxInD_1_15_port, muxInD_1_14_port, muxInD_1_13_port, muxInD_1_12_port, 
      muxInD_1_11_port, muxInD_1_10_port, muxInD_1_9_port, muxInD_1_8_port, 
      muxInD_1_7_port, muxInD_1_6_port, muxInD_1_5_port, muxInD_1_4_port, 
      muxInD_1_3_port, muxInD_1_2_port, muxInD_1_1_port, muxInD_1_0_port, 
      muxInD_0_31_port, muxInD_0_30_port, muxInD_0_29_port, muxInD_0_28_port, 
      muxInD_0_27_port, muxInD_0_26_port, muxInD_0_25_port, muxInD_0_24_port, 
      muxInD_0_23_port, muxInD_0_22_port, muxInD_0_21_port, muxInD_0_20_port, 
      muxInD_0_19_port, muxInD_0_18_port, muxInD_0_17_port, muxInD_0_16_port, 
      muxInD_0_15_port, muxInD_0_14_port, muxInD_0_13_port, muxInD_0_12_port, 
      muxInD_0_11_port, muxInD_0_10_port, muxInD_0_9_port, muxInD_0_8_port, 
      muxInD_0_7_port, muxInD_0_6_port, muxInD_0_5_port, muxInD_0_4_port, 
      muxInD_0_3_port, muxInD_0_2_port, muxInD_0_1_port, muxInD_0_0_port, 
      muxInC_7_31_port, muxInC_7_30_port, muxInC_7_29_port, muxInC_7_28_port, 
      muxInC_7_27_port, muxInC_7_26_port, muxInC_7_25_port, muxInC_7_24_port, 
      muxInC_7_23_port, muxInC_7_22_port, muxInC_7_21_port, muxInC_7_20_port, 
      muxInC_7_19_port, muxInC_7_18_port, muxInC_7_17_port, muxInC_7_16_port, 
      muxInC_7_15_port, muxInC_7_14_port, muxInC_7_13_port, muxInC_7_12_port, 
      muxInC_7_11_port, muxInC_7_10_port, muxInC_7_9_port, muxInC_7_8_port, 
      muxInC_7_7_port, muxInC_7_6_port, muxInC_7_5_port, muxInC_7_4_port, 
      muxInC_7_3_port, muxInC_7_2_port, muxInC_7_1_port, muxInC_7_0_port, 
      muxInC_6_31_port, muxInC_6_30_port, muxInC_6_29_port, muxInC_6_28_port, 
      muxInC_6_27_port, muxInC_6_26_port, muxInC_6_25_port, muxInC_6_24_port, 
      muxInC_6_23_port, muxInC_6_22_port, muxInC_6_21_port, muxInC_6_20_port, 
      muxInC_6_19_port, muxInC_6_18_port, muxInC_6_17_port, muxInC_6_16_port, 
      muxInC_6_15_port, muxInC_6_14_port, muxInC_6_13_port, muxInC_6_12_port, 
      muxInC_6_11_port, muxInC_6_10_port, muxInC_6_9_port, muxInC_6_8_port, 
      muxInC_6_7_port, muxInC_6_6_port, muxInC_6_5_port, muxInC_6_4_port, 
      muxInC_6_3_port, muxInC_6_2_port, muxInC_6_1_port, muxInC_6_0_port, 
      muxInC_5_31_port, muxInC_5_30_port, muxInC_5_29_port, muxInC_5_28_port, 
      muxInC_5_27_port, muxInC_5_26_port, muxInC_5_25_port, muxInC_5_24_port, 
      muxInC_5_23_port, muxInC_5_22_port, muxInC_5_21_port, muxInC_5_20_port, 
      muxInC_5_19_port, muxInC_5_18_port, muxInC_5_17_port, muxInC_5_16_port, 
      muxInC_5_15_port, muxInC_5_14_port, muxInC_5_13_port, muxInC_5_12_port, 
      muxInC_5_11_port, muxInC_5_10_port, muxInC_5_9_port, muxInC_5_8_port, 
      muxInC_5_7_port, muxInC_5_6_port, muxInC_5_5_port, muxInC_5_4_port, 
      muxInC_5_3_port, muxInC_5_2_port, muxInC_5_1_port, muxInC_5_0_port, 
      muxInC_4_31_port, muxInC_4_30_port, muxInC_4_29_port, muxInC_4_28_port, 
      muxInC_4_27_port, muxInC_4_26_port, muxInC_4_25_port, muxInC_4_24_port, 
      muxInC_4_23_port, muxInC_4_22_port, muxInC_4_21_port, muxInC_4_20_port, 
      muxInC_4_19_port, muxInC_4_18_port, muxInC_4_17_port, muxInC_4_16_port, 
      muxInC_4_15_port, muxInC_4_14_port, muxInC_4_13_port, muxInC_4_12_port, 
      muxInC_4_11_port, muxInC_4_10_port, muxInC_4_9_port, muxInC_4_8_port, 
      muxInC_4_7_port, muxInC_4_6_port, muxInC_4_5_port, muxInC_4_4_port, 
      muxInC_4_3_port, muxInC_4_2_port, muxInC_4_1_port, muxInC_4_0_port, 
      muxInC_3_31_port, muxInC_3_30_port, muxInC_3_29_port, muxInC_3_28_port, 
      muxInC_3_27_port, muxInC_3_26_port, muxInC_3_25_port, muxInC_3_24_port, 
      muxInC_3_23_port, muxInC_3_22_port, muxInC_3_21_port, muxInC_3_20_port, 
      muxInC_3_19_port, muxInC_3_18_port, muxInC_3_17_port, muxInC_3_16_port, 
      muxInC_3_15_port, muxInC_3_14_port, muxInC_3_13_port, muxInC_3_12_port, 
      muxInC_3_11_port, muxInC_3_10_port, muxInC_3_9_port, muxInC_3_8_port, 
      muxInC_3_7_port, muxInC_3_6_port, muxInC_3_5_port, muxInC_3_4_port, 
      muxInC_3_3_port, muxInC_3_2_port, muxInC_3_1_port, muxInC_3_0_port, 
      muxInC_2_31_port, muxInC_2_30_port, muxInC_2_29_port, muxInC_2_28_port, 
      muxInC_2_27_port, muxInC_2_26_port, muxInC_2_25_port, muxInC_2_24_port, 
      muxInC_2_23_port, muxInC_2_22_port, muxInC_2_21_port, muxInC_2_20_port, 
      muxInC_2_19_port, muxInC_2_18_port, muxInC_2_17_port, muxInC_2_16_port, 
      muxInC_2_15_port, muxInC_2_14_port, muxInC_2_13_port, muxInC_2_12_port, 
      muxInC_2_11_port, muxInC_2_10_port, muxInC_2_9_port, muxInC_2_8_port, 
      muxInC_2_7_port, muxInC_2_6_port, muxInC_2_5_port, muxInC_2_4_port, 
      muxInC_2_3_port, muxInC_2_2_port, muxInC_2_1_port, muxInC_2_0_port, 
      muxInC_1_31_port, muxInC_1_30_port, muxInC_1_29_port, muxInC_1_28_port, 
      muxInC_1_27_port, muxInC_1_26_port, muxInC_1_25_port, muxInC_1_24_port, 
      muxInC_1_23_port, muxInC_1_22_port, muxInC_1_21_port, muxInC_1_20_port, 
      muxInC_1_19_port, muxInC_1_18_port, muxInC_1_17_port, muxInC_1_16_port, 
      muxInC_1_15_port, muxInC_1_14_port, muxInC_1_13_port, muxInC_1_12_port, 
      muxInC_1_11_port, muxInC_1_10_port, muxInC_1_9_port, muxInC_1_8_port, 
      muxInC_1_7_port, muxInC_1_6_port, muxInC_1_5_port, muxInC_1_4_port, 
      muxInC_1_3_port, muxInC_1_2_port, muxInC_1_1_port, muxInC_1_0_port, 
      muxInC_0_31_port, muxInC_0_30_port, muxInC_0_29_port, muxInC_0_28_port, 
      muxInC_0_27_port, muxInC_0_26_port, muxInC_0_25_port, muxInC_0_24_port, 
      muxInC_0_23_port, muxInC_0_22_port, muxInC_0_21_port, muxInC_0_20_port, 
      muxInC_0_19_port, muxInC_0_18_port, muxInC_0_17_port, muxInC_0_16_port, 
      muxInC_0_15_port, muxInC_0_14_port, muxInC_0_13_port, muxInC_0_12_port, 
      muxInC_0_11_port, muxInC_0_10_port, muxInC_0_9_port, muxInC_0_8_port, 
      muxInC_0_7_port, muxInC_0_6_port, muxInC_0_5_port, muxInC_0_4_port, 
      muxInC_0_3_port, muxInC_0_2_port, muxInC_0_1_port, muxInC_0_0_port, 
      muxInB_7_31_port, muxInB_7_30_port, muxInB_7_29_port, muxInB_7_28_port, 
      muxInB_7_27_port, muxInB_7_26_port, muxInB_7_25_port, muxInB_7_24_port, 
      muxInB_7_23_port, muxInB_7_22_port, muxInB_7_21_port, muxInB_7_20_port, 
      muxInB_7_19_port, muxInB_7_18_port, muxInB_7_17_port, muxInB_7_16_port, 
      muxInB_7_15_port, muxInB_7_14_port, muxInB_7_13_port, muxInB_7_12_port, 
      muxInB_7_11_port, muxInB_7_10_port, muxInB_7_9_port, muxInB_7_8_port, 
      muxInB_7_7_port, muxInB_7_6_port, muxInB_7_5_port, muxInB_7_4_port, 
      muxInB_7_3_port, muxInB_7_2_port, muxInB_7_1_port, muxInB_7_0_port, 
      muxInB_6_31_port, muxInB_6_30_port, muxInB_6_29_port, muxInB_6_28_port, 
      muxInB_6_27_port, muxInB_6_26_port, muxInB_6_25_port, muxInB_6_24_port, 
      muxInB_6_23_port, muxInB_6_22_port, muxInB_6_21_port, muxInB_6_20_port, 
      muxInB_6_19_port, muxInB_6_18_port, muxInB_6_17_port, muxInB_6_16_port, 
      muxInB_6_15_port, muxInB_6_14_port, muxInB_6_13_port, muxInB_6_12_port, 
      muxInB_6_11_port, muxInB_6_10_port, muxInB_6_9_port, muxInB_6_8_port, 
      muxInB_6_7_port, muxInB_6_6_port, muxInB_6_5_port, muxInB_6_4_port, 
      muxInB_6_3_port, muxInB_6_2_port, muxInB_6_1_port, muxInB_6_0_port, 
      muxInB_5_31_port, muxInB_5_30_port, muxInB_5_29_port, muxInB_5_28_port, 
      muxInB_5_27_port, muxInB_5_26_port, muxInB_5_25_port, muxInB_5_24_port, 
      muxInB_5_23_port, muxInB_5_22_port, muxInB_5_21_port, muxInB_5_20_port, 
      muxInB_5_19_port, muxInB_5_18_port, muxInB_5_17_port, muxInB_5_16_port, 
      muxInB_5_15_port, muxInB_5_14_port, muxInB_5_13_port, muxInB_5_12_port, 
      muxInB_5_11_port, muxInB_5_10_port, muxInB_5_9_port, muxInB_5_8_port, 
      muxInB_5_7_port, muxInB_5_6_port, muxInB_5_5_port, muxInB_5_4_port, 
      muxInB_5_3_port, muxInB_5_2_port, muxInB_5_1_port, muxInB_5_0_port, 
      muxInB_4_31_port, muxInB_4_30_port, muxInB_4_29_port, muxInB_4_28_port, 
      muxInB_4_27_port, muxInB_4_26_port, muxInB_4_25_port, muxInB_4_24_port, 
      muxInB_4_23_port, muxInB_4_22_port, muxInB_4_21_port, muxInB_4_20_port, 
      muxInB_4_19_port, muxInB_4_18_port, muxInB_4_17_port, muxInB_4_16_port, 
      muxInB_4_15_port, muxInB_4_14_port, muxInB_4_13_port, muxInB_4_12_port, 
      muxInB_4_11_port, muxInB_4_10_port, muxInB_4_9_port, muxInB_4_8_port, 
      muxInB_4_7_port, muxInB_4_6_port, muxInB_4_5_port, muxInB_4_4_port, 
      muxInB_4_3_port, muxInB_4_2_port, muxInB_4_1_port, muxInB_4_0_port, 
      muxInB_3_31_port, muxInB_3_30_port, muxInB_3_29_port, muxInB_3_28_port, 
      muxInB_3_27_port, muxInB_3_26_port, muxInB_3_25_port, muxInB_3_24_port, 
      muxInB_3_23_port, muxInB_3_22_port, muxInB_3_21_port, muxInB_3_20_port, 
      muxInB_3_19_port, muxInB_3_18_port, muxInB_3_17_port, muxInB_3_16_port, 
      muxInB_3_15_port, muxInB_3_14_port, muxInB_3_13_port, muxInB_3_12_port, 
      muxInB_3_11_port, muxInB_3_10_port, muxInB_3_9_port, muxInB_3_8_port, 
      muxInB_3_7_port, muxInB_3_6_port, muxInB_3_5_port, muxInB_3_4_port, 
      muxInB_3_3_port, muxInB_3_2_port, muxInB_3_1_port, muxInB_3_0_port, 
      muxInB_2_31_port, muxInB_2_30_port, muxInB_2_29_port, muxInB_2_28_port, 
      muxInB_2_27_port, muxInB_2_26_port, muxInB_2_25_port, muxInB_2_24_port, 
      muxInB_2_23_port, muxInB_2_22_port, muxInB_2_21_port, muxInB_2_20_port, 
      muxInB_2_19_port, muxInB_2_18_port, muxInB_2_17_port, muxInB_2_16_port, 
      muxInB_2_15_port, muxInB_2_14_port, muxInB_2_13_port, muxInB_2_12_port, 
      muxInB_2_11_port, muxInB_2_10_port, muxInB_2_9_port, muxInB_2_8_port, 
      muxInB_2_7_port, muxInB_2_6_port, muxInB_2_5_port, muxInB_2_4_port, 
      muxInB_2_3_port, muxInB_2_2_port, muxInB_2_1_port, muxInB_2_0_port, 
      muxInB_1_31_port, muxInB_1_30_port, muxInB_1_29_port, muxInB_1_28_port, 
      muxInB_1_27_port, muxInB_1_26_port, muxInB_1_25_port, muxInB_1_24_port, 
      muxInB_1_23_port, muxInB_1_22_port, muxInB_1_21_port, muxInB_1_20_port, 
      muxInB_1_19_port, muxInB_1_18_port, muxInB_1_17_port, muxInB_1_16_port, 
      muxInB_1_15_port, muxInB_1_14_port, muxInB_1_13_port, muxInB_1_12_port, 
      muxInB_1_11_port, muxInB_1_10_port, muxInB_1_9_port, muxInB_1_8_port, 
      muxInB_1_7_port, muxInB_1_6_port, muxInB_1_5_port, muxInB_1_4_port, 
      muxInB_1_3_port, muxInB_1_2_port, muxInB_1_1_port, muxInB_1_0_port, 
      muxInB_0_31_port, muxInB_0_30_port, muxInB_0_29_port, muxInB_0_28_port, 
      muxInB_0_27_port, muxInB_0_26_port, muxInB_0_25_port, muxInB_0_24_port, 
      muxInB_0_23_port, muxInB_0_22_port, muxInB_0_21_port, muxInB_0_20_port, 
      muxInB_0_19_port, muxInB_0_18_port, muxInB_0_17_port, muxInB_0_16_port, 
      muxInB_0_15_port, muxInB_0_14_port, muxInB_0_13_port, muxInB_0_12_port, 
      muxInB_0_11_port, muxInB_0_10_port, muxInB_0_9_port, muxInB_0_8_port, 
      muxInB_0_7_port, muxInB_0_6_port, muxInB_0_5_port, muxInB_0_4_port, 
      muxInB_0_3_port, muxInB_0_2_port, muxInB_0_1_port, muxInB_0_0_port, 
      outmux_7_31_port, outmux_7_30_port, outmux_7_29_port, outmux_7_28_port, 
      outmux_7_27_port, outmux_7_26_port, outmux_7_25_port, outmux_7_24_port, 
      outmux_7_23_port, outmux_7_22_port, outmux_7_21_port, outmux_7_20_port, 
      outmux_7_19_port, outmux_7_18_port, outmux_7_17_port, outmux_7_16_port, 
      outmux_7_15_port, outmux_7_14_port, outmux_7_13_port, outmux_7_12_port, 
      outmux_7_11_port, outmux_7_10_port, outmux_7_9_port, outmux_7_8_port, 
      outmux_7_7_port, outmux_7_6_port, outmux_7_5_port, outmux_7_4_port, 
      outmux_7_3_port, outmux_7_2_port, outmux_7_1_port, outmux_7_0_port, 
      outmux_6_31_port, outmux_6_30_port, outmux_6_29_port, outmux_6_28_port, 
      outmux_6_27_port, outmux_6_26_port, outmux_6_25_port, outmux_6_24_port, 
      outmux_6_23_port, outmux_6_22_port, outmux_6_21_port, outmux_6_20_port, 
      outmux_6_19_port, outmux_6_18_port, outmux_6_17_port, outmux_6_16_port, 
      outmux_6_15_port, outmux_6_14_port, outmux_6_13_port, outmux_6_12_port, 
      outmux_6_11_port, outmux_6_10_port, outmux_6_9_port, outmux_6_8_port, 
      outmux_6_7_port, outmux_6_6_port, outmux_6_5_port, outmux_6_4_port, 
      outmux_6_3_port, outmux_6_2_port, outmux_6_1_port, outmux_6_0_port, 
      outmux_5_31_port, outmux_5_30_port, outmux_5_29_port, outmux_5_28_port, 
      outmux_5_27_port, outmux_5_26_port, outmux_5_25_port, outmux_5_24_port, 
      outmux_5_23_port, outmux_5_22_port, outmux_5_21_port, outmux_5_20_port, 
      outmux_5_19_port, outmux_5_18_port, outmux_5_17_port, outmux_5_16_port, 
      outmux_5_15_port, outmux_5_14_port, outmux_5_13_port, outmux_5_12_port, 
      outmux_5_11_port, outmux_5_10_port, outmux_5_9_port, outmux_5_8_port, 
      outmux_5_7_port, outmux_5_6_port, outmux_5_5_port, outmux_5_4_port, 
      outmux_5_3_port, outmux_5_2_port, outmux_5_1_port, outmux_5_0_port, 
      outmux_4_31_port, outmux_4_30_port, outmux_4_29_port, outmux_4_28_port, 
      outmux_4_27_port, outmux_4_26_port, outmux_4_25_port, outmux_4_24_port, 
      outmux_4_23_port, outmux_4_22_port, outmux_4_21_port, outmux_4_20_port, 
      outmux_4_19_port, outmux_4_18_port, outmux_4_17_port, outmux_4_16_port, 
      outmux_4_15_port, outmux_4_14_port, outmux_4_13_port, outmux_4_12_port, 
      outmux_4_11_port, outmux_4_10_port, outmux_4_9_port, outmux_4_8_port, 
      outmux_4_7_port, outmux_4_6_port, outmux_4_5_port, outmux_4_4_port, 
      outmux_4_3_port, outmux_4_2_port, outmux_4_1_port, outmux_4_0_port, 
      outmux_3_31_port, outmux_3_30_port, outmux_3_29_port, outmux_3_28_port, 
      outmux_3_27_port, outmux_3_26_port, outmux_3_25_port, outmux_3_24_port, 
      outmux_3_23_port, outmux_3_22_port, outmux_3_21_port, outmux_3_20_port, 
      outmux_3_19_port, outmux_3_18_port, outmux_3_17_port, outmux_3_16_port, 
      outmux_3_15_port, outmux_3_14_port, outmux_3_13_port, outmux_3_12_port, 
      outmux_3_11_port, outmux_3_10_port, outmux_3_9_port, outmux_3_8_port, 
      outmux_3_7_port, outmux_3_6_port, outmux_3_5_port, outmux_3_4_port, 
      outmux_3_3_port, outmux_3_2_port, outmux_3_1_port, outmux_3_0_port, 
      outmux_2_31_port, outmux_2_30_port, outmux_2_29_port, outmux_2_28_port, 
      outmux_2_27_port, outmux_2_26_port, outmux_2_25_port, outmux_2_24_port, 
      outmux_2_23_port, outmux_2_22_port, outmux_2_21_port, outmux_2_20_port, 
      outmux_2_19_port, outmux_2_18_port, outmux_2_17_port, outmux_2_16_port, 
      outmux_2_15_port, outmux_2_14_port, outmux_2_13_port, outmux_2_12_port, 
      outmux_2_11_port, outmux_2_10_port, outmux_2_9_port, outmux_2_8_port, 
      outmux_2_7_port, outmux_2_6_port, outmux_2_5_port, outmux_2_4_port, 
      outmux_2_3_port, outmux_2_2_port, outmux_2_1_port, outmux_2_0_port, 
      outmux_1_31_port, outmux_1_30_port, outmux_1_29_port, outmux_1_28_port, 
      outmux_1_27_port, outmux_1_26_port, outmux_1_25_port, outmux_1_24_port, 
      outmux_1_23_port, outmux_1_22_port, outmux_1_21_port, outmux_1_20_port, 
      outmux_1_19_port, outmux_1_18_port, outmux_1_17_port, outmux_1_16_port, 
      outmux_1_15_port, outmux_1_14_port, outmux_1_13_port, outmux_1_12_port, 
      outmux_1_11_port, outmux_1_10_port, outmux_1_9_port, outmux_1_8_port, 
      outmux_1_7_port, outmux_1_6_port, outmux_1_5_port, outmux_1_4_port, 
      outmux_1_3_port, outmux_1_2_port, outmux_1_1_port, outmux_1_0_port, 
      outmux_0_31_port, outmux_0_30_port, outmux_0_29_port, outmux_0_28_port, 
      outmux_0_27_port, outmux_0_26_port, outmux_0_25_port, outmux_0_24_port, 
      outmux_0_23_port, outmux_0_22_port, outmux_0_21_port, outmux_0_20_port, 
      outmux_0_19_port, outmux_0_18_port, outmux_0_17_port, outmux_0_16_port, 
      outmux_0_15_port, outmux_0_14_port, outmux_0_13_port, outmux_0_12_port, 
      outmux_0_11_port, outmux_0_10_port, outmux_0_9_port, outmux_0_8_port, 
      outmux_0_7_port, outmux_0_6_port, outmux_0_5_port, outmux_0_4_port, 
      outmux_0_3_port, outmux_0_2_port, outmux_0_1_port, outmux_0_0_port, 
      cout_array_5_31_port, cout_array_5_30_port, cout_array_5_29_port, 
      cout_array_5_28_port, cout_array_5_27_port, cout_array_5_26_port, 
      cout_array_5_25_port, cout_array_5_24_port, cout_array_5_23_port, 
      cout_array_5_22_port, cout_array_5_21_port, cout_array_5_20_port, 
      cout_array_5_19_port, cout_array_5_18_port, cout_array_5_17_port, 
      cout_array_5_16_port, cout_array_5_15_port, cout_array_5_14_port, 
      cout_array_5_13_port, cout_array_5_12_port, cout_array_5_11_port, 
      cout_array_5_10_port, cout_array_5_9_port, cout_array_5_8_port, 
      cout_array_5_7_port, cout_array_5_6_port, cout_array_5_5_port, 
      cout_array_5_4_port, cout_array_5_3_port, cout_array_5_2_port, 
      cout_array_5_1_port, cout_array_5_0_port, cout_array_4_31_port, 
      cout_array_4_30_port, cout_array_4_29_port, cout_array_4_28_port, 
      cout_array_4_27_port, cout_array_4_26_port, cout_array_4_25_port, 
      cout_array_4_24_port, cout_array_4_23_port, cout_array_4_22_port, 
      cout_array_4_21_port, cout_array_4_20_port, cout_array_4_19_port, 
      cout_array_4_18_port, cout_array_4_17_port, cout_array_4_16_port, 
      cout_array_4_15_port, cout_array_4_14_port, cout_array_4_13_port, 
      cout_array_4_12_port, cout_array_4_11_port, cout_array_4_10_port, 
      cout_array_4_9_port, cout_array_4_8_port, cout_array_4_7_port, 
      cout_array_4_6_port, cout_array_4_5_port, cout_array_4_4_port, 
      cout_array_4_3_port, cout_array_4_2_port, cout_array_4_1_port, 
      cout_array_4_0_port, cout_array_3_31_port, cout_array_3_30_port, 
      cout_array_3_29_port, cout_array_3_28_port, cout_array_3_27_port, 
      cout_array_3_26_port, cout_array_3_25_port, cout_array_3_24_port, 
      cout_array_3_23_port, cout_array_3_22_port, cout_array_3_21_port, 
      cout_array_3_20_port, cout_array_3_19_port, cout_array_3_18_port, 
      cout_array_3_17_port, cout_array_3_16_port, cout_array_3_15_port, 
      cout_array_3_14_port, cout_array_3_13_port, cout_array_3_12_port, 
      cout_array_3_11_port, cout_array_3_10_port, cout_array_3_9_port, 
      cout_array_3_8_port, cout_array_3_7_port, cout_array_3_6_port, 
      cout_array_3_5_port, cout_array_3_4_port, cout_array_3_3_port, 
      cout_array_3_2_port, cout_array_3_1_port, cout_array_3_0_port, 
      cout_array_2_31_port, cout_array_2_30_port, cout_array_2_29_port, 
      cout_array_2_28_port, cout_array_2_27_port, cout_array_2_26_port, 
      cout_array_2_25_port, cout_array_2_24_port, cout_array_2_23_port, 
      cout_array_2_22_port, cout_array_2_21_port, cout_array_2_20_port, 
      cout_array_2_19_port, cout_array_2_18_port, cout_array_2_17_port, 
      cout_array_2_16_port, cout_array_2_15_port, cout_array_2_14_port, 
      cout_array_2_13_port, cout_array_2_12_port, cout_array_2_11_port, 
      cout_array_2_10_port, cout_array_2_9_port, cout_array_2_8_port, 
      cout_array_2_7_port, cout_array_2_6_port, cout_array_2_5_port, 
      cout_array_2_4_port, cout_array_2_3_port, cout_array_2_2_port, 
      cout_array_2_1_port, cout_array_2_0_port, cout_array_1_31_port, 
      cout_array_1_30_port, cout_array_1_29_port, cout_array_1_28_port, 
      cout_array_1_27_port, cout_array_1_26_port, cout_array_1_25_port, 
      cout_array_1_24_port, cout_array_1_23_port, cout_array_1_22_port, 
      cout_array_1_21_port, cout_array_1_20_port, cout_array_1_19_port, 
      cout_array_1_18_port, cout_array_1_17_port, cout_array_1_16_port, 
      cout_array_1_15_port, cout_array_1_14_port, cout_array_1_13_port, 
      cout_array_1_12_port, cout_array_1_11_port, cout_array_1_10_port, 
      cout_array_1_9_port, cout_array_1_8_port, cout_array_1_7_port, 
      cout_array_1_6_port, cout_array_1_5_port, cout_array_1_4_port, 
      cout_array_1_3_port, cout_array_1_2_port, cout_array_1_1_port, 
      cout_array_1_0_port, cout_array_0_31_port, cout_array_0_30_port, 
      cout_array_0_29_port, cout_array_0_28_port, cout_array_0_27_port, 
      cout_array_0_26_port, cout_array_0_25_port, cout_array_0_24_port, 
      cout_array_0_23_port, cout_array_0_22_port, cout_array_0_21_port, 
      cout_array_0_20_port, cout_array_0_19_port, cout_array_0_18_port, 
      cout_array_0_17_port, cout_array_0_16_port, cout_array_0_15_port, 
      cout_array_0_14_port, cout_array_0_13_port, cout_array_0_12_port, 
      cout_array_0_11_port, cout_array_0_10_port, cout_array_0_9_port, 
      cout_array_0_8_port, cout_array_0_7_port, cout_array_0_6_port, 
      cout_array_0_5_port, cout_array_0_4_port, cout_array_0_3_port, 
      cout_array_0_2_port, cout_array_0_1_port, cout_array_0_0_port, 
      sum_array_5_31_port, sum_array_5_30_port, sum_array_5_29_port, 
      sum_array_5_28_port, sum_array_5_27_port, sum_array_5_26_port, 
      sum_array_5_25_port, sum_array_5_24_port, sum_array_5_23_port, 
      sum_array_5_22_port, sum_array_5_21_port, sum_array_5_20_port, 
      sum_array_5_19_port, sum_array_5_18_port, sum_array_5_17_port, 
      sum_array_5_16_port, sum_array_5_15_port, sum_array_5_14_port, 
      sum_array_5_13_port, sum_array_5_12_port, sum_array_5_11_port, 
      sum_array_5_10_port, sum_array_5_9_port, sum_array_5_8_port, 
      sum_array_5_7_port, sum_array_5_6_port, sum_array_5_5_port, 
      sum_array_5_4_port, sum_array_5_3_port, sum_array_5_2_port, 
      sum_array_5_1_port, sum_array_5_0_port, sum_array_4_31_port, 
      sum_array_4_30_port, sum_array_4_29_port, sum_array_4_28_port, 
      sum_array_4_27_port, sum_array_4_26_port, sum_array_4_25_port, 
      sum_array_4_24_port, sum_array_4_23_port, sum_array_4_22_port, 
      sum_array_4_21_port, sum_array_4_20_port, sum_array_4_19_port, 
      sum_array_4_18_port, sum_array_4_17_port, sum_array_4_16_port, 
      sum_array_4_15_port, sum_array_4_14_port, sum_array_4_13_port, 
      sum_array_4_12_port, sum_array_4_11_port, sum_array_4_10_port, 
      sum_array_4_9_port, sum_array_4_8_port, sum_array_4_7_port, 
      sum_array_4_6_port, sum_array_4_5_port, sum_array_4_4_port, 
      sum_array_4_3_port, sum_array_4_2_port, sum_array_4_1_port, 
      sum_array_4_0_port, sum_array_3_31_port, sum_array_3_30_port, 
      sum_array_3_29_port, sum_array_3_28_port, sum_array_3_27_port, 
      sum_array_3_26_port, sum_array_3_25_port, sum_array_3_24_port, 
      sum_array_3_23_port, sum_array_3_22_port, sum_array_3_21_port, 
      sum_array_3_20_port, sum_array_3_19_port, sum_array_3_18_port, 
      sum_array_3_17_port, sum_array_3_16_port, sum_array_3_15_port, 
      sum_array_3_14_port, sum_array_3_13_port, sum_array_3_12_port, 
      sum_array_3_11_port, sum_array_3_10_port, sum_array_3_9_port, 
      sum_array_3_8_port, sum_array_3_7_port, sum_array_3_6_port, 
      sum_array_3_5_port, sum_array_3_4_port, sum_array_3_3_port, 
      sum_array_3_2_port, sum_array_3_1_port, sum_array_3_0_port, 
      sum_array_2_31_port, sum_array_2_30_port, sum_array_2_29_port, 
      sum_array_2_28_port, sum_array_2_27_port, sum_array_2_26_port, 
      sum_array_2_25_port, sum_array_2_24_port, sum_array_2_23_port, 
      sum_array_2_22_port, sum_array_2_21_port, sum_array_2_20_port, 
      sum_array_2_19_port, sum_array_2_18_port, sum_array_2_17_port, 
      sum_array_2_16_port, sum_array_2_15_port, sum_array_2_14_port, 
      sum_array_2_13_port, sum_array_2_12_port, sum_array_2_11_port, 
      sum_array_2_10_port, sum_array_2_9_port, sum_array_2_8_port, 
      sum_array_2_7_port, sum_array_2_6_port, sum_array_2_5_port, 
      sum_array_2_4_port, sum_array_2_3_port, sum_array_2_2_port, 
      sum_array_2_1_port, sum_array_2_0_port, sum_array_1_31_port, 
      sum_array_1_30_port, sum_array_1_29_port, sum_array_1_28_port, 
      sum_array_1_27_port, sum_array_1_26_port, sum_array_1_25_port, 
      sum_array_1_24_port, sum_array_1_23_port, sum_array_1_22_port, 
      sum_array_1_21_port, sum_array_1_20_port, sum_array_1_19_port, 
      sum_array_1_18_port, sum_array_1_17_port, sum_array_1_16_port, 
      sum_array_1_15_port, sum_array_1_14_port, sum_array_1_13_port, 
      sum_array_1_12_port, sum_array_1_11_port, sum_array_1_10_port, 
      sum_array_1_9_port, sum_array_1_8_port, sum_array_1_7_port, 
      sum_array_1_6_port, sum_array_1_5_port, sum_array_1_4_port, 
      sum_array_1_3_port, sum_array_1_2_port, sum_array_1_1_port, 
      sum_array_1_0_port, sum_array_0_31_port, sum_array_0_30_port, 
      sum_array_0_29_port, sum_array_0_28_port, sum_array_0_27_port, 
      sum_array_0_26_port, sum_array_0_25_port, sum_array_0_24_port, 
      sum_array_0_23_port, sum_array_0_22_port, sum_array_0_21_port, 
      sum_array_0_20_port, sum_array_0_19_port, sum_array_0_18_port, 
      sum_array_0_17_port, sum_array_0_16_port, sum_array_0_15_port, 
      sum_array_0_14_port, sum_array_0_13_port, sum_array_0_12_port, 
      sum_array_0_11_port, sum_array_0_10_port, sum_array_0_9_port, 
      sum_array_0_8_port, sum_array_0_7_port, sum_array_0_6_port, 
      sum_array_0_5_port, sum_array_0_4_port, sum_array_0_3_port, 
      sum_array_0_2_port, sum_array_0_1_port, sum_array_0_0_port, net6197, n1, 
      n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, 
      n18, n19, n20, n21, n22, n23, n24, n25, net29623, net29624, net29625, 
      net29626, net29627, net29628, net29629, net29630, net29631, net29632, 
      net29633, net29634, net29635, net29636, net29637, net29638, net29639, 
      net29640, net29641, net29642, net29643, net29644, net29645, net29646, 
      net29647, net29648, net29649, net29650, net29651, net29652, net29653, 
      net29654, net29655, net29656, net29657, net29658, net29659, net29660, 
      net29661, net29662, net29663, net29664, net29665, net29666, net29667, 
      net29668, net29669, net29670, net29671, net29672, net29673, net29674, 
      net29675, net29676, net29677, net29678, net29679, net29680, net29681, 
      net29682, net29683, net29684, net29685, net29686, net29687, net29688, 
      net29689, net29690, net29691, net29692, net29693, net29694, net29695, 
      net29696, net29697, net29698, net29699, net29700, net29701, net29702, 
      net29703, net29704, net29705, net29706, net29707, net29708, net29709, 
      net29710, net29711, net29712, net29713, net29714, net29715, net29716, 
      net29717, net29718, net29719, net29720, net29721, net29722, net29723, 
      net29724, net29725, net29726, net29727, net29728, net29729, net29730, 
      net29731, net29732, net29733, net29734, net29735, net29736, net29737, 
      net29738, net29739, net29740, net29741, net29742, net29743, net29744, 
      net29745, net29746, net29747, net29748, net29749, net29750, net29751, 
      net29752, net29753, net29754, net29755, net29756, net29757, net29758, 
      net29759, net29760, net29761, net29762, net29763, net29764, net29765, 
      net29766, net29767, net29768, net29769, net29770, net29771, net29772, 
      net29773, net29774, net29775, net29776, net29777, net29778, net29779, 
      net29780, net29781, net29782, net29783, net29784, net29785, net29786, 
      net29787, net29788, net29789, net29790, net29791, net29792, net29793, 
      net29794, net29795, net29796, net29797, net29798, net29799, net29800, 
      net29801, net29802, net29803, net29804, net29805, net29806, net29807, 
      net29808, net29809, net29810, net29811, net29812, net29813, net29814, 
      net29815, net29816, net29817, net29818, net29819, net29820, net29821, 
      net29822, net29823, net29824, net29825, net29826, net29827, net29828, 
      net29829, net29830, net29831, net29832, net29833, net29834, net29835, 
      net29836, net29837, net29838, net29839, net29840, net29841, net29842, 
      net29843, net29844, net29845, net29846, net29847, net29848, net29849, 
      net29850, net29851, net29852, net29853, net29854, net29855, net29856, 
      net29857, net29858, net29859, net29860, net29861, net29862, net29863, 
      net29864, net29865, net29866, net29867, net29868 : std_logic;

begin
   
   X_Logic0_port <= '0';
   SHIFTERS_0 : shift_mul_N16_S0 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(31) => muxInB_0_31_port, B(30) => muxInB_0_30_port
                           , B(29) => muxInB_0_29_port, B(28) => 
                           muxInB_0_28_port, B(27) => muxInB_0_27_port, B(26) 
                           => muxInB_0_26_port, B(25) => muxInB_0_25_port, 
                           B(24) => muxInB_0_24_port, B(23) => muxInB_0_23_port
                           , B(22) => muxInB_0_22_port, B(21) => 
                           muxInB_0_21_port, B(20) => muxInB_0_20_port, B(19) 
                           => muxInB_0_19_port, B(18) => muxInB_0_18_port, 
                           B(17) => muxInB_0_17_port, B(16) => muxInB_0_16_port
                           , B(15) => muxInB_0_15_port, B(14) => 
                           muxInB_0_14_port, B(13) => muxInB_0_13_port, B(12) 
                           => muxInB_0_12_port, B(11) => muxInB_0_11_port, 
                           B(10) => muxInB_0_10_port, B(9) => muxInB_0_9_port, 
                           B(8) => muxInB_0_8_port, B(7) => muxInB_0_7_port, 
                           B(6) => muxInB_0_6_port, B(5) => muxInB_0_5_port, 
                           B(4) => muxInB_0_4_port, B(3) => muxInB_0_3_port, 
                           B(2) => muxInB_0_2_port, B(1) => muxInB_0_1_port, 
                           B(0) => muxInB_0_0_port, C(31) => muxInC_0_31_port, 
                           C(30) => muxInC_0_30_port, C(29) => muxInC_0_29_port
                           , C(28) => muxInC_0_28_port, C(27) => 
                           muxInC_0_27_port, C(26) => muxInC_0_26_port, C(25) 
                           => muxInC_0_25_port, C(24) => muxInC_0_24_port, 
                           C(23) => muxInC_0_23_port, C(22) => muxInC_0_22_port
                           , C(21) => muxInC_0_21_port, C(20) => 
                           muxInC_0_20_port, C(19) => muxInC_0_19_port, C(18) 
                           => muxInC_0_18_port, C(17) => muxInC_0_17_port, 
                           C(16) => muxInC_0_16_port, C(15) => muxInC_0_15_port
                           , C(14) => muxInC_0_14_port, C(13) => 
                           muxInC_0_13_port, C(12) => muxInC_0_12_port, C(11) 
                           => muxInC_0_11_port, C(10) => muxInC_0_10_port, C(9)
                           => muxInC_0_9_port, C(8) => muxInC_0_8_port, C(7) =>
                           muxInC_0_7_port, C(6) => muxInC_0_6_port, C(5) => 
                           muxInC_0_5_port, C(4) => muxInC_0_4_port, C(3) => 
                           muxInC_0_3_port, C(2) => muxInC_0_2_port, C(1) => 
                           muxInC_0_1_port, C(0) => muxInC_0_0_port, D(31) => 
                           muxInD_0_31_port, D(30) => muxInD_0_30_port, D(29) 
                           => muxInD_0_29_port, D(28) => muxInD_0_28_port, 
                           D(27) => muxInD_0_27_port, D(26) => muxInD_0_26_port
                           , D(25) => muxInD_0_25_port, D(24) => 
                           muxInD_0_24_port, D(23) => muxInD_0_23_port, D(22) 
                           => muxInD_0_22_port, D(21) => muxInD_0_21_port, 
                           D(20) => muxInD_0_20_port, D(19) => muxInD_0_19_port
                           , D(18) => muxInD_0_18_port, D(17) => 
                           muxInD_0_17_port, D(16) => muxInD_0_16_port, D(15) 
                           => muxInD_0_15_port, D(14) => muxInD_0_14_port, 
                           D(13) => muxInD_0_13_port, D(12) => muxInD_0_12_port
                           , D(11) => muxInD_0_11_port, D(10) => 
                           muxInD_0_10_port, D(9) => muxInD_0_9_port, D(8) => 
                           muxInD_0_8_port, D(7) => muxInD_0_7_port, D(6) => 
                           muxInD_0_6_port, D(5) => muxInD_0_5_port, D(4) => 
                           muxInD_0_4_port, D(3) => muxInD_0_3_port, D(2) => 
                           muxInD_0_2_port, D(1) => muxInD_0_1_port, D(0) => 
                           net29867, E(31) => muxInE_0_31_port, E(30) => 
                           muxInE_0_30_port, E(29) => muxInE_0_29_port, E(28) 
                           => muxInE_0_28_port, E(27) => muxInE_0_27_port, 
                           E(26) => muxInE_0_26_port, E(25) => muxInE_0_25_port
                           , E(24) => muxInE_0_24_port, E(23) => 
                           muxInE_0_23_port, E(22) => muxInE_0_22_port, E(21) 
                           => muxInE_0_21_port, E(20) => muxInE_0_20_port, 
                           E(19) => muxInE_0_19_port, E(18) => muxInE_0_18_port
                           , E(17) => muxInE_0_17_port, E(16) => 
                           muxInE_0_16_port, E(15) => muxInE_0_15_port, E(14) 
                           => muxInE_0_14_port, E(13) => muxInE_0_13_port, 
                           E(12) => muxInE_0_12_port, E(11) => muxInE_0_11_port
                           , E(10) => muxInE_0_10_port, E(9) => muxInE_0_9_port
                           , E(8) => muxInE_0_8_port, E(7) => muxInE_0_7_port, 
                           E(6) => muxInE_0_6_port, E(5) => muxInE_0_5_port, 
                           E(4) => muxInE_0_4_port, E(3) => muxInE_0_3_port, 
                           E(2) => muxInE_0_2_port, E(1) => muxInE_0_1_port, 
                           E(0) => net29868);
   SHIFTERS_1 : shift_mul_N16_S2 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(31) => muxInB_1_31_port, B(30) => muxInB_1_30_port
                           , B(29) => muxInB_1_29_port, B(28) => 
                           muxInB_1_28_port, B(27) => muxInB_1_27_port, B(26) 
                           => muxInB_1_26_port, B(25) => muxInB_1_25_port, 
                           B(24) => muxInB_1_24_port, B(23) => muxInB_1_23_port
                           , B(22) => muxInB_1_22_port, B(21) => 
                           muxInB_1_21_port, B(20) => muxInB_1_20_port, B(19) 
                           => muxInB_1_19_port, B(18) => muxInB_1_18_port, 
                           B(17) => muxInB_1_17_port, B(16) => muxInB_1_16_port
                           , B(15) => muxInB_1_15_port, B(14) => 
                           muxInB_1_14_port, B(13) => muxInB_1_13_port, B(12) 
                           => muxInB_1_12_port, B(11) => muxInB_1_11_port, 
                           B(10) => muxInB_1_10_port, B(9) => muxInB_1_9_port, 
                           B(8) => muxInB_1_8_port, B(7) => muxInB_1_7_port, 
                           B(6) => muxInB_1_6_port, B(5) => muxInB_1_5_port, 
                           B(4) => muxInB_1_4_port, B(3) => muxInB_1_3_port, 
                           B(2) => muxInB_1_2_port, B(1) => net29857, B(0) => 
                           net29858, C(31) => muxInC_1_31_port, C(30) => 
                           muxInC_1_30_port, C(29) => muxInC_1_29_port, C(28) 
                           => muxInC_1_28_port, C(27) => muxInC_1_27_port, 
                           C(26) => muxInC_1_26_port, C(25) => muxInC_1_25_port
                           , C(24) => muxInC_1_24_port, C(23) => 
                           muxInC_1_23_port, C(22) => muxInC_1_22_port, C(21) 
                           => muxInC_1_21_port, C(20) => muxInC_1_20_port, 
                           C(19) => muxInC_1_19_port, C(18) => muxInC_1_18_port
                           , C(17) => muxInC_1_17_port, C(16) => 
                           muxInC_1_16_port, C(15) => muxInC_1_15_port, C(14) 
                           => muxInC_1_14_port, C(13) => muxInC_1_13_port, 
                           C(12) => muxInC_1_12_port, C(11) => muxInC_1_11_port
                           , C(10) => muxInC_1_10_port, C(9) => muxInC_1_9_port
                           , C(8) => muxInC_1_8_port, C(7) => muxInC_1_7_port, 
                           C(6) => muxInC_1_6_port, C(5) => muxInC_1_5_port, 
                           C(4) => muxInC_1_4_port, C(3) => muxInC_1_3_port, 
                           C(2) => muxInC_1_2_port, C(1) => net29859, C(0) => 
                           net29860, D(31) => muxInD_1_31_port, D(30) => 
                           muxInD_1_30_port, D(29) => muxInD_1_29_port, D(28) 
                           => muxInD_1_28_port, D(27) => muxInD_1_27_port, 
                           D(26) => muxInD_1_26_port, D(25) => muxInD_1_25_port
                           , D(24) => muxInD_1_24_port, D(23) => 
                           muxInD_1_23_port, D(22) => muxInD_1_22_port, D(21) 
                           => muxInD_1_21_port, D(20) => muxInD_1_20_port, 
                           D(19) => muxInD_1_19_port, D(18) => muxInD_1_18_port
                           , D(17) => muxInD_1_17_port, D(16) => 
                           muxInD_1_16_port, D(15) => muxInD_1_15_port, D(14) 
                           => muxInD_1_14_port, D(13) => muxInD_1_13_port, 
                           D(12) => muxInD_1_12_port, D(11) => muxInD_1_11_port
                           , D(10) => muxInD_1_10_port, D(9) => muxInD_1_9_port
                           , D(8) => muxInD_1_8_port, D(7) => muxInD_1_7_port, 
                           D(6) => muxInD_1_6_port, D(5) => muxInD_1_5_port, 
                           D(4) => muxInD_1_4_port, D(3) => muxInD_1_3_port, 
                           D(2) => net29861, D(1) => net29862, D(0) => net29863
                           , E(31) => muxInE_1_31_port, E(30) => 
                           muxInE_1_30_port, E(29) => muxInE_1_29_port, E(28) 
                           => muxInE_1_28_port, E(27) => muxInE_1_27_port, 
                           E(26) => muxInE_1_26_port, E(25) => muxInE_1_25_port
                           , E(24) => muxInE_1_24_port, E(23) => 
                           muxInE_1_23_port, E(22) => muxInE_1_22_port, E(21) 
                           => muxInE_1_21_port, E(20) => muxInE_1_20_port, 
                           E(19) => muxInE_1_19_port, E(18) => muxInE_1_18_port
                           , E(17) => muxInE_1_17_port, E(16) => 
                           muxInE_1_16_port, E(15) => muxInE_1_15_port, E(14) 
                           => muxInE_1_14_port, E(13) => muxInE_1_13_port, 
                           E(12) => muxInE_1_12_port, E(11) => muxInE_1_11_port
                           , E(10) => muxInE_1_10_port, E(9) => muxInE_1_9_port
                           , E(8) => muxInE_1_8_port, E(7) => muxInE_1_7_port, 
                           E(6) => muxInE_1_6_port, E(5) => muxInE_1_5_port, 
                           E(4) => muxInE_1_4_port, E(3) => muxInE_1_3_port, 
                           E(2) => net29864, E(1) => net29865, E(0) => net29866
                           );
   SHIFTERS_2 : shift_mul_N16_S4 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => n23, A(10) 
                           => A(10), A(9) => A(9), A(8) => A(8), A(7) => A(7), 
                           A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3) => 
                           A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(31) => muxInB_2_31_port, B(30) => muxInB_2_30_port
                           , B(29) => muxInB_2_29_port, B(28) => 
                           muxInB_2_28_port, B(27) => muxInB_2_27_port, B(26) 
                           => muxInB_2_26_port, B(25) => muxInB_2_25_port, 
                           B(24) => muxInB_2_24_port, B(23) => muxInB_2_23_port
                           , B(22) => muxInB_2_22_port, B(21) => 
                           muxInB_2_21_port, B(20) => muxInB_2_20_port, B(19) 
                           => muxInB_2_19_port, B(18) => muxInB_2_18_port, 
                           B(17) => muxInB_2_17_port, B(16) => muxInB_2_16_port
                           , B(15) => muxInB_2_15_port, B(14) => 
                           muxInB_2_14_port, B(13) => muxInB_2_13_port, B(12) 
                           => muxInB_2_12_port, B(11) => muxInB_2_11_port, 
                           B(10) => muxInB_2_10_port, B(9) => muxInB_2_9_port, 
                           B(8) => muxInB_2_8_port, B(7) => muxInB_2_7_port, 
                           B(6) => muxInB_2_6_port, B(5) => muxInB_2_5_port, 
                           B(4) => muxInB_2_4_port, B(3) => net29839, B(2) => 
                           net29840, B(1) => net29841, B(0) => net29842, C(31) 
                           => muxInC_2_31_port, C(30) => muxInC_2_30_port, 
                           C(29) => muxInC_2_29_port, C(28) => muxInC_2_28_port
                           , C(27) => muxInC_2_27_port, C(26) => 
                           muxInC_2_26_port, C(25) => muxInC_2_25_port, C(24) 
                           => muxInC_2_24_port, C(23) => muxInC_2_23_port, 
                           C(22) => muxInC_2_22_port, C(21) => muxInC_2_21_port
                           , C(20) => muxInC_2_20_port, C(19) => 
                           muxInC_2_19_port, C(18) => muxInC_2_18_port, C(17) 
                           => muxInC_2_17_port, C(16) => muxInC_2_16_port, 
                           C(15) => muxInC_2_15_port, C(14) => muxInC_2_14_port
                           , C(13) => muxInC_2_13_port, C(12) => 
                           muxInC_2_12_port, C(11) => muxInC_2_11_port, C(10) 
                           => muxInC_2_10_port, C(9) => muxInC_2_9_port, C(8) 
                           => muxInC_2_8_port, C(7) => muxInC_2_7_port, C(6) =>
                           muxInC_2_6_port, C(5) => muxInC_2_5_port, C(4) => 
                           muxInC_2_4_port, C(3) => net29843, C(2) => net29844,
                           C(1) => net29845, C(0) => net29846, D(31) => 
                           muxInD_2_31_port, D(30) => muxInD_2_30_port, D(29) 
                           => muxInD_2_29_port, D(28) => muxInD_2_28_port, 
                           D(27) => muxInD_2_27_port, D(26) => muxInD_2_26_port
                           , D(25) => muxInD_2_25_port, D(24) => 
                           muxInD_2_24_port, D(23) => muxInD_2_23_port, D(22) 
                           => muxInD_2_22_port, D(21) => muxInD_2_21_port, 
                           D(20) => muxInD_2_20_port, D(19) => muxInD_2_19_port
                           , D(18) => muxInD_2_18_port, D(17) => 
                           muxInD_2_17_port, D(16) => muxInD_2_16_port, D(15) 
                           => muxInD_2_15_port, D(14) => muxInD_2_14_port, 
                           D(13) => muxInD_2_13_port, D(12) => muxInD_2_12_port
                           , D(11) => muxInD_2_11_port, D(10) => 
                           muxInD_2_10_port, D(9) => muxInD_2_9_port, D(8) => 
                           muxInD_2_8_port, D(7) => muxInD_2_7_port, D(6) => 
                           muxInD_2_6_port, D(5) => muxInD_2_5_port, D(4) => 
                           net29847, D(3) => net29848, D(2) => net29849, D(1) 
                           => net29850, D(0) => net29851, E(31) => 
                           muxInE_2_31_port, E(30) => muxInE_2_30_port, E(29) 
                           => muxInE_2_29_port, E(28) => muxInE_2_28_port, 
                           E(27) => muxInE_2_27_port, E(26) => muxInE_2_26_port
                           , E(25) => muxInE_2_25_port, E(24) => 
                           muxInE_2_24_port, E(23) => muxInE_2_23_port, E(22) 
                           => muxInE_2_22_port, E(21) => muxInE_2_21_port, 
                           E(20) => n20, E(19) => muxInE_2_19_port, E(18) => 
                           muxInE_2_18_port, E(17) => muxInE_2_17_port, E(16) 
                           => muxInE_2_16_port, E(15) => muxInE_2_15_port, 
                           E(14) => muxInE_2_14_port, E(13) => muxInE_2_13_port
                           , E(12) => muxInE_2_12_port, E(11) => 
                           muxInE_2_11_port, E(10) => muxInE_2_10_port, E(9) =>
                           muxInE_2_9_port, E(8) => muxInE_2_8_port, E(7) => 
                           muxInE_2_7_port, E(6) => muxInE_2_6_port, E(5) => 
                           muxInE_2_5_port, E(4) => net29852, E(3) => net29853,
                           E(2) => net29854, E(1) => net29855, E(0) => net29856
                           );
   SHIFTERS_3 : shift_mul_N16_S6 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => n6, A(11) => n18, A(10) => 
                           n9, A(9) => n8, A(8) => n5, A(7) => A(7), A(6) => 
                           A(6), A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2)
                           => A(2), A(1) => A(1), A(0) => A(0), B(31) => 
                           muxInB_3_31_port, B(30) => muxInB_3_30_port, B(29) 
                           => muxInB_3_29_port, B(28) => muxInB_3_28_port, 
                           B(27) => muxInB_3_27_port, B(26) => muxInB_3_26_port
                           , B(25) => muxInB_3_25_port, B(24) => 
                           muxInB_3_24_port, B(23) => muxInB_3_23_port, B(22) 
                           => muxInB_3_22_port, B(21) => muxInB_3_21_port, 
                           B(20) => muxInB_3_20_port, B(19) => muxInB_3_19_port
                           , B(18) => muxInB_3_18_port, B(17) => 
                           muxInB_3_17_port, B(16) => muxInB_3_16_port, B(15) 
                           => muxInB_3_15_port, B(14) => muxInB_3_14_port, 
                           B(13) => muxInB_3_13_port, B(12) => muxInB_3_12_port
                           , B(11) => muxInB_3_11_port, B(10) => 
                           muxInB_3_10_port, B(9) => muxInB_3_9_port, B(8) => 
                           muxInB_3_8_port, B(7) => muxInB_3_7_port, B(6) => 
                           muxInB_3_6_port, B(5) => net29813, B(4) => net29814,
                           B(3) => net29815, B(2) => net29816, B(1) => net29817
                           , B(0) => net29818, C(31) => muxInC_3_31_port, C(30)
                           => muxInC_3_30_port, C(29) => muxInC_3_29_port, 
                           C(28) => muxInC_3_28_port, C(27) => muxInC_3_27_port
                           , C(26) => muxInC_3_26_port, C(25) => 
                           muxInC_3_25_port, C(24) => muxInC_3_24_port, C(23) 
                           => muxInC_3_23_port, C(22) => muxInC_3_22_port, 
                           C(21) => muxInC_3_21_port, C(20) => muxInC_3_20_port
                           , C(19) => muxInC_3_19_port, C(18) => 
                           muxInC_3_18_port, C(17) => muxInC_3_17_port, C(16) 
                           => muxInC_3_16_port, C(15) => muxInC_3_15_port, 
                           C(14) => muxInC_3_14_port, C(13) => muxInC_3_13_port
                           , C(12) => muxInC_3_12_port, C(11) => 
                           muxInC_3_11_port, C(10) => muxInC_3_10_port, C(9) =>
                           muxInC_3_9_port, C(8) => muxInC_3_8_port, C(7) => 
                           muxInC_3_7_port, C(6) => muxInC_3_6_port, C(5) => 
                           net29819, C(4) => net29820, C(3) => net29821, C(2) 
                           => net29822, C(1) => net29823, C(0) => net29824, 
                           D(31) => muxInD_3_31_port, D(30) => muxInD_3_30_port
                           , D(29) => muxInD_3_29_port, D(28) => 
                           muxInD_3_28_port, D(27) => muxInD_3_27_port, D(26) 
                           => muxInD_3_26_port, D(25) => muxInD_3_25_port, 
                           D(24) => muxInD_3_24_port, D(23) => muxInD_3_23_port
                           , D(22) => muxInD_3_22_port, D(21) => 
                           muxInD_3_21_port, D(20) => muxInD_3_20_port, D(19) 
                           => muxInD_3_19_port, D(18) => muxInD_3_18_port, 
                           D(17) => muxInD_3_17_port, D(16) => muxInD_3_16_port
                           , D(15) => muxInD_3_15_port, D(14) => 
                           muxInD_3_14_port, D(13) => muxInD_3_13_port, D(12) 
                           => muxInD_3_12_port, D(11) => muxInD_3_11_port, 
                           D(10) => muxInD_3_10_port, D(9) => muxInD_3_9_port, 
                           D(8) => muxInD_3_8_port, D(7) => muxInD_3_7_port, 
                           D(6) => net29825, D(5) => net29826, D(4) => net29827
                           , D(3) => net29828, D(2) => net29829, D(1) => 
                           net29830, D(0) => net29831, E(31) => 
                           muxInE_3_31_port, E(30) => muxInE_3_30_port, E(29) 
                           => muxInE_3_29_port, E(28) => muxInE_3_28_port, 
                           E(27) => muxInE_3_27_port, E(26) => muxInE_3_26_port
                           , E(25) => muxInE_3_25_port, E(24) => 
                           muxInE_3_24_port, E(23) => muxInE_3_23_port, E(22) 
                           => muxInE_3_22_port, E(21) => muxInE_3_21_port, 
                           E(20) => muxInE_3_20_port, E(19) => muxInE_3_19_port
                           , E(18) => muxInE_3_18_port, E(17) => 
                           muxInE_3_17_port, E(16) => muxInE_3_16_port, E(15) 
                           => muxInE_3_15_port, E(14) => muxInE_3_14_port, 
                           E(13) => muxInE_3_13_port, E(12) => muxInE_3_12_port
                           , E(11) => muxInE_3_11_port, E(10) => 
                           muxInE_3_10_port, E(9) => muxInE_3_9_port, E(8) => 
                           muxInE_3_8_port, E(7) => muxInE_3_7_port, E(6) => 
                           net29832, E(5) => net29833, E(4) => net29834, E(3) 
                           => net29835, E(2) => net29836, E(1) => net29837, 
                           E(0) => net29838);
   SHIFTERS_4 : shift_mul_N16_S8 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => n2, A(10) 
                           => n9, A(9) => n8, A(8) => n25, A(7) => n24, A(6) =>
                           n22, A(5) => n12, A(4) => A(4), A(3) => A(3), A(2) 
                           => A(2), A(1) => A(1), A(0) => A(0), B(31) => 
                           muxInB_4_31_port, B(30) => muxInB_4_30_port, B(29) 
                           => muxInB_4_29_port, B(28) => muxInB_4_28_port, 
                           B(27) => muxInB_4_27_port, B(26) => muxInB_4_26_port
                           , B(25) => muxInB_4_25_port, B(24) => 
                           muxInB_4_24_port, B(23) => muxInB_4_23_port, B(22) 
                           => muxInB_4_22_port, B(21) => muxInB_4_21_port, 
                           B(20) => muxInB_4_20_port, B(19) => muxInB_4_19_port
                           , B(18) => muxInB_4_18_port, B(17) => 
                           muxInB_4_17_port, B(16) => muxInB_4_16_port, B(15) 
                           => muxInB_4_15_port, B(14) => muxInB_4_14_port, 
                           B(13) => muxInB_4_13_port, B(12) => muxInB_4_12_port
                           , B(11) => muxInB_4_11_port, B(10) => 
                           muxInB_4_10_port, B(9) => muxInB_4_9_port, B(8) => 
                           muxInB_4_8_port, B(7) => net29779, B(6) => net29780,
                           B(5) => net29781, B(4) => net29782, B(3) => net29783
                           , B(2) => net29784, B(1) => net29785, B(0) => 
                           net29786, C(31) => muxInC_4_31_port, C(30) => 
                           muxInC_4_30_port, C(29) => muxInC_4_29_port, C(28) 
                           => muxInC_4_28_port, C(27) => muxInC_4_27_port, 
                           C(26) => muxInC_4_26_port, C(25) => muxInC_4_25_port
                           , C(24) => muxInC_4_24_port, C(23) => 
                           muxInC_4_23_port, C(22) => muxInC_4_22_port, C(21) 
                           => muxInC_4_21_port, C(20) => muxInC_4_20_port, 
                           C(19) => muxInC_4_19_port, C(18) => muxInC_4_18_port
                           , C(17) => muxInC_4_17_port, C(16) => 
                           muxInC_4_16_port, C(15) => muxInC_4_15_port, C(14) 
                           => muxInC_4_14_port, C(13) => muxInC_4_13_port, 
                           C(12) => muxInC_4_12_port, C(11) => muxInC_4_11_port
                           , C(10) => muxInC_4_10_port, C(9) => muxInC_4_9_port
                           , C(8) => muxInC_4_8_port, C(7) => net29787, C(6) =>
                           net29788, C(5) => net29789, C(4) => net29790, C(3) 
                           => net29791, C(2) => net29792, C(1) => net29793, 
                           C(0) => net29794, D(31) => muxInD_4_31_port, D(30) 
                           => muxInD_4_30_port, D(29) => muxInD_4_29_port, 
                           D(28) => muxInD_4_28_port, D(27) => muxInD_4_27_port
                           , D(26) => muxInD_4_26_port, D(25) => 
                           muxInD_4_25_port, D(24) => muxInD_4_24_port, D(23) 
                           => muxInD_4_23_port, D(22) => muxInD_4_22_port, 
                           D(21) => muxInD_4_21_port, D(20) => muxInD_4_20_port
                           , D(19) => muxInD_4_19_port, D(18) => 
                           muxInD_4_18_port, D(17) => muxInD_4_17_port, D(16) 
                           => muxInD_4_16_port, D(15) => muxInD_4_15_port, 
                           D(14) => muxInD_4_14_port, D(13) => muxInD_4_13_port
                           , D(12) => muxInD_4_12_port, D(11) => 
                           muxInD_4_11_port, D(10) => muxInD_4_10_port, D(9) =>
                           muxInD_4_9_port, D(8) => net29795, D(7) => net29796,
                           D(6) => net29797, D(5) => net29798, D(4) => net29799
                           , D(3) => net29800, D(2) => net29801, D(1) => 
                           net29802, D(0) => net29803, E(31) => 
                           muxInE_4_31_port, E(30) => muxInE_4_30_port, E(29) 
                           => muxInE_4_29_port, E(28) => muxInE_4_28_port, 
                           E(27) => muxInE_4_27_port, E(26) => muxInE_4_26_port
                           , E(25) => muxInE_4_25_port, E(24) => 
                           muxInE_4_24_port, E(23) => muxInE_4_23_port, E(22) 
                           => muxInE_4_22_port, E(21) => muxInE_4_21_port, 
                           E(20) => muxInE_4_20_port, E(19) => muxInE_4_19_port
                           , E(18) => muxInE_4_18_port, E(17) => 
                           muxInE_4_17_port, E(16) => muxInE_4_16_port, E(15) 
                           => muxInE_4_15_port, E(14) => muxInE_4_14_port, 
                           E(13) => muxInE_4_13_port, E(12) => muxInE_4_12_port
                           , E(11) => muxInE_4_11_port, E(10) => 
                           muxInE_4_10_port, E(9) => muxInE_4_9_port, E(8) => 
                           net29804, E(7) => net29805, E(6) => net29806, E(5) 
                           => net29807, E(4) => net29808, E(3) => net29809, 
                           E(2) => net29810, E(1) => net29811, E(0) => net29812
                           );
   SHIFTERS_5 : shift_mul_N16_S10 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => n14, A(11) => n18, A(10) =>
                           n9, A(9) => n15, A(8) => n19, A(7) => n11, A(6) => 
                           n7, A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) 
                           => n4, A(1) => A(1), A(0) => n13, B(31) => 
                           muxInB_5_31_port, B(30) => muxInB_5_30_port, B(29) 
                           => muxInB_5_29_port, B(28) => muxInB_5_28_port, 
                           B(27) => muxInB_5_27_port, B(26) => muxInB_5_26_port
                           , B(25) => muxInB_5_25_port, B(24) => 
                           muxInB_5_24_port, B(23) => muxInB_5_23_port, B(22) 
                           => muxInB_5_22_port, B(21) => muxInB_5_21_port, 
                           B(20) => muxInB_5_20_port, B(19) => muxInB_5_19_port
                           , B(18) => muxInB_5_18_port, B(17) => 
                           muxInB_5_17_port, B(16) => muxInB_5_16_port, B(15) 
                           => muxInB_5_15_port, B(14) => muxInB_5_14_port, 
                           B(13) => muxInB_5_13_port, B(12) => muxInB_5_12_port
                           , B(11) => muxInB_5_11_port, B(10) => 
                           muxInB_5_10_port, B(9) => net29737, B(8) => net29738
                           , B(7) => net29739, B(6) => net29740, B(5) => 
                           net29741, B(4) => net29742, B(3) => net29743, B(2) 
                           => net29744, B(1) => net29745, B(0) => net29746, 
                           C(31) => muxInC_5_31_port, C(30) => muxInC_5_30_port
                           , C(29) => muxInC_5_29_port, C(28) => 
                           muxInC_5_28_port, C(27) => muxInC_5_27_port, C(26) 
                           => muxInC_5_26_port, C(25) => muxInC_5_25_port, 
                           C(24) => muxInC_5_24_port, C(23) => muxInC_5_23_port
                           , C(22) => muxInC_5_22_port, C(21) => 
                           muxInC_5_21_port, C(20) => muxInC_5_20_port, C(19) 
                           => muxInC_5_19_port, C(18) => muxInC_5_18_port, 
                           C(17) => muxInC_5_17_port, C(16) => muxInC_5_16_port
                           , C(15) => muxInC_5_15_port, C(14) => 
                           muxInC_5_14_port, C(13) => muxInC_5_13_port, C(12) 
                           => muxInC_5_12_port, C(11) => muxInC_5_11_port, 
                           C(10) => muxInC_5_10_port, C(9) => net29747, C(8) =>
                           net29748, C(7) => net29749, C(6) => net29750, C(5) 
                           => net29751, C(4) => net29752, C(3) => net29753, 
                           C(2) => net29754, C(1) => net29755, C(0) => net29756
                           , D(31) => muxInD_5_31_port, D(30) => 
                           muxInD_5_30_port, D(29) => muxInD_5_29_port, D(28) 
                           => muxInD_5_28_port, D(27) => muxInD_5_27_port, 
                           D(26) => muxInD_5_26_port, D(25) => muxInD_5_25_port
                           , D(24) => muxInD_5_24_port, D(23) => 
                           muxInD_5_23_port, D(22) => muxInD_5_22_port, D(21) 
                           => muxInD_5_21_port, D(20) => muxInD_5_20_port, 
                           D(19) => muxInD_5_19_port, D(18) => muxInD_5_18_port
                           , D(17) => muxInD_5_17_port, D(16) => 
                           muxInD_5_16_port, D(15) => muxInD_5_15_port, D(14) 
                           => muxInD_5_14_port, D(13) => muxInD_5_13_port, 
                           D(12) => muxInD_5_12_port, D(11) => muxInD_5_11_port
                           , D(10) => net29757, D(9) => net29758, D(8) => 
                           net29759, D(7) => net29760, D(6) => net29761, D(5) 
                           => net29762, D(4) => net29763, D(3) => net29764, 
                           D(2) => net29765, D(1) => net29766, D(0) => net29767
                           , E(31) => muxInE_5_31_port, E(30) => 
                           muxInE_5_30_port, E(29) => muxInE_5_29_port, E(28) 
                           => muxInE_5_28_port, E(27) => muxInE_5_27_port, 
                           E(26) => muxInE_5_26_port, E(25) => muxInE_5_25_port
                           , E(24) => muxInE_5_24_port, E(23) => 
                           muxInE_5_23_port, E(22) => muxInE_5_22_port, E(21) 
                           => muxInE_5_21_port, E(20) => muxInE_5_20_port, 
                           E(19) => muxInE_5_19_port, E(18) => muxInE_5_18_port
                           , E(17) => muxInE_5_17_port, E(16) => 
                           muxInE_5_16_port, E(15) => muxInE_5_15_port, E(14) 
                           => muxInE_5_14_port, E(13) => muxInE_5_13_port, 
                           E(12) => muxInE_5_12_port, E(11) => muxInE_5_11_port
                           , E(10) => net29768, E(9) => net29769, E(8) => 
                           net29770, E(7) => net29771, E(6) => net29772, E(5) 
                           => net29773, E(4) => net29774, E(3) => net29775, 
                           E(2) => net29776, E(1) => net29777, E(0) => net29778
                           );
   SHIFTERS_6 : shift_mul_N16_S12 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => n14, A(11) => n17, A(10) =>
                           n3, A(9) => n15, A(8) => n19, A(7) => n11, A(6) => 
                           n22, A(5) => n12, A(4) => A(4), A(3) => A(3), A(2) 
                           => n4, A(1) => A(1), A(0) => n10, B(31) => 
                           muxInB_6_31_port, B(30) => muxInB_6_30_port, B(29) 
                           => muxInB_6_29_port, B(28) => muxInB_6_28_port, 
                           B(27) => muxInB_6_27_port, B(26) => muxInB_6_26_port
                           , B(25) => muxInB_6_25_port, B(24) => 
                           muxInB_6_24_port, B(23) => muxInB_6_23_port, B(22) 
                           => muxInB_6_22_port, B(21) => muxInB_6_21_port, 
                           B(20) => muxInB_6_20_port, B(19) => muxInB_6_19_port
                           , B(18) => muxInB_6_18_port, B(17) => 
                           muxInB_6_17_port, B(16) => muxInB_6_16_port, B(15) 
                           => muxInB_6_15_port, B(14) => muxInB_6_14_port, 
                           B(13) => muxInB_6_13_port, B(12) => muxInB_6_12_port
                           , B(11) => net29687, B(10) => net29688, B(9) => 
                           net29689, B(8) => net29690, B(7) => net29691, B(6) 
                           => net29692, B(5) => net29693, B(4) => net29694, 
                           B(3) => net29695, B(2) => net29696, B(1) => net29697
                           , B(0) => net29698, C(31) => muxInC_6_31_port, C(30)
                           => muxInC_6_30_port, C(29) => muxInC_6_29_port, 
                           C(28) => muxInC_6_28_port, C(27) => muxInC_6_27_port
                           , C(26) => muxInC_6_26_port, C(25) => 
                           muxInC_6_25_port, C(24) => muxInC_6_24_port, C(23) 
                           => muxInC_6_23_port, C(22) => muxInC_6_22_port, 
                           C(21) => muxInC_6_21_port, C(20) => muxInC_6_20_port
                           , C(19) => muxInC_6_19_port, C(18) => 
                           muxInC_6_18_port, C(17) => muxInC_6_17_port, C(16) 
                           => muxInC_6_16_port, C(15) => muxInC_6_15_port, 
                           C(14) => muxInC_6_14_port, C(13) => muxInC_6_13_port
                           , C(12) => muxInC_6_12_port, C(11) => net29699, 
                           C(10) => net29700, C(9) => net29701, C(8) => 
                           net29702, C(7) => net29703, C(6) => net29704, C(5) 
                           => net29705, C(4) => net29706, C(3) => net29707, 
                           C(2) => net29708, C(1) => net29709, C(0) => net29710
                           , D(31) => muxInD_6_31_port, D(30) => 
                           muxInD_6_30_port, D(29) => muxInD_6_29_port, D(28) 
                           => muxInD_6_28_port, D(27) => muxInD_6_27_port, 
                           D(26) => muxInD_6_26_port, D(25) => muxInD_6_25_port
                           , D(24) => muxInD_6_24_port, D(23) => 
                           muxInD_6_23_port, D(22) => muxInD_6_22_port, D(21) 
                           => muxInD_6_21_port, D(20) => muxInD_6_20_port, 
                           D(19) => muxInD_6_19_port, D(18) => muxInD_6_18_port
                           , D(17) => muxInD_6_17_port, D(16) => 
                           muxInD_6_16_port, D(15) => muxInD_6_15_port, D(14) 
                           => muxInD_6_14_port, D(13) => muxInD_6_13_port, 
                           D(12) => net29711, D(11) => net29712, D(10) => 
                           net29713, D(9) => net29714, D(8) => net29715, D(7) 
                           => net29716, D(6) => net29717, D(5) => net29718, 
                           D(4) => net29719, D(3) => net29720, D(2) => net29721
                           , D(1) => net29722, D(0) => net29723, E(31) => 
                           muxInE_6_31_port, E(30) => muxInE_6_30_port, E(29) 
                           => muxInE_6_29_port, E(28) => muxInE_6_28_port, 
                           E(27) => muxInE_6_27_port, E(26) => muxInE_6_26_port
                           , E(25) => muxInE_6_25_port, E(24) => 
                           muxInE_6_24_port, E(23) => muxInE_6_23_port, E(22) 
                           => muxInE_6_22_port, E(21) => muxInE_6_21_port, 
                           E(20) => muxInE_6_20_port, E(19) => muxInE_6_19_port
                           , E(18) => muxInE_6_18_port, E(17) => 
                           muxInE_6_17_port, E(16) => muxInE_6_16_port, E(15) 
                           => muxInE_6_15_port, E(14) => muxInE_6_14_port, 
                           E(13) => muxInE_6_13_port, E(12) => net29724, E(11) 
                           => net29725, E(10) => net29726, E(9) => net29727, 
                           E(8) => net29728, E(7) => net29729, E(6) => net29730
                           , E(5) => net29731, E(4) => net29732, E(3) => 
                           net29733, E(2) => net29734, E(1) => net29735, E(0) 
                           => net29736);
   SHIFTERS_7 : shift_mul_N16_S14 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => n14, A(11) => n2, A(10) => 
                           n3, A(9) => n15, A(8) => n19, A(7) => n11, A(6) => 
                           n22, A(5) => n1, A(4) => A(4), A(3) => A(3), A(2) =>
                           n21, A(1) => A(1), A(0) => n16, B(31) => 
                           muxInB_7_31_port, B(30) => muxInB_7_30_port, B(29) 
                           => muxInB_7_29_port, B(28) => muxInB_7_28_port, 
                           B(27) => muxInB_7_27_port, B(26) => muxInB_7_26_port
                           , B(25) => muxInB_7_25_port, B(24) => 
                           muxInB_7_24_port, B(23) => muxInB_7_23_port, B(22) 
                           => muxInB_7_22_port, B(21) => muxInB_7_21_port, 
                           B(20) => muxInB_7_20_port, B(19) => muxInB_7_19_port
                           , B(18) => muxInB_7_18_port, B(17) => 
                           muxInB_7_17_port, B(16) => muxInB_7_16_port, B(15) 
                           => muxInB_7_15_port, B(14) => muxInB_7_14_port, 
                           B(13) => net29629, B(12) => net29630, B(11) => 
                           net29631, B(10) => net29632, B(9) => net29633, B(8) 
                           => net29634, B(7) => net29635, B(6) => net29636, 
                           B(5) => net29637, B(4) => net29638, B(3) => net29639
                           , B(2) => net29640, B(1) => net29641, B(0) => 
                           net29642, C(31) => muxInC_7_31_port, C(30) => 
                           muxInC_7_30_port, C(29) => muxInC_7_29_port, C(28) 
                           => muxInC_7_28_port, C(27) => muxInC_7_27_port, 
                           C(26) => muxInC_7_26_port, C(25) => muxInC_7_25_port
                           , C(24) => muxInC_7_24_port, C(23) => 
                           muxInC_7_23_port, C(22) => muxInC_7_22_port, C(21) 
                           => muxInC_7_21_port, C(20) => muxInC_7_20_port, 
                           C(19) => muxInC_7_19_port, C(18) => muxInC_7_18_port
                           , C(17) => muxInC_7_17_port, C(16) => 
                           muxInC_7_16_port, C(15) => muxInC_7_15_port, C(14) 
                           => muxInC_7_14_port, C(13) => net29643, C(12) => 
                           net29644, C(11) => net29645, C(10) => net29646, C(9)
                           => net29647, C(8) => net29648, C(7) => net29649, 
                           C(6) => net29650, C(5) => net29651, C(4) => net29652
                           , C(3) => net29653, C(2) => net29654, C(1) => 
                           net29655, C(0) => net29656, D(31) => 
                           muxInD_7_31_port, D(30) => muxInD_7_30_port, D(29) 
                           => muxInD_7_29_port, D(28) => muxInD_7_28_port, 
                           D(27) => muxInD_7_27_port, D(26) => muxInD_7_26_port
                           , D(25) => muxInD_7_25_port, D(24) => 
                           muxInD_7_24_port, D(23) => muxInD_7_23_port, D(22) 
                           => muxInD_7_22_port, D(21) => muxInD_7_21_port, 
                           D(20) => muxInD_7_20_port, D(19) => muxInD_7_19_port
                           , D(18) => muxInD_7_18_port, D(17) => 
                           muxInD_7_17_port, D(16) => muxInD_7_16_port, D(15) 
                           => muxInD_7_15_port, D(14) => net29657, D(13) => 
                           net29658, D(12) => net29659, D(11) => net29660, 
                           D(10) => net29661, D(9) => net29662, D(8) => 
                           net29663, D(7) => net29664, D(6) => net29665, D(5) 
                           => net29666, D(4) => net29667, D(3) => net29668, 
                           D(2) => net29669, D(1) => net29670, D(0) => net29671
                           , E(31) => muxInE_7_31_port, E(30) => 
                           muxInE_7_30_port, E(29) => muxInE_7_29_port, E(28) 
                           => muxInE_7_28_port, E(27) => muxInE_7_27_port, 
                           E(26) => muxInE_7_26_port, E(25) => muxInE_7_25_port
                           , E(24) => muxInE_7_24_port, E(23) => 
                           muxInE_7_23_port, E(22) => muxInE_7_22_port, E(21) 
                           => muxInE_7_21_port, E(20) => muxInE_7_20_port, 
                           E(19) => muxInE_7_19_port, E(18) => muxInE_7_18_port
                           , E(17) => muxInE_7_17_port, E(16) => 
                           muxInE_7_16_port, E(15) => muxInE_7_15_port, E(14) 
                           => net29672, E(13) => net29673, E(12) => net29674, 
                           E(11) => net29675, E(10) => net29676, E(9) => 
                           net29677, E(8) => net29678, E(7) => net29679, E(6) 
                           => net29680, E(5) => net29681, E(4) => net29682, 
                           E(3) => net29683, E(2) => net29684, E(1) => net29685
                           , E(0) => net29686);
   MUXGEN_0 : mux_N32_0 port map( A(31) => X_Logic0_port, A(30) => 
                           X_Logic0_port, A(29) => X_Logic0_port, A(28) => 
                           X_Logic0_port, A(27) => X_Logic0_port, A(26) => 
                           X_Logic0_port, A(25) => X_Logic0_port, A(24) => 
                           X_Logic0_port, A(23) => X_Logic0_port, A(22) => 
                           X_Logic0_port, A(21) => X_Logic0_port, A(20) => 
                           X_Logic0_port, A(19) => X_Logic0_port, A(18) => 
                           X_Logic0_port, A(17) => X_Logic0_port, A(16) => 
                           X_Logic0_port, A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(31) => muxInB_0_31_port, B(30) => 
                           muxInB_0_30_port, B(29) => muxInB_0_29_port, B(28) 
                           => muxInB_0_28_port, B(27) => muxInB_0_27_port, 
                           B(26) => muxInB_0_26_port, B(25) => muxInB_0_25_port
                           , B(24) => muxInB_0_24_port, B(23) => 
                           muxInB_0_23_port, B(22) => muxInB_0_22_port, B(21) 
                           => muxInB_0_21_port, B(20) => muxInB_0_20_port, 
                           B(19) => muxInB_0_19_port, B(18) => muxInB_0_18_port
                           , B(17) => muxInB_0_17_port, B(16) => 
                           muxInB_0_16_port, B(15) => muxInB_0_15_port, B(14) 
                           => muxInB_0_14_port, B(13) => muxInB_0_13_port, 
                           B(12) => muxInB_0_12_port, B(11) => muxInB_0_11_port
                           , B(10) => muxInB_0_10_port, B(9) => muxInB_0_9_port
                           , B(8) => muxInB_0_8_port, B(7) => muxInB_0_7_port, 
                           B(6) => muxInB_0_6_port, B(5) => muxInB_0_5_port, 
                           B(4) => muxInB_0_4_port, B(3) => muxInB_0_3_port, 
                           B(2) => muxInB_0_2_port, B(1) => muxInB_0_1_port, 
                           B(0) => muxInB_0_0_port, C(31) => muxInC_0_31_port, 
                           C(30) => muxInC_0_30_port, C(29) => muxInC_0_29_port
                           , C(28) => muxInC_0_28_port, C(27) => 
                           muxInC_0_20_port, C(26) => muxInC_0_26_port, C(25) 
                           => muxInC_0_25_port, C(24) => muxInC_0_24_port, 
                           C(23) => muxInC_0_23_port, C(22) => muxInC_0_22_port
                           , C(21) => muxInC_0_21_port, C(20) => 
                           muxInC_0_20_port, C(19) => muxInC_0_19_port, C(18) 
                           => muxInC_0_18_port, C(17) => muxInC_0_17_port, 
                           C(16) => muxInC_0_16_port, C(15) => muxInC_0_15_port
                           , C(14) => muxInC_0_14_port, C(13) => 
                           muxInC_0_13_port, C(12) => muxInC_0_12_port, C(11) 
                           => muxInC_0_11_port, C(10) => muxInC_0_10_port, C(9)
                           => muxInC_0_9_port, C(8) => muxInC_0_8_port, C(7) =>
                           muxInC_0_7_port, C(6) => muxInC_0_6_port, C(5) => 
                           muxInC_0_5_port, C(4) => muxInC_0_4_port, C(3) => 
                           muxInC_0_3_port, C(2) => muxInC_0_2_port, C(1) => 
                           muxInC_0_1_port, C(0) => muxInC_0_0_port, D(31) => 
                           muxInD_0_31_port, D(30) => muxInD_0_30_port, D(29) 
                           => muxInD_0_29_port, D(28) => muxInD_0_28_port, 
                           D(27) => muxInD_0_27_port, D(26) => muxInD_0_26_port
                           , D(25) => muxInD_0_25_port, D(24) => 
                           muxInD_0_24_port, D(23) => muxInD_0_23_port, D(22) 
                           => muxInD_0_22_port, D(21) => muxInD_0_21_port, 
                           D(20) => muxInD_0_20_port, D(19) => muxInD_0_19_port
                           , D(18) => muxInD_0_18_port, D(17) => 
                           muxInD_0_17_port, D(16) => muxInD_0_16_port, D(15) 
                           => muxInD_0_15_port, D(14) => muxInD_0_14_port, 
                           D(13) => muxInD_0_13_port, D(12) => muxInD_0_12_port
                           , D(11) => muxInD_0_11_port, D(10) => 
                           muxInD_0_10_port, D(9) => muxInD_0_9_port, D(8) => 
                           muxInD_0_8_port, D(7) => muxInD_0_7_port, D(6) => 
                           muxInD_0_6_port, D(5) => muxInD_0_5_port, D(4) => 
                           muxInD_0_4_port, D(3) => muxInD_0_3_port, D(2) => 
                           muxInD_0_2_port, D(1) => muxInD_0_1_port, D(0) => 
                           muxInD_0_0_port, E(31) => muxInE_0_31_port, E(30) =>
                           muxInE_0_30_port, E(29) => muxInE_0_29_port, E(28) 
                           => muxInE_0_28_port, E(27) => muxInE_0_27_port, 
                           E(26) => muxInE_0_26_port, E(25) => muxInC_0_20_port
                           , E(24) => muxInE_0_24_port, E(23) => 
                           muxInE_0_23_port, E(22) => muxInC_0_27_port, E(21) 
                           => muxInE_0_21_port, E(20) => muxInE_0_20_port, 
                           E(19) => muxInE_0_19_port, E(18) => muxInE_0_18_port
                           , E(17) => muxInC_0_29_port, E(16) => 
                           muxInE_0_16_port, E(15) => muxInE_0_15_port, E(14) 
                           => muxInE_0_14_port, E(13) => muxInE_0_13_port, 
                           E(12) => muxInE_0_12_port, E(11) => muxInE_0_11_port
                           , E(10) => muxInE_0_10_port, E(9) => muxInE_0_9_port
                           , E(8) => muxInE_0_8_port, E(7) => muxInE_0_7_port, 
                           E(6) => muxInE_0_6_port, E(5) => muxInE_0_5_port, 
                           E(4) => muxInE_0_4_port, E(3) => muxInE_0_3_port, 
                           E(2) => muxInE_0_2_port, E(1) => muxInE_0_1_port, 
                           E(0) => muxInE_0_0_port, Sel(2) => B(1), Sel(1) => 
                           B(0), Sel(0) => X_Logic0_port, O(31) => 
                           outmux_0_31_port, O(30) => outmux_0_30_port, O(29) 
                           => outmux_0_29_port, O(28) => outmux_0_28_port, 
                           O(27) => outmux_0_27_port, O(26) => outmux_0_26_port
                           , O(25) => outmux_0_25_port, O(24) => 
                           outmux_0_24_port, O(23) => outmux_0_23_port, O(22) 
                           => outmux_0_22_port, O(21) => outmux_0_21_port, 
                           O(20) => outmux_0_20_port, O(19) => outmux_0_19_port
                           , O(18) => outmux_0_18_port, O(17) => 
                           outmux_0_17_port, O(16) => outmux_0_16_port, O(15) 
                           => outmux_0_15_port, O(14) => outmux_0_14_port, 
                           O(13) => outmux_0_13_port, O(12) => outmux_0_12_port
                           , O(11) => outmux_0_11_port, O(10) => 
                           outmux_0_10_port, O(9) => outmux_0_9_port, O(8) => 
                           outmux_0_8_port, O(7) => outmux_0_7_port, O(6) => 
                           outmux_0_6_port, O(5) => outmux_0_5_port, O(4) => 
                           outmux_0_4_port, O(3) => outmux_0_3_port, O(2) => 
                           outmux_0_2_port, O(1) => outmux_0_1_port, O(0) => 
                           outmux_0_0_port);
   MUXGEN_1 : mux_N32_7 port map( A(31) => X_Logic0_port, A(30) => 
                           X_Logic0_port, A(29) => X_Logic0_port, A(28) => 
                           X_Logic0_port, A(27) => X_Logic0_port, A(26) => 
                           X_Logic0_port, A(25) => X_Logic0_port, A(24) => 
                           X_Logic0_port, A(23) => X_Logic0_port, A(22) => 
                           X_Logic0_port, A(21) => X_Logic0_port, A(20) => 
                           X_Logic0_port, A(19) => X_Logic0_port, A(18) => 
                           X_Logic0_port, A(17) => X_Logic0_port, A(16) => 
                           X_Logic0_port, A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(31) => muxInB_1_31_port, B(30) => 
                           muxInB_1_30_port, B(29) => muxInB_1_29_port, B(28) 
                           => muxInB_1_28_port, B(27) => muxInB_1_27_port, 
                           B(26) => muxInB_1_26_port, B(25) => muxInB_1_25_port
                           , B(24) => muxInB_1_24_port, B(23) => 
                           muxInB_1_23_port, B(22) => muxInB_1_22_port, B(21) 
                           => muxInB_1_21_port, B(20) => muxInB_1_20_port, 
                           B(19) => muxInB_1_19_port, B(18) => muxInB_1_18_port
                           , B(17) => muxInB_1_17_port, B(16) => 
                           muxInB_1_16_port, B(15) => muxInB_1_15_port, B(14) 
                           => muxInB_1_14_port, B(13) => muxInB_1_13_port, 
                           B(12) => muxInB_1_12_port, B(11) => muxInB_1_11_port
                           , B(10) => muxInB_1_10_port, B(9) => muxInB_1_9_port
                           , B(8) => muxInB_1_8_port, B(7) => muxInB_1_7_port, 
                           B(6) => muxInB_1_6_port, B(5) => muxInB_1_5_port, 
                           B(4) => muxInB_1_4_port, B(3) => muxInB_1_3_port, 
                           B(2) => muxInB_1_2_port, B(1) => muxInB_1_1_port, 
                           B(0) => muxInB_1_0_port, C(31) => muxInC_1_31_port, 
                           C(30) => muxInC_1_30_port, C(29) => muxInC_1_29_port
                           , C(28) => muxInC_1_28_port, C(27) => 
                           muxInC_1_27_port, C(26) => muxInC_1_26_port, C(25) 
                           => muxInC_1_25_port, C(24) => muxInC_1_24_port, 
                           C(23) => muxInE_1_23_port, C(22) => muxInC_1_22_port
                           , C(21) => muxInC_1_21_port, C(20) => 
                           muxInC_1_20_port, C(19) => muxInC_1_23_port, C(18) 
                           => muxInC_1_18_port, C(17) => muxInC_1_17_port, 
                           C(16) => muxInC_1_16_port, C(15) => muxInC_1_15_port
                           , C(14) => muxInC_1_14_port, C(13) => 
                           muxInC_1_13_port, C(12) => muxInC_1_12_port, C(11) 
                           => muxInC_1_11_port, C(10) => muxInC_1_10_port, C(9)
                           => muxInC_1_9_port, C(8) => muxInC_1_8_port, C(7) =>
                           muxInC_1_7_port, C(6) => muxInC_1_6_port, C(5) => 
                           muxInC_1_5_port, C(4) => muxInC_1_4_port, C(3) => 
                           muxInC_1_3_port, C(2) => muxInC_1_2_port, C(1) => 
                           muxInC_1_1_port, C(0) => muxInC_1_0_port, D(31) => 
                           muxInD_1_31_port, D(30) => muxInD_1_30_port, D(29) 
                           => muxInD_1_29_port, D(28) => muxInD_1_28_port, 
                           D(27) => muxInD_1_27_port, D(26) => muxInD_1_26_port
                           , D(25) => muxInD_1_25_port, D(24) => 
                           muxInD_1_24_port, D(23) => muxInD_1_23_port, D(22) 
                           => muxInD_1_22_port, D(21) => muxInD_1_21_port, 
                           D(20) => muxInD_1_20_port, D(19) => muxInD_1_19_port
                           , D(18) => muxInD_1_18_port, D(17) => 
                           muxInD_1_17_port, D(16) => muxInD_1_16_port, D(15) 
                           => muxInD_1_15_port, D(14) => muxInD_1_14_port, 
                           D(13) => muxInD_1_13_port, D(12) => muxInD_1_12_port
                           , D(11) => muxInD_1_11_port, D(10) => 
                           muxInD_1_10_port, D(9) => muxInD_1_9_port, D(8) => 
                           muxInD_1_8_port, D(7) => muxInD_1_7_port, D(6) => 
                           muxInD_1_6_port, D(5) => muxInD_1_5_port, D(4) => 
                           muxInD_1_4_port, D(3) => muxInD_1_3_port, D(2) => 
                           muxInD_1_2_port, D(1) => muxInD_1_1_port, D(0) => 
                           muxInD_1_0_port, E(31) => muxInE_1_31_port, E(30) =>
                           muxInE_1_30_port, E(29) => muxInE_1_29_port, E(28) 
                           => muxInE_1_28_port, E(27) => muxInE_1_27_port, 
                           E(26) => muxInE_1_26_port, E(25) => muxInE_1_25_port
                           , E(24) => muxInE_1_24_port, E(23) => 
                           muxInE_1_23_port, E(22) => muxInE_1_22_port, E(21) 
                           => muxInE_1_21_port, E(20) => muxInE_1_20_port, 
                           E(19) => muxInE_1_19_port, E(18) => muxInE_1_18_port
                           , E(17) => muxInE_1_17_port, E(16) => 
                           muxInE_1_16_port, E(15) => muxInE_1_15_port, E(14) 
                           => muxInE_1_14_port, E(13) => muxInE_1_13_port, 
                           E(12) => muxInE_1_12_port, E(11) => muxInE_1_11_port
                           , E(10) => muxInE_1_10_port, E(9) => muxInE_1_9_port
                           , E(8) => muxInE_1_8_port, E(7) => muxInE_1_7_port, 
                           E(6) => muxInE_1_6_port, E(5) => muxInE_1_5_port, 
                           E(4) => muxInE_1_4_port, E(3) => muxInE_1_3_port, 
                           E(2) => muxInE_1_2_port, E(1) => muxInE_1_1_port, 
                           E(0) => muxInE_1_0_port, Sel(2) => B(3), Sel(1) => 
                           B(2), Sel(0) => B(1), O(31) => outmux_1_31_port, 
                           O(30) => outmux_1_30_port, O(29) => outmux_1_29_port
                           , O(28) => outmux_1_28_port, O(27) => 
                           outmux_1_27_port, O(26) => outmux_1_26_port, O(25) 
                           => outmux_1_25_port, O(24) => outmux_1_24_port, 
                           O(23) => outmux_1_23_port, O(22) => outmux_1_22_port
                           , O(21) => outmux_1_21_port, O(20) => 
                           outmux_1_20_port, O(19) => outmux_1_19_port, O(18) 
                           => outmux_1_18_port, O(17) => outmux_1_17_port, 
                           O(16) => outmux_1_16_port, O(15) => outmux_1_15_port
                           , O(14) => outmux_1_14_port, O(13) => 
                           outmux_1_13_port, O(12) => outmux_1_12_port, O(11) 
                           => outmux_1_11_port, O(10) => outmux_1_10_port, O(9)
                           => outmux_1_9_port, O(8) => outmux_1_8_port, O(7) =>
                           outmux_1_7_port, O(6) => outmux_1_6_port, O(5) => 
                           outmux_1_5_port, O(4) => outmux_1_4_port, O(3) => 
                           outmux_1_3_port, O(2) => outmux_1_2_port, O(1) => 
                           outmux_1_1_port, O(0) => outmux_1_0_port);
   MUXGEN_2 : mux_N32_6 port map( A(31) => X_Logic0_port, A(30) => 
                           X_Logic0_port, A(29) => X_Logic0_port, A(28) => 
                           X_Logic0_port, A(27) => X_Logic0_port, A(26) => 
                           X_Logic0_port, A(25) => X_Logic0_port, A(24) => 
                           X_Logic0_port, A(23) => X_Logic0_port, A(22) => 
                           X_Logic0_port, A(21) => X_Logic0_port, A(20) => 
                           X_Logic0_port, A(19) => X_Logic0_port, A(18) => 
                           X_Logic0_port, A(17) => X_Logic0_port, A(16) => 
                           X_Logic0_port, A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(31) => muxInB_2_31_port, B(30) => 
                           muxInB_2_30_port, B(29) => muxInB_2_29_port, B(28) 
                           => muxInB_2_28_port, B(27) => muxInB_2_27_port, 
                           B(26) => muxInB_2_26_port, B(25) => muxInB_2_25_port
                           , B(24) => muxInB_2_24_port, B(23) => 
                           muxInB_2_23_port, B(22) => muxInB_2_22_port, B(21) 
                           => muxInB_2_21_port, B(20) => muxInB_2_20_port, 
                           B(19) => muxInB_2_19_port, B(18) => muxInB_2_18_port
                           , B(17) => muxInB_2_17_port, B(16) => 
                           muxInB_2_16_port, B(15) => muxInB_2_15_port, B(14) 
                           => muxInB_2_14_port, B(13) => muxInB_2_13_port, 
                           B(12) => muxInB_2_12_port, B(11) => muxInB_2_11_port
                           , B(10) => muxInB_2_10_port, B(9) => muxInB_2_9_port
                           , B(8) => muxInB_2_8_port, B(7) => muxInB_2_7_port, 
                           B(6) => muxInB_2_6_port, B(5) => muxInB_2_5_port, 
                           B(4) => muxInB_2_4_port, B(3) => muxInB_2_3_port, 
                           B(2) => muxInB_2_2_port, B(1) => muxInB_2_1_port, 
                           B(0) => muxInB_2_0_port, C(31) => muxInC_2_31_port, 
                           C(30) => muxInC_2_30_port, C(29) => muxInC_2_29_port
                           , C(28) => muxInC_2_28_port, C(27) => 
                           muxInC_2_27_port, C(26) => muxInC_2_26_port, C(25) 
                           => muxInC_2_25_port, C(24) => muxInC_2_24_port, 
                           C(23) => muxInC_2_23_port, C(22) => muxInC_2_22_port
                           , C(21) => muxInC_2_21_port, C(20) => 
                           muxInC_2_20_port, C(19) => n20, C(18) => 
                           muxInC_2_18_port, C(17) => muxInC_2_17_port, C(16) 
                           => muxInC_2_16_port, C(15) => muxInC_2_15_port, 
                           C(14) => muxInC_2_14_port, C(13) => muxInC_2_13_port
                           , C(12) => muxInC_2_12_port, C(11) => 
                           muxInC_2_11_port, C(10) => muxInC_2_10_port, C(9) =>
                           muxInC_2_9_port, C(8) => muxInC_2_8_port, C(7) => 
                           muxInC_2_7_port, C(6) => muxInC_2_6_port, C(5) => 
                           muxInC_2_5_port, C(4) => muxInC_2_4_port, C(3) => 
                           muxInC_2_3_port, C(2) => muxInC_2_2_port, C(1) => 
                           muxInC_2_1_port, C(0) => muxInC_2_0_port, D(31) => 
                           muxInD_2_31_port, D(30) => muxInD_2_30_port, D(29) 
                           => muxInD_2_29_port, D(28) => muxInD_2_28_port, 
                           D(27) => muxInD_2_27_port, D(26) => muxInD_2_26_port
                           , D(25) => muxInD_2_25_port, D(24) => 
                           muxInD_2_24_port, D(23) => muxInD_2_23_port, D(22) 
                           => muxInD_2_22_port, D(21) => muxInD_2_21_port, 
                           D(20) => muxInD_2_20_port, D(19) => muxInD_2_19_port
                           , D(18) => muxInD_2_18_port, D(17) => 
                           muxInD_2_17_port, D(16) => muxInD_2_16_port, D(15) 
                           => muxInD_2_15_port, D(14) => muxInD_2_14_port, 
                           D(13) => muxInD_2_13_port, D(12) => muxInD_2_12_port
                           , D(11) => muxInD_2_11_port, D(10) => 
                           muxInD_2_10_port, D(9) => muxInD_2_9_port, D(8) => 
                           muxInD_2_8_port, D(7) => muxInD_2_7_port, D(6) => 
                           muxInD_2_6_port, D(5) => muxInD_2_5_port, D(4) => 
                           muxInD_2_4_port, D(3) => muxInD_2_3_port, D(2) => 
                           muxInD_2_2_port, D(1) => muxInD_2_1_port, D(0) => 
                           muxInD_2_0_port, E(31) => muxInE_2_31_port, E(30) =>
                           muxInE_2_30_port, E(29) => muxInE_2_29_port, E(28) 
                           => muxInE_2_28_port, E(27) => muxInE_2_27_port, 
                           E(26) => muxInE_2_26_port, E(25) => muxInE_2_25_port
                           , E(24) => muxInE_2_24_port, E(23) => 
                           muxInE_2_23_port, E(22) => muxInE_2_22_port, E(21) 
                           => muxInE_2_21_port, E(20) => muxInC_2_19_port, 
                           E(19) => muxInE_2_19_port, E(18) => muxInE_2_18_port
                           , E(17) => muxInE_2_17_port, E(16) => 
                           muxInE_2_16_port, E(15) => muxInE_2_15_port, E(14) 
                           => muxInE_2_14_port, E(13) => muxInE_2_13_port, 
                           E(12) => muxInE_2_12_port, E(11) => muxInE_2_11_port
                           , E(10) => muxInE_2_10_port, E(9) => muxInE_2_9_port
                           , E(8) => muxInE_2_8_port, E(7) => muxInE_2_7_port, 
                           E(6) => muxInE_2_6_port, E(5) => muxInE_2_5_port, 
                           E(4) => muxInE_2_4_port, E(3) => muxInE_2_3_port, 
                           E(2) => muxInE_2_2_port, E(1) => muxInE_2_1_port, 
                           E(0) => muxInE_2_0_port, Sel(2) => B(5), Sel(1) => 
                           B(4), Sel(0) => B(3), O(31) => outmux_2_31_port, 
                           O(30) => outmux_2_30_port, O(29) => outmux_2_29_port
                           , O(28) => outmux_2_28_port, O(27) => 
                           outmux_2_27_port, O(26) => outmux_2_26_port, O(25) 
                           => outmux_2_25_port, O(24) => outmux_2_24_port, 
                           O(23) => outmux_2_23_port, O(22) => outmux_2_22_port
                           , O(21) => outmux_2_21_port, O(20) => 
                           outmux_2_20_port, O(19) => outmux_2_19_port, O(18) 
                           => outmux_2_18_port, O(17) => outmux_2_17_port, 
                           O(16) => outmux_2_16_port, O(15) => outmux_2_15_port
                           , O(14) => outmux_2_14_port, O(13) => 
                           outmux_2_13_port, O(12) => outmux_2_12_port, O(11) 
                           => outmux_2_11_port, O(10) => outmux_2_10_port, O(9)
                           => outmux_2_9_port, O(8) => outmux_2_8_port, O(7) =>
                           outmux_2_7_port, O(6) => outmux_2_6_port, O(5) => 
                           outmux_2_5_port, O(4) => outmux_2_4_port, O(3) => 
                           outmux_2_3_port, O(2) => outmux_2_2_port, O(1) => 
                           outmux_2_1_port, O(0) => outmux_2_0_port);
   MUXGEN_3 : mux_N32_5 port map( A(31) => X_Logic0_port, A(30) => 
                           X_Logic0_port, A(29) => X_Logic0_port, A(28) => 
                           X_Logic0_port, A(27) => X_Logic0_port, A(26) => 
                           X_Logic0_port, A(25) => X_Logic0_port, A(24) => 
                           X_Logic0_port, A(23) => X_Logic0_port, A(22) => 
                           X_Logic0_port, A(21) => X_Logic0_port, A(20) => 
                           X_Logic0_port, A(19) => X_Logic0_port, A(18) => 
                           X_Logic0_port, A(17) => X_Logic0_port, A(16) => 
                           X_Logic0_port, A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(31) => muxInB_3_31_port, B(30) => 
                           muxInB_3_30_port, B(29) => muxInB_3_29_port, B(28) 
                           => muxInB_3_28_port, B(27) => muxInB_3_27_port, 
                           B(26) => muxInB_3_26_port, B(25) => muxInB_3_25_port
                           , B(24) => muxInB_3_24_port, B(23) => 
                           muxInB_3_23_port, B(22) => muxInB_3_22_port, B(21) 
                           => muxInB_3_21_port, B(20) => muxInB_3_20_port, 
                           B(19) => muxInB_3_19_port, B(18) => muxInB_3_18_port
                           , B(17) => muxInB_3_17_port, B(16) => 
                           muxInB_3_16_port, B(15) => muxInB_3_15_port, B(14) 
                           => muxInB_3_14_port, B(13) => muxInB_3_13_port, 
                           B(12) => muxInB_3_12_port, B(11) => muxInB_3_11_port
                           , B(10) => muxInB_3_10_port, B(9) => muxInB_3_9_port
                           , B(8) => muxInB_3_8_port, B(7) => muxInB_3_7_port, 
                           B(6) => muxInB_3_6_port, B(5) => muxInB_3_5_port, 
                           B(4) => muxInB_3_4_port, B(3) => muxInB_3_3_port, 
                           B(2) => muxInB_3_2_port, B(1) => muxInB_3_1_port, 
                           B(0) => muxInB_3_0_port, C(31) => muxInC_3_31_port, 
                           C(30) => muxInC_3_30_port, C(29) => muxInC_3_29_port
                           , C(28) => muxInC_3_28_port, C(27) => 
                           muxInC_3_27_port, C(26) => muxInC_3_26_port, C(25) 
                           => muxInC_3_25_port, C(24) => muxInC_3_24_port, 
                           C(23) => muxInC_3_23_port, C(22) => muxInC_3_22_port
                           , C(21) => muxInC_3_21_port, C(20) => 
                           muxInC_3_20_port, C(19) => muxInC_3_19_port, C(18) 
                           => muxInC_3_18_port, C(17) => muxInC_3_17_port, 
                           C(16) => muxInC_3_16_port, C(15) => muxInC_3_15_port
                           , C(14) => muxInC_3_14_port, C(13) => 
                           muxInC_3_13_port, C(12) => muxInC_3_12_port, C(11) 
                           => muxInC_3_11_port, C(10) => muxInC_3_10_port, C(9)
                           => muxInC_3_9_port, C(8) => muxInC_3_8_port, C(7) =>
                           muxInC_3_7_port, C(6) => muxInC_3_6_port, C(5) => 
                           muxInC_3_5_port, C(4) => muxInC_3_4_port, C(3) => 
                           muxInC_3_3_port, C(2) => muxInC_3_2_port, C(1) => 
                           muxInC_3_1_port, C(0) => muxInC_3_0_port, D(31) => 
                           muxInD_3_31_port, D(30) => muxInD_3_30_port, D(29) 
                           => muxInD_3_29_port, D(28) => muxInD_3_28_port, 
                           D(27) => muxInD_3_27_port, D(26) => muxInD_3_26_port
                           , D(25) => muxInD_3_25_port, D(24) => 
                           muxInD_3_24_port, D(23) => muxInD_3_23_port, D(22) 
                           => muxInD_3_22_port, D(21) => muxInD_3_21_port, 
                           D(20) => muxInD_3_20_port, D(19) => muxInD_3_19_port
                           , D(18) => muxInD_3_18_port, D(17) => 
                           muxInD_3_17_port, D(16) => muxInD_3_16_port, D(15) 
                           => muxInD_3_15_port, D(14) => muxInD_3_14_port, 
                           D(13) => muxInD_3_13_port, D(12) => muxInD_3_12_port
                           , D(11) => muxInD_3_11_port, D(10) => 
                           muxInD_3_10_port, D(9) => muxInD_3_9_port, D(8) => 
                           muxInD_3_8_port, D(7) => muxInD_3_7_port, D(6) => 
                           muxInD_3_6_port, D(5) => muxInD_3_5_port, D(4) => 
                           muxInD_3_4_port, D(3) => muxInD_3_3_port, D(2) => 
                           muxInD_3_2_port, D(1) => muxInD_3_1_port, D(0) => 
                           muxInD_3_0_port, E(31) => muxInE_3_31_port, E(30) =>
                           muxInE_3_30_port, E(29) => muxInE_3_29_port, E(28) 
                           => muxInE_3_28_port, E(27) => muxInE_3_27_port, 
                           E(26) => muxInE_3_26_port, E(25) => muxInE_3_25_port
                           , E(24) => muxInE_3_24_port, E(23) => 
                           muxInE_3_23_port, E(22) => muxInE_3_22_port, E(21) 
                           => muxInE_3_21_port, E(20) => muxInE_3_20_port, 
                           E(19) => muxInE_3_19_port, E(18) => muxInE_3_18_port
                           , E(17) => muxInE_3_17_port, E(16) => 
                           muxInE_3_16_port, E(15) => muxInE_3_15_port, E(14) 
                           => muxInE_3_14_port, E(13) => muxInE_3_13_port, 
                           E(12) => muxInE_3_12_port, E(11) => muxInE_3_11_port
                           , E(10) => muxInE_3_10_port, E(9) => muxInE_3_9_port
                           , E(8) => muxInE_3_8_port, E(7) => muxInE_3_7_port, 
                           E(6) => muxInE_3_6_port, E(5) => muxInE_3_5_port, 
                           E(4) => muxInE_3_4_port, E(3) => muxInE_3_3_port, 
                           E(2) => muxInE_3_2_port, E(1) => muxInE_3_1_port, 
                           E(0) => muxInE_3_0_port, Sel(2) => B(7), Sel(1) => 
                           B(6), Sel(0) => B(5), O(31) => outmux_3_31_port, 
                           O(30) => outmux_3_30_port, O(29) => outmux_3_29_port
                           , O(28) => outmux_3_28_port, O(27) => 
                           outmux_3_27_port, O(26) => outmux_3_26_port, O(25) 
                           => outmux_3_25_port, O(24) => outmux_3_24_port, 
                           O(23) => outmux_3_23_port, O(22) => outmux_3_22_port
                           , O(21) => outmux_3_21_port, O(20) => 
                           outmux_3_20_port, O(19) => outmux_3_19_port, O(18) 
                           => outmux_3_18_port, O(17) => outmux_3_17_port, 
                           O(16) => outmux_3_16_port, O(15) => outmux_3_15_port
                           , O(14) => outmux_3_14_port, O(13) => 
                           outmux_3_13_port, O(12) => outmux_3_12_port, O(11) 
                           => outmux_3_11_port, O(10) => outmux_3_10_port, O(9)
                           => outmux_3_9_port, O(8) => outmux_3_8_port, O(7) =>
                           outmux_3_7_port, O(6) => outmux_3_6_port, O(5) => 
                           outmux_3_5_port, O(4) => outmux_3_4_port, O(3) => 
                           outmux_3_3_port, O(2) => outmux_3_2_port, O(1) => 
                           outmux_3_1_port, O(0) => outmux_3_0_port);
   MUXGEN_4 : mux_N32_4 port map( A(31) => X_Logic0_port, A(30) => 
                           X_Logic0_port, A(29) => X_Logic0_port, A(28) => 
                           X_Logic0_port, A(27) => X_Logic0_port, A(26) => 
                           X_Logic0_port, A(25) => X_Logic0_port, A(24) => 
                           X_Logic0_port, A(23) => X_Logic0_port, A(22) => 
                           X_Logic0_port, A(21) => X_Logic0_port, A(20) => 
                           X_Logic0_port, A(19) => X_Logic0_port, A(18) => 
                           X_Logic0_port, A(17) => X_Logic0_port, A(16) => 
                           X_Logic0_port, A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(31) => muxInB_4_31_port, B(30) => 
                           muxInB_4_30_port, B(29) => muxInB_4_29_port, B(28) 
                           => muxInB_4_28_port, B(27) => muxInB_4_27_port, 
                           B(26) => muxInB_4_26_port, B(25) => muxInB_4_25_port
                           , B(24) => muxInB_4_24_port, B(23) => 
                           muxInB_4_23_port, B(22) => muxInB_4_22_port, B(21) 
                           => muxInB_4_21_port, B(20) => muxInB_4_20_port, 
                           B(19) => muxInB_4_19_port, B(18) => muxInB_4_18_port
                           , B(17) => muxInB_4_17_port, B(16) => 
                           muxInB_4_16_port, B(15) => muxInB_4_15_port, B(14) 
                           => muxInB_4_14_port, B(13) => muxInB_4_13_port, 
                           B(12) => muxInB_4_12_port, B(11) => muxInB_4_11_port
                           , B(10) => muxInB_4_10_port, B(9) => muxInB_4_9_port
                           , B(8) => muxInB_4_8_port, B(7) => muxInB_4_7_port, 
                           B(6) => muxInB_4_6_port, B(5) => muxInB_4_5_port, 
                           B(4) => muxInB_4_4_port, B(3) => muxInB_4_3_port, 
                           B(2) => muxInB_4_2_port, B(1) => muxInB_4_1_port, 
                           B(0) => muxInB_4_0_port, C(31) => muxInC_4_31_port, 
                           C(30) => muxInC_4_30_port, C(29) => muxInC_4_29_port
                           , C(28) => muxInC_4_28_port, C(27) => 
                           muxInC_4_27_port, C(26) => muxInC_4_26_port, C(25) 
                           => muxInC_4_25_port, C(24) => muxInC_4_24_port, 
                           C(23) => muxInC_4_23_port, C(22) => muxInC_4_22_port
                           , C(21) => muxInC_4_21_port, C(20) => 
                           muxInC_4_20_port, C(19) => muxInC_4_19_port, C(18) 
                           => muxInC_4_18_port, C(17) => muxInC_4_17_port, 
                           C(16) => muxInC_4_16_port, C(15) => muxInC_4_15_port
                           , C(14) => muxInC_4_14_port, C(13) => 
                           muxInC_4_13_port, C(12) => muxInC_4_12_port, C(11) 
                           => muxInC_4_11_port, C(10) => muxInC_4_10_port, C(9)
                           => muxInC_4_9_port, C(8) => muxInC_4_8_port, C(7) =>
                           muxInC_4_7_port, C(6) => muxInC_4_6_port, C(5) => 
                           muxInC_4_5_port, C(4) => muxInC_4_4_port, C(3) => 
                           muxInC_4_3_port, C(2) => muxInC_4_2_port, C(1) => 
                           muxInC_4_1_port, C(0) => muxInC_4_0_port, D(31) => 
                           muxInD_4_31_port, D(30) => muxInD_4_30_port, D(29) 
                           => muxInD_4_29_port, D(28) => muxInD_4_28_port, 
                           D(27) => muxInD_4_27_port, D(26) => muxInD_4_26_port
                           , D(25) => muxInD_4_25_port, D(24) => 
                           muxInD_4_24_port, D(23) => muxInD_4_23_port, D(22) 
                           => muxInD_4_22_port, D(21) => muxInD_4_21_port, 
                           D(20) => muxInD_4_20_port, D(19) => muxInD_4_19_port
                           , D(18) => muxInD_4_18_port, D(17) => 
                           muxInD_4_17_port, D(16) => muxInD_4_16_port, D(15) 
                           => muxInD_4_15_port, D(14) => muxInD_4_14_port, 
                           D(13) => muxInD_4_13_port, D(12) => muxInD_4_12_port
                           , D(11) => muxInD_4_11_port, D(10) => 
                           muxInD_4_10_port, D(9) => muxInD_4_9_port, D(8) => 
                           muxInD_4_8_port, D(7) => muxInD_4_7_port, D(6) => 
                           muxInD_4_6_port, D(5) => muxInD_4_5_port, D(4) => 
                           muxInD_4_4_port, D(3) => muxInD_4_3_port, D(2) => 
                           muxInD_4_2_port, D(1) => muxInD_4_1_port, D(0) => 
                           muxInD_4_0_port, E(31) => muxInE_4_31_port, E(30) =>
                           muxInE_4_30_port, E(29) => muxInE_4_29_port, E(28) 
                           => muxInE_4_28_port, E(27) => muxInE_4_27_port, 
                           E(26) => muxInE_4_26_port, E(25) => muxInE_4_25_port
                           , E(24) => muxInE_4_24_port, E(23) => 
                           muxInE_4_23_port, E(22) => muxInE_4_22_port, E(21) 
                           => muxInE_4_21_port, E(20) => muxInE_4_20_port, 
                           E(19) => muxInE_4_19_port, E(18) => muxInE_4_18_port
                           , E(17) => muxInE_4_17_port, E(16) => 
                           muxInE_4_16_port, E(15) => muxInE_4_15_port, E(14) 
                           => muxInE_4_14_port, E(13) => muxInE_4_13_port, 
                           E(12) => muxInE_4_12_port, E(11) => muxInE_4_11_port
                           , E(10) => muxInE_4_10_port, E(9) => muxInE_4_9_port
                           , E(8) => muxInE_4_8_port, E(7) => muxInE_4_7_port, 
                           E(6) => muxInE_4_6_port, E(5) => muxInE_4_5_port, 
                           E(4) => muxInE_4_4_port, E(3) => muxInE_4_3_port, 
                           E(2) => muxInE_4_2_port, E(1) => muxInE_4_1_port, 
                           E(0) => muxInE_4_0_port, Sel(2) => B(9), Sel(1) => 
                           B(8), Sel(0) => B(7), O(31) => outmux_4_31_port, 
                           O(30) => outmux_4_30_port, O(29) => outmux_4_29_port
                           , O(28) => outmux_4_28_port, O(27) => 
                           outmux_4_27_port, O(26) => outmux_4_26_port, O(25) 
                           => outmux_4_25_port, O(24) => outmux_4_24_port, 
                           O(23) => outmux_4_23_port, O(22) => outmux_4_22_port
                           , O(21) => outmux_4_21_port, O(20) => 
                           outmux_4_20_port, O(19) => outmux_4_19_port, O(18) 
                           => outmux_4_18_port, O(17) => outmux_4_17_port, 
                           O(16) => outmux_4_16_port, O(15) => outmux_4_15_port
                           , O(14) => outmux_4_14_port, O(13) => 
                           outmux_4_13_port, O(12) => outmux_4_12_port, O(11) 
                           => outmux_4_11_port, O(10) => outmux_4_10_port, O(9)
                           => outmux_4_9_port, O(8) => outmux_4_8_port, O(7) =>
                           outmux_4_7_port, O(6) => outmux_4_6_port, O(5) => 
                           outmux_4_5_port, O(4) => outmux_4_4_port, O(3) => 
                           outmux_4_3_port, O(2) => outmux_4_2_port, O(1) => 
                           outmux_4_1_port, O(0) => outmux_4_0_port);
   MUXGEN_5 : mux_N32_3 port map( A(31) => X_Logic0_port, A(30) => 
                           X_Logic0_port, A(29) => X_Logic0_port, A(28) => 
                           X_Logic0_port, A(27) => X_Logic0_port, A(26) => 
                           X_Logic0_port, A(25) => X_Logic0_port, A(24) => 
                           X_Logic0_port, A(23) => X_Logic0_port, A(22) => 
                           X_Logic0_port, A(21) => X_Logic0_port, A(20) => 
                           X_Logic0_port, A(19) => X_Logic0_port, A(18) => 
                           X_Logic0_port, A(17) => X_Logic0_port, A(16) => 
                           X_Logic0_port, A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(31) => muxInB_5_31_port, B(30) => 
                           muxInB_5_30_port, B(29) => muxInB_5_29_port, B(28) 
                           => muxInB_5_28_port, B(27) => muxInB_5_27_port, 
                           B(26) => muxInB_5_26_port, B(25) => muxInB_5_25_port
                           , B(24) => muxInB_5_24_port, B(23) => 
                           muxInB_5_23_port, B(22) => muxInB_5_22_port, B(21) 
                           => muxInB_5_21_port, B(20) => muxInB_5_20_port, 
                           B(19) => muxInB_5_19_port, B(18) => muxInB_5_18_port
                           , B(17) => muxInB_5_17_port, B(16) => 
                           muxInB_5_16_port, B(15) => muxInB_5_15_port, B(14) 
                           => muxInB_5_14_port, B(13) => muxInB_5_13_port, 
                           B(12) => muxInB_5_12_port, B(11) => muxInB_5_11_port
                           , B(10) => muxInB_5_10_port, B(9) => muxInB_5_9_port
                           , B(8) => muxInB_5_8_port, B(7) => muxInB_5_7_port, 
                           B(6) => muxInB_5_6_port, B(5) => muxInB_5_5_port, 
                           B(4) => muxInB_5_4_port, B(3) => muxInB_5_3_port, 
                           B(2) => muxInB_5_2_port, B(1) => muxInB_5_1_port, 
                           B(0) => muxInB_5_0_port, C(31) => muxInC_5_31_port, 
                           C(30) => muxInC_5_30_port, C(29) => muxInC_5_29_port
                           , C(28) => muxInC_5_28_port, C(27) => 
                           muxInC_5_27_port, C(26) => muxInC_5_26_port, C(25) 
                           => muxInC_5_25_port, C(24) => muxInC_5_24_port, 
                           C(23) => muxInC_5_23_port, C(22) => muxInC_5_22_port
                           , C(21) => muxInC_5_21_port, C(20) => 
                           muxInC_5_20_port, C(19) => muxInC_5_19_port, C(18) 
                           => muxInC_5_18_port, C(17) => muxInC_5_17_port, 
                           C(16) => muxInC_5_16_port, C(15) => muxInC_5_15_port
                           , C(14) => muxInC_5_14_port, C(13) => 
                           muxInC_5_13_port, C(12) => muxInC_5_12_port, C(11) 
                           => muxInC_5_11_port, C(10) => muxInC_5_10_port, C(9)
                           => muxInC_5_9_port, C(8) => muxInC_5_8_port, C(7) =>
                           muxInC_5_7_port, C(6) => muxInC_5_6_port, C(5) => 
                           muxInC_5_5_port, C(4) => muxInC_5_4_port, C(3) => 
                           muxInC_5_3_port, C(2) => muxInC_5_2_port, C(1) => 
                           muxInC_5_1_port, C(0) => muxInC_5_0_port, D(31) => 
                           muxInD_5_31_port, D(30) => muxInD_5_30_port, D(29) 
                           => muxInD_5_29_port, D(28) => muxInD_5_28_port, 
                           D(27) => muxInD_5_27_port, D(26) => muxInD_5_26_port
                           , D(25) => muxInD_5_25_port, D(24) => 
                           muxInD_5_24_port, D(23) => muxInD_5_23_port, D(22) 
                           => muxInD_5_22_port, D(21) => muxInD_5_21_port, 
                           D(20) => muxInD_5_20_port, D(19) => muxInD_5_19_port
                           , D(18) => muxInD_5_18_port, D(17) => 
                           muxInD_5_17_port, D(16) => muxInD_5_16_port, D(15) 
                           => muxInD_5_15_port, D(14) => muxInD_5_14_port, 
                           D(13) => muxInD_5_13_port, D(12) => muxInD_5_12_port
                           , D(11) => muxInD_5_11_port, D(10) => 
                           muxInD_5_10_port, D(9) => muxInD_5_9_port, D(8) => 
                           muxInD_5_8_port, D(7) => muxInD_5_7_port, D(6) => 
                           muxInD_5_6_port, D(5) => muxInD_5_5_port, D(4) => 
                           muxInD_5_4_port, D(3) => muxInD_5_3_port, D(2) => 
                           muxInD_5_2_port, D(1) => muxInD_5_1_port, D(0) => 
                           muxInD_5_0_port, E(31) => muxInE_5_31_port, E(30) =>
                           muxInE_5_30_port, E(29) => muxInE_5_29_port, E(28) 
                           => muxInE_5_28_port, E(27) => muxInE_5_27_port, 
                           E(26) => muxInE_5_26_port, E(25) => muxInE_5_25_port
                           , E(24) => muxInE_5_24_port, E(23) => 
                           muxInE_5_23_port, E(22) => muxInE_5_22_port, E(21) 
                           => muxInE_5_21_port, E(20) => muxInE_5_20_port, 
                           E(19) => muxInE_5_19_port, E(18) => muxInE_5_18_port
                           , E(17) => muxInE_5_17_port, E(16) => 
                           muxInE_5_16_port, E(15) => muxInE_5_15_port, E(14) 
                           => muxInE_5_14_port, E(13) => muxInE_5_13_port, 
                           E(12) => muxInE_5_12_port, E(11) => muxInE_5_11_port
                           , E(10) => muxInE_5_10_port, E(9) => muxInE_5_9_port
                           , E(8) => muxInE_5_8_port, E(7) => muxInE_5_7_port, 
                           E(6) => muxInE_5_6_port, E(5) => muxInE_5_5_port, 
                           E(4) => muxInE_5_4_port, E(3) => muxInE_5_3_port, 
                           E(2) => muxInE_5_2_port, E(1) => muxInE_5_1_port, 
                           E(0) => muxInE_5_0_port, Sel(2) => B(11), Sel(1) => 
                           B(10), Sel(0) => B(9), O(31) => outmux_5_31_port, 
                           O(30) => outmux_5_30_port, O(29) => outmux_5_29_port
                           , O(28) => outmux_5_28_port, O(27) => 
                           outmux_5_27_port, O(26) => outmux_5_26_port, O(25) 
                           => outmux_5_25_port, O(24) => outmux_5_24_port, 
                           O(23) => outmux_5_23_port, O(22) => outmux_5_22_port
                           , O(21) => outmux_5_21_port, O(20) => 
                           outmux_5_20_port, O(19) => outmux_5_19_port, O(18) 
                           => outmux_5_18_port, O(17) => outmux_5_17_port, 
                           O(16) => outmux_5_16_port, O(15) => outmux_5_15_port
                           , O(14) => outmux_5_14_port, O(13) => 
                           outmux_5_13_port, O(12) => outmux_5_12_port, O(11) 
                           => outmux_5_11_port, O(10) => outmux_5_10_port, O(9)
                           => outmux_5_9_port, O(8) => outmux_5_8_port, O(7) =>
                           outmux_5_7_port, O(6) => outmux_5_6_port, O(5) => 
                           outmux_5_5_port, O(4) => outmux_5_4_port, O(3) => 
                           outmux_5_3_port, O(2) => outmux_5_2_port, O(1) => 
                           outmux_5_1_port, O(0) => outmux_5_0_port);
   MUXGEN_6 : mux_N32_2 port map( A(31) => X_Logic0_port, A(30) => 
                           X_Logic0_port, A(29) => X_Logic0_port, A(28) => 
                           X_Logic0_port, A(27) => X_Logic0_port, A(26) => 
                           X_Logic0_port, A(25) => X_Logic0_port, A(24) => 
                           X_Logic0_port, A(23) => X_Logic0_port, A(22) => 
                           X_Logic0_port, A(21) => X_Logic0_port, A(20) => 
                           X_Logic0_port, A(19) => X_Logic0_port, A(18) => 
                           X_Logic0_port, A(17) => X_Logic0_port, A(16) => 
                           X_Logic0_port, A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(31) => muxInB_6_31_port, B(30) => 
                           muxInB_6_30_port, B(29) => muxInB_6_29_port, B(28) 
                           => muxInB_6_28_port, B(27) => muxInB_6_27_port, 
                           B(26) => muxInB_6_26_port, B(25) => muxInB_6_25_port
                           , B(24) => muxInB_6_24_port, B(23) => 
                           muxInB_6_23_port, B(22) => muxInB_6_22_port, B(21) 
                           => muxInB_6_21_port, B(20) => muxInB_6_20_port, 
                           B(19) => muxInB_6_19_port, B(18) => muxInB_6_18_port
                           , B(17) => muxInB_6_17_port, B(16) => 
                           muxInB_6_16_port, B(15) => muxInB_6_15_port, B(14) 
                           => muxInB_6_14_port, B(13) => muxInB_6_13_port, 
                           B(12) => muxInB_6_12_port, B(11) => muxInB_6_11_port
                           , B(10) => muxInB_6_10_port, B(9) => muxInB_6_9_port
                           , B(8) => muxInB_6_8_port, B(7) => muxInB_6_7_port, 
                           B(6) => muxInB_6_6_port, B(5) => muxInB_6_5_port, 
                           B(4) => muxInB_6_4_port, B(3) => muxInB_6_3_port, 
                           B(2) => muxInB_6_2_port, B(1) => muxInB_6_1_port, 
                           B(0) => muxInB_6_0_port, C(31) => muxInC_6_31_port, 
                           C(30) => muxInC_6_30_port, C(29) => muxInC_6_29_port
                           , C(28) => muxInC_6_28_port, C(27) => 
                           muxInC_6_27_port, C(26) => muxInC_6_26_port, C(25) 
                           => muxInC_6_25_port, C(24) => muxInC_6_24_port, 
                           C(23) => muxInC_6_23_port, C(22) => muxInC_6_22_port
                           , C(21) => muxInC_6_21_port, C(20) => 
                           muxInC_6_20_port, C(19) => muxInC_6_19_port, C(18) 
                           => muxInC_6_18_port, C(17) => muxInC_6_17_port, 
                           C(16) => muxInC_6_16_port, C(15) => muxInC_6_15_port
                           , C(14) => muxInC_6_14_port, C(13) => 
                           muxInC_6_13_port, C(12) => muxInC_6_12_port, C(11) 
                           => muxInC_6_11_port, C(10) => muxInC_6_10_port, C(9)
                           => muxInC_6_9_port, C(8) => muxInC_6_8_port, C(7) =>
                           muxInC_6_7_port, C(6) => muxInC_6_6_port, C(5) => 
                           muxInC_6_5_port, C(4) => muxInC_6_4_port, C(3) => 
                           muxInC_6_3_port, C(2) => muxInC_6_2_port, C(1) => 
                           muxInC_6_1_port, C(0) => muxInC_6_0_port, D(31) => 
                           muxInD_6_31_port, D(30) => muxInD_6_30_port, D(29) 
                           => muxInD_6_29_port, D(28) => muxInD_6_28_port, 
                           D(27) => muxInD_6_27_port, D(26) => muxInD_6_26_port
                           , D(25) => muxInD_6_25_port, D(24) => 
                           muxInD_6_24_port, D(23) => muxInD_6_23_port, D(22) 
                           => muxInD_6_22_port, D(21) => muxInD_6_21_port, 
                           D(20) => muxInD_6_20_port, D(19) => muxInD_6_19_port
                           , D(18) => muxInD_6_18_port, D(17) => 
                           muxInD_6_17_port, D(16) => muxInD_6_16_port, D(15) 
                           => muxInD_6_15_port, D(14) => muxInD_6_14_port, 
                           D(13) => muxInD_6_13_port, D(12) => muxInD_6_12_port
                           , D(11) => muxInD_6_11_port, D(10) => 
                           muxInD_6_10_port, D(9) => muxInD_6_9_port, D(8) => 
                           muxInD_6_8_port, D(7) => muxInD_6_7_port, D(6) => 
                           muxInD_6_6_port, D(5) => muxInD_6_5_port, D(4) => 
                           muxInD_6_4_port, D(3) => muxInD_6_3_port, D(2) => 
                           muxInD_6_2_port, D(1) => muxInD_6_1_port, D(0) => 
                           muxInD_6_0_port, E(31) => muxInE_6_31_port, E(30) =>
                           muxInE_6_30_port, E(29) => muxInE_6_29_port, E(28) 
                           => muxInE_6_28_port, E(27) => muxInE_6_27_port, 
                           E(26) => muxInE_6_26_port, E(25) => muxInE_6_25_port
                           , E(24) => muxInE_6_24_port, E(23) => 
                           muxInE_6_23_port, E(22) => muxInE_6_22_port, E(21) 
                           => muxInE_6_21_port, E(20) => muxInE_6_20_port, 
                           E(19) => muxInE_6_19_port, E(18) => muxInE_6_18_port
                           , E(17) => muxInE_6_17_port, E(16) => 
                           muxInE_6_16_port, E(15) => muxInE_6_15_port, E(14) 
                           => muxInE_6_14_port, E(13) => muxInE_6_13_port, 
                           E(12) => muxInE_6_12_port, E(11) => muxInE_6_11_port
                           , E(10) => muxInE_6_10_port, E(9) => muxInE_6_9_port
                           , E(8) => muxInE_6_8_port, E(7) => muxInE_6_7_port, 
                           E(6) => muxInE_6_6_port, E(5) => muxInE_6_5_port, 
                           E(4) => muxInE_6_4_port, E(3) => muxInE_6_3_port, 
                           E(2) => muxInE_6_2_port, E(1) => muxInE_6_1_port, 
                           E(0) => muxInE_6_0_port, Sel(2) => B(13), Sel(1) => 
                           B(12), Sel(0) => B(11), O(31) => outmux_6_31_port, 
                           O(30) => outmux_6_30_port, O(29) => outmux_6_29_port
                           , O(28) => outmux_6_28_port, O(27) => 
                           outmux_6_27_port, O(26) => outmux_6_26_port, O(25) 
                           => outmux_6_25_port, O(24) => outmux_6_24_port, 
                           O(23) => outmux_6_23_port, O(22) => outmux_6_22_port
                           , O(21) => outmux_6_21_port, O(20) => 
                           outmux_6_20_port, O(19) => outmux_6_19_port, O(18) 
                           => outmux_6_18_port, O(17) => outmux_6_17_port, 
                           O(16) => outmux_6_16_port, O(15) => outmux_6_15_port
                           , O(14) => outmux_6_14_port, O(13) => 
                           outmux_6_13_port, O(12) => outmux_6_12_port, O(11) 
                           => outmux_6_11_port, O(10) => outmux_6_10_port, O(9)
                           => outmux_6_9_port, O(8) => outmux_6_8_port, O(7) =>
                           outmux_6_7_port, O(6) => outmux_6_6_port, O(5) => 
                           outmux_6_5_port, O(4) => outmux_6_4_port, O(3) => 
                           outmux_6_3_port, O(2) => outmux_6_2_port, O(1) => 
                           outmux_6_1_port, O(0) => outmux_6_0_port);
   MUXGEN_7 : mux_N32_1 port map( A(31) => X_Logic0_port, A(30) => 
                           X_Logic0_port, A(29) => X_Logic0_port, A(28) => 
                           X_Logic0_port, A(27) => X_Logic0_port, A(26) => 
                           X_Logic0_port, A(25) => X_Logic0_port, A(24) => 
                           X_Logic0_port, A(23) => X_Logic0_port, A(22) => 
                           X_Logic0_port, A(21) => X_Logic0_port, A(20) => 
                           X_Logic0_port, A(19) => X_Logic0_port, A(18) => 
                           X_Logic0_port, A(17) => X_Logic0_port, A(16) => 
                           X_Logic0_port, A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(31) => muxInB_7_31_port, B(30) => 
                           muxInB_7_30_port, B(29) => muxInB_7_29_port, B(28) 
                           => muxInB_7_28_port, B(27) => muxInB_7_27_port, 
                           B(26) => muxInB_7_26_port, B(25) => muxInB_7_25_port
                           , B(24) => muxInB_7_24_port, B(23) => 
                           muxInB_7_23_port, B(22) => muxInB_7_22_port, B(21) 
                           => muxInB_7_21_port, B(20) => muxInB_7_20_port, 
                           B(19) => muxInB_7_19_port, B(18) => muxInB_7_18_port
                           , B(17) => muxInB_7_17_port, B(16) => 
                           muxInB_7_16_port, B(15) => muxInB_7_15_port, B(14) 
                           => muxInB_7_14_port, B(13) => muxInB_7_13_port, 
                           B(12) => muxInB_7_12_port, B(11) => muxInB_7_11_port
                           , B(10) => muxInB_7_10_port, B(9) => muxInB_7_9_port
                           , B(8) => muxInB_7_8_port, B(7) => muxInB_7_7_port, 
                           B(6) => muxInB_7_6_port, B(5) => muxInB_7_5_port, 
                           B(4) => muxInB_7_4_port, B(3) => muxInB_7_3_port, 
                           B(2) => muxInB_7_2_port, B(1) => muxInB_7_1_port, 
                           B(0) => muxInB_7_0_port, C(31) => muxInC_7_31_port, 
                           C(30) => muxInC_7_30_port, C(29) => muxInC_7_29_port
                           , C(28) => muxInC_7_28_port, C(27) => 
                           muxInC_7_27_port, C(26) => muxInC_7_26_port, C(25) 
                           => muxInC_7_25_port, C(24) => muxInC_7_24_port, 
                           C(23) => muxInC_7_23_port, C(22) => muxInC_7_22_port
                           , C(21) => muxInC_7_21_port, C(20) => 
                           muxInC_7_20_port, C(19) => muxInC_7_19_port, C(18) 
                           => muxInC_7_18_port, C(17) => muxInC_7_17_port, 
                           C(16) => muxInC_7_16_port, C(15) => muxInC_7_15_port
                           , C(14) => muxInC_7_14_port, C(13) => 
                           muxInC_7_13_port, C(12) => muxInC_7_12_port, C(11) 
                           => muxInC_7_11_port, C(10) => muxInC_7_10_port, C(9)
                           => muxInC_7_9_port, C(8) => muxInC_7_8_port, C(7) =>
                           muxInC_7_7_port, C(6) => muxInC_7_6_port, C(5) => 
                           muxInC_7_5_port, C(4) => muxInC_7_4_port, C(3) => 
                           muxInC_7_3_port, C(2) => muxInC_7_2_port, C(1) => 
                           muxInC_7_1_port, C(0) => muxInC_7_0_port, D(31) => 
                           muxInD_7_31_port, D(30) => muxInD_7_30_port, D(29) 
                           => muxInD_7_29_port, D(28) => muxInD_7_28_port, 
                           D(27) => muxInD_7_27_port, D(26) => muxInD_7_26_port
                           , D(25) => muxInD_7_25_port, D(24) => 
                           muxInD_7_24_port, D(23) => muxInD_7_23_port, D(22) 
                           => muxInD_7_22_port, D(21) => muxInD_7_21_port, 
                           D(20) => muxInD_7_20_port, D(19) => muxInD_7_19_port
                           , D(18) => muxInD_7_18_port, D(17) => 
                           muxInD_7_17_port, D(16) => muxInD_7_16_port, D(15) 
                           => muxInD_7_15_port, D(14) => muxInD_7_14_port, 
                           D(13) => muxInD_7_13_port, D(12) => muxInD_7_12_port
                           , D(11) => muxInD_7_11_port, D(10) => 
                           muxInD_7_10_port, D(9) => muxInD_7_9_port, D(8) => 
                           muxInD_7_8_port, D(7) => muxInD_7_7_port, D(6) => 
                           muxInD_7_6_port, D(5) => muxInD_7_5_port, D(4) => 
                           muxInD_7_4_port, D(3) => muxInD_7_3_port, D(2) => 
                           muxInD_7_2_port, D(1) => muxInD_7_1_port, D(0) => 
                           muxInD_7_0_port, E(31) => muxInE_7_31_port, E(30) =>
                           muxInE_7_30_port, E(29) => muxInE_7_29_port, E(28) 
                           => muxInE_7_28_port, E(27) => muxInE_7_27_port, 
                           E(26) => muxInE_7_26_port, E(25) => muxInE_7_25_port
                           , E(24) => muxInE_7_24_port, E(23) => 
                           muxInE_7_23_port, E(22) => muxInE_7_22_port, E(21) 
                           => muxInE_7_21_port, E(20) => muxInE_7_20_port, 
                           E(19) => muxInE_7_19_port, E(18) => muxInE_7_18_port
                           , E(17) => muxInE_7_17_port, E(16) => 
                           muxInE_7_16_port, E(15) => muxInE_7_15_port, E(14) 
                           => muxInE_7_14_port, E(13) => muxInE_7_13_port, 
                           E(12) => muxInE_7_12_port, E(11) => muxInE_7_11_port
                           , E(10) => muxInE_7_10_port, E(9) => muxInE_7_9_port
                           , E(8) => muxInE_7_8_port, E(7) => muxInE_7_7_port, 
                           E(6) => muxInE_7_6_port, E(5) => muxInE_7_5_port, 
                           E(4) => muxInE_7_4_port, E(3) => muxInE_7_3_port, 
                           E(2) => muxInE_7_2_port, E(1) => muxInE_7_1_port, 
                           E(0) => muxInE_7_0_port, Sel(2) => B(15), Sel(1) => 
                           B(14), Sel(0) => B(13), O(31) => outmux_7_31_port, 
                           O(30) => outmux_7_30_port, O(29) => outmux_7_29_port
                           , O(28) => outmux_7_28_port, O(27) => 
                           outmux_7_27_port, O(26) => outmux_7_26_port, O(25) 
                           => outmux_7_25_port, O(24) => outmux_7_24_port, 
                           O(23) => outmux_7_23_port, O(22) => outmux_7_22_port
                           , O(21) => outmux_7_21_port, O(20) => 
                           outmux_7_20_port, O(19) => outmux_7_19_port, O(18) 
                           => outmux_7_18_port, O(17) => outmux_7_17_port, 
                           O(16) => outmux_7_16_port, O(15) => outmux_7_15_port
                           , O(14) => outmux_7_14_port, O(13) => 
                           outmux_7_13_port, O(12) => outmux_7_12_port, O(11) 
                           => outmux_7_11_port, O(10) => outmux_7_10_port, O(9)
                           => outmux_7_9_port, O(8) => outmux_7_8_port, O(7) =>
                           outmux_7_7_port, O(6) => outmux_7_6_port, O(5) => 
                           outmux_7_5_port, O(4) => outmux_7_4_port, O(3) => 
                           outmux_7_3_port, O(2) => outmux_7_2_port, O(1) => 
                           outmux_7_1_port, O(0) => outmux_7_0_port);
   Add1IL : CSA_Nbits32_0 port map( A(31) => outmux_0_31_port, A(30) => 
                           outmux_0_30_port, A(29) => outmux_0_29_port, A(28) 
                           => outmux_0_28_port, A(27) => outmux_0_27_port, 
                           A(26) => outmux_0_26_port, A(25) => outmux_0_25_port
                           , A(24) => outmux_0_24_port, A(23) => 
                           outmux_0_23_port, A(22) => outmux_0_22_port, A(21) 
                           => outmux_0_21_port, A(20) => outmux_0_20_port, 
                           A(19) => outmux_0_19_port, A(18) => outmux_0_18_port
                           , A(17) => outmux_0_17_port, A(16) => 
                           outmux_0_16_port, A(15) => outmux_0_15_port, A(14) 
                           => outmux_0_14_port, A(13) => outmux_0_13_port, 
                           A(12) => outmux_0_12_port, A(11) => outmux_0_11_port
                           , A(10) => outmux_0_10_port, A(9) => outmux_0_9_port
                           , A(8) => outmux_0_8_port, A(7) => outmux_0_7_port, 
                           A(6) => outmux_0_6_port, A(5) => outmux_0_5_port, 
                           A(4) => outmux_0_4_port, A(3) => outmux_0_3_port, 
                           A(2) => outmux_0_2_port, A(1) => outmux_0_1_port, 
                           A(0) => outmux_0_0_port, B(31) => outmux_1_31_port, 
                           B(30) => outmux_1_30_port, B(29) => outmux_1_29_port
                           , B(28) => outmux_1_28_port, B(27) => 
                           outmux_1_27_port, B(26) => outmux_1_26_port, B(25) 
                           => outmux_1_25_port, B(24) => outmux_1_24_port, 
                           B(23) => outmux_1_23_port, B(22) => outmux_1_22_port
                           , B(21) => outmux_1_21_port, B(20) => 
                           outmux_1_20_port, B(19) => outmux_1_19_port, B(18) 
                           => outmux_1_18_port, B(17) => outmux_1_17_port, 
                           B(16) => outmux_1_16_port, B(15) => outmux_1_15_port
                           , B(14) => outmux_1_14_port, B(13) => 
                           outmux_1_13_port, B(12) => outmux_1_12_port, B(11) 
                           => outmux_1_11_port, B(10) => outmux_1_10_port, B(9)
                           => outmux_1_9_port, B(8) => outmux_1_8_port, B(7) =>
                           outmux_1_7_port, B(6) => outmux_1_6_port, B(5) => 
                           outmux_1_5_port, B(4) => outmux_1_4_port, B(3) => 
                           outmux_1_3_port, B(2) => outmux_1_2_port, B(1) => 
                           outmux_1_1_port, B(0) => outmux_1_0_port, C(31) => 
                           outmux_2_31_port, C(30) => outmux_2_30_port, C(29) 
                           => outmux_2_29_port, C(28) => outmux_2_28_port, 
                           C(27) => outmux_2_27_port, C(26) => outmux_2_26_port
                           , C(25) => outmux_2_25_port, C(24) => 
                           outmux_2_24_port, C(23) => outmux_2_23_port, C(22) 
                           => outmux_2_22_port, C(21) => outmux_2_21_port, 
                           C(20) => outmux_2_20_port, C(19) => outmux_2_19_port
                           , C(18) => outmux_2_18_port, C(17) => 
                           outmux_2_17_port, C(16) => outmux_2_16_port, C(15) 
                           => outmux_2_15_port, C(14) => outmux_2_14_port, 
                           C(13) => outmux_2_13_port, C(12) => outmux_2_12_port
                           , C(11) => outmux_2_11_port, C(10) => 
                           outmux_2_10_port, C(9) => outmux_2_9_port, C(8) => 
                           outmux_2_8_port, C(7) => outmux_2_7_port, C(6) => 
                           outmux_2_6_port, C(5) => outmux_2_5_port, C(4) => 
                           outmux_2_4_port, C(3) => outmux_2_3_port, C(2) => 
                           outmux_2_2_port, C(1) => outmux_2_1_port, C(0) => 
                           outmux_2_0_port, S(31) => sum_array_0_31_port, S(30)
                           => sum_array_0_30_port, S(29) => sum_array_0_29_port
                           , S(28) => sum_array_0_28_port, S(27) => 
                           sum_array_0_27_port, S(26) => sum_array_0_26_port, 
                           S(25) => sum_array_0_25_port, S(24) => 
                           sum_array_0_24_port, S(23) => sum_array_0_23_port, 
                           S(22) => sum_array_0_22_port, S(21) => 
                           sum_array_0_21_port, S(20) => sum_array_0_20_port, 
                           S(19) => sum_array_0_19_port, S(18) => 
                           sum_array_0_18_port, S(17) => sum_array_0_17_port, 
                           S(16) => sum_array_0_16_port, S(15) => 
                           sum_array_0_15_port, S(14) => sum_array_0_14_port, 
                           S(13) => sum_array_0_13_port, S(12) => 
                           sum_array_0_12_port, S(11) => sum_array_0_11_port, 
                           S(10) => sum_array_0_10_port, S(9) => 
                           sum_array_0_9_port, S(8) => sum_array_0_8_port, S(7)
                           => sum_array_0_7_port, S(6) => sum_array_0_6_port, 
                           S(5) => sum_array_0_5_port, S(4) => 
                           sum_array_0_4_port, S(3) => sum_array_0_3_port, S(2)
                           => sum_array_0_2_port, S(1) => sum_array_0_1_port, 
                           S(0) => sum_array_0_0_port, Cout(31) => 
                           cout_array_0_31_port, Cout(30) => 
                           cout_array_0_30_port, Cout(29) => 
                           cout_array_0_29_port, Cout(28) => 
                           cout_array_0_28_port, Cout(27) => 
                           cout_array_0_27_port, Cout(26) => 
                           cout_array_0_26_port, Cout(25) => 
                           cout_array_0_25_port, Cout(24) => 
                           cout_array_0_24_port, Cout(23) => 
                           cout_array_0_23_port, Cout(22) => 
                           cout_array_0_22_port, Cout(21) => 
                           cout_array_0_21_port, Cout(20) => 
                           cout_array_0_20_port, Cout(19) => 
                           cout_array_0_19_port, Cout(18) => 
                           cout_array_0_18_port, Cout(17) => 
                           cout_array_0_17_port, Cout(16) => 
                           cout_array_0_16_port, Cout(15) => 
                           cout_array_0_15_port, Cout(14) => 
                           cout_array_0_14_port, Cout(13) => 
                           cout_array_0_13_port, Cout(12) => 
                           cout_array_0_12_port, Cout(11) => 
                           cout_array_0_11_port, Cout(10) => 
                           cout_array_0_10_port, Cout(9) => cout_array_0_9_port
                           , Cout(8) => cout_array_0_8_port, Cout(7) => 
                           cout_array_0_7_port, Cout(6) => cout_array_0_6_port,
                           Cout(5) => cout_array_0_5_port, Cout(4) => 
                           cout_array_0_4_port, Cout(3) => cout_array_0_3_port,
                           Cout(2) => cout_array_0_2_port, Cout(1) => 
                           cout_array_0_1_port, Cout(0) => net29628);
   Add2IL : CSA_Nbits32_5 port map( A(31) => outmux_3_31_port, A(30) => 
                           outmux_3_30_port, A(29) => outmux_3_29_port, A(28) 
                           => outmux_3_28_port, A(27) => outmux_3_27_port, 
                           A(26) => outmux_3_26_port, A(25) => outmux_3_25_port
                           , A(24) => outmux_3_24_port, A(23) => 
                           outmux_3_23_port, A(22) => outmux_3_22_port, A(21) 
                           => outmux_3_21_port, A(20) => outmux_3_20_port, 
                           A(19) => outmux_3_19_port, A(18) => outmux_3_18_port
                           , A(17) => outmux_3_17_port, A(16) => 
                           outmux_3_16_port, A(15) => outmux_3_15_port, A(14) 
                           => outmux_3_14_port, A(13) => outmux_3_13_port, 
                           A(12) => outmux_3_12_port, A(11) => outmux_3_11_port
                           , A(10) => outmux_3_10_port, A(9) => outmux_3_9_port
                           , A(8) => outmux_3_8_port, A(7) => outmux_3_7_port, 
                           A(6) => outmux_3_6_port, A(5) => outmux_3_5_port, 
                           A(4) => outmux_3_4_port, A(3) => outmux_3_3_port, 
                           A(2) => outmux_3_2_port, A(1) => outmux_3_1_port, 
                           A(0) => outmux_3_0_port, B(31) => outmux_4_31_port, 
                           B(30) => outmux_4_30_port, B(29) => outmux_4_29_port
                           , B(28) => outmux_4_28_port, B(27) => 
                           outmux_4_27_port, B(26) => outmux_4_26_port, B(25) 
                           => outmux_4_25_port, B(24) => outmux_4_24_port, 
                           B(23) => outmux_4_23_port, B(22) => outmux_4_22_port
                           , B(21) => outmux_4_21_port, B(20) => 
                           outmux_4_20_port, B(19) => outmux_4_19_port, B(18) 
                           => outmux_4_18_port, B(17) => outmux_4_17_port, 
                           B(16) => outmux_4_16_port, B(15) => outmux_4_15_port
                           , B(14) => outmux_4_14_port, B(13) => 
                           outmux_4_13_port, B(12) => outmux_4_12_port, B(11) 
                           => outmux_4_11_port, B(10) => outmux_4_10_port, B(9)
                           => outmux_4_9_port, B(8) => outmux_4_8_port, B(7) =>
                           outmux_4_7_port, B(6) => outmux_4_6_port, B(5) => 
                           outmux_4_5_port, B(4) => outmux_4_4_port, B(3) => 
                           outmux_4_3_port, B(2) => outmux_4_2_port, B(1) => 
                           outmux_4_1_port, B(0) => outmux_4_0_port, C(31) => 
                           outmux_5_31_port, C(30) => outmux_5_30_port, C(29) 
                           => outmux_5_29_port, C(28) => outmux_5_28_port, 
                           C(27) => outmux_5_27_port, C(26) => outmux_5_26_port
                           , C(25) => outmux_5_25_port, C(24) => 
                           outmux_5_24_port, C(23) => outmux_5_23_port, C(22) 
                           => outmux_5_22_port, C(21) => outmux_5_21_port, 
                           C(20) => outmux_5_20_port, C(19) => outmux_5_19_port
                           , C(18) => outmux_5_18_port, C(17) => 
                           outmux_5_17_port, C(16) => outmux_5_16_port, C(15) 
                           => outmux_5_15_port, C(14) => outmux_5_14_port, 
                           C(13) => outmux_5_13_port, C(12) => outmux_5_12_port
                           , C(11) => outmux_5_11_port, C(10) => 
                           outmux_5_10_port, C(9) => outmux_5_9_port, C(8) => 
                           outmux_5_8_port, C(7) => outmux_5_7_port, C(6) => 
                           outmux_5_6_port, C(5) => outmux_5_5_port, C(4) => 
                           outmux_5_4_port, C(3) => outmux_5_3_port, C(2) => 
                           outmux_5_2_port, C(1) => outmux_5_1_port, C(0) => 
                           outmux_5_0_port, S(31) => sum_array_1_31_port, S(30)
                           => sum_array_1_30_port, S(29) => sum_array_1_29_port
                           , S(28) => sum_array_1_28_port, S(27) => 
                           sum_array_1_27_port, S(26) => sum_array_1_26_port, 
                           S(25) => sum_array_1_25_port, S(24) => 
                           sum_array_1_24_port, S(23) => sum_array_1_23_port, 
                           S(22) => sum_array_1_22_port, S(21) => 
                           sum_array_1_21_port, S(20) => sum_array_1_20_port, 
                           S(19) => sum_array_1_19_port, S(18) => 
                           sum_array_1_18_port, S(17) => sum_array_1_17_port, 
                           S(16) => sum_array_1_16_port, S(15) => 
                           sum_array_1_15_port, S(14) => sum_array_1_14_port, 
                           S(13) => sum_array_1_13_port, S(12) => 
                           sum_array_1_12_port, S(11) => sum_array_1_11_port, 
                           S(10) => sum_array_1_10_port, S(9) => 
                           sum_array_1_9_port, S(8) => sum_array_1_8_port, S(7)
                           => sum_array_1_7_port, S(6) => sum_array_1_6_port, 
                           S(5) => sum_array_1_5_port, S(4) => 
                           sum_array_1_4_port, S(3) => sum_array_1_3_port, S(2)
                           => sum_array_1_2_port, S(1) => sum_array_1_1_port, 
                           S(0) => sum_array_1_0_port, Cout(31) => 
                           cout_array_1_31_port, Cout(30) => 
                           cout_array_1_30_port, Cout(29) => 
                           cout_array_1_29_port, Cout(28) => 
                           cout_array_1_28_port, Cout(27) => 
                           cout_array_1_27_port, Cout(26) => 
                           cout_array_1_26_port, Cout(25) => 
                           cout_array_1_25_port, Cout(24) => 
                           cout_array_1_24_port, Cout(23) => 
                           cout_array_1_23_port, Cout(22) => 
                           cout_array_1_22_port, Cout(21) => 
                           cout_array_1_21_port, Cout(20) => 
                           cout_array_1_20_port, Cout(19) => 
                           cout_array_1_19_port, Cout(18) => 
                           cout_array_1_18_port, Cout(17) => 
                           cout_array_1_17_port, Cout(16) => 
                           cout_array_1_16_port, Cout(15) => 
                           cout_array_1_15_port, Cout(14) => 
                           cout_array_1_14_port, Cout(13) => 
                           cout_array_1_13_port, Cout(12) => 
                           cout_array_1_12_port, Cout(11) => 
                           cout_array_1_11_port, Cout(10) => 
                           cout_array_1_10_port, Cout(9) => cout_array_1_9_port
                           , Cout(8) => cout_array_1_8_port, Cout(7) => 
                           cout_array_1_7_port, Cout(6) => cout_array_1_6_port,
                           Cout(5) => cout_array_1_5_port, Cout(4) => 
                           cout_array_1_4_port, Cout(3) => cout_array_1_3_port,
                           Cout(2) => cout_array_1_2_port, Cout(1) => 
                           cout_array_1_1_port, Cout(0) => net29627);
   Add1IIL : CSA_Nbits32_4 port map( A(31) => sum_array_0_31_port, A(30) => 
                           sum_array_0_30_port, A(29) => sum_array_0_29_port, 
                           A(28) => sum_array_0_28_port, A(27) => 
                           sum_array_0_27_port, A(26) => sum_array_0_26_port, 
                           A(25) => sum_array_0_25_port, A(24) => 
                           sum_array_0_24_port, A(23) => sum_array_0_23_port, 
                           A(22) => sum_array_0_22_port, A(21) => 
                           sum_array_0_21_port, A(20) => sum_array_0_20_port, 
                           A(19) => sum_array_0_19_port, A(18) => 
                           sum_array_0_18_port, A(17) => sum_array_0_17_port, 
                           A(16) => sum_array_0_16_port, A(15) => 
                           sum_array_0_15_port, A(14) => sum_array_0_14_port, 
                           A(13) => sum_array_0_13_port, A(12) => 
                           sum_array_0_12_port, A(11) => sum_array_0_11_port, 
                           A(10) => sum_array_0_10_port, A(9) => 
                           sum_array_0_9_port, A(8) => sum_array_0_8_port, A(7)
                           => sum_array_0_7_port, A(6) => sum_array_0_6_port, 
                           A(5) => sum_array_0_5_port, A(4) => 
                           sum_array_0_4_port, A(3) => sum_array_0_3_port, A(2)
                           => sum_array_0_2_port, A(1) => sum_array_0_1_port, 
                           A(0) => sum_array_0_0_port, B(31) => 
                           cout_array_0_31_port, B(30) => cout_array_0_30_port,
                           B(29) => cout_array_0_29_port, B(28) => 
                           cout_array_0_28_port, B(27) => cout_array_0_27_port,
                           B(26) => cout_array_0_26_port, B(25) => 
                           cout_array_0_25_port, B(24) => cout_array_0_24_port,
                           B(23) => cout_array_0_23_port, B(22) => 
                           cout_array_0_22_port, B(21) => cout_array_0_21_port,
                           B(20) => cout_array_0_20_port, B(19) => 
                           cout_array_0_19_port, B(18) => cout_array_0_18_port,
                           B(17) => cout_array_0_17_port, B(16) => 
                           cout_array_0_16_port, B(15) => cout_array_0_15_port,
                           B(14) => cout_array_0_14_port, B(13) => 
                           cout_array_0_13_port, B(12) => cout_array_0_12_port,
                           B(11) => cout_array_0_11_port, B(10) => 
                           cout_array_0_10_port, B(9) => cout_array_0_9_port, 
                           B(8) => cout_array_0_8_port, B(7) => 
                           cout_array_0_7_port, B(6) => cout_array_0_6_port, 
                           B(5) => cout_array_0_5_port, B(4) => 
                           cout_array_0_4_port, B(3) => cout_array_0_3_port, 
                           B(2) => cout_array_0_2_port, B(1) => 
                           cout_array_0_1_port, B(0) => cout_array_0_0_port, 
                           C(31) => sum_array_1_31_port, C(30) => 
                           sum_array_1_30_port, C(29) => sum_array_1_29_port, 
                           C(28) => sum_array_1_28_port, C(27) => 
                           sum_array_1_27_port, C(26) => sum_array_1_26_port, 
                           C(25) => sum_array_1_25_port, C(24) => 
                           sum_array_1_24_port, C(23) => sum_array_1_23_port, 
                           C(22) => sum_array_1_22_port, C(21) => 
                           sum_array_1_21_port, C(20) => sum_array_1_20_port, 
                           C(19) => sum_array_1_19_port, C(18) => 
                           sum_array_1_18_port, C(17) => sum_array_1_17_port, 
                           C(16) => sum_array_1_16_port, C(15) => 
                           sum_array_1_15_port, C(14) => sum_array_1_14_port, 
                           C(13) => sum_array_1_13_port, C(12) => 
                           sum_array_1_12_port, C(11) => sum_array_1_11_port, 
                           C(10) => sum_array_1_10_port, C(9) => 
                           sum_array_1_9_port, C(8) => sum_array_1_8_port, C(7)
                           => sum_array_1_7_port, C(6) => sum_array_1_6_port, 
                           C(5) => sum_array_1_5_port, C(4) => 
                           sum_array_1_4_port, C(3) => sum_array_1_3_port, C(2)
                           => sum_array_1_2_port, C(1) => sum_array_1_1_port, 
                           C(0) => sum_array_1_0_port, S(31) => 
                           sum_array_2_31_port, S(30) => sum_array_2_30_port, 
                           S(29) => sum_array_2_29_port, S(28) => 
                           sum_array_2_28_port, S(27) => sum_array_2_27_port, 
                           S(26) => sum_array_2_26_port, S(25) => 
                           sum_array_2_25_port, S(24) => sum_array_2_24_port, 
                           S(23) => sum_array_2_23_port, S(22) => 
                           sum_array_2_22_port, S(21) => sum_array_2_21_port, 
                           S(20) => sum_array_2_20_port, S(19) => 
                           sum_array_2_19_port, S(18) => sum_array_2_18_port, 
                           S(17) => sum_array_2_17_port, S(16) => 
                           sum_array_2_16_port, S(15) => sum_array_2_15_port, 
                           S(14) => sum_array_2_14_port, S(13) => 
                           sum_array_2_13_port, S(12) => sum_array_2_12_port, 
                           S(11) => sum_array_2_11_port, S(10) => 
                           sum_array_2_10_port, S(9) => sum_array_2_9_port, 
                           S(8) => sum_array_2_8_port, S(7) => 
                           sum_array_2_7_port, S(6) => sum_array_2_6_port, S(5)
                           => sum_array_2_5_port, S(4) => sum_array_2_4_port, 
                           S(3) => sum_array_2_3_port, S(2) => 
                           sum_array_2_2_port, S(1) => sum_array_2_1_port, S(0)
                           => sum_array_2_0_port, Cout(31) => 
                           cout_array_2_31_port, Cout(30) => 
                           cout_array_2_30_port, Cout(29) => 
                           cout_array_2_29_port, Cout(28) => 
                           cout_array_2_28_port, Cout(27) => 
                           cout_array_2_27_port, Cout(26) => 
                           cout_array_2_26_port, Cout(25) => 
                           cout_array_2_25_port, Cout(24) => 
                           cout_array_2_24_port, Cout(23) => 
                           cout_array_2_23_port, Cout(22) => 
                           cout_array_2_22_port, Cout(21) => 
                           cout_array_2_21_port, Cout(20) => 
                           cout_array_2_20_port, Cout(19) => 
                           cout_array_2_19_port, Cout(18) => 
                           cout_array_2_18_port, Cout(17) => 
                           cout_array_2_17_port, Cout(16) => 
                           cout_array_2_16_port, Cout(15) => 
                           cout_array_2_15_port, Cout(14) => 
                           cout_array_2_14_port, Cout(13) => 
                           cout_array_2_13_port, Cout(12) => 
                           cout_array_2_12_port, Cout(11) => 
                           cout_array_2_11_port, Cout(10) => 
                           cout_array_2_10_port, Cout(9) => cout_array_2_9_port
                           , Cout(8) => cout_array_2_8_port, Cout(7) => 
                           cout_array_2_7_port, Cout(6) => cout_array_2_6_port,
                           Cout(5) => cout_array_2_5_port, Cout(4) => 
                           cout_array_2_4_port, Cout(3) => cout_array_2_3_port,
                           Cout(2) => cout_array_2_2_port, Cout(1) => 
                           cout_array_2_1_port, Cout(0) => net29626);
   Add2IIL : CSA_Nbits32_3 port map( A(31) => cout_array_1_31_port, A(30) => 
                           cout_array_1_30_port, A(29) => cout_array_1_29_port,
                           A(28) => cout_array_1_28_port, A(27) => 
                           cout_array_1_27_port, A(26) => cout_array_1_26_port,
                           A(25) => cout_array_1_25_port, A(24) => 
                           cout_array_1_24_port, A(23) => cout_array_1_23_port,
                           A(22) => cout_array_1_22_port, A(21) => 
                           cout_array_1_21_port, A(20) => cout_array_1_20_port,
                           A(19) => cout_array_1_19_port, A(18) => 
                           cout_array_1_18_port, A(17) => cout_array_1_17_port,
                           A(16) => cout_array_1_16_port, A(15) => 
                           cout_array_1_15_port, A(14) => cout_array_1_14_port,
                           A(13) => cout_array_1_13_port, A(12) => 
                           cout_array_1_12_port, A(11) => cout_array_1_11_port,
                           A(10) => cout_array_1_10_port, A(9) => 
                           cout_array_1_9_port, A(8) => cout_array_1_8_port, 
                           A(7) => cout_array_1_7_port, A(6) => 
                           cout_array_1_6_port, A(5) => cout_array_1_5_port, 
                           A(4) => cout_array_1_4_port, A(3) => 
                           cout_array_1_3_port, A(2) => cout_array_1_2_port, 
                           A(1) => cout_array_1_1_port, A(0) => 
                           cout_array_1_0_port, B(31) => outmux_6_31_port, 
                           B(30) => outmux_6_30_port, B(29) => outmux_6_29_port
                           , B(28) => outmux_6_28_port, B(27) => 
                           outmux_6_27_port, B(26) => outmux_6_26_port, B(25) 
                           => outmux_6_25_port, B(24) => outmux_6_24_port, 
                           B(23) => outmux_6_23_port, B(22) => outmux_6_22_port
                           , B(21) => outmux_6_21_port, B(20) => 
                           outmux_6_20_port, B(19) => outmux_6_19_port, B(18) 
                           => outmux_6_18_port, B(17) => outmux_6_17_port, 
                           B(16) => outmux_6_16_port, B(15) => outmux_6_15_port
                           , B(14) => outmux_6_14_port, B(13) => 
                           outmux_6_13_port, B(12) => outmux_6_12_port, B(11) 
                           => outmux_6_11_port, B(10) => outmux_6_10_port, B(9)
                           => outmux_6_9_port, B(8) => outmux_6_8_port, B(7) =>
                           outmux_6_7_port, B(6) => outmux_6_6_port, B(5) => 
                           outmux_6_5_port, B(4) => outmux_6_4_port, B(3) => 
                           outmux_6_3_port, B(2) => outmux_6_2_port, B(1) => 
                           outmux_6_1_port, B(0) => outmux_6_0_port, C(31) => 
                           outmux_7_31_port, C(30) => outmux_7_30_port, C(29) 
                           => outmux_7_29_port, C(28) => outmux_7_28_port, 
                           C(27) => outmux_7_27_port, C(26) => outmux_7_26_port
                           , C(25) => outmux_7_25_port, C(24) => 
                           outmux_7_24_port, C(23) => outmux_7_23_port, C(22) 
                           => outmux_7_22_port, C(21) => outmux_7_21_port, 
                           C(20) => outmux_7_20_port, C(19) => outmux_7_19_port
                           , C(18) => outmux_7_18_port, C(17) => 
                           outmux_7_17_port, C(16) => outmux_7_16_port, C(15) 
                           => outmux_7_15_port, C(14) => outmux_7_14_port, 
                           C(13) => outmux_7_13_port, C(12) => outmux_7_12_port
                           , C(11) => outmux_7_11_port, C(10) => 
                           outmux_7_10_port, C(9) => outmux_7_9_port, C(8) => 
                           outmux_7_8_port, C(7) => outmux_7_7_port, C(6) => 
                           outmux_7_6_port, C(5) => outmux_7_5_port, C(4) => 
                           outmux_7_4_port, C(3) => outmux_7_3_port, C(2) => 
                           outmux_7_2_port, C(1) => outmux_7_1_port, C(0) => 
                           outmux_7_0_port, S(31) => sum_array_3_31_port, S(30)
                           => sum_array_3_30_port, S(29) => sum_array_3_29_port
                           , S(28) => sum_array_3_28_port, S(27) => 
                           sum_array_3_27_port, S(26) => sum_array_3_26_port, 
                           S(25) => sum_array_3_25_port, S(24) => 
                           sum_array_3_24_port, S(23) => sum_array_3_23_port, 
                           S(22) => sum_array_3_22_port, S(21) => 
                           sum_array_3_21_port, S(20) => sum_array_3_20_port, 
                           S(19) => sum_array_3_19_port, S(18) => 
                           sum_array_3_18_port, S(17) => sum_array_3_17_port, 
                           S(16) => sum_array_3_16_port, S(15) => 
                           sum_array_3_15_port, S(14) => sum_array_3_14_port, 
                           S(13) => sum_array_3_13_port, S(12) => 
                           sum_array_3_12_port, S(11) => sum_array_3_11_port, 
                           S(10) => sum_array_3_10_port, S(9) => 
                           sum_array_3_9_port, S(8) => sum_array_3_8_port, S(7)
                           => sum_array_3_7_port, S(6) => sum_array_3_6_port, 
                           S(5) => sum_array_3_5_port, S(4) => 
                           sum_array_3_4_port, S(3) => sum_array_3_3_port, S(2)
                           => sum_array_3_2_port, S(1) => sum_array_3_1_port, 
                           S(0) => sum_array_3_0_port, Cout(31) => 
                           cout_array_3_31_port, Cout(30) => 
                           cout_array_3_30_port, Cout(29) => 
                           cout_array_3_29_port, Cout(28) => 
                           cout_array_3_28_port, Cout(27) => 
                           cout_array_3_27_port, Cout(26) => 
                           cout_array_3_26_port, Cout(25) => 
                           cout_array_3_25_port, Cout(24) => 
                           cout_array_3_24_port, Cout(23) => 
                           cout_array_3_23_port, Cout(22) => 
                           cout_array_3_22_port, Cout(21) => 
                           cout_array_3_21_port, Cout(20) => 
                           cout_array_3_20_port, Cout(19) => 
                           cout_array_3_19_port, Cout(18) => 
                           cout_array_3_18_port, Cout(17) => 
                           cout_array_3_17_port, Cout(16) => 
                           cout_array_3_16_port, Cout(15) => 
                           cout_array_3_15_port, Cout(14) => 
                           cout_array_3_14_port, Cout(13) => 
                           cout_array_3_13_port, Cout(12) => 
                           cout_array_3_12_port, Cout(11) => 
                           cout_array_3_11_port, Cout(10) => 
                           cout_array_3_10_port, Cout(9) => cout_array_3_9_port
                           , Cout(8) => cout_array_3_8_port, Cout(7) => 
                           cout_array_3_7_port, Cout(6) => cout_array_3_6_port,
                           Cout(5) => cout_array_3_5_port, Cout(4) => 
                           cout_array_3_4_port, Cout(3) => cout_array_3_3_port,
                           Cout(2) => cout_array_3_2_port, Cout(1) => 
                           cout_array_3_1_port, Cout(0) => net29625);
   Add1IIIL : CSA_Nbits32_2 port map( A(31) => sum_array_2_31_port, A(30) => 
                           sum_array_2_30_port, A(29) => sum_array_2_29_port, 
                           A(28) => sum_array_2_28_port, A(27) => 
                           sum_array_2_27_port, A(26) => sum_array_2_26_port, 
                           A(25) => sum_array_2_25_port, A(24) => 
                           sum_array_2_24_port, A(23) => sum_array_2_23_port, 
                           A(22) => sum_array_2_22_port, A(21) => 
                           sum_array_2_21_port, A(20) => sum_array_2_20_port, 
                           A(19) => sum_array_2_19_port, A(18) => 
                           sum_array_2_18_port, A(17) => sum_array_2_17_port, 
                           A(16) => sum_array_2_16_port, A(15) => 
                           sum_array_2_15_port, A(14) => sum_array_2_14_port, 
                           A(13) => sum_array_2_13_port, A(12) => 
                           sum_array_2_12_port, A(11) => sum_array_2_11_port, 
                           A(10) => sum_array_2_10_port, A(9) => 
                           sum_array_2_9_port, A(8) => sum_array_2_8_port, A(7)
                           => sum_array_2_7_port, A(6) => sum_array_2_6_port, 
                           A(5) => sum_array_2_5_port, A(4) => 
                           sum_array_2_4_port, A(3) => sum_array_2_3_port, A(2)
                           => sum_array_2_2_port, A(1) => sum_array_2_1_port, 
                           A(0) => sum_array_2_0_port, B(31) => 
                           cout_array_2_31_port, B(30) => cout_array_2_30_port,
                           B(29) => cout_array_2_29_port, B(28) => 
                           cout_array_2_28_port, B(27) => cout_array_2_27_port,
                           B(26) => cout_array_2_26_port, B(25) => 
                           cout_array_2_25_port, B(24) => cout_array_2_24_port,
                           B(23) => cout_array_2_23_port, B(22) => 
                           cout_array_2_22_port, B(21) => cout_array_2_21_port,
                           B(20) => cout_array_2_20_port, B(19) => 
                           cout_array_2_19_port, B(18) => cout_array_2_18_port,
                           B(17) => cout_array_2_17_port, B(16) => 
                           cout_array_2_16_port, B(15) => cout_array_2_15_port,
                           B(14) => cout_array_2_14_port, B(13) => 
                           cout_array_2_13_port, B(12) => cout_array_2_12_port,
                           B(11) => cout_array_2_11_port, B(10) => 
                           cout_array_2_10_port, B(9) => cout_array_2_9_port, 
                           B(8) => cout_array_2_8_port, B(7) => 
                           cout_array_2_7_port, B(6) => cout_array_2_6_port, 
                           B(5) => cout_array_2_5_port, B(4) => 
                           cout_array_2_4_port, B(3) => cout_array_2_3_port, 
                           B(2) => cout_array_2_2_port, B(1) => 
                           cout_array_2_1_port, B(0) => cout_array_2_0_port, 
                           C(31) => sum_array_3_31_port, C(30) => 
                           sum_array_3_30_port, C(29) => sum_array_3_29_port, 
                           C(28) => sum_array_3_28_port, C(27) => 
                           sum_array_3_27_port, C(26) => sum_array_3_26_port, 
                           C(25) => sum_array_3_25_port, C(24) => 
                           sum_array_3_24_port, C(23) => sum_array_3_23_port, 
                           C(22) => sum_array_3_22_port, C(21) => 
                           sum_array_3_21_port, C(20) => sum_array_3_20_port, 
                           C(19) => sum_array_3_19_port, C(18) => 
                           sum_array_3_18_port, C(17) => sum_array_3_17_port, 
                           C(16) => sum_array_3_16_port, C(15) => 
                           sum_array_3_15_port, C(14) => sum_array_3_14_port, 
                           C(13) => sum_array_3_13_port, C(12) => 
                           sum_array_3_12_port, C(11) => sum_array_3_11_port, 
                           C(10) => sum_array_3_10_port, C(9) => 
                           sum_array_3_9_port, C(8) => sum_array_3_8_port, C(7)
                           => sum_array_3_7_port, C(6) => sum_array_3_6_port, 
                           C(5) => sum_array_3_5_port, C(4) => 
                           sum_array_3_4_port, C(3) => sum_array_3_3_port, C(2)
                           => sum_array_3_2_port, C(1) => sum_array_3_1_port, 
                           C(0) => sum_array_3_0_port, S(31) => 
                           sum_array_4_31_port, S(30) => sum_array_4_30_port, 
                           S(29) => sum_array_4_29_port, S(28) => 
                           sum_array_4_28_port, S(27) => sum_array_4_27_port, 
                           S(26) => sum_array_4_26_port, S(25) => 
                           sum_array_4_25_port, S(24) => sum_array_4_24_port, 
                           S(23) => sum_array_4_23_port, S(22) => 
                           sum_array_4_22_port, S(21) => sum_array_4_21_port, 
                           S(20) => sum_array_4_20_port, S(19) => 
                           sum_array_4_19_port, S(18) => sum_array_4_18_port, 
                           S(17) => sum_array_4_17_port, S(16) => 
                           sum_array_4_16_port, S(15) => sum_array_4_15_port, 
                           S(14) => sum_array_4_14_port, S(13) => 
                           sum_array_4_13_port, S(12) => sum_array_4_12_port, 
                           S(11) => sum_array_4_11_port, S(10) => 
                           sum_array_4_10_port, S(9) => sum_array_4_9_port, 
                           S(8) => sum_array_4_8_port, S(7) => 
                           sum_array_4_7_port, S(6) => sum_array_4_6_port, S(5)
                           => sum_array_4_5_port, S(4) => sum_array_4_4_port, 
                           S(3) => sum_array_4_3_port, S(2) => 
                           sum_array_4_2_port, S(1) => sum_array_4_1_port, S(0)
                           => sum_array_4_0_port, Cout(31) => 
                           cout_array_4_31_port, Cout(30) => 
                           cout_array_4_30_port, Cout(29) => 
                           cout_array_4_29_port, Cout(28) => 
                           cout_array_4_28_port, Cout(27) => 
                           cout_array_4_27_port, Cout(26) => 
                           cout_array_4_26_port, Cout(25) => 
                           cout_array_4_25_port, Cout(24) => 
                           cout_array_4_24_port, Cout(23) => 
                           cout_array_4_23_port, Cout(22) => 
                           cout_array_4_22_port, Cout(21) => 
                           cout_array_4_21_port, Cout(20) => 
                           cout_array_4_20_port, Cout(19) => 
                           cout_array_4_19_port, Cout(18) => 
                           cout_array_4_18_port, Cout(17) => 
                           cout_array_4_17_port, Cout(16) => 
                           cout_array_4_16_port, Cout(15) => 
                           cout_array_4_15_port, Cout(14) => 
                           cout_array_4_14_port, Cout(13) => 
                           cout_array_4_13_port, Cout(12) => 
                           cout_array_4_12_port, Cout(11) => 
                           cout_array_4_11_port, Cout(10) => 
                           cout_array_4_10_port, Cout(9) => cout_array_4_9_port
                           , Cout(8) => cout_array_4_8_port, Cout(7) => 
                           cout_array_4_7_port, Cout(6) => cout_array_4_6_port,
                           Cout(5) => cout_array_4_5_port, Cout(4) => 
                           cout_array_4_4_port, Cout(3) => cout_array_4_3_port,
                           Cout(2) => cout_array_4_2_port, Cout(1) => 
                           cout_array_4_1_port, Cout(0) => net29624);
   AddRCA : CSA_Nbits32_1 port map( A(31) => sum_array_4_31_port, A(30) => 
                           sum_array_4_30_port, A(29) => sum_array_4_29_port, 
                           A(28) => sum_array_4_28_port, A(27) => 
                           sum_array_4_27_port, A(26) => sum_array_4_26_port, 
                           A(25) => sum_array_4_25_port, A(24) => 
                           sum_array_4_24_port, A(23) => sum_array_4_23_port, 
                           A(22) => sum_array_4_22_port, A(21) => 
                           sum_array_4_21_port, A(20) => sum_array_4_20_port, 
                           A(19) => sum_array_4_19_port, A(18) => 
                           sum_array_4_18_port, A(17) => sum_array_4_17_port, 
                           A(16) => sum_array_4_16_port, A(15) => 
                           sum_array_4_15_port, A(14) => sum_array_4_14_port, 
                           A(13) => sum_array_4_13_port, A(12) => 
                           sum_array_4_12_port, A(11) => sum_array_4_11_port, 
                           A(10) => sum_array_4_10_port, A(9) => 
                           sum_array_4_9_port, A(8) => sum_array_4_8_port, A(7)
                           => sum_array_4_7_port, A(6) => sum_array_4_6_port, 
                           A(5) => sum_array_4_5_port, A(4) => 
                           sum_array_4_4_port, A(3) => sum_array_4_3_port, A(2)
                           => sum_array_4_2_port, A(1) => sum_array_4_1_port, 
                           A(0) => sum_array_4_0_port, B(31) => 
                           cout_array_4_31_port, B(30) => cout_array_4_30_port,
                           B(29) => cout_array_4_29_port, B(28) => 
                           cout_array_4_28_port, B(27) => cout_array_4_27_port,
                           B(26) => cout_array_4_26_port, B(25) => 
                           cout_array_4_25_port, B(24) => cout_array_4_24_port,
                           B(23) => cout_array_4_23_port, B(22) => 
                           cout_array_4_22_port, B(21) => cout_array_4_21_port,
                           B(20) => cout_array_4_20_port, B(19) => 
                           cout_array_4_19_port, B(18) => cout_array_4_18_port,
                           B(17) => cout_array_4_17_port, B(16) => 
                           cout_array_4_16_port, B(15) => cout_array_4_15_port,
                           B(14) => cout_array_4_14_port, B(13) => 
                           cout_array_4_13_port, B(12) => cout_array_4_12_port,
                           B(11) => cout_array_4_11_port, B(10) => 
                           cout_array_4_10_port, B(9) => cout_array_4_9_port, 
                           B(8) => cout_array_4_8_port, B(7) => 
                           cout_array_4_7_port, B(6) => cout_array_4_6_port, 
                           B(5) => cout_array_4_5_port, B(4) => 
                           cout_array_4_4_port, B(3) => cout_array_4_3_port, 
                           B(2) => cout_array_4_2_port, B(1) => 
                           cout_array_4_1_port, B(0) => cout_array_4_0_port, 
                           C(31) => cout_array_3_31_port, C(30) => 
                           cout_array_3_30_port, C(29) => cout_array_3_29_port,
                           C(28) => cout_array_3_28_port, C(27) => 
                           cout_array_3_27_port, C(26) => cout_array_3_26_port,
                           C(25) => cout_array_3_25_port, C(24) => 
                           cout_array_3_24_port, C(23) => cout_array_3_23_port,
                           C(22) => cout_array_3_22_port, C(21) => 
                           cout_array_3_21_port, C(20) => cout_array_3_20_port,
                           C(19) => cout_array_3_19_port, C(18) => 
                           cout_array_3_18_port, C(17) => cout_array_3_17_port,
                           C(16) => cout_array_3_16_port, C(15) => 
                           cout_array_3_15_port, C(14) => cout_array_3_14_port,
                           C(13) => cout_array_3_13_port, C(12) => 
                           cout_array_3_12_port, C(11) => cout_array_3_11_port,
                           C(10) => cout_array_3_10_port, C(9) => 
                           cout_array_3_9_port, C(8) => cout_array_3_8_port, 
                           C(7) => cout_array_3_7_port, C(6) => 
                           cout_array_3_6_port, C(5) => cout_array_3_5_port, 
                           C(4) => cout_array_3_4_port, C(3) => 
                           cout_array_3_3_port, C(2) => cout_array_3_2_port, 
                           C(1) => cout_array_3_1_port, C(0) => 
                           cout_array_3_0_port, S(31) => sum_array_5_31_port, 
                           S(30) => sum_array_5_30_port, S(29) => 
                           sum_array_5_29_port, S(28) => sum_array_5_28_port, 
                           S(27) => sum_array_5_27_port, S(26) => 
                           sum_array_5_26_port, S(25) => sum_array_5_25_port, 
                           S(24) => sum_array_5_24_port, S(23) => 
                           sum_array_5_23_port, S(22) => sum_array_5_22_port, 
                           S(21) => sum_array_5_21_port, S(20) => 
                           sum_array_5_20_port, S(19) => sum_array_5_19_port, 
                           S(18) => sum_array_5_18_port, S(17) => 
                           sum_array_5_17_port, S(16) => sum_array_5_16_port, 
                           S(15) => sum_array_5_15_port, S(14) => 
                           sum_array_5_14_port, S(13) => sum_array_5_13_port, 
                           S(12) => sum_array_5_12_port, S(11) => 
                           sum_array_5_11_port, S(10) => sum_array_5_10_port, 
                           S(9) => sum_array_5_9_port, S(8) => 
                           sum_array_5_8_port, S(7) => sum_array_5_7_port, S(6)
                           => sum_array_5_6_port, S(5) => sum_array_5_5_port, 
                           S(4) => sum_array_5_4_port, S(3) => 
                           sum_array_5_3_port, S(2) => sum_array_5_2_port, S(1)
                           => sum_array_5_1_port, S(0) => sum_array_5_0_port, 
                           Cout(31) => cout_array_5_31_port, Cout(30) => 
                           cout_array_5_30_port, Cout(29) => 
                           cout_array_5_29_port, Cout(28) => 
                           cout_array_5_28_port, Cout(27) => 
                           cout_array_5_27_port, Cout(26) => 
                           cout_array_5_26_port, Cout(25) => 
                           cout_array_5_25_port, Cout(24) => 
                           cout_array_5_24_port, Cout(23) => 
                           cout_array_5_23_port, Cout(22) => 
                           cout_array_5_22_port, Cout(21) => 
                           cout_array_5_21_port, Cout(20) => 
                           cout_array_5_20_port, Cout(19) => 
                           cout_array_5_19_port, Cout(18) => 
                           cout_array_5_18_port, Cout(17) => 
                           cout_array_5_17_port, Cout(16) => 
                           cout_array_5_16_port, Cout(15) => 
                           cout_array_5_15_port, Cout(14) => 
                           cout_array_5_14_port, Cout(13) => 
                           cout_array_5_13_port, Cout(12) => 
                           cout_array_5_12_port, Cout(11) => 
                           cout_array_5_11_port, Cout(10) => 
                           cout_array_5_10_port, Cout(9) => cout_array_5_9_port
                           , Cout(8) => cout_array_5_8_port, Cout(7) => 
                           cout_array_5_7_port, Cout(6) => cout_array_5_6_port,
                           Cout(5) => cout_array_5_5_port, Cout(4) => 
                           cout_array_5_4_port, Cout(3) => cout_array_5_3_port,
                           Cout(2) => cout_array_5_2_port, Cout(1) => 
                           cout_array_5_1_port, Cout(0) => net29623);
   P4adder : cla_adder_N32 port map( A(31) => sum_array_5_31_port, A(30) => 
                           sum_array_5_30_port, A(29) => sum_array_5_29_port, 
                           A(28) => sum_array_5_28_port, A(27) => 
                           sum_array_5_27_port, A(26) => sum_array_5_26_port, 
                           A(25) => sum_array_5_25_port, A(24) => 
                           sum_array_5_24_port, A(23) => sum_array_5_23_port, 
                           A(22) => sum_array_5_22_port, A(21) => 
                           sum_array_5_21_port, A(20) => sum_array_5_20_port, 
                           A(19) => sum_array_5_19_port, A(18) => 
                           sum_array_5_18_port, A(17) => sum_array_5_17_port, 
                           A(16) => sum_array_5_16_port, A(15) => 
                           sum_array_5_15_port, A(14) => sum_array_5_14_port, 
                           A(13) => sum_array_5_13_port, A(12) => 
                           sum_array_5_12_port, A(11) => sum_array_5_11_port, 
                           A(10) => sum_array_5_10_port, A(9) => 
                           sum_array_5_9_port, A(8) => sum_array_5_8_port, A(7)
                           => sum_array_5_7_port, A(6) => sum_array_5_6_port, 
                           A(5) => sum_array_5_5_port, A(4) => 
                           sum_array_5_4_port, A(3) => sum_array_5_3_port, A(2)
                           => sum_array_5_2_port, A(1) => sum_array_5_1_port, 
                           A(0) => sum_array_5_0_port, B(31) => 
                           cout_array_5_31_port, B(30) => cout_array_5_30_port,
                           B(29) => cout_array_5_29_port, B(28) => 
                           cout_array_5_28_port, B(27) => cout_array_5_27_port,
                           B(26) => cout_array_5_26_port, B(25) => 
                           cout_array_5_25_port, B(24) => cout_array_5_24_port,
                           B(23) => cout_array_5_23_port, B(22) => 
                           cout_array_5_22_port, B(21) => cout_array_5_21_port,
                           B(20) => cout_array_5_20_port, B(19) => 
                           cout_array_5_19_port, B(18) => cout_array_5_18_port,
                           B(17) => cout_array_5_17_port, B(16) => 
                           cout_array_5_16_port, B(15) => cout_array_5_15_port,
                           B(14) => cout_array_5_14_port, B(13) => 
                           cout_array_5_13_port, B(12) => cout_array_5_12_port,
                           B(11) => cout_array_5_11_port, B(10) => 
                           cout_array_5_10_port, B(9) => cout_array_5_9_port, 
                           B(8) => cout_array_5_8_port, B(7) => 
                           cout_array_5_7_port, B(6) => cout_array_5_6_port, 
                           B(5) => cout_array_5_5_port, B(4) => 
                           cout_array_5_4_port, B(3) => cout_array_5_3_port, 
                           B(2) => cout_array_5_2_port, B(1) => 
                           cout_array_5_1_port, B(0) => cout_array_5_0_port, Ci
                           => X_Logic0_port, Cout => net6197, Sum(31) => Y(31),
                           Sum(30) => Y(30), Sum(29) => Y(29), Sum(28) => Y(28)
                           , Sum(27) => Y(27), Sum(26) => Y(26), Sum(25) => 
                           Y(25), Sum(24) => Y(24), Sum(23) => Y(23), Sum(22) 
                           => Y(22), Sum(21) => Y(21), Sum(20) => Y(20), 
                           Sum(19) => Y(19), Sum(18) => Y(18), Sum(17) => Y(17)
                           , Sum(16) => Y(16), Sum(15) => Y(15), Sum(14) => 
                           Y(14), Sum(13) => Y(13), Sum(12) => Y(12), Sum(11) 
                           => Y(11), Sum(10) => Y(10), Sum(9) => Y(9), Sum(8) 
                           => Y(8), Sum(7) => Y(7), Sum(6) => Y(6), Sum(5) => 
                           Y(5), Sum(4) => Y(4), Sum(3) => Y(3), Sum(2) => Y(2)
                           , Sum(1) => Y(1), Sum(0) => Y(0));
   cout_array_1_0_port <= '0';
   cout_array_2_0_port <= '0';
   cout_array_3_0_port <= '0';
   cout_array_4_0_port <= '0';
   cout_array_5_0_port <= '0';
   cout_array_0_0_port <= '0';
   muxInE_7_0_port <= '0';
   muxInE_7_1_port <= '0';
   muxInE_7_2_port <= '0';
   muxInE_7_3_port <= '0';
   muxInE_7_4_port <= '0';
   muxInE_7_5_port <= '0';
   muxInE_7_6_port <= '0';
   muxInE_7_7_port <= '0';
   muxInE_7_8_port <= '0';
   muxInE_7_9_port <= '0';
   muxInE_7_10_port <= '0';
   muxInE_7_11_port <= '0';
   muxInE_7_12_port <= '0';
   muxInE_7_13_port <= '0';
   muxInE_7_14_port <= '0';
   muxInD_7_0_port <= '0';
   muxInD_7_1_port <= '0';
   muxInD_7_2_port <= '0';
   muxInD_7_3_port <= '0';
   muxInD_7_4_port <= '0';
   muxInD_7_5_port <= '0';
   muxInD_7_6_port <= '0';
   muxInD_7_7_port <= '0';
   muxInD_7_8_port <= '0';
   muxInD_7_9_port <= '0';
   muxInD_7_10_port <= '0';
   muxInD_7_11_port <= '0';
   muxInD_7_12_port <= '0';
   muxInD_7_13_port <= '0';
   muxInD_7_14_port <= '0';
   muxInC_7_0_port <= '0';
   muxInC_7_1_port <= '0';
   muxInC_7_2_port <= '0';
   muxInC_7_3_port <= '0';
   muxInC_7_4_port <= '0';
   muxInC_7_5_port <= '0';
   muxInC_7_6_port <= '0';
   muxInC_7_7_port <= '0';
   muxInC_7_8_port <= '0';
   muxInC_7_9_port <= '0';
   muxInC_7_10_port <= '0';
   muxInC_7_11_port <= '0';
   muxInC_7_12_port <= '0';
   muxInC_7_13_port <= '0';
   muxInB_7_0_port <= '0';
   muxInB_7_1_port <= '0';
   muxInB_7_2_port <= '0';
   muxInB_7_3_port <= '0';
   muxInB_7_4_port <= '0';
   muxInB_7_5_port <= '0';
   muxInB_7_6_port <= '0';
   muxInB_7_7_port <= '0';
   muxInB_7_8_port <= '0';
   muxInB_7_9_port <= '0';
   muxInB_7_10_port <= '0';
   muxInB_7_11_port <= '0';
   muxInB_7_12_port <= '0';
   muxInB_7_13_port <= '0';
   muxInE_6_0_port <= '0';
   muxInE_6_1_port <= '0';
   muxInE_6_2_port <= '0';
   muxInE_6_3_port <= '0';
   muxInE_6_4_port <= '0';
   muxInE_6_5_port <= '0';
   muxInE_6_6_port <= '0';
   muxInE_6_7_port <= '0';
   muxInE_6_8_port <= '0';
   muxInE_6_9_port <= '0';
   muxInE_6_10_port <= '0';
   muxInE_6_11_port <= '0';
   muxInE_6_12_port <= '0';
   muxInD_6_0_port <= '0';
   muxInD_6_1_port <= '0';
   muxInD_6_2_port <= '0';
   muxInD_6_3_port <= '0';
   muxInD_6_4_port <= '0';
   muxInD_6_5_port <= '0';
   muxInD_6_6_port <= '0';
   muxInD_6_7_port <= '0';
   muxInD_6_8_port <= '0';
   muxInD_6_9_port <= '0';
   muxInD_6_10_port <= '0';
   muxInD_6_11_port <= '0';
   muxInD_6_12_port <= '0';
   muxInC_6_0_port <= '0';
   muxInC_6_1_port <= '0';
   muxInC_6_2_port <= '0';
   muxInC_6_3_port <= '0';
   muxInC_6_4_port <= '0';
   muxInC_6_5_port <= '0';
   muxInC_6_6_port <= '0';
   muxInC_6_7_port <= '0';
   muxInC_6_8_port <= '0';
   muxInC_6_9_port <= '0';
   muxInC_6_10_port <= '0';
   muxInC_6_11_port <= '0';
   muxInB_6_0_port <= '0';
   muxInB_6_1_port <= '0';
   muxInB_6_2_port <= '0';
   muxInB_6_3_port <= '0';
   muxInB_6_4_port <= '0';
   muxInB_6_5_port <= '0';
   muxInB_6_6_port <= '0';
   muxInB_6_7_port <= '0';
   muxInB_6_8_port <= '0';
   muxInB_6_9_port <= '0';
   muxInB_6_10_port <= '0';
   muxInB_6_11_port <= '0';
   muxInE_5_0_port <= '0';
   muxInE_5_1_port <= '0';
   muxInE_5_2_port <= '0';
   muxInE_5_3_port <= '0';
   muxInE_5_4_port <= '0';
   muxInE_5_5_port <= '0';
   muxInE_5_6_port <= '0';
   muxInE_5_7_port <= '0';
   muxInE_5_8_port <= '0';
   muxInE_5_9_port <= '0';
   muxInE_5_10_port <= '0';
   muxInD_5_0_port <= '0';
   muxInD_5_1_port <= '0';
   muxInD_5_2_port <= '0';
   muxInD_5_3_port <= '0';
   muxInD_5_4_port <= '0';
   muxInD_5_5_port <= '0';
   muxInD_5_6_port <= '0';
   muxInD_5_7_port <= '0';
   muxInD_5_8_port <= '0';
   muxInD_5_9_port <= '0';
   muxInD_5_10_port <= '0';
   muxInC_5_0_port <= '0';
   muxInC_5_1_port <= '0';
   muxInC_5_2_port <= '0';
   muxInC_5_3_port <= '0';
   muxInC_5_4_port <= '0';
   muxInC_5_5_port <= '0';
   muxInC_5_6_port <= '0';
   muxInC_5_7_port <= '0';
   muxInC_5_8_port <= '0';
   muxInC_5_9_port <= '0';
   muxInB_5_0_port <= '0';
   muxInB_5_1_port <= '0';
   muxInB_5_2_port <= '0';
   muxInB_5_3_port <= '0';
   muxInB_5_4_port <= '0';
   muxInB_5_5_port <= '0';
   muxInB_5_6_port <= '0';
   muxInB_5_7_port <= '0';
   muxInB_5_8_port <= '0';
   muxInB_5_9_port <= '0';
   muxInE_4_0_port <= '0';
   muxInE_4_1_port <= '0';
   muxInE_4_2_port <= '0';
   muxInE_4_3_port <= '0';
   muxInE_4_4_port <= '0';
   muxInE_4_5_port <= '0';
   muxInE_4_6_port <= '0';
   muxInE_4_7_port <= '0';
   muxInE_4_8_port <= '0';
   muxInD_4_0_port <= '0';
   muxInD_4_1_port <= '0';
   muxInD_4_2_port <= '0';
   muxInD_4_3_port <= '0';
   muxInD_4_4_port <= '0';
   muxInD_4_5_port <= '0';
   muxInD_4_6_port <= '0';
   muxInD_4_7_port <= '0';
   muxInD_4_8_port <= '0';
   muxInC_4_0_port <= '0';
   muxInC_4_1_port <= '0';
   muxInC_4_2_port <= '0';
   muxInC_4_3_port <= '0';
   muxInC_4_4_port <= '0';
   muxInC_4_5_port <= '0';
   muxInC_4_6_port <= '0';
   muxInC_4_7_port <= '0';
   muxInB_4_0_port <= '0';
   muxInB_4_1_port <= '0';
   muxInB_4_2_port <= '0';
   muxInB_4_3_port <= '0';
   muxInB_4_4_port <= '0';
   muxInB_4_5_port <= '0';
   muxInB_4_6_port <= '0';
   muxInB_4_7_port <= '0';
   muxInE_3_0_port <= '0';
   muxInE_3_1_port <= '0';
   muxInE_3_2_port <= '0';
   muxInE_3_3_port <= '0';
   muxInE_3_4_port <= '0';
   muxInE_3_5_port <= '0';
   muxInE_3_6_port <= '0';
   muxInD_3_0_port <= '0';
   muxInD_3_1_port <= '0';
   muxInD_3_2_port <= '0';
   muxInD_3_3_port <= '0';
   muxInD_3_4_port <= '0';
   muxInD_3_5_port <= '0';
   muxInD_3_6_port <= '0';
   muxInC_3_0_port <= '0';
   muxInC_3_1_port <= '0';
   muxInC_3_2_port <= '0';
   muxInC_3_3_port <= '0';
   muxInC_3_4_port <= '0';
   muxInC_3_5_port <= '0';
   muxInB_3_0_port <= '0';
   muxInB_3_1_port <= '0';
   muxInB_3_2_port <= '0';
   muxInB_3_3_port <= '0';
   muxInB_3_4_port <= '0';
   muxInB_3_5_port <= '0';
   muxInE_2_0_port <= '0';
   muxInE_2_1_port <= '0';
   muxInE_2_2_port <= '0';
   muxInE_2_3_port <= '0';
   muxInE_2_4_port <= '0';
   muxInD_2_0_port <= '0';
   muxInD_2_1_port <= '0';
   muxInD_2_2_port <= '0';
   muxInD_2_3_port <= '0';
   muxInD_2_4_port <= '0';
   muxInC_2_0_port <= '0';
   muxInC_2_1_port <= '0';
   muxInC_2_2_port <= '0';
   muxInC_2_3_port <= '0';
   muxInB_2_0_port <= '0';
   muxInB_2_1_port <= '0';
   muxInB_2_2_port <= '0';
   muxInB_2_3_port <= '0';
   muxInE_1_0_port <= '0';
   muxInE_1_1_port <= '0';
   muxInE_1_2_port <= '0';
   muxInD_1_0_port <= '0';
   muxInD_1_1_port <= '0';
   muxInD_1_2_port <= '0';
   muxInC_1_0_port <= '0';
   muxInC_1_1_port <= '0';
   muxInB_1_0_port <= '0';
   muxInB_1_1_port <= '0';
   muxInE_0_0_port <= '0';
   muxInD_0_0_port <= '0';
   U248 : BUF_X1 port map( A => A(2), Z => n21);
   U249 : BUF_X2 port map( A => A(11), Z => n18);
   U250 : BUF_X1 port map( A => A(11), Z => n23);
   U251 : CLKBUF_X1 port map( A => n12, Z => n1);
   U252 : BUF_X1 port map( A => A(8), Z => n19);
   U253 : BUF_X1 port map( A => A(11), Z => n17);
   U254 : BUF_X2 port map( A => A(11), Z => n2);
   U255 : CLKBUF_X1 port map( A => n9, Z => n3);
   U256 : BUF_X2 port map( A => A(10), Z => n9);
   U257 : BUF_X2 port map( A => n13, Z => n16);
   U258 : BUF_X1 port map( A => A(2), Z => n4);
   U259 : BUF_X1 port map( A => A(7), Z => n24);
   U260 : BUF_X1 port map( A => A(8), Z => n5);
   U261 : BUF_X1 port map( A => A(12), Z => n6);
   U262 : BUF_X1 port map( A => A(6), Z => n7);
   U263 : BUF_X2 port map( A => A(9), Z => n8);
   U264 : BUF_X2 port map( A => A(0), Z => n10);
   U265 : BUF_X2 port map( A => A(7), Z => n11);
   U266 : BUF_X2 port map( A => A(5), Z => n12);
   U267 : BUF_X1 port map( A => A(0), Z => n13);
   U268 : BUF_X2 port map( A => n6, Z => n14);
   U269 : BUF_X1 port map( A => A(8), Z => n25);
   U270 : BUF_X2 port map( A => A(9), Z => n15);
   U271 : BUF_X2 port map( A => A(6), Z => n22);

end SYN_struct;
