library ieee;
use ieee.std_logic_1164.all;

entity mux2bit is
  port(
    i0, i1, i2, i3 : in std_logic_vector(1 downto 0);
    sel : in std_logic_vector(1 downto 0);
    muxOut : out std_logic_vector(1 downto 0)
  );
end mux2bit;

architecture structural of mux2bit is
  component muxSelect
    port(i0, i1, i2, i3 : in std_logic;
         sel : in std_logic_vector(1 downto 0);
         muxOut : out std_logic);
  end component;
--signals here
begin

m0 : muxSelect
port map(
  i0 => i0(0),
  i1 => i1(0),
  i2 => i2(0),
  i3 => i3(0),
  sel => sel,
  muxOut => muxOut(0)
);

m1 : muxSelect
port map(
  i0 => i0(1),
  i1 => i1(1),
  i2 => i2(1),
  i3 => i3(1),
  sel => sel,
  muxOut => muxOut(1)
);

end structural;
