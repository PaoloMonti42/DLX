library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity mux_alu is
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
end mux_alu;

architecture behav of mux_alu is
begin

 process(sel, addsub, mul, log, shift, lhi, gt, get, lt, let, eq, neq)
	begin
	 case sel is
		when ADDOP => out_mux <= addsub;
		when SUBOP => out_mux <= addsub;
		when MULOP => out_mux <= mul;
		when ANDOP => out_mux <= log;
		when OROP => out_mux <= log;
		when XOROP => out_mux <= log;
		when SLLOP => out_mux <= shift;
		when SRLOP => out_mux <= shift;
		when SRAOP => out_mux <= shift;
		when GTUOP => out_mux <= (31 downto 1 => '0') &  gt;
		when GETUOP => out_mux <= (31 downto 1 => '0') &  get;
		when LTUOP => out_mux <= (31 downto 1 => '0') &  lt;
	        when LETUOP => out_mux <= (31 downto 1 => '0') &  let;
		when GTOP => out_mux <= (31 downto 1 => '0') &  gt;
		when GETOP => out_mux <= (31 downto 1 => '0') &  get;
		when LTOP => out_mux <= (31 downto 1 => '0') &  lt;
	        when LETOP => out_mux <= (31 downto 1 => '0') &  let;
		when EQOP => out_mux <= (31 downto 1 => '0') &  eq;
		when NEQOP => out_mux <= (31 downto 1 => '0') &  neq;
		when NOP => out_mux <= (others => '0');
		when LHIOP => out_mux <= lhi;
		when others => out_mux <= (others => 'Z');
 	end case;
 end process;

end behav;
