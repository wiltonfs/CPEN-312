library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;

entity math is
	port (
		-- Inputs
		a, b      : in  std_logic_vector(3 downto 0); -- BCD inputs
		carryIn       : in  std_logic;                   -- carry-in bit
		control   : in  std_logic;                   -- add (0) or subtract (1) flag
		result       : out std_logic_vector(3 downto 0); -- BCD result
		carryOut      : out std_logic                     -- carry-out bit
  );
end math;

architecture a of math is
  --signal a_int, b_int, res_int : integer range 0 to 9; -- binary representation of the inputs
  signal correctedB : std_logic_vector(4 downto 0);
  signal overflow : std_logic;
  signal res : std_logic_vector(4 downto 0);
  signal correctedRes : std_logic_vector(4 downto 0);
begin

process (b, control) is
	begin
		--Modify if doing subraction
		if control = '1' then
			case b is
			when "0000" => correctedB<="01001";
			when "0001" => correctedB<="01000";
			when "0010" => correctedB<="00111";
			when "0011" => correctedB<="00110";
			when "0100" => correctedB<="00101";
			when "0101" => correctedB<="00100";
			when "0110" => correctedB<="00011";
			when "0111" => correctedB<="00010";
			when "1000" => correctedB<="00001";
			when "1001" => correctedB<="00000";
			when others => correctedB<="00000";
			end case;
		else
			correctedB <= ('0' & b);
		end if;
		
	end process;
		
	process (a, correctedB, res, carryIn, correctedRes)
	begin
	
		res <= ('0' & a) + correctedB + ("0000" & carryIn);
		correctedRes <= res + "00110";
		
		if (res > 9) then
			carryOut <= '1';
			result <= correctedRes(3 downto 0);
		else
			carryOut <= '0';
			result <= res(3 downto 0);
		end if;	
		
	end process;
	
end a;