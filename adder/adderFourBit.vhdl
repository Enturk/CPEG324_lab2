library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;

entity adderFourBit is
  port(in0, in1 : in std_logic_vector(3 downto 0 );
       cIn : in std_logic;
       addOut : out std_logic_vector(3 downto 0);
       cOut : out std_logic);
end adderFourBit;

architecture behavioral of adderFourBit is
  component adder
    port(i0, i1, cIn : in std_logic;
         addOut, cOut : out std_logic);
  end component;

  signal cSig : std_logic_vector(2 downto 0);

begin

a0 : adder
  port map(
    i0 => in0(0),
    i1 => in1(0),
    cIn => '0',
    addOut => addOut(0),
    cOut => cSig(0));

a1to2 : for i in 1 to 3 generate
a1 : adder
  port map(i0 => in0(i),
           i1 => in1(i),
           cIn => cSig(i-1),
           addOut => addOut(i),
           cOut => cSig(1));
end generate;

a3 : adder
  port map(i0 => in0(3),
           i1 => in1(3),
           cIn => cSig(2),
           addOut => addOut(3),
           cOut => cOut);

end behavioral;
