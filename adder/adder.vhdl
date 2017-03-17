library ieee;
use ieee.std_logic_1164.all;

entity adder is
  port(
    i0, i1, cIn : in std_logic;
    addOut, cOut : out std_logic
  );
end adder;

architecture behavioral of adder is
signal a, b, c : std_logic;
begin

a <= i0 xor i1;
addOut <= a xor cIn;
b <= a nand cin;
c <= i0 nand i1;
cOut <= (not b) or (not c);

end behavioral;
