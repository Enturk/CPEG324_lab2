library ieee;
use ieee.std_logic_1164.all;
use ieee.math.real.all;

entity demux is
  generic(width : natural := 8);
  generic(selWidth : natural := integer(ceil(log2(real(width))));
  port(dIn : in std_logic;
       sel : in std_logic_vector(selWidth-1 downto 0); --1 to 8
       muxOut : out std_logic_vector(width-1 downto 0));
end demux;

architecture behavioral of demux is

signal selSig : std_logic_vector(selWidth-1 downto 0);

begin

--generate select
  for i in selWidth'range loop
	    
  end loop;
process

end behavioral;
