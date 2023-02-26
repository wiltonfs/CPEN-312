library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;

entity loadBCD is
	port(
		-- Inputs
		digitOne   : in std_logic_vector(3 downto 0);
		digitTwo   : in std_logic_vector(3 downto 0);
		firstLatch   : in std_logic;
		secondLatch   : in std_logic;
		-- Outputs
		numOneDigOne : out std_logic_vector(3 downto 0);
		numOneDigTwo : out std_logic_vector(3 downto 0);
		numTwoDigOne : out std_logic_vector(3 downto 0);
		numTwoDigTwo : out std_logic_vector(3 downto 0)
	);
end loadBCD;

architecture a of loadBCD is
	
begin
	
	-- First Latch (First Number)
	process(firstLatch, digitOne,digitTwo)
	begin
		if (firstLatch = '0') then
			numOneDigOne <= digitOne;
			numOneDigTwo <= digitTwo;
		end if;
	end process;
	
	-- Second Latch (Second Number)
	process(secondLatch, digitOne,digitTwo)
	begin
		if (secondLatch = '0') then
			numTwoDigOne <= digitOne;
			numTwoDigTwo <= digitTwo;
		end if;
	end process;

end a;


