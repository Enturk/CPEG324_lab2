library ieee;
use ieee.std_logic_1164.all;

entity adder_tb is
end entity adder_tb;

architecture dataflow of adder_tb is 

  component adder
    port(i0, i1, cIn : in std_logic;
         addOut, cOut : out std_logic);
  end component;

  signal i0, i1, cIn : std_logic;
  signal addOut, cOut : std_logic;

begin

  myAdder : adder
    port map(i0 => i0,
             i1 => i1,
             cIn => cIn,
             addOut => addOut,
             cOut => cout);
  process 
  begin
    i0 <= '0';
    i1 <= '0';
    cIn <= '0';
    wait for 10 ns;
    i0 <= '1';
    wait for 10 ns;
    i0 <= '0';
    i1 <= '1';
    wait for 10 ns;
    i0 <= '1';
    wait for 10 ns;
    wait;
  end process;

end architecture dataflow;
