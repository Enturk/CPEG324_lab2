library ieee;
use ieee.std_logic_1164.all;

entity demuxV1 is
  port(dIn, sel : in std_logic;
       dOut0, dOut1 : out std_logic);
end demuxV1;

architecture behavioral of demuxV1 is
begin
  process(dIn, sel)
  begin
    if(sel = '0') then
      dOut0 <= dIn;
      dOut1 <= '0';
    else
      dOut1 <= dIn;
      dOut0 <= '0';
    end if;
  end process;
end behavioral;
