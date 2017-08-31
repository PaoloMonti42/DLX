library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity booth_mul is
	generic(N : integer := 16);								--number of bits of the operands
	Port ( A, B : In std_logic_vector(N-1 downto 0);
	       Y : Out std_logic_vector(2*N-1 downto 0));		--the output has twice the bits of the inputs
end booth_mul;

architecture struct of booth_mul is

	signal bz : std_logic_vector(N downto 0);				--used to exptend the B input by one bit

component mux is											--5 inputs - 1 output multiplexer, 3 bits selection signal
	generic(N : integer := 32);
	Port (	A, B, C, D, E:	In std_logic_vector(N-1 downto 0);
		Sel : In std_logic_vector(2 downto 0);
		O : Out std_logic_vector(N-1 downto 0));
end component;

component CSA is 
	generic (Nbits : integer := 32);
	Port (	A:	In	std_logic_vector(Nbits-1  downto 0);
		B:	In	std_logic_vector(Nbits-1  downto 0);
		C:	In	std_logic_vector(Nbits-1 downto 0);
		S:	Out	std_logic_vector(Nbits-1  downto 0);
		Cout:	Out	std_logic_vector(Nbits-1 downto 0));
end component; 


component shift_mul is 										--shifter to produce the inputs of the mux (multiply by powers of 2)
	generic(N : integer := 16;
		S : integer := 0);
	Port ( A: In std_logic_vector(N-1 downto 0);
	       B, C, D, E : Out std_logic_vector(2*N-1 downto 0));
end component;

component cla_adder is 
	generic (N : integer := 32);
	Port (	A:	In	std_logic_vector(N-1  downto 0);
		B:	In	std_logic_vector(N-1  downto 0);
		Ci:	In	std_logic;
		Cout:	Out	std_logic;
                Sum: out std_logic_vector(N-1 downto 0));
end component;

type inmux_array is array (N/2-1 downto 0) of std_logic_vector(2*N-1 downto 0); --array of inputs of the muxes
type outmux_array is array (N/2-1 downto 0) of std_logic_vector(2*N-1 downto 0);  --array of outputs of the muxes
type outadd_array is array (5 downto 0) of std_logic_vector(2*N-1 downto 0);  --array of out of the adders


signal muxInB, muxInC, muxInD, muxInE : inmux_array;
signal outmux: outmux_array;
signal sum_array, cout_array: outadd_array;

begin

	bz <= b & '0';							--append one more bit to the left of the B input signal, in position "-1"

	S : for i in 0 to N/2-1 generate		--the shifters take the A input signal as input and produce 4 inputs for the mux (the fith one is zero)
		SHIFTERS : shift_mul generic map(N, 2*i) port map(A, muxInB(i), muxInC(i), muxInD(i), muxInE(i)); --2*i gives to the shifter a reference on how many positions to shift the bits
	end generate S;

	M: for i in 0 to N/2-1 generate
		MUXGEN: mux generic map (2*N) port map(
			(others=> '0'),
			muxInB(i), muxInC(i), muxInD(i), muxInE(i),
			bz(2*i+2 downto 2*i),
			outmux(i));
	end generate M;

	Add1IL : CSA generic map (32) port map (outmux(0), outmux(1), outmux(2), sum_array(0), cout_array(0));
	Add2IL : CSA generic map (32) port map (outmux(3), outmux(4), outmux(5), sum_array(1), cout_array(1));

	Add1IIL : CSA generic map (32) port map (sum_array(0), cout_array(0), sum_array(1), sum_array(2), cout_array(2));
	Add2IIL : CSA generic map (32) port map (cout_array(1), outmux(6), outmux(7), sum_array(3), cout_array(3));

	Add1IIIL : CSA generic map (32) port map (sum_array(2), cout_array(2), sum_array(3), sum_array(4), cout_array(4));

	AddRCA : CSA generic map (32) port map (sum_array(4), cout_array(4), cout_array(3), sum_array(5), cout_array(5));

	P4adder : cla_adder generic map (32) port map(sum_array(5), cout_array(5), '0', open, Y);


end struct;
