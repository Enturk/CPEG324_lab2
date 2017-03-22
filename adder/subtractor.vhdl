library ieee;
use ieee.std_logic_1164.all;

entity subtractor is
  port(s0, s1, bIn : in std_logic;
       subOut, bOut : out std_logic);
end subtractor;

architecture behavioral of subtractor is

signal a, b, c : std_logic;

begin

a <= s0 xor s1;
subOut <= a xor bIn;
b <= not(a) and bIn;
c <= not(s0) and s1;
bOut <= b or c;

end behavioral;
