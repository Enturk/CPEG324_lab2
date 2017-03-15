library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux4wayNbit_tb is 
end entity mux4wayNbit_tb;

architecture dataflow of mux4wayNbit_tb is

	component mux4wayNbit
		port(i0, i1, i2, i3 : in std_logic_vector(7 downto 0);
			 sel : in std_logic_vector(1 downto 0);
			 muxOut : out std_logic_vector(7 downto 0));
	end component;

	signal i0, i1, i2, i3 : std_logic_vector(7 downto 0);
	signal sel : std_logic_vector(1 downto 0);
	signal muxOut : std_logic_vector(7 downto 0);
	
begin
	myMux : mux4wayNbit
		 port map(i0 => i0,
			  i1 => i1,
 		          i2 => i2,
			  i3 => i3,
			  sel => sel,
			  muxOut => muxOut);
	
	process 
	begin
	i0 <= "10000000";
	i1 <= "01000000";
	i2 <= "00100000";
	i3 <= "00010000";
	wait for 10 ns;
	sel <= "00";
	wait for 10 ns;
	sel <= "01";
	wait for 10 ns;
	sel <= "10";
	wait for 10 ns;
	sel <= "11";
	wait for 10 ns;

	wait;

	end process;
end architecture dataflow;
