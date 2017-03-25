library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity demuxV2_tb is
end demuxV2_tb;

architecture dataflow of demuxV2_tb is
  component demuxV2
    generic(width : natural);
    port(dIn : in std_logic;
         sel : in std_logic_vector(2 downto 0);
         muxOut : out std_logic_vector(7 downto 0));
  end component;

signal dIn : std_logic;
signal sel : std_logic_vector(2 downto 0);
signal muxOut : std_logic_vector(7 downto 0);
begin
  d0:demuxV2
  generic map(width => 8)
  port map(dIn => dIn,
           sel => sel,
           muxOut => muxOut);
  
  process
  begin
  dIn <= '1';
  sel <= "000";
  wait for 10 ns;
  sel <= "001";
  wait for 10 ns;
  sel <= "010";
  dIn <= '0';
  wait for 10 ns;
  dIn <= '1';
  wait for 10 ns;
  sel<= "011";
  wait for 10 ns;
  sel <= "100";
  wait for 10 ns;
  sel <= "101";
  wait for 10 ns;
  sel <= "110";
  wait for 10 ns;
  sel <= "111";
  wait for 10 ns;
  wait;

  end process;
end dataflow;









