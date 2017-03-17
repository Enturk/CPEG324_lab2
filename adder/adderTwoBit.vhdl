library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity adderTwoBit is
  port(in0, in1 : in std_logic_vector(1 downto 0);
       cIn : in std_logic;
       addOut : out std_logic_vector(1 downto 0);
       cOut : out std_logic);
end adderTwoBit;

architecture structural of adderTwoBit is
  component adder
    port(i0, i1, cIn : in std_logic;
         addOut, cOut : out std_logic);
  end component;

 signal cSig : std_logic;

begin

a0 : adder
port map(
  i0 => in0(0),
  i1 => in1(0),
  cIn => '0',
  addOut => addOut(0),
  cOut => cSig);

a1 : adder
port map(
  i0 => in0(1),
  i1 => in1(1),
  cIn => cSig,
  addOut => addOut(1),
  cOut => cOut);

end structural;
