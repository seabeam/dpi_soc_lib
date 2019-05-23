library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vhdl is
end entity;

architecture rtl of vhdl is

signal s  : std_logic_vector(3 downto 0);

begin
process
begin
  s<="0000";
  wait for 2 ns;
  s<="0011";
  wait for 3 ns;
  s<="1000";
  wait for 2 ns;
end process;

end rtl;

--configuration vhdl_cfg of vhdl is
--end;
