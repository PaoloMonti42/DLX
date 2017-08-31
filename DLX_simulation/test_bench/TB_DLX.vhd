library IEEE;

use IEEE.std_logic_1164.all;
use WORK.myTypes.all;

entity tb_dlx is
end tb_dlx;

architecture TEST of tb_dlx is

    signal Clk: std_logic := '0';
    signal Rst: std_logic := '1';
    signal PC, IR : bus32;

    component dlx is
	port(Clk : in std_logic;
	     Rst : in std_logic;
	     IR : in bus32;
	     PC : out bus32);
    end component;

    component IRAM is
        generic (
             RAM_DEPTH : integer := 48;
             I_SIZE : integer := 32);
        port (
    	      Rst  : in  std_logic;
              Addr : in  std_logic_vector(I_SIZE - 1 downto 0);
              Dout : out std_logic_vector(I_SIZE - 1 downto 0)
    	     );

    end component;
begin

	U1: DLX port map (Clk, Rst, IR, PC);
	U2: IRAM generic map(1024, 32) port map (Rst, PC, IR);

        PCLOCK : process(Clk)
	begin
		Clk <= not(Clk) after 5 ns;	
	end process;
	
	Rst <= '0', '1' after 6 ns;
       

end TEST;


