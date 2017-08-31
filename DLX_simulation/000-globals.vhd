library IEEE;
use IEEE.std_logic_1164.all;

package myTypes is
	function log2f (N : natural) return natural;

	subtype bus64 is std_logic_vector(63 downto 0);
	subtype bus32 is std_logic_vector(31 downto 0);
	subtype bus26 is std_logic_vector(25 downto 0);
	subtype bus16 is std_logic_vector(15 downto 0);
	subtype bus11 is std_logic_vector(10 downto 0);
	subtype bus8 is std_logic_vector(7 downto 0);
	subtype bus6 is std_logic_vector(5 downto 0);
	subtype bus5 is std_logic_vector(4 downto 0);

	type aluOp is ( NOP, 
			ADDOP, SUBOP, MULOP, 
			ANDOP, OROP, XOROP, 
			SLLOP, SRLOP, SRAOP, 
			GTOP, GETOP, LTOP, LETOP, EQOP, NEQOP,
			GTUOP, GETUOP, LTUOP, LETUOP,
			LHIOP					);

	constant CW_SIZE : integer := 18;

	-- R-Type instruction -> FUNC field			-- OPERATION RS1, RS2, RD
  	constant RTYPE_SLL : bus11 :=  "00000000100";   	-- RD = RS1 << RS2[4:0]
  	constant RTYPE_SRL : bus11 :=  "00000000110";   	-- RD = RS1 >> RS2[4:0]
  	constant RTYPE_SRA : bus11 :=  "00000000111";   	-- RD = RS1 >> RS2[4:0]
	constant RTYPE_MULT : bus11 := "00000001110";		-- RD = RS1[16:0] * RD2[16:0]
  	constant RTYPE_ADD : bus11 :=  "00000100000";   	-- RD = RS1 + RS2
  	constant RTYPE_ADDU : bus11 := "00000100001";   	-- RD = RS1 + RS2
 	constant RTYPE_SUB : bus11 :=  "00000100010";   	-- RD = RS1 - RS2
  	constant RTYPE_SUBU : bus11 := "00000100011";   	-- RD = RS1 - RS2
  	constant RTYPE_AND : bus11 :=  "00000100100";   	-- RD = RS1 & RS2
  	constant RTYPE_OR : bus11 :=   "00000100101";   	-- RD = RS1 | RS2
 	constant RTYPE_XOR : bus11 :=  "00000100110";   	-- RD = RS1 ^ RS2
  	constant RTYPE_SEQ : bus11 :=  "00000101000";   	-- RD = 1 if RS1 == RS2
  	constant RTYPE_SNE : bus11 :=  "00000101001";   	-- RD = 1 if RS1 != RS2
  	constant RTYPE_SLT : bus11 :=  "00000101010";   	-- RD = 1 if RS1 < RS2
  	constant RTYPE_SGT : bus11 :=  "00000101011";   	-- RD = 1 if RS1 > RS2
  	constant RTYPE_SLE : bus11 :=  "00000101100";   	-- RD = 1 if RS1 <= RS2
  	constant RTYPE_SGE : bus11 :=  "00000101101";   	-- RD = 1 if RS1 >= RS2
  	constant RTYPE_SLTU : bus11 := "00000111010";   	-- RD = 1 if RS1 < RS2
  	constant RTYPE_SGTU : bus11 := "00000111011";   	-- RD = 1 if RS1 > RS2
  	constant RTYPE_SLEU : bus11 := "00000111100";   	-- RD = 1 if RS1 <= RS2
  	constant RTYPE_SGEU : bus11 := "00000111101";   	-- RD = 1 if RS1 >= RS2


	-- R-Type instruction -> OPCODE field
  	constant RTYPE : bus6 :=  "000000";          	-- for ADD, SUB, AND, OR register-to-register operation

	-- I-Type instruction -> OPCODE field
	constant ITYPE_J : bus6 :=  "000010"; 			--NOP
	constant ITYPE_JAL : bus6 :=  "000011"; 		--NOP
	constant ITYPE_BEQZ : bus6 :=  "000100"; 		--NOP
	constant ITYPE_BNEZ : bus6 :=  "000101"; 		--NOP
	constant ITYPE_ADDI : bus6 :=  "001000"; 		--NOP
	constant ITYPE_ADDUI : bus6 :=  "001001"; 		--NOP
	constant ITYPE_SUBI : bus6 :=  "001010"; 		--NOP
	constant ITYPE_SUBUI : bus6 :=  "001011"; 		--NOP
	constant ITYPE_ANDI : bus6 :=  "001100"; 		--NOP
	constant ITYPE_ORI : bus6 :=  "001101"; 		--NOP
	constant ITYPE_XORI : bus6 :=  "001110"; 		--NOP
	constant ITYPE_LHI : bus6 :=  "001111"; 		--NOP
	constant ITYPE_RFE : bus6 :=  "010000"; 		--NOP
	constant ITYPE_TRAP : bus6 :=  "010001"; 		--NOP
	constant ITYPE_JR : bus6 :=  "010010"; 			--NOP
	constant ITYPE_JALR : bus6 :=  "010011"; 		--NOP
	constant ITYPE_SLLI : bus6 :=  "010100"; 		--NOP
	constant ITYPE_NOP : bus6 :=  "010101"; 		--NOP
	constant ITYPE_SRLI : bus6 :=  "010110"; 		--NOP
	constant ITYPE_SRAI : bus6 :=  "010111"; 		--NOP
	constant ITYPE_SEQI : bus6 :=  "011000"; 		--NOP
	constant ITYPE_SNEI : bus6 :=  "011001"; 		--NOP
	constant ITYPE_SLTI : bus6 :=  "011010"; 		--NOP
	constant ITYPE_SGTI : bus6 :=  "011011"; 		--NOP
	constant ITYPE_SLEI : bus6 :=  "011100"; 		--NOP
	constant ITYPE_SGEI : bus6 :=  "011101"; 		--NOP
	constant ITYPE_LB : bus6 :=  "100000"; 			--NOP
	constant ITYPE_LH : bus6 :=  "100001"; 			--NOP
	constant ITYPE_LW : bus6 :=  "100011"; 			--NOP
	constant ITYPE_LBU : bus6 :=  "100100"; 		--NOP
	constant ITYPE_LHU : bus6 :=  "100101"; 		--NOP
	constant ITYPE_LF : bus6 :=  "100110"; 			--NOP
	constant ITYPE_LD : bus6 :=  "100111"; 			--NOP
	constant ITYPE_SB : bus6 :=  "101000"; 			--NOP
	constant ITYPE_SH : bus6 :=  "101001"; 			--NOP
	constant ITYPE_SW : bus6 :=  "101011"; 			--NOP
	constant ITYPE_SF : bus6 :=  "101110"; 			--NOP
	constant ITYPE_SD : bus6 :=  "101111"; 			--NOP
	constant ITYPE_ITLB : bus6 :=  "111000"; 		--WATISTHIS
	constant ITYPE_SLTUI : bus6 :=  "111010"; 		--NOP
	constant ITYPE_SGTUI : bus6 :=  "111011"; 		--NOP
	constant ITYPE_SLEUI : bus6 :=  "111100"; 		--NOP
	constant ITYPE_SGEUI : bus6 :=  "111101"; 		--NOP
end;


package body myTypes is	
   function log2f (N : natural) return natural is
		variable temp : natural := N;
		variable x : natural := 0;
	    begin
		-- Just divide N by 2 as many times as possible and increment a counter
		while temp > 1 loop
			temp := temp / 2;
			x := x + 1;
		end loop;
		return x;
	end function;
end package body;
