library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2test is 
end entity mux2test;

architecture dataflow of mux2test is

	component mux2bit
		port(i0, i1, i2, i3 : in std_logic_vector(1 downto 0);
			 sel : in std_logic_vector(1 downto 0);
			 muxOut : out std_logic_vector(1 downto 0));
	end component;

	signal i0, i1, i2, i3 : std_logic_vector(1 downto 0);
	signal sel : std_logic_vector(1 downto 0);
	signal muxOut : std_logic_vector(1 downto 0);
	
begin
	myMux : mux2bit
		 port map(i0 => i0,
			  i1 => i1,
 		          i2 => i2,
			  i3 => i3,
			  sel => sel,
			  muxOut => muxOut);
	
	process 
	begin
	i0 <= "00";
	i1 <= "01";
	i2 <= "10";
	i3 <= "11";
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
