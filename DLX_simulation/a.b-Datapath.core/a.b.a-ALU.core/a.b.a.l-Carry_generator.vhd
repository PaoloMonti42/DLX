library ieee;  
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.myTypes.all;

entity carry_generator is 
	generic (N : integer := 32;						-- number of bits of the operands
		 Nblocks : integer := 8);					-- number of carrys to be generated
	Port (	A:	In	std_logic_vector(N-1  downto 0);
		B:	In	std_logic_vector(N-1  downto 0);
		Ci:	In	std_logic;
		Cout:	Out	std_logic_vector(Nblocks  downto 0));
end carry_generator; 

architecture STRUCTURAL of carry_generator is

  component PGnet_block is 							-- basic component of the PG network, taking 
	Port (	A:	In	std_logic;					-- bits from A and B and computing P and G
		B:	In	std_logic;
		pout:   Out	std_logic;
		gout:	Out	std_logic);
  end component; 

  component G is 								-- generate block
	Port (	gleft:	In	std_logic;
		gright:	In	std_logic;
		pleft:	In	std_logic;
		gout:	Out	std_logic);
  end component; 

  component PG is 								-- propagate + generate block
	Port (	gleft:	In	std_logic;
		gright:	In	std_logic;
		pleft:	In	std_logic;
		pright:	In	std_logic;
		pout:	Out	std_logic;
		gout:	Out	std_logic);
  end component; 

constant M : integer := log2f(N);						-- this is the number of levels of the sparse tree

type pg_sig is array (1 to M+1) of std_logic_vector(N-1 downto 0); 		-- overdimensioned array of signals
signal Psignal, Gsignal : pg_sig;
signal p_cin, g_cin : std_logic;

begin
	-- the PG network is always present at the first level of the sparse tree
	PGnet : for i in 0 to N-1 generate
		-- the block for the LSB is special because it takes into account the carry_in						
		firstblock: if i = 0 generate
				PGnet_Cin : PGnet_block port map (A(i), B(i), p_cin, g_cin);
				GCin: G port map (g_cin, Ci, p_cin, Gsignal(1)(i));
		end generate firstblock;
		-- others are all the same
		otherblocks: if i>0 generate
				PGnet : PGnet_block port map(A(i), B(i), Psignal(1)(i), Gsignal(1)(i));
		end generate otherblocks;
	end generate PGnet;

	-- the rest of the sparse tree is generated by rows
	Rows : for i in 1 to M generate		
		-- j represents the n-th bit/position of the current row, i represents the row
		RowGen : for j in 0 to N-1 generate
			-- the following condition can be seen as ((C1 and C2) or C3) and C4
			-- C1 is the most important. Each row can be divided into 2^(M-i) parts.
			-- The first half of each part is populated by blocks, the second half is not.
			-- C2 assures the block is in a position multiple of radix (bit 3, 7, 11, 15...)
			-- C3 covers the corner case where on the first row the blocks are in positions not multiple of the radix.
			-- C4 distinguishes if a block is a PG or a simple G.
			-- These conditions are manipulated in such a way to distinguish PG blocks, G blocks, and no blocks.
			PGBlockHere : if ((j rem 2**i > 2**(i-1) and j rem 4 = 3) or (i = 1 and j rem 2 = 1)) and (j < 2**(i-1) or j > 2**i) generate
                  		-- The port map of the left and output signals is easy.
				-- To compute where to take the right signals, an A + B formula is used.
				-- A is not dependent on j, and evaluates ti the position of the rightmost block from the above row
				-- B is dependent on j and offsets the value to the right block of the above row
				PGblock : PG port map(Gsignal(i)(j), Gsignal(i)(2**(i-1)-1+2**i*(j/2**i)), Psignal(i)(j), Psignal(i)(2**(i-1)-1+2**i*(j/2**i)), Psignal(i+1)(j), Gsignal(i+1)(j));
			end generate PGBlockHere;

                        NoBlock :  if (j rem 2**i < 2**(i-1) and j rem 4 = 3  and i > 2 ) generate
					-- When no block is generated, above and below signals are linked together to simplify port maps
                                        Psignal(i+1)(j) <= Psignal(i)(j);
                                        Gsignal(i+1)(j) <= Gsignal(i)(j);
                                   end generate NoBlock;

			GBlockHere : if (((j rem 2**i > 2**(i-1) and j rem 4 = 3) or (i = 1 and j rem 2 = 1)) and (j > 2**(i-1) and j < 2**i)) or (j=1 and i=1) generate
				-- Same logic as PG block
				Gblock : G port map(Gsignal(i)(j), Gsignal(i)(2**(i-1)-1+2**i*(j/2**i)), Psignal(i)(j), Gsignal(i+1)(j));
			end generate GBlockHere;
 		end generate RowGen;
	end generate Rows;  

        Cout(0) <= Ci;
        
	Outwrite: for i in 1 to Nblocks generate
		-- Bring the right signals to the output
		Cout(i) <= Gsignal(M+1)(i*4-1);
	end generate Outwrite;
        
end STRUCTURAL;


