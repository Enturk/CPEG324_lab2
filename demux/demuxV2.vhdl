library std;
library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use std.textio.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity demuxV2 is
  generic(width : natural := 8);
  port(dIn : in std_logic;
       sel : in std_logic_vector(natural(ceil(log2(real(width))))-1 downto 0) := x"00";
       muxOut : out std_logic_vector(width-1 downto 0));
end demuxV2;

architecture behavioral of demuxV2 is

--signal selSig : std_logic_vector(natural(ceil(log2(real(width-1)))) downto 0);
begin

  process (sel, dIn) is 
  --variable my_line : line;
  begin

  for i in 0 to width-1 loop
    if i = to_integer(unsigned(sel)) then
      muxOut(i) <= dIn;
    else
      muxOut(i) <= '0';
    end if;
  end loop;
  --g:for i in sel'range loop
  --  write(my_line, string'("Hello World!"));
  --  writeline(output, my_line);	    
  --end loop;
  --wait;
  end process;


end behavioral;
