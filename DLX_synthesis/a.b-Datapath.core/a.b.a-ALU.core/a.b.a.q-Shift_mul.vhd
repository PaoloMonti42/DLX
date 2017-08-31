library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity shift_mul is 
	generic(N : integer := 16;
		S : integer := 1);
	Port ( A: In std_logic_vector(N-1 downto 0);
	       B, C, D, E : Out std_logic_vector(2*N-1 downto 0)); --the output has twice the bits of the input not to drop bits while shifting
end shift_mul; 

architecture struct of shift_mul is

begin
   
   B <= (others => '0') when A = 0 else							--when the input = 0 all digits of the output are set to 0 
        (2*N-1 downto N=> A(N-1)) & A when S = 0 else			--when the input should not be shifted it is just sign-extended
	     (2*N-1 downto N+S=> A(N-1)) & A & (S-1 downto 0 => '0');  --concatenation of the sign extension of A, A itself and a number of zeroes equal to S

   C <= (others => '0')	when A = 0 else							--A is 2's complemented
        (2*N-1 downto N=> not(A(N-1))) & (not(A)+'1') when S = 0 else
	     (2*N-1 downto N+S=> not(A(N-1))) & (not(A)+'1') & (S-1 downto 0 => '0');

   D <= (others => '0')	when A = 0 else (2*N-1 downto N+S+1=> A(N-1))& A & (S downto 0 => '0'); --A is shifted by one more position appending a number of zeroes equal to S+1
   E <= (others => '0') when A = 0 else (2*N-1 downto N+S+1=> not(A(N-1))) & (not(A)+'1') & (S downto 0 => '0'); --A is 2's complemented

end struct;
