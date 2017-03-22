library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;

entity subtractorFourBit is
  port(sIn0, sIn1 : in std_logic_vector(3 downto 0);
       bIn : in std_logic;
       subOut : out std_logic_vector(3 downto 0);
       bOut : out std_logic);
end subtractorFourBit;

architecture behavioral of subtractorFourBit is
  component subtractor
    port (s0, s1, bIn : in std_logic;
             subOut, bOut : out std_logic);
  end component;

  signal bSig : std_logic_vector(2 downto 0);

begin

s0 : subtractor
  port map(s0 => sIn0(0),
           s1 => sIn1(0),
           bIn => '0',
           subOut => subOut(0),
           bOut => bSig(0));

s1to2 : for i in 1 to 3 generate
s1 : subtractor
  port map(s0 => sIn0(i),
           s1 => sIn1(i),
           bIn => bSig(i-1),
           subOut => subOut(i),
           bOut => bSig(i));
end generate;

s3 : subtractor
  port map(s0 => sIn0(1),
           s1 => sIn1(1),
           bIn => bSig(2),
           subOut => subOut(1),
           bOut => bOut);
end behavioral;
