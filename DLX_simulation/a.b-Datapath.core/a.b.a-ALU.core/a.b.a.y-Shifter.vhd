library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use work.myTypes.all;

--possibile instructions: sll, slli, srl, srli, sra, srai

--00 SLL SLLI
--01 SRL SRLI
--10 SRA SRAI

entity shifter is
	port(A : in bus32;
	     B : in bus32;
	     sel : in std_logic_vector(1 downto 0);
	     C : out bus32);
end shifter;

architecture struct of shifter is

component shift_firstLevel is
	port(A : in bus32;
	     sel : in std_logic_vector(1 downto 0);
	     mask00 : out std_logic_vector(38 downto 0);
	     mask08 : out std_logic_vector(38 downto 0);
	     mask16 : out std_logic_vector(38 downto 0));
end component;

component shift_secondLevel is
	port(sel : in std_logic_vector(1 downto 0);
	     mask00 : in std_logic_vector(38 downto 0);
	     mask08 : in std_logic_vector(38 downto 0);
	     mask16 : in std_logic_vector(38 downto 0);
	     Y : out std_logic_vector(38 downto 0));
end component;

component shift_thirdLevel is
	port(sel : in std_logic_vector(2 downto 0);
	     A : in std_logic_vector(38 downto 0);
	     Y : out bus32);
end component;

signal m0, m8, m16, y : std_logic_vector(38 downto 0);
signal s3 : std_logic_vector(2 downto 0);

begin

	process(sel, s3, B, A)
		begin
		
		case sel is
		
		when "00" => s3 <= B(2 downto 0);
		when "01" => s3 <= not(B(2 downto 0));
		when "10" => s3 <= not(B(2 downto 0));
		when others => s3 <= "XXX";
		end case;
	end process;

IL : shift_firstLevel port map(A, sel, m0, m8, m16);
IIL : shift_secondLevel port map(B(4 downto 3), m0, m8, m16, y);
IIIL : shift_thirdLevel port map(s3, y, C);

end struct;
