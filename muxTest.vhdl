library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity muxTest is 
end entity muxTest;

architecture dataflow of muxTest is

	component muxSelect
		port(i0, i1, i2, i3 : in std_logic;
			 sel : in std_logic_vector(1 downto 0);
			 muxOut : out std_logic);
	end component;

	signal i0, i1, i2, i3 : std_logic;
	signal sel : std_logic_vector(1 downto 0);
	signal muxOut : std_logic;
	
begin
	mx0 : muxSelect
		 port map(i0 => i0,
			  i1 => i1,
 		          i2 => i2,
			  i3 => i3,
			  sel => sel,
			  muxOut => muxOut);
	
	process 
	begin
	i0 <= '0';
	i1 <= '1';
	i2 <= '0';
	i3 <= '1';
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
