library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;

entity load_and_math is
	port(
		-- Inputs
		number   : in std_logic_vector(7 downto 0);
		firstLatch   : in std_logic;
		secondLatch   : in std_logic;
		mathType : in std_logic;
		-- Outputs
		displayNumber : out std_logic_vector(8 downto 0)
	);
end load_and_math;

architecture a of load_and_math is
	signal mathBuilder : std_logic_vector(8 downto 0);
	signal numOne 		 : std_logic_vector(7 downto 0);
	signal numTwo 		 : std_logic_vector(7 downto 0);
	
begin
	
	-- First Latch (First Number)
	process(firstLatch, numOne)
	begin
		if (firstLatch = '0') then
			numOne <= number;
		end if;
	end process;
	
	-- Second Latch (Second Number)
	process(secondLatch, numTwo)
	begin
		if (secondLatch = '0') then
			numTwo <= number;
		end if;
	end process;

	-- Does the math, depending on if add or subract
	process(mathType,numOne,numTwo)
	begin
		if(mathType = '0') then
			mathBuilder <= ('0' & numOne) + ('0' & numTwo);
		else
			mathBuilder <= ('0' & numOne) - ('0' & numTwo);
		end if;
	end process;
	
	-- Display the result
	displayNumber <= mathBuilder(8 downto 0);
end a;


