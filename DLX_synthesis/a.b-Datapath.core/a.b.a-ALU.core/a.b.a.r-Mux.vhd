library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity mux is 
	generic(N : integer := 32);
	Port (	A, B, C, D, E:	In std_logic_vector(N-1 downto 0);
		Sel : In std_logic_vector(2 downto 0);
		O : Out std_logic_vector(N-1 downto 0));
end mux; 

architecture behav of mux is


begin

 process(A,B,C,D,E,Sel)
	begin
	 case Sel is
		when "000" => O <= A;
		when "001" => O <= B;
		when "010" => O <= B;
		when "011" => O <= D;
		when "100" => O <= E;
		when "101" => O <= C;
		when "110" => O <= C;
		when "111" => O <= A;
		when others => O <= (others => 'Z');
 	end case;
 end process;

end behav;


