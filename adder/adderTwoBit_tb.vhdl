library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity adderTwoBit_tb is
end entity adderTwoBit_tb;

architecture dataflow of adderTwoBit_tb is

  component adderTwoBit
    port(in0, in1 : in std_logic_vector(1 downto 0);
         cIn : in std_logic;
         addOut : out std_logic_vector(1 downto 0);
         cOut : out std_logic);
  end component;

  signal in0, in1 : std_logic_vector(1 downto 0);
  signal cIn : std_logic;
  signal addOut : std_logic_vector(1 downto 0);
  signal cOut : std_logic;

begin
 
  myAdder : adderTwoBit
  port map(in0 => in0,
           in1 => in1,
           cIn => cIn,
           addOut => addOut,
           cOut => cOut);

  process
  begin
  cIn <= '0';
  in0 <= "00";
  in1 <= "00";
  wait for 10 ns;
  for i in 0 to 3 loop
    for j in 0 to 3 loop
      in0 <= in0 + "01";
      wait for 10 ns;
    end loop;
    in1 <= in1 + "01";
    wait for 10 ns;
  end loop;
  wait;
  end process;
end architecture dataflow;
