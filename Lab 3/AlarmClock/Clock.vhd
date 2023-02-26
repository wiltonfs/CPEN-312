LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY Clock IS
	port(
	KEY0, CLK_50	:IN 	STD_LOGIC;
	HH, HL, MH, ML, SH, SL :OUT STD_LOGIC_VECTOR (0 to 6);
	FLASH, AM_PM	:OUT STD_LOGIC
	);
END Clock;

ARCHITECTURE a of Clock is
	SIGNAL ClkFlag:	STD_LOGIC;
	SIGNAL Internal_Count:	STD_LOGIC_VECTOR(28 downto 0);
	SIGNAL HH_Digit, HL_Digit, MH_Digit, ML_Digit, SH_Digit, SL_Digit: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL HH_7SEG, HL_7SEG, MH_7SEG, ML_7SEG, SH_7SEG, SL_7SEG: STD_LOGIC_VECTOR(0 to 6);
BEGIN
	HH<=HH_7SEG;
	HL<=HL_7SEG;
	MH<=MH_7SEG;
	ML<=ML_7SEG;
	SH<=SH_7SEG;
	SL<=SL_7SEG;

	-- Creates ClkFlag with 2Hz freq
	PROCESS(CLK_50)
	BEGIN
		if(CLK_50'event and CLK_50='1') then
			if Internal_Count<25000000 then
				Internal_Count<=Internal_Count+1;
			else
				Internal_Count<=(others => '0'); 
				ClkFlag<=not ClkFlag;
			end if;
		end if;
	END PROCESS;

	-- Handles 1 second of incrementation
	PROCESS(ClkFlag, KEY0)
	BEGIN
		if(KEY0='0') then -- reset
			HH_Digit<="0000";
			HL_Digit<="0000";
			MH_Digit<="0000";
			ML_Digit<="0000";
			SH_Digit<="0000";
			SL_Digit<="0000";		
		elsif(ClkFlag'event and ClkFlag='1') then
			if (SL_Digit>=9) then
				SL_Digit<="0000";
				if (SH_Digit>=5) then
					SH_Digit<="0000";
					if (ML_Digit>=9) then
						ML_Digit<="0000";
						if (MH_Digit>=5) then
							MH_Digit<="0000";
							-- Hours handled here
							if (HH_Digit<1) then
								-- Hours 0 through 9
								if (HL_Digit>=9) then
									HL_Digit<="0000";
									HH_Digit<="0001";
								else HL_Digit<=HL_Digit+'1';
								end if;
							else 
								-- Hours after 9
								if (HL_Digit>=2) then
									HL_Digit<="0001";
									HH_Digit<="0000";
									-- AM_PM <= not AM_PM;
								else HL_Digit<=HL_Digit+'1';
								end if;
							end if;
		
						else MH_Digit<=MH_Digit+'1';
						end if;
					else ML_Digit<=ML_Digit+'1';
					end if;
				else SH_Digit<=SH_Digit+'1';
				end if;
			else SL_Digit<=SL_Digit+'1';
			end if;
		end if;
	END PROCESS;

	PROCESS(SL_Digit, SH_Digit, ML_Digit, MH_Digit, HL_Digit, HH_Digit)
	BEGIN
		case SL_Digit is
			when "0000" => SL_7SEG <= "0000001";
			when "0001" => SL_7SEG <= "1001111";
			when "0010" => SL_7SEG <= "0010010";
			when "0011" => SL_7SEG <= "0000110";
			when "0100" => SL_7SEG <= "1001100";
			when "0101" => SL_7SEG <= "0100100";
			when "0110" => SL_7SEG <= "0100000";
			when "0111" => SL_7SEG <= "0001111";
			when "1000" => SL_7SEG <= "0000000";
			when "1001" => SL_7SEG <= "0000100";
			when others => SL_7SEG <= "1111111";
		end case;

		case SH_Digit is
			when "0000" => SH_7SEG <= "0000001";
			when "0001" => SH_7SEG <= "1001111";
			when "0010" => SH_7SEG <= "0010010";
			when "0011" => SH_7SEG <= "0000110";
			when "0100" => SH_7SEG <= "1001100";
			when "0101" => SH_7SEG <= "0100100";
			when "0110" => SH_7SEG <= "0100000";
			when "0111" => SH_7SEG <= "0001111";
			when "1000" => SH_7SEG <= "0000000";
			when "1001" => SH_7SEG <= "0000100";
			when others => SH_7SEG <= "1111111";
		end case;
		
		case ML_Digit is
			when "0000" => ML_7SEG <= "0000001";
			when "0001" => ML_7SEG <= "1001111";
			when "0010" => ML_7SEG <= "0010010";
			when "0011" => ML_7SEG <= "0000110";
			when "0100" => ML_7SEG <= "1001100";
			when "0101" => ML_7SEG <= "0100100";
			when "0110" => ML_7SEG <= "0100000";
			when "0111" => ML_7SEG <= "0001111";
			when "1000" => ML_7SEG <= "0000000";
			when "1001" => ML_7SEG <= "0000100";
			when others => ML_7SEG <= "1111111";
		end case;
		
		case MH_Digit is
			when "0000" => MH_7SEG <= "0000001";
			when "0001" => MH_7SEG <= "1001111";
			when "0010" => MH_7SEG <= "0010010";
			when "0011" => MH_7SEG <= "0000110";
			when "0100" => MH_7SEG <= "1001100";
			when "0101" => MH_7SEG <= "0100100";
			when "0110" => MH_7SEG <= "0100000";
			when "0111" => MH_7SEG <= "0001111";
			when "1000" => MH_7SEG <= "0000000";
			when "1001" => MH_7SEG <= "0000100";
			when others => MH_7SEG <= "1111111";
		end case;
		
		case HL_Digit is
			when "0000" => HL_7SEG <= "0000001";
			when "0001" => HL_7SEG <= "1001111";
			when "0010" => HL_7SEG <= "0010010";
			when "0011" => HL_7SEG <= "0000110";
			when "0100" => HL_7SEG <= "1001100";
			when "0101" => HL_7SEG <= "0100100";
			when "0110" => HL_7SEG <= "0100000";
			when "0111" => HL_7SEG <= "0001111";
			when "1000" => HL_7SEG <= "0000000";
			when "1001" => HL_7SEG <= "0000100";
			when others => HL_7SEG <= "1111111";
		end case;
		
		case HH_Digit is
			when "0000" => HH_7SEG <= "0000001";
			when "0001" => HH_7SEG <= "1001111";
			when "0010" => HH_7SEG <= "0010010";
			when "0011" => HH_7SEG <= "0000110";
			when "0100" => HH_7SEG <= "1001100";
			when "0101" => HH_7SEG <= "0100100";
			when "0110" => HH_7SEG <= "0100000";
			when "0111" => HH_7SEG <= "0001111";
			when "1000" => HH_7SEG <= "0000000";
			when "1001" => HH_7SEG <= "0000100";
			when others => HH_7SEG <= "1111111";
		end case;
	END PROCESS;

end a;

	
