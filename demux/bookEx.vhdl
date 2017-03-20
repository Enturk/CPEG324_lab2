library ieee; 
use ieee.std_logic_1164.all;

entity bookEx is
  port(ena, dIn : in std_logic;
       sel : in integer range 0 to 8; --now have input in binary and try to map
       x : out std_logic_vector(7 downto 0));
end bookEx;

architecture behavioral of bookEx is
begin
  process(ena, sel)
    begin
    for i in x'range loop
      if (i = sel) then
        x(i) <= dIn;
      else
        x(i) <= '0';
      end if;
    end loop;
  end process;


end behavioral;
