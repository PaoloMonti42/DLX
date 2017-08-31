library ieee;
use ieee.std_logic_1164.all;
use work.myTypes.all;

entity datapath is
	port(Clk                : in  std_logic;  -- Clock
	    Rst                : in  std_logic;  -- Reset:Active-Low
	    Instr		: in bus32;
	    -- IF Control Signal
	    JUMP_EN            : in std_logic;  -- JUMP Enable Signal for PC input MUX
	    -- ID Control Signal
	    RF_RD1_EN 	       : in std_logic;
	    RF_RD2_EN 	       : in std_logic;
	    RF_EN 	       : in std_logic;
	    CALL               : in std_logic; 
	    RET                : in std_logic;  
	    IMM_SEL    	       : in std_logic;  
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

	    flush 		: out std_logic_vector(1 downto 0);
	    PC_out		: out bus32);
end datapath;

architecture rtl of datapath is

	component alu is
	  port (  A : in bus32;
	          B : in bus32;
	          OP : in aluOp;
	          Y1 : out bus32;
	          cout : out std_logic);
	end component;

	component register_file is
		generic(Nbit: integer := 32;
			N: integer := 32);
		port ( CLK: 		IN std_logic;
			RESET: 		IN std_logic;
			ENABLE: 	IN std_logic;
			RD1: 		IN std_logic;
			RD2: 		IN std_logic;
			WR: 		IN std_logic;
			ADD_WR: 	IN std_logic_vector((log2f(N) - 1) downto 0);
			ADD_RD1: 	IN std_logic_vector((log2f(N) - 1) downto 0);
			ADD_RD2: 	IN std_logic_vector((log2f(N) - 1) downto 0);
			DATAIN: 	IN std_logic_vector((Nbit - 1) downto 0);
			OUT1: 		OUT std_logic_vector((Nbit - 1) downto 0);
			OUT2: 		OUT std_logic_vector((Nbit - 1) downto 0));
	end component;


	component mux21_generic is
		Generic (N: integer:= 8);
		Port (	A:	In	std_logic_vector(N-1 downto 0) ;
			B:	In	std_logic_vector(N-1 downto 0);
			SEL:	In	std_logic;
			Y:	Out	std_logic_vector(N-1 downto 0));
	end component;

	component MUX21 is
	Port (	A:	In	std_logic;
		B:	In	std_logic;
		S:	In	std_logic;
		Y:	Out	std_logic);
	end component;

	component reg is
		generic ( N : integer := 8 );
		port (clk : in std_logic;
			rst : in std_logic;
			d_in : in std_logic_vector (N-1 downto 0);
			d_out : out std_logic_vector (N-1 downto 0));
	end component;

	component sign_ext is
	generic (Nstart : integer := 16;
		    Nend : integer := 32);
	port(Ain : in std_logic_Vector(Nstart- 1 downto 0);
	     Aout : out std_logic_Vector(Nend- 1 downto 0)); 
	end component;

	component DRAM is
	generic(N: integer := 256);
	port (  clk: 		IN std_logic;
		rst: 		IN std_logic;
		WR: 		IN std_logic;
		sel_store:	IN std_logic_vector(1 downto 0);
		sel_load:	IN std_logic_vector(2 downto 0); 
		addr:	 	IN std_logic_vector((log2f(N) - 1) downto 0);
		d_in: 		IN bus32;
		d_out: 		OUT bus32);
	end component;

 	component ff is
	port (clk : in std_logic;
		rst : in std_logic;
		d_in : in std_logic;
		d_out : out std_logic);
	end component;

	component PC_incr is
		port(PC : in bus32;
		     NPC : out bus32);
	end component;

	
	component cla_adder is 
		generic (N : integer := 32);
		Port (	A:	In	std_logic_vector(N-1  downto 0);
			B:	In	std_logic_vector(N-1  downto 0);
			Ci:	In	std_logic;
			Cout:	Out	std_logic;
              	        Sum: out std_logic_vector(N-1 downto 0));
	end component;

	component w_reg_file is
	generic (
		M : integer := 8; 
		N : integer := 8; 
		F : integer := 16; 
		Nbit : integer := 32 
	);
	port (
		clk : 		in std_logic;
		reset : 	in std_logic;
		enable : 	in std_logic;
		RD1 : 		in std_logic;
		RD2 : 		in std_logic;
		wr : 		in std_logic;
		add_wr : 	in std_logic_vector((log2f(3 * N + M) - 1) downto 0); 
		add_RD1 : 	in std_logic_vector((log2f(3 * N + M) - 1) downto 0); 
		add_RD2 : 	in std_logic_vector((log2f(3 * N + M) - 1) downto 0); 
		datain : 	in std_logic_vector((Nbit - 1) downto 0);
		out1 : 		out std_logic_vector((Nbit - 1) downto 0);
		out2 : 		out std_logic_vector((Nbit - 1) downto 0);
		call : 		in std_logic;
		ret : 		in std_logic;
		SPILL : 	out std_logic;
		FILL : 		out std_logic;
		to_mem : 	out std_logic_vector((Nbit - 1) downto 0); 
		from_mem : 	in std_logic_vector((NBit - 1) downto 0) 
	);
	end component;

	component stack is
	generic (
		Nbit : integer := 32;
		Nwords : integer := 256
	);
	port (
		clk : 		in std_logic;
		reset : 	in std_logic;
		enable : 	in std_logic;
		RD : 		in std_logic;
		wr : 		in std_logic;
		datain : 	in std_logic_vector((Nbit - 1) downto 0);
		dataout : 	out std_logic_vector((Nbit - 1) downto 0)
	);
	end component;
	
	component mux_pc is
	port (A	:	in bus32;
	      B :	in bus32;
	      C :	in bus32;
	      D :	in bus32;
	      E :	in bus32;
	      F :       in bus32;
	      sel:	std_logic_vector(2 downto 0);
	      Y :	out bus32);
	end component;

	component mux_fwd is
	port(OP : in bus32;
	     alu_out : in bus32;
	     alu_wb_in : in bus32;
 	     LMD_out : in bus32;
	     OPF: out bus32;
	     sel : in std_logic_vector(2 downto 0));
	end component;

	component reg_en is
	generic ( N : integer := 8 );
	port (clk : in std_logic;
		rst : in std_logic;
		en : in std_logic;
		d_in : in std_logic_vector (N-1 downto 0);
		d_out : out std_logic_vector (N-1 downto 0));
	end component;

	component counter is
	port (  clk, rst : in std_logic;
  		tc : out std_logic);
	end component;

--IRAM signals
signal Instr_reg_out : bus32;
signal Combinational_OPCODE, OPCODE, OPCODE1, OPCODE2 : std_logic_vector(5 downto 0);

--register file signals
signal RS1, RS2, RD, RD1, RD2, RD3 : bus5;
signal RF_out_A, RF_out_B, A_reg_out, B_reg_out, spill_to_stack, fill_from_stack : bus32;
signal SPILL, FILL : std_logic;

--Immediate signals
signal Immediate_16 : bus16;
signal Immediate_26 : bus26;
signal Immediate_26_extended, Immediate_16_extended, Immediate_selected, Immediate_clocked : bus32;

--ALU signals
signal ALU_operand_1, ALU_operand_2, ALU_operand_1_FWD, ALU_operand_2_FWD : bus32;
signal ALU_OPCODE_in : aluOp;
signal ALU_output, ALU_output_FWD, ALU_reg_out : bus32;
signal ALU_carry_out : std_logic;

--DRAM signals
signal DRAM_write_data, DRAM_write_data_FWD, DRAM_read_data, LMD_reg_out, LMD_reg_out1 : bus32;
signal sel_store : std_logic_vector(1 downto 0);
signal sel_load : std_logic_vector(2 downto 0);

--WriteBack signals
signal ALU_WB_out, ALU_WB_out1, WB_mux_out, RF_write_data : bus32;

--PC management signals
signal PC_reg_in, PC_reg_out, NPC, NPC1, NPC2, NPC3, NPC4 : bus32;
signal PC_mux_sel : std_logic_vector(2 downto 0);
signal PC_displaced, PC_Immediate_displacement : bus32;
signal branch_taken, mispredict_taken, mispredict_untaken, forward_branch, forward_branch1, forward_branch2 : std_logic;
signal RF_out_A_FWD, A_reg_out_FWD : bus32;
signal A_is_zero, JUMP_EN1, JUMP_EN2 : std_logic;

--operation-specific signals
signal JAL_op, JR_op, BRANCH_op, STORE_op, LOAD_op : std_logic;
--and their delayed counterparts
signal JAL_op1, JAL_op2, JAL_op3, JAL_op4, JR_op1, BRANCH_op1, BRANCH_op2, STORE_op1, STORE_op2, LOAD_op1, LOAD_op2 : std_logic;

--additional signals for control hazard management
signal flush0, flush1, flush2 : std_logic_vector(1 downto 0);
signal PC_enable, PC_enable1, PC_enable_fixed, bootstrap, stall : std_logic;

--Forwarding management signals
	--ALU operand 1
signal FWD_A_exe_dec, FWD_A_exe_dec1, FWD_A_mem_dec, FWD_A_mem_dec1, FWD_A_wb_dec, FWD_A_wb_dec1 : std_logic;
signal FWD_A_sel : std_logic_vector(2 downto 0);
	--ALU operand 2
signal FWD_B_exe_dec, FWD_B_exe_dec1,  FWD_B_wb_dec, FWD_B_wb_dec1 , FWD_B_exe_mem, FWD_B_exe_mem1, FWD_B_exe_mem2, FWD_B_wb_mem, FWD_B_wb_mem1, FWD_B_wb_mem2, FWD_B_mem_exe, FWD_B_mem_exe1, FWD_B_mem_mem, FWD_B_mem_mem1, FWD_B_mem_mem2, FWD_B_lmd1_mem, FWD_B_lmd1_mem1, FWD_B_lmd1_mem2: std_logic;
signal FWD_B_sel : std_logic_vector(2 downto 0);
	--Branch 
signal FWD_exe_branch, FWD_exe_branch1, FWD_wb_branch, FWD_wb_branch1 : std_logic;
	--JR operations
signal FWD_exe_jr , FWD_wb_jr : std_logic;


begin

--IRAM
	Combinational_OPCODE <= Instr(31 downto 26) when PC_enable1 = '1' else "010101";
	IR : reg generic map(32) port map(Clk, Rst, Instr, Instr_reg_out);
	OPCODE <= Instr_reg_out(31 downto 26);
	OPC1 : reg generic map(6) port map(Clk, Rst, OPCODE, OPCODE1);
	OPC2 : reg generic map(6) port map(Clk, Rst, OPCODE1, OPCODE2);


--Register File
	RS1 <= Instr_reg_out(25 downto 21);
	RS2 <= Instr_reg_out(20 downto 16); 
	RD <= "11111" when (OPCODE = ITYPE_JAL or OPCODE = ITYPE_JALR) else
	       Instr_reg_out(15 downto 11) when OPCODE = RTYPE else Instr_reg_out(20 downto 16); 
	RDreg1 : reg generic map(5) port map(Clk, Rst, RD, RD1);
	RDreg2 : reg generic map(5) port map(Clk, Rst, RD1, RD2);
	RDreg3 : reg generic map(5) port map(Clk, Rst, RD2, RD3);
	RF : w_reg_file generic map(8, 8, 4, 32) port map(Clk, Rst, RF_EN, RF_RD1_EN, RF_RD2_EN, RF_WR, RD3, rs1, rs2, RF_write_data,
							 RF_out_A, RF_out_B, call, ret, SPILL, FILL, spill_to_stack, fill_from_stack);
	WRF_stack : stack generic map (32, 256) port map(Clk, Rst, '1', FILL, SPILL, spill_to_stack, fill_from_stack);
	A : reg generic map(32) port map(Clk, Rst, RF_out_A, A_reg_out);
	B : reg generic map(32) port map(Clk, Rst, RF_out_B, B_reg_out);


--Immediate
	Immediate_16 <= Instr_reg_out(15 downto 0);
	Immediate_26 <= Instr_reg_out(25 downto 0);
	Imm16ext : sign_ext generic map(16, 32) port map(Immediate_16, Immediate_16_extended);
	Imm26ext : sign_ext generic map(26, 32) port map(Immediate_26, Immediate_26_extended);
	mux_imm : mux21_generic generic map(32) port map(Immediate_16_extended, Immediate_26_extended, IMM_SEL, Immediate_selected);
	Immreg : reg generic map(32) port map(Clk, Rst, Immediate_selected, Immediate_clocked); 


--ALU
	MUX_A : mux21_generic generic map(32) port map(NPC2, A_reg_out, MUXA_SEL, ALU_operand_1);
	MUX_B : mux21_generic generic map(32) port map(B_reg_out, Immediate_clocked, MUXB_SEL, ALU_operand_2);
	ALU_OPCODE_in <= ALU_opcode when PC_enable1 = '1' else NOP;
	ALU_block : ALU port map(ALU_operand_1_FWD, ALU_operand_2_FWD, ALU_OPCODE_in, ALU_output, ALU_carry_out); 
	ALU_output_FWD <= NPC2 when JAL_op2 = '1' else ALU_output;
	ALU_REG : reg generic map(32) port map(Clk, Rst, ALU_output_FWD, ALU_reg_out);


--DRAM
	sel_store <= SEL_STORE1 & SEL_STORE0;
	sel_load <= SEL_LOAD2 & SEL_LOAD1 & SEL_LOAD0;
	BREG : reg generic map(32) port map(Clk, Rst, B_reg_out, DRAM_write_data);
	dataram : DRAM generic map(4096) port map(Clk, Rst, DRAM_WR, sel_store, sel_load, ALU_reg_out(11 downto 0), 
											DRAM_write_data_FWD, DRAM_read_data);
	LMD : reg generic map(32) port map(Clk, Rst, DRAM_read_data, LMD_reg_out);
	LMD1 : reg generic map(32) port map(Clk, Rst, LMD_reg_out, LMD_reg_out1);


--WriteBack
	ALUWB : reg generic map(32) port map (Clk, Rst, ALU_reg_out, ALU_WB_out);
	ALUWB1 : reg generic map(32) port map (Clk, Rst, ALU_WB_out, ALU_WB_out1);
	mux_WB : mux21_generic generic map(32) port map(LMD_reg_out, ALU_WB_out, WB_MUX_SEL, WB_mux_out);
	RFin_mux : mux21_generic generic map(32) port map(NPC4, WB_mux_out, JAL_op4, RF_write_data);


--PC management
	PC : reg_en generic map(32) port map(Clk, Rst, PC_enable_fixed, PC_reg_in, PC_reg_out);
	PC_out <= (31 downto 30 => PC_reg_out(31)) & PC_reg_out(31 downto 2);	
	PCi : PC_incr port map(PC_reg_out, NPC);	
	NPCreg1 : reg generic map(32) port map(Clk, Rst, NPC, NPC1);
	NPCreg2 : reg generic map(32) port map(Clk, Rst, NPC1, NPC2);
	NPCreg3 : reg generic map(32) port map(Clk, Rst, NPC2, NPC3);
	NPCreg4 : reg generic map(32) port map(Clk, Rst, NPC3, NPC4);
	JUMPENREG1 : ff port map(Clk, Rst, JUMP_EN, JUMP_EN1);
	JUMPENREG2 : ff port map(Clk, Rst, JUMP_EN1, JUMP_EN2);

	A_is_zero <= '1' when A_reg_out_FWD = x"00000000" else '0';
	branch_taken <= '1' when ((A_is_zero = EQ_COND) and BRANCH_op2 = '1') else '0'; --1 if branch taken
	forward_branch <= '1' when Instr(15)='0' else '0'; --1 if forward branch 0 if backward
	forward_branchREG1: ff port map(Clk, Rst, forward_branch, forward_branch1);
	forward_branchREG2: ff port map(Clk, Rst, forward_branch1, forward_branch2);
	mispredict_untaken <= '1' when BRANCH_op2 = '1' and (forward_branch2='1' and branch_taken = '1') else '0'; 
											--mispredict when forward branch in taken
	mispredict_taken <= '1' when BRANCH_op2 = '1' and (forward_branch2='0' and branch_taken = '0') else '0'; 
											--mispredicted when backward branch is not taken
	PC_mux_sel <= "001" when ((JUMP_EN='1' and JR_op = '0') or (BRANCH_op = '1' and forward_branch = '0')) and stall = '0' else 
							--immediately 1 if jump that does not need reg file or backward branch
	      	      "010" when JR_op1 = '1' else			     -- 1 at following cycle if jump that need reg file
		      "011" when stall = '1' or mispredict_taken = '1' else 
		      "100" when mispredict_untaken = '1' else 
		      "101" when PC_enable = '0' else "000";
	pc_mux : mux_pc port map(NPC, PC_displaced, RF_out_A_FWD, NPC2, ALU_output_FWD, NPC2, PC_mux_sel, PC_reg_in);
	
	PC_Immediate_displacement <= (31 downto 26 => Instr(25)) & Instr(25 downto 0) when JUMP_EN = '1' else 
				     (31 downto 16 => Instr(15)) & Instr(15 downto 0);
	jump_adder : cla_adder generic map (32) port map (NPC, PC_Immediate_displacement, '0', open, PC_displaced); 
	
	
--control hazard management
	stall <= '1' when ((LOAD_op1 = '1' and STORE_op = '0') and (RD1 = rs1 or RD1 = rs2)) or ((LOAD_op1 = '1' and STORE_op = '1') and (RD1 = rs1)) else '0';		
	flush0 <= "10" when PC_mux_sel = "100" else "11" when PC_mux_sel = "010" or PC_mux_sel = "011" or stall = '1' else "00"; 
		--we need to keep track of past flushes in order to avoid forwarding their operands 
	flushreg1 : reg generic map (2) port map(Clk, Rst, flush0, flush1);
	flush <= flush1;
	flushreg2 : reg generic map (2) port map(Clk, Rst, flush1, flush2);

	PC_enable <= '1' when SPILL = '0' and FILL = '0' else '0';
	pcen1 : ff port map(Clk, Rst, PC_enable, PC_enable1);
	cnt : counter port map(Clk, Rst, bootstrap);
	PC_enable_fixed <= PC_enable1 or bootstrap;

	
--operation-specific flags
	JAL_op <= '1' when (Combinational_OPCODE = ITYPE_JAL or Combinational_OPCODE = ITYPE_JALR) else '0'; --1 if instr is JAL or JALR
	JALreg1 : ff port map(Clk, Rst, JAL_op, JAL_op1);
	JALreg2: ff port map(Clk, Rst, JAL_op1, JAL_op2);
	JALreg3: ff port map(Clk, Rst, JAL_op2, JAL_op3);
	JALreg4: ff port map(Clk, Rst, JAL_op3, JAL_op4);

	JR_op <= '1' when (Combinational_OPCODE = ITYPE_JR or Combinational_OPCODE = ITYPE_JALR) else '0'; --1 if instr is a jump that needs reg file access
	JRreg1 : ff port map(Clk, Rst, JR_op, JR_op1);
	
	BRANCH_op <= '1' when (Combinational_OPCODE = ITYPE_BEQZ or Combinational_OPCODE = ITYPE_BNEZ) else '0'; --1 if branch
	BRANCH_opREG1: ff port map(Clk, Rst, BRANCH_op, BRANCH_op1); 
	BRANCH_opREG2: ff port map(Clk, Rst, BRANCH_op1, BRANCH_op2); 
	
	--detecting a load operation is important to select the right forwarding
	LOAD_op <= '1' when (OPCODE = ITYPE_LW or OPCODE = ITYPE_LH or OPCODE = ITYPE_LB or OPCODE = ITYPE_LHU or OPCODE = ITYPE_LBU) else '0';	
	LOADREG1 : ff port map(Clk, Rst, LOAD_op, LOAD_op1);
	LOADREG2 : ff port map(Clk, Rst, LOAD_op1, LOAD_op2);

	STORE_op <= '1' when (OPCODE = ITYPE_SW or OPCODE = ITYPE_SH or OPCODE = ITYPE_SB) else '0';	
	STOREREG1 : ff port map(Clk, Rst, STORE_op, STORE_op1);
	STOREREG2 : ff port map(Clk, Rst, STORE_op1, STORE_op2);
	

--forwarding management

	--if a load was executed two operations ago and we need its output
	FWD_A_mem_dec <= '1' when (rs1 = RD2 and RD2 /= "00000" and LOAD_op2 = '1') else '0';
	FWDAREG3 : ff port map(Clk, Rst, FWD_A_mem_dec, FWD_A_mem_dec1);
	--if we need the output of the last operation (if it was a load, forwarding is not possible without stalls)
	FWD_A_exe_dec <= '1' when (rs1 = RD1 and RD1 /= "00000" and LOAD_op1 = '0' and JUMP_EN2 = '0' and BRANCH_op1 = '0' and STORE_op1 = '0') else '0';
	FWDAREG : ff port map(Clk, Rst, FWD_A_exe_dec, FWD_A_exe_dec1);
	--if we need the output of two operations ago (if it was a load, forwarding is possible but from another signal)
	FWD_A_wb_dec <= '1' when (rs1 = RD2 and RD2 /= "00000" and LOAD_op2 = '0' and JUMP_EN2 = '0' and flush2 = "00"  and BRANCH_op1 = '0' and STORE_op2 = '0') else '0';
	FWDAREG2 : ff port map(Clk, Rst, FWD_A_wb_dec, FWD_A_wb_dec1);
	--select the right input signal for the ALU 
	FWD_A_sel <= FWD_A_exe_dec1 & FWD_A_wb_dec1 & FWD_A_mem_dec1;
	FWDAMUX : mux_fwd port map(ALU_operand_1, ALU_reg_out, ALU_WB_out, LMD_reg_out, ALU_operand_1_FWD, FWD_A_sel);


	--if a load was executed two operations ago and we need its output
	FWD_B_mem_exe <= '1' when (rs2 = RD2 and RD2 /= "00000" and LOAD_op2 = '1' and OPCODE /= "001111") else '0';
	FWDBREG3a : ff port map(Clk, Rst, FWD_B_mem_exe, FWD_B_mem_exe1);
	--if we need the output of the last operation
	FWD_B_exe_dec <= '1' when (rs2 = RD1 and RD1 /= "00000" and OPCODE = RTYPE and LOAD_op1 = '0' and STORE_op1 = '0')  else '0';
	FWDBREG : ff port map(Clk, Rst, FWD_B_exe_dec, FWD_B_exe_dec1);
	--if we need the output of two operations ago
	FWD_B_wb_dec <= '1' when (rs2 = RD2 and RD2 /= "00000" and flush2 = "00" and OPCODE = RTYPE and LOAD_op2 = '0' and STORE_op2 = '0') else '0';
	FWDBREG2 : ff port map(Clk, Rst, FWD_B_wb_dec, FWD_B_wb_dec1);
	--select the right input signal for the ALU 
	FWD_B_sel <= FWD_B_exe_dec1 & FWD_B_wb_dec1 & FWD_B_mem_exe1;
	FWDBMUX : mux_fwd port map(ALU_operand_2, ALU_reg_out, ALU_WB_out, LMD_reg_out, ALU_operand_2_FWD, FWD_B_sel);


	--if we need to store into the DRAM the output of the last operation
	FWD_B_exe_mem <= '1' when (RD = RD1 and RD1 /= "00000" and OPCODE1 = RTYPE)  else '0';
	FWDBREG3 : ff port map(Clk, Rst, FWD_B_exe_mem, FWD_B_exe_mem1);
	FWDBREG4 : ff port map(Clk, Rst, FWD_B_exe_mem1, FWD_B_exe_mem2);
	FWD_B_wb_mem <= '1' when (RD = RD2  and RD2 /= "00000" and OPCODE2 = RTYPE)  else '0';
	FWDBREG5 : ff port map(Clk, Rst, FWD_B_wb_mem, FWD_B_wb_mem1);
	FWDBREG6 : ff port map(Clk, Rst, FWD_B_wb_mem1, FWD_B_wb_mem2);
	FWD_B_mem_mem <= '1' when (rs2 = RD1 and LOAD_op1 = '1') else '0';
	FWDBREG7 : ff port map(Clk, Rst, FWD_B_mem_mem, FWD_B_mem_mem1);
	FWDBREG8 : ff port map(Clk, Rst, FWD_B_mem_mem1, FWD_B_mem_mem2);
	FWD_B_lmd1_mem <= '1' when (rs2 = RD2 and LOAD_op2 = '1') else '0';
	FWDBREG9 : ff port map(Clk, Rst, FWD_B_lmd1_mem, FWD_B_lmd1_mem1);
	FWDBREG10 : ff port map(Clk, Rst, FWD_B_lmd1_mem1, FWD_B_lmd1_mem2);
	DRAM_write_data_FWD <= ALU_WB_out when FWD_B_exe_mem2 = '1' else ALU_WB_out1 when FWD_B_wb_mem2 = '1' else 
			LMD_reg_out when FWD_B_mem_mem2 = '1' else LMD_reg_out1 when FWD_B_lmd1_mem2 = '1' else DRAM_write_data;


	--for branches
	FWD_exe_branch <= '1' when (BRANCH_op1 = '1' and rs1 = RD1) else '0';
	FWDBRANCH1 : ff port map(Clk, Rst, FWD_exe_branch, FWD_exe_branch1);
	FWD_wb_branch <= '1' when (BRANCH_op1 = '1' and rs1 = RD2) else '0';
	FWDBRANCH2 : ff port map(Clk, Rst, FWD_wb_branch, FWD_wb_branch1);
	A_reg_out_FWD <= ALU_reg_out when FWD_exe_branch1 = '1' else ALU_WB_out when FWD_wb_branch1 = '1' else A_reg_out;


	--for jr
	FWD_exe_jr <= '1' when (JR_op1 = '1' and rs1 = RD1) else '0';
	FWD_wb_jr <= '1' when (JR_op1 = '1' and rs1 = RD2) else '0';
	RF_out_A_FWD <= ALU_output_FWD when FWD_exe_jr = '1' else ALU_reg_out when FWD_wb_jr = '1' else RF_out_A;
	
end rtl;
