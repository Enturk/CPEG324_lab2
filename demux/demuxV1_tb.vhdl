library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demuxV1_tb is 
end entity demuxV1_tb;

architecture dataflow of demuxV1_tb is

	component demuxV1
		port(dIn, sel : in std_logic;
			   dOut0, dOut1 : out std_logic);
	end component;

	signal dIn, sel : std_logic;
	signal dOut0, dOut1 : std_logic;
	
begin
	dmx0 : demuxV1
		 port map(dIn => dIn,
		 	        sel => sel,
		 	        dOut0 => dOut0,
		 	        dOut1 => dOut1);
	
	process 
	begin
	dIn <= '1';
	wait for 10 ns;
	sel <= '0';
	wait for 10 ns;
	sel <= '1';
	wait for 10 ns;
	wait;

	end process;
end architecture dataflow;
