library ieee;
use ieee.std_logic_1164.all;
use work.myTypes.all;

entity dlx is
	port(Clk : in std_logic;
	     Rst : in std_logic;
	     IR : in bus32;
	     PC : out bus32
	     );
end dlx;

architecture struct of dlx is

component datapath is
	port(Clk                : in  std_logic;  -- Clock
	    Rst                : in  std_logic;  -- Reset:Active-Low
	    Instr		: in bus32;
	    -- IF Control Signal
	    JUMP_EN            : in std_logic;  -- JUMP Enable Signal for PC input MUX
	    -- ID Control Signals
	    RF_RD1_EN 	       : in std_logic;
	    RF_RD2_EN 	       : in std_logic;
	    RF_EN 	       : in std_logic;
	    CALL               : in std_logic;  -- Register A Latch Enable
	    RET                : in std_logic;  -- Register B Latch Enable
	    IMM_SEL            : in std_logic;  -- Immediate Register Latch Enable
	    -- EX Control Signals
	    MUXA_SEL           : in std_logic;  -- MUX-A Sel
	    MUXB_SEL           : in std_logic;  -- MUX-B Sel
	    EQ_COND            : in std_logic;  -- Branch if (not) Equal to Zero
	    -- ALU Operation Code
	    ALU_OPCODE         : in aluOp;
	    -- MEM Control Signals
	    SEL_STORE1	       : in std_logic;
    	    SEL_STORE0	       : in std_logic;
    	    SEL_LOAD2	       : in std_logic;
   	    SEL_LOAD1	       : in std_logic;
    	    SEL_LOAD0	       : in std_logic;
	    DRAM_WR            : in std_logic;  -- Data RAM Write Enable
	    -- WB Control signals
	    WB_MUX_SEL         : in std_logic;  -- Write Back MUX Sel
	    RF_WR              : in std_logic;  -- Register File Write Enable

	    flush		: out std_logic_vector(1 downto 0);
	    PC_out		: out bus32);
end component;

component CU_HW is
  port (
    Clk                : in  std_logic;  -- Clock
    Rst                : in  std_logic;  -- Reset:Active-Low
    -- Instruction Register
    IR_IN               : in  bus32;
    flush 		: in std_logic_vector(1 downto 0);
    
    -- IF Control Signal
    JUMP_EN            : out std_logic;  -- JUMP Enable Signal for PC input MUX
    -- ID Control Signals
    RF_RD1_EN 	       : out std_logic;
    RF_RD2_EN 	       : out std_logic;
    RF_EN 	       : out std_logic;
    CALL               : out std_logic;  -- Register A Latch Enable
    RET                : out std_logic;  -- Register B Latch Enable
    IMM_SEL            : out std_logic;  -- Immediate Register Latch Enable 

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

end component;

signal RF_RD1_EN, RF_RD2_EN, RF_EN, CALL, RET, IMM_SEL, MUXA_SEL, MUXB_SEL, EQ_COND, SEL_STORE1, SEL_STORE0, SEL_LOAD2, SEL_LOAD1, SEL_LOAD0, DRAM_WR, JUMP_EN, WB_MUX_SEL, RF_WR: std_logic;
signal flush : std_logic_vector(1 downto 0);
signal ALU_OPCODE : aluOp;
begin

DTP : datapath port map(Clk, Rst, IR, JUMP_EN, RF_RD1_EN, RF_RD2_EN, RF_EN, CALL, RET, IMM_SEL, MUXA_SEL, MUXB_SEL, EQ_COND, ALU_OPCODE, SEL_STORE1, SEL_STORE0, SEL_LOAD2, SEL_LOAD1, SEL_LOAD0, DRAM_WR, WB_MUX_SEL, RF_WR, flush, PC);
CTRLU : CU_HW port map(Clk, Rst, IR, flush, JUMP_EN, RF_RD1_EN, RF_RD2_EN, RF_EN, CALL, RET, IMM_SEL, MUXA_SEL, MUXB_SEL, EQ_COND, ALU_OPCODE, SEL_STORE1, SEL_STORE0, SEL_LOAD2, SEL_LOAD1, SEL_LOAD0, DRAM_WR, WB_MUX_SEL, RF_WR);

end struct;
