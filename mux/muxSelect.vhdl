Library ieee;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all;

entity muxSelect is
	port(
		i0 : in std_logic;
		i1 : in std_logic;
		i2 : in std_logic;
		i3 : in std_logic;
		sel : in std_logic_vector(1 downto 0);
		muxOut : out std_logic);
end muxSelect;

architecture behavioral of muxSelect is
	begin
		with sel select
			muxOut <= i0 when "00",
				  i1 when "01",
				  i2 when "10",
				  i3 when others;
end behavioral;















