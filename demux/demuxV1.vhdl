library ieee;
use ieee.std_logic_1164.all;

entity demux is
  port(dIn, sel : in std_logic
       dOut0, dOut1 : out std_logic);
end demux;

architecture behavioral of demux is
begin
  process(dIn, sel)
    if(sel = '0')
      dOut0 <= dIn
    else
      dOut1 <= dIn
    end if;
  end process;
end behavioral;
