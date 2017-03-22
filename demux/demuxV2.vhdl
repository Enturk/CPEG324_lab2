library std;
library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use std.textio.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--use ieee.std_logic_textio.all;

entity demuxV2 is
  generic(width : natural := 8);
  --generic( selWidth : natural := integer(ceil(log2(real(width)))));
  port(dIn : in std_logic;
       --sel : in std_logic_vector(selWidth-1 downto 0); --1 to 8
       sel : in std_logic_vector(natural(ceil(log2(real(width))))-1 downto 0);
       muxOut : out std_logic_vector(width-1 downto 0));
end demuxV2;

architecture behavioral of demuxV2 is

signal selSig : std_logic_vector(natural(ceil(log2(real(width-1)))) downto 0);
begin

--generate select
  process (sel) is 
  variable my_line : line;
  begin
  g:for i in sel'range loop
    write(my_line, string'("Hello World!"));
    writeline(output, my_line);	    
  end loop;
  end process;


end behavioral;
