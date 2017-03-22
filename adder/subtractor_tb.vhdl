library ieee;
use ieee.std_logic_1164.all;

entity subtractor_tb is
end entity subtractor_tb;

architecture dataflow of subtractor_tb is 

  component subtractor
    port(s0, s1, bIn : in std_logic;
         subOut, bOut : out std_logic);
  end component;

  signal s0, s1, bIn : std_logic;
  signal subOut, bOut : std_logic;

begin

  myAdder : subtractor
    port map(s0 => s0,
             s1 => s1,
             bIn => bIn,
             subOut => subOut,
             bOut => bOut);
  process 
  begin
    s0 <= '0';
    s1 <= '0';
    bIn <= '0';
    wait for 10 ns;
    s0 <= '1';
    wait for 10 ns;
    s0 <= '0';
    s1 <= '1';
    wait for 10 ns;
    s0 <= '1';
    wait for 10 ns;
    wait;
  end process;

end architecture dataflow;
