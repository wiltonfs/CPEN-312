library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity displayBCD is
Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
display : out STD_LOGIC_VECTOR (6 downto 0));
end displayBCD;
 
architecture a of displayBCD is
 
begin
 
process(bcd)
begin
 
case bcd is
when "0000" =>
display <= "1000000"; ---0
when "0001" =>
display <= "1111001"; ---1
when "0010" =>
display <= "0100100"; ---2
when "0011" =>
display <= "0110000"; ---3
when "0100" =>
display <= "0011001"; ---4
when "0101" =>
display <= "0010010"; ---5
when "0110" =>
display <= "0000010"; ---6
when "0111" =>
display <= "1111000"; ---7
when "1000" =>
display <= "0000000"; ---8
when "1001" =>
display <= "0010000"; ---9
when others =>
display <= "1111111"; ---null
end case;
 
end process;
 
end a;