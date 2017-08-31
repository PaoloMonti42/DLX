library ieee;
use ieee.std_logic_1164.all;
use work.myTypes.all;

entity mux_pc is
	port (A	:	in bus32;
	      B :	in bus32;
	      C :	in bus32;
	      D :	in bus32;
	      E :	in bus32;
	      F :	in bus32;
	      sel:	std_logic_vector(2 downto 0);
	      Y :	out bus32);
end mux_pc;

architecture behav of mux_pc is

begin
	process(A, B, C, D, E, sel)
		begin

		case sel is
		when "000" => Y <= A;
		when "001" => Y <= B;
		when "010" => Y <= C;
		when "011" => Y <= D;
		when "100" => Y <= E;
		when "101" => Y <= F;
		when others => Y <= (others => 'Z');
		end case;
	end process;

end behav;
