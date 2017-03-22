library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity masterAddSub is
  port(masterIn0, masterIn1 : in std_logic_vector(3 downto 0);
       opSel : in std_logic;
       masterOut : out std_logic_vector(3 downto 0);
       cOut : out std_logic);
end masterAddSub;

architecture behavioral of masterAddSub is

  component adderFourBit
    port(in0, in1 : in std_logic_vector(3 downto 0);
         cIn : in std_logic;
         addOut : out std_logic_vector(3 downto 0);
         cOut : out std_logic);
  end component;

  component subtractorFourBit
    port(sIn0, sIn1 : in std_logic_vector(3 downto 0);
         bIn : in std_logic;
         subOut : out std_logic_vector(3 downto 0);
         bOut : out std_logic);
  end component;

signal addOutSig, subOutSig : std_logic_vector(3 downto 0);
signal cOutSig : std_logic;

begin

a0 : adderFourBit
  port map(in0 => masterIn0,
           in1 => masterIn1, 
           cIn => '0',
           addOut => addOutSig,
           cOut => cOutSig);

s0 : subtractorFourBit
  port map(sIn0 => masterIn0,
           sIn1 => masterIn1,
           bIn => '0',
           subOut => subOutSig,
           bOut => cOutSig);

process(addOutSig, subOutSig, cOutSig)
begin
  if(opSel = '1') then
    masterOut <= addOutSig;
  else
    masterOut <= subOutSig;
  end if;
end process;

end behavioral;











