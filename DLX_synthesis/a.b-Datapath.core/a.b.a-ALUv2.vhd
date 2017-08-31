library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity alu is
  port (  A : in bus32;
          B : in bus32;
          OP : in aluOp;
          Y1 : out bus32;
          cout : out std_logic);
end alu;


architecture behav of alu is

component adder_sub is
  	generic (N : integer := 32);
  	Port (	A:	In	std_logic_vector(N-1  downto 0);
  		      B:	In	std_logic_vector(N-1  downto 0);
  		      Ci:	In	std_logic;
  		      Cout:	Out	std_logic;
            Sum: out std_logic_vector(N-1 downto 0));
end component;

  component booth_mul is
  	generic(N : integer := 32);
  	Port ( A, B : In std_logic_vector(N-1 downto 0);
  	       Y : Out std_logic_vector(2*N-1 downto 0));
  end component;

  component logical is
    port (A : in bus32;
          B : in bus32;
          sel : in std_logic_vector(3 downto 0);
          Y : out bus32);
  end component;

  component shifter is
	port(A : in bus32;
	     B : in bus32;
	     sel : in std_logic_vector(1 downto 0);
	     C : out bus32);
  end component;

  component mux_alu is
	port(addsub : in std_logic_vector(31 downto 0);
	     mul : in std_logic_vector(31 downto 0);
	     log : in std_logic_vector(31 downto 0);
 	     shift : in std_logic_vector(31 downto 0);
	     lhi : in std_logic_vector(31 downto 0);
	     gt : in std_logic;
	     get : in std_logic;
	     lt : in std_logic;
 	     let : in std_logic;
	     eq : in std_logic;
	     neq : in std_logic;
	     sel : in aluOp;
	     out_mux : out std_logic_vector (31 downto 0));
  end component;

  component comparator is
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
  end component;

  signal add_sub : std_logic;
  signal out_add : bus32;
  signal c_out : std_logic;

  signal out_mul : bus32;

  signal sel_log : std_logic_vector(3 downto 0) := "0000";
  signal out_log : bus32;

  signal sel_shift : std_logic_vector(1 downto 0);-- := "00";
  signal out_shift : bus32;

  signal out_lhi   : bus32;

  signal sign, gt, get, lt, let, eq, neq : std_logic;

  signal A_add, B_add, A_mul, B_mul, A_log, B_log, A_sht, B_sht, B_lhi : bus32; --to perform input state assignment

  begin

    process(A, B, OP)
    begin
      case OP is
        when ADDOP => 	add_sub <= '0'; A_add <= A; B_add <= B; 				-- A + B
        when SUBOP => 	add_sub <= '1';	A_add <= A; B_add <= B;					-- A - B
        when MULOP => 	A_mul <= A; B_mul <= B;							-- A * B
        when ANDOP => 	sel_log <= "0001"; A_log <= A; B_log <= B;				-- A and B
        when OROP => 	sel_log <= "0111"; A_log <= A; B_log <= B;				-- A or B
        when XOROP => 	sel_log <= "0110"; A_log <= A; B_log <= B;				-- A xor B
        when SLLOP => 	sel_shift <= "00"; A_sht <= A; B_sht <= B;				-- A sll B
        when SRLOP => 	sel_shift <= "01"; A_sht <= A; B_sht <= B;				-- A srl B
        when SRAOP => 	sel_shift <= "10"; A_sht <= A; B_sht <= B;				-- A sra B
	when GTUOP => 	add_sub <= '1'; sign <= '0'; A_add <= A; B_add <= B;			-- A > B
        when GETUOP => 	add_sub <= '1';	sign <= '0'; A_add <= A; B_add <= B; 			-- A >= B
        when LTUOP => 	add_sub <= '1';	sign <= '0'; A_add <= A; B_add <= B; 			-- A < B
        when LETUOP => 	add_sub <= '1';	sign <= '0'; A_add <= A; B_add <= B;			-- A >= B
        when GTOP => 	add_sub <= '1';	sign <= A(31) xor B(31); A_add <= A; B_add <= B;	-- A > B
        when GETOP => 	add_sub <= '1';	sign <= A(31) xor B(31); A_add <= A; B_add <= B;	-- A >= B
        when LTOP => 	add_sub <= '1';	sign <= A(31) xor B(31); A_add <= A; B_add <= B;	-- A < B
        when LETOP => 	add_sub <= '1';	sign <= A(31) xor B(31); A_add <= A; B_add <= B; 	-- A >= B
        when EQOP => 	add_sub <= '1';	sign <= '0'; A_add <= A; B_add <= B; 			-- A == B
	when NEQOP => 	add_sub <= '1';	sign <= '0'; A_add <= A; B_add <= B; 			-- A /= B
	when NOP =>     NULL;
	when LHIOP =>	B_lhi <= B;
        when others => 	NULL;
      end case;
    end process;

      cout <= c_out;
      out_lhi <= B_lhi(15 downto 0) & x"0000";

      adder_subtr: adder_sub generic map(32) port map(A_add, B_add, add_sub, c_out, out_add);
      mul : booth_mul generic map(16) port map(A_mul(15 downto 0), B_mul(15 downto 0), out_mul);
      logic : logical port map(A_log, B_log, sel_log, out_log);
      shift : shifter port map(A_sht, B_sht, sel_shift, out_shift);
      compar : comparator port map(c_out, out_add, sign, gt, get, lt, let, eq, neq);
      muxy1 : mux_alu port map(out_add, out_mul, out_log, out_shift, out_lhi, gt, get, lt, let, eq, neq, OP, Y1);


end behav;
