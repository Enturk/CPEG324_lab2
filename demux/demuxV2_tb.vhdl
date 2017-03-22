library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

entity demuxV2_tb is
end demuxV2_tb;

architecture dataflow of demuxV2_tb is
  component demuxV2
    port(dIn : in std_logic;
         sel : in std_logic_vector(2 downto 0);
         muxOut : out std_logic_vector(7 downto 0));
  end component;

signal dIn : std_logic;
signal sel : std_logic_vector(2 downto 0);
signal muxOut : std_logic_vector(7 downto 0);
begin
  d0:demuxV2
  port map(dIn => dIn,
           sel => sel,
           muxOut => muxOut);
  process
  begin
  dIn <= '1';
  wait for 10 ns;
  end process;
end dataflow;
