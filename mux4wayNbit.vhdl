--Johnny Rutkowski
--Nazim Karaca

library ieee;
use ieee.std_logic_1164.all;

entity mux4wayNbit is
  generic (width : natural := 8);
  port(
    i0, i1, i2, i3 : in std_logic_vector(width-1 downto 0);
    sel : in std_logic_vector(1 downto 0);
    muxOut : out std_logic_vector(width-1 downto 0)
  );
end mux4wayNbit;

architecture structural of mux4wayNbit is
  component muxSelect
    port(i0, i1, i2, i3 : in std_logic;
         sel : in std_logic_vector(1 downto 0);
         muxOut : out std_logic);
  end component;
--signals here
begin

m0to7 : for i in 0 to width-1 generate
m0 : muxSelect
port map(
  i0 => i0(i),
  i1 => i1(i),
  i2 => i2(i),
  i3 => i3(i),
  sel => sel,
  muxOut => muxOut(i)
);
end generate;

end structural;
