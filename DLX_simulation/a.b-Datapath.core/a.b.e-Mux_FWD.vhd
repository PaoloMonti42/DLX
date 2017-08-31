library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity mux_fwd is
	port(OP : in bus32;
	     alu_out : in bus32;
	     alu_wb_in : in bus32;
 	     lmd_out : in bus32;
	     OPF: out bus32;
	     sel : in std_logic_vector(2 downto 0));
end mux_fwd;

architecture behav of mux_fwd is
begin

--one hot-like encoding, to avoid potential problems
 process(OP, alu_out, alu_wb_in, lmd_out, sel)
	begin
	if (sel(2) = '1') then
		OPF <= alu_out;
	elsif (sel(1) = '1') then
		OPF <= alu_wb_in;
	elsif (sel(0) = '1') then
		OPF <= lmd_out;
	else
		OPF <= OP;		
	end if;
 end process;

end behav;
