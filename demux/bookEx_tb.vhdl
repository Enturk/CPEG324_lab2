library ieee;
use ieee.std_logic_1164.all;

entity bookEx_tb is 
end bookEx_tb;

architecture dataflow of bookEx_tb is

component bookEx
  port(ena, dIn : in std_logic;
       sel : in integer range 0 to 2;
       x : out std_logic_vector(7 downto 0));
end component;

signal ena, dIn : std_logic;
signal sel : integer;
signal x : std_logic_vector(7 downto 0);

begin

d0 : bookEx
port map(ena => ena,
         dIn => dIn,
         sel => sel,
         x => x);


process
begin
ena <= '1';
dIn <= '1';
sel <= 0;
wait for 10 ns;
sel <= 1;
wait for 10 ns;
sel <= 2;
wait for 10 ns;
sel <= 3;
wait for 10 ns;
sel <= 4;
wait for 10 ns;
sel <= 5;
wait for 10 ns;
sel <= 6;
wait for 10 ns;
wait;

end process;
end dataflow;
