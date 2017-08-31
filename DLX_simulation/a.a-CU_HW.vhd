library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;

entity CU_HW is
  port (
    Clk                : in  std_logic;  -- Clock
    Rst                : in  std_logic;  -- Reset:Active-Low
    -- Instruction Register
    IR_IN              : in  bus32;
    flush 	       : in std_logic_vector(1 downto 0);
    
    -- IF Control Signal
    JUMP_EN            : out std_logic;  -- JUMP Enable Signal for PC input MUX
    -- ID Control Signals
    RF_RD1_EN 	       : out std_logic;
    RF_RD2_EN 	       : out std_logic;
    RF_EN 	       : out std_logic;
    CALL      	       : out std_logic;  -- Register A Latch Enable
    RET        	       : out std_logic;  -- Register B Latch Enable
    IMM_SEL    	       : out std_logic;  -- Immediate Register Latch Enable 

    -- EX Control Signals
    MUXA_SEL           : out std_logic;  -- MUX-A Sel
    MUXB_SEL           : out std_logic;  -- MUX-B Sel
    EQ_COND            : out std_logic;  -- Branch if (not) Equal to Zero
    
    -- ALU Operation Code
    ALU_OPCODE         : out aluOp; -- choose between implicit or exlicit coding, like std_logic_vector(ALU_OPC_SIZE -1 downto 0);
    
    -- MEM Control Signals
    SEL_STORE1	       : out std_logic;
    SEL_STORE0	       : out std_logic;
    SEL_LOAD2	       : out std_logic;
    SEL_LOAD1	       : out std_logic;
    SEL_LOAD0	       : out std_logic;
    DRAM_WR            : out std_logic;  -- Data RAM Write Enable

    -- WB Control signals
    WB_MUX_SEL         : out std_logic;  -- Write Back MUX Sel
    RF_WR              : out std_logic);  -- Register File Write Enable

end CU_HW;

architecture rtl of CU_HW is
  type mem_array is array (0 to 63) of std_logic_vector(CW_SIZE - 1 downto 0);
  signal cw_mem : mem_array := (0 	=> "011100001000000001",
				2 	=> "100000010000000000", -- JUMP
				3 	=> "100100010000000001", -- JAL
				4 	=> "010100110100000000", -- BEQZ
				5 	=> "010100110000000000", -- BNEZ
				8 	=> "010100100000000001", -- ADDI
				9 	=> "010100100000000001", -- ADDUI
				10	=> "010100100000000001", -- SUBI
				11	=> "010100100000000001", -- SUBUI
				12	=> "010100100000000001", -- ANDI
				13	=> "010100100000000001", -- ORI
				14	=> "010100100000000001", -- XORI
				15	=> "000100100000000001", -- LHI
				16 	=> "000101000000000000", -- RET
				17	=> "000110000000000000", -- CALL
				18	=> "111100001000000000", -- JR
				19	=> "111100001000000001", -- JALR
				20	=> "010100100000000001", -- SLLI
				21	=> "000000000000000000", -- NOP
				22	=> "010100100000000001", -- SRLI
				23	=> "010100100000000001", -- SRAI
				24	=> "010100100000000001", -- SEQI
				25	=> "010100100000000001", -- SNEI
				26	=> "010100100000000001", -- SLTI
				27	=> "010100100000000001", -- SGTI
				28	=> "010100100000000001", -- SLEI
				29	=> "010100100000000001", -- SGEI
				32	=> "010100100000110011", -- LB
				33	=> "010100100000101011", -- LH
				35	=> "010100100000111011", -- LW
				36	=> "010100100000010011", -- LBU
				37	=> "010100100000001011", -- LHU
				40	=> "011100100010000100", -- SB
				41	=> "011100100001000100", -- SH
				43	=> "011100100011000100", -- SW
				58	=> "010100100000000001", -- SLTUI
				59	=> "010100100000000001", -- SGTUI
				60	=> "010100100000000001", -- SLEUI
				61	=> "010100100000000001", -- SGEUI
				others  => "000000000000000000"
				);

  type aluop_array is array (0 to 63) of aluOp;
  signal aluop_rtype: aluop_array := (	
					4 =>	SLLOP,
					6 =>	SRLOP,
					7 =>	SRAOP,
					14 =>   MULOP,
					32 =>	ADDOP,
					33 =>	ADDOP,	
					34 =>	SUBOP,
					35 =>	SUBOP,	
					36 =>	ANDOP,
					37 =>	OROP,
					38 =>	XOROP,
					40 =>	EQOP,
					41 =>	NEQOP,
					42 =>	LTOP,
					43 =>	GTOP,
					44 =>	LETOP,
					45 =>	GETOP,
					58 =>	LTUOP,	
					59 =>	GTUOP,	
					60 =>	LETUOP,	
					61 =>	GETUOP,	
					others => NOP
					);        

  signal aluop_itype : aluop_array := (
					2 	=> ADDOP, 	-- JUMP
					3 	=> ADDOP, 	-- JAL
					4 	=> ADDOP, 	-- BEQZ
					5 	=> ADDOP, 	-- BNEZ
					8 	=> ADDOP, 	-- ADDI
					9 	=> ADDOP, 	-- ADDUI
					10	=> SUBOP, 	-- SUBI
					11	=> SUBOP, 	-- SUBUI
					12	=> ANDOP, 	-- ANDI
					13	=> OROP, 	-- ORI
					14	=> XOROP, 	-- XORI
					15	=> LHIOP, 	-- LHI
					16	=> NOP,		-- RET
					17	=> NOP,		-- CALL
					18	=> ADDOP, 	-- JR
					19	=> ADDOP, 	-- JALR
					20	=> SLLOP, 	-- SLLI
					21	=> NOP,		-- NOP
					22	=> SRLOP, 	-- SRLI
					23	=> SRAOP, 	-- SRAI
					24	=> EQOP, 	-- SEQI
					25	=> NEQOP, 	-- SNEI
					26	=> LTOP, 	-- SLTI
					27	=> GTOP, 	-- SGTI
					28	=> LETOP, 	-- SLEI
					29	=> GETOP, 	-- SGEI
					32	=> ADDOP,	-- LB
					33	=> ADDOP,	-- LH
					35	=> ADDOP, 	-- LW
					36	=> ADDOP,	-- LBU
					37	=> ADDOP,	-- LHU
					40	=> ADDOP,	-- SB
					41	=> ADDOP,	-- SH
					43	=> ADDOP, 	-- SW
					58	=> LTUOP, 	-- SLTUI
					59	=> GTUOP, 	-- SGTUI
					60	=> LETUOP, 	-- SLEUI
					61	=> GETUOP,  	-- SGEUI
					others  => NOP
					);                       
                                
  signal IR_opcode : bus6;  
  signal IR_func : bus11;  

  -- control word is shifted to the correct stage
  signal cw1 : std_logic_vector(CW_SIZE - 1 downto 0); -- first stage
  signal cw2 : std_logic_vector(CW_SIZE - 2 downto 0); -- second stage
  signal cw3 : std_logic_vector(CW_SIZE - 8 downto 0); -- third stage
  signal cw4 : std_logic_vector(CW_SIZE - 11 downto 0); -- fourth stage
  signal cw5 : std_logic_vector(CW_SIZE - 17 downto 0); -- fifth stage

  signal aluOpcode0, aluOpcode1, aluOpcode2 : aluOp := NOP;
 
begin 

  IR_opcode(5 downto 0) <= IR_IN(31 downto 26);
  IR_func(10 downto 0)  <= IR_IN(10 downto 0);

  cw1 <= cw_mem(conv_integer(IR_opcode)) when rst = '1' else (others => '0');
  ALU_OPCODE <= aluOpcode2;

  -- stage one control signals
  JUMP_EN         <= cw1(CW_SIZE - 1);
  -- stage two control signals
  RF_RD1_EN 	  <= cw2(CW_SIZE - 2);
  RF_RD2_EN 	  <= cw2(CW_SIZE - 3);
  RF_EN 	  <= cw2(CW_SIZE - 4);
  CALL   <= cw2(CW_SIZE - 5);
  RET   <= cw2(CW_SIZE - 6);
  IMM_SEL <= cw2(CW_SIZE - 7);
 
  
  -- stage three control signals
  MUXA_SEL      <= cw3(CW_SIZE - 8);
  MUXB_SEL      <= cw3(CW_SIZE - 9);
  EQ_COND       <= cw3(CW_SIZE - 10);
  
  -- stage four control signals
  SEL_STORE1      <= cw4(CW_SIZE - 11);
  SEL_STORE0      <= cw4(CW_SIZE - 12);
  SEL_LOAD2	  <= cw4(CW_SIZE - 13);
  SEL_LOAD1	  <= cw4(CW_SIZE - 14);
  SEL_LOAD0	  <= cw4(CW_SIZE - 15);
  DRAM_WR      	  <= cw4(CW_SIZE - 16);
  
  
  -- stage five control signals
  WB_MUX_SEL <= cw5(CW_SIZE - 17);
  RF_WR      <= cw5(CW_SIZE - 18);

  

  CW_PIPE: process (Clk)
  begin    
	if Clk'event and Clk = '1' then  -- rising clock edge
		if Rst = '0' then                   -- synchronous reset (active low)
      			cw2 <= (others => '0');
      			cw3 <= (others => '0');
      			cw4 <= (others => '0');
      			cw5 <= (others => '0');
      			aluOpcode1 <= NOP;
      			aluOpcode2 <= NOP;
		else
			if (flush = "01") then
      				cw2 <= (others => '0');
			else
				cw2 <= cw1(CW_SIZE - 2 downto 0);
			end if;

			if (flush = "10") then
				cw3 <= (others => '0');
			else
				cw3 <= cw2(CW_SIZE - 8 downto 0);
			end if;
			
			if (flush = "11" or flush = "10") then
				cw4 <= (others => '0');
			else
				cw4 <= cw3(CW_SIZE - 11 downto 0);
			end if;
      			--cw4 <= cw3(CW_SIZE - 13 downto 0);
      			cw5 <= cw4(CW_SIZE - 17 downto 0);

			if (flush = "01" or flush = "10") then
      				aluOpCode1 <= NOP;
			else
				aluOpcode1 <= aluOpcode0;
			end if;

			if (flush = "10") then
				aluOpcode2 <= NOP;
			else
				aluOpcode2 <= aluOpcode1;
			end if;
			
      			
		end if;
    	end if;
  end process CW_PIPE;

  
  ALU_OP_CODE_P : process (IR_opcode, IR_func)
  begin 
	if (IR_opcode = RTYPE) then
		aluOpcode0 <= aluop_rtype(conv_integer(IR_func));
	else
		aluOpcode0 <= aluop_itype(conv_integer(IR_opcode));
	end if;	
  end process ALU_OP_CODE_P;

end rtl;
