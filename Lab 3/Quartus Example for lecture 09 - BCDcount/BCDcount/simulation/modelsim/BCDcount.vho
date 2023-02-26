-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/25/2023 18:28:59"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BCDcount IS
    PORT (
	RESET : IN std_logic;
	CLK_50 : IN std_logic;
	SET_S : IN std_logic;
	SET_M : IN std_logic;
	SET_H : IN std_logic;
	SETTING_MODE : IN std_logic;
	ALARM_ON : IN std_logic;
	BCD_H : IN std_logic_vector(3 DOWNTO 0);
	BCD_L : IN std_logic_vector(3 DOWNTO 0);
	HH : OUT std_logic_vector(0 TO 6);
	HL : OUT std_logic_vector(0 TO 6);
	MH : OUT std_logic_vector(0 TO 6);
	ML : OUT std_logic_vector(0 TO 6);
	SH : OUT std_logic_vector(0 TO 6);
	SL : OUT std_logic_vector(0 TO 6);
	FLASH : OUT std_logic;
	AM_PM : OUT std_logic
	);
END BCDcount;

-- Design Ports Information
-- HH[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HH[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HH[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HH[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HH[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HH[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HH[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HL[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HL[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HL[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HL[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HL[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HL[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HL[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MH[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MH[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MH[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MH[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MH[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MH[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MH[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ML[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ML[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ML[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ML[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ML[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ML[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ML[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SH[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SH[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SH[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SH[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SH[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SH[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SH[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SL[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SL[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SL[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SL[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SL[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SL[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SL[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- FLASH	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- AM_PM	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RESET	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SET_S	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ALARM_ON	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SET_H	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SET_M	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SETTING_MODE	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_H[0]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_L[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_L[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_L[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_L[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_H[3]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_H[1]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD_H[2]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BCDcount IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK_50 : std_logic;
SIGNAL ww_SET_S : std_logic;
SIGNAL ww_SET_M : std_logic;
SIGNAL ww_SET_H : std_logic;
SIGNAL ww_SETTING_MODE : std_logic;
SIGNAL ww_ALARM_ON : std_logic;
SIGNAL ww_BCD_H : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BCD_L : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HH : std_logic_vector(0 TO 6);
SIGNAL ww_HL : std_logic_vector(0 TO 6);
SIGNAL ww_MH : std_logic_vector(0 TO 6);
SIGNAL ww_ML : std_logic_vector(0 TO 6);
SIGNAL ww_SH : std_logic_vector(0 TO 6);
SIGNAL ww_SL : std_logic_vector(0 TO 6);
SIGNAL ww_FLASH : std_logic;
SIGNAL ww_AM_PM : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \SET_H~input_o\ : std_logic;
SIGNAL \AM_PM_Flag~7_combout\ : std_logic;
SIGNAL \SETTING_MODE~input_o\ : std_logic;
SIGNAL \HH_Digit~14_combout\ : std_logic;
SIGNAL \CLK_50~input_o\ : std_logic;
SIGNAL \CLK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Internal_Count[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Internal_Count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Internal_Count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Internal_Count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Internal_Count[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \ClkFlag~0_combout\ : std_logic;
SIGNAL \ClkFlag~q\ : std_logic;
SIGNAL \HH_Digit[1]~1_combout\ : std_logic;
SIGNAL \SET_S~input_o\ : std_logic;
SIGNAL \SET_M~input_o\ : std_logic;
SIGNAL \SH_Digit[3]~28_combout\ : std_logic;
SIGNAL \BCD_L[0]~input_o\ : std_logic;
SIGNAL \SL_Digit~24_combout\ : std_logic;
SIGNAL \SL_Digit[0]~1_combout\ : std_logic;
SIGNAL \BCD_L[2]~input_o\ : std_logic;
SIGNAL \SL_Digit~26_combout\ : std_logic;
SIGNAL \SL_Digit[2]~9_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \BCD_L[1]~input_o\ : std_logic;
SIGNAL \SL_Digit~25_combout\ : std_logic;
SIGNAL \SL_Digit[1]~5_combout\ : std_logic;
SIGNAL \BCD_L[3]~input_o\ : std_logic;
SIGNAL \SL_Digit~27_combout\ : std_logic;
SIGNAL \SL_Digit[3]~13_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \SL_Digit[3]~15_combout\ : std_logic;
SIGNAL \SH_Digit[0]~0_combout\ : std_logic;
SIGNAL \SH_Digit[3]~26_combout\ : std_logic;
SIGNAL \SL_Digit[3]~_emulated_q\ : std_logic;
SIGNAL \SL_Digit[3]~14_combout\ : std_logic;
SIGNAL \SL_Digit[1]~7_combout\ : std_logic;
SIGNAL \SL_Digit[1]~_emulated_q\ : std_logic;
SIGNAL \SL_Digit[1]~6_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \SL_Digit[2]~11_combout\ : std_logic;
SIGNAL \SL_Digit[2]~_emulated_q\ : std_logic;
SIGNAL \SL_Digit[2]~10_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \SL_Digit[0]~3_combout\ : std_logic;
SIGNAL \SL_Digit[0]~_emulated_q\ : std_logic;
SIGNAL \SL_Digit[0]~2_combout\ : std_logic;
SIGNAL \SH_Digit[3]~20_combout\ : std_logic;
SIGNAL \MH_Digit[3]~26_combout\ : std_logic;
SIGNAL \ML_Digit~26_combout\ : std_logic;
SIGNAL \ML_Digit[1]~5_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \ML_Digit[1]~7_combout\ : std_logic;
SIGNAL \MH_Digit[0]~0_combout\ : std_logic;
SIGNAL \BCD_H[3]~input_o\ : std_logic;
SIGNAL \SH_Digit~32_combout\ : std_logic;
SIGNAL \SH_Digit[3]~13_combout\ : std_logic;
SIGNAL \SH_Digit[3]~27_combout\ : std_logic;
SIGNAL \SH_Digit[3]~_emulated_q\ : std_logic;
SIGNAL \SH_Digit[3]~14_combout\ : std_logic;
SIGNAL \BCD_H[2]~input_o\ : std_logic;
SIGNAL \SH_Digit~31_combout\ : std_logic;
SIGNAL \SH_Digit[2]~9_combout\ : std_logic;
SIGNAL \BCD_H[0]~input_o\ : std_logic;
SIGNAL \SH_Digit~29_combout\ : std_logic;
SIGNAL \SH_Digit[0]~1_combout\ : std_logic;
SIGNAL \BCD_H[1]~input_o\ : std_logic;
SIGNAL \SH_Digit~30_combout\ : std_logic;
SIGNAL \SH_Digit[1]~5_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \SH_Digit[1]~7_combout\ : std_logic;
SIGNAL \SH_Digit[1]~_emulated_q\ : std_logic;
SIGNAL \SH_Digit[1]~6_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \SH_Digit[0]~3_combout\ : std_logic;
SIGNAL \SH_Digit[0]~_emulated_q\ : std_logic;
SIGNAL \SH_Digit[0]~2_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \SH_Digit[2]~11_combout\ : std_logic;
SIGNAL \SH_Digit[2]~_emulated_q\ : std_logic;
SIGNAL \SH_Digit[2]~10_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \ML_Digit[3]~24_combout\ : std_logic;
SIGNAL \ML_Digit[1]~_emulated_q\ : std_logic;
SIGNAL \ML_Digit[1]~6_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \ML_Digit~27_combout\ : std_logic;
SIGNAL \ML_Digit[2]~9_combout\ : std_logic;
SIGNAL \ML_Digit[2]~11_combout\ : std_logic;
SIGNAL \ML_Digit[2]~_emulated_q\ : std_logic;
SIGNAL \ML_Digit[2]~10_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \ML_Digit~25_combout\ : std_logic;
SIGNAL \ML_Digit[0]~1_combout\ : std_logic;
SIGNAL \ML_Digit[0]~3_combout\ : std_logic;
SIGNAL \ML_Digit[0]~_emulated_q\ : std_logic;
SIGNAL \ML_Digit[0]~2_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \ML_Digit~28_combout\ : std_logic;
SIGNAL \ML_Digit[3]~13_combout\ : std_logic;
SIGNAL \ML_Digit[3]~15_combout\ : std_logic;
SIGNAL \ML_Digit[3]~_emulated_q\ : std_logic;
SIGNAL \ML_Digit[3]~14_combout\ : std_logic;
SIGNAL \AM_PM_Flag~5_combout\ : std_logic;
SIGNAL \MH_Digit~29_combout\ : std_logic;
SIGNAL \MH_Digit[2]~9_combout\ : std_logic;
SIGNAL \MH_Digit~30_combout\ : std_logic;
SIGNAL \MH_Digit[3]~13_combout\ : std_logic;
SIGNAL \MH_Digit[3]~25_combout\ : std_logic;
SIGNAL \MH_Digit[3]~_emulated_q\ : std_logic;
SIGNAL \MH_Digit[3]~14_combout\ : std_logic;
SIGNAL \MH_Digit~28_combout\ : std_logic;
SIGNAL \MH_Digit[1]~5_combout\ : std_logic;
SIGNAL \MH_Digit~27_combout\ : std_logic;
SIGNAL \MH_Digit[0]~1_combout\ : std_logic;
SIGNAL \MH_Digit[0]~3_combout\ : std_logic;
SIGNAL \MH_Digit[0]~_emulated_q\ : std_logic;
SIGNAL \MH_Digit[0]~2_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \MH_Digit[1]~7_combout\ : std_logic;
SIGNAL \MH_Digit[1]~_emulated_q\ : std_logic;
SIGNAL \MH_Digit[1]~6_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \MH_Digit[2]~11_combout\ : std_logic;
SIGNAL \MH_Digit[2]~_emulated_q\ : std_logic;
SIGNAL \MH_Digit[2]~10_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \AM_PM_Flag~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \HL_Digit~26_combout\ : std_logic;
SIGNAL \HL_Digit~27_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \HL_Digit~28_combout\ : std_logic;
SIGNAL \HL_Digit~29_combout\ : std_logic;
SIGNAL \HL_Digit[1]~9_combout\ : std_logic;
SIGNAL \HL_Digit~30_combout\ : std_logic;
SIGNAL \HL_Digit[0]~13_combout\ : std_logic;
SIGNAL \HL_Digit~24_combout\ : std_logic;
SIGNAL \HL_Digit~25_combout\ : std_logic;
SIGNAL \HL_Digit[3]~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \HL_Digit[3]~3_combout\ : std_logic;
SIGNAL \HH_Digit[1]~0_combout\ : std_logic;
SIGNAL \HL_Digit[3]~_emulated_q\ : std_logic;
SIGNAL \HL_Digit[3]~2_combout\ : std_logic;
SIGNAL \HH_Digit~16_combout\ : std_logic;
SIGNAL \HH_Digit[0]~5_combout\ : std_logic;
SIGNAL \AM_PM_Flag~8_combout\ : std_logic;
SIGNAL \HH_Digit[3]~15_combout\ : std_logic;
SIGNAL \HH_Digit[0]~7_combout\ : std_logic;
SIGNAL \HH_Digit[0]~_emulated_q\ : std_logic;
SIGNAL \HH_Digit[0]~6_combout\ : std_logic;
SIGNAL \HH_Digit~18_combout\ : std_logic;
SIGNAL \HH_Digit~17_combout\ : std_logic;
SIGNAL \HL_Digit[0]~15_combout\ : std_logic;
SIGNAL \HL_Digit[0]~_emulated_q\ : std_logic;
SIGNAL \HL_Digit[0]~14_combout\ : std_logic;
SIGNAL \HL_Digit[1]~11_combout\ : std_logic;
SIGNAL \HL_Digit[1]~_emulated_q\ : std_logic;
SIGNAL \HL_Digit[1]~10_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \HL_Digit[2]~5_combout\ : std_logic;
SIGNAL \HL_Digit[2]~7_combout\ : std_logic;
SIGNAL \HL_Digit[2]~_emulated_q\ : std_logic;
SIGNAL \HL_Digit[2]~6_combout\ : std_logic;
SIGNAL \HH_Digit~13_combout\ : std_logic;
SIGNAL \HH_Digit[1]~3_combout\ : std_logic;
SIGNAL \HH_Digit[1]~_emulated_q\ : std_logic;
SIGNAL \HH_Digit[1]~2_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \SH_ALARM[1]~0_combout\ : std_logic;
SIGNAL \ML_ALARM[0]~0_combout\ : std_logic;
SIGNAL \FLASH_FLAG~0_combout\ : std_logic;
SIGNAL \FLASH_FLAG~1_combout\ : std_logic;
SIGNAL \ALARM_ON~input_o\ : std_logic;
SIGNAL \AM_PM_ALARM~0_combout\ : std_logic;
SIGNAL \HH_Digit~19_combout\ : std_logic;
SIGNAL \FLASH_FLAG~4_combout\ : std_logic;
SIGNAL \FLASH_FLAG~3_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \AM_PM_ALARM~combout\ : std_logic;
SIGNAL \AM_PM_Flag~10_combout\ : std_logic;
SIGNAL \AM_PM_Flag~1_combout\ : std_logic;
SIGNAL \AM_PM_Flag~3_combout\ : std_logic;
SIGNAL \AM_PM_Flag~_emulated_q\ : std_logic;
SIGNAL \AM_PM_Flag~2_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \FLASH_FLAG~5_combout\ : std_logic;
SIGNAL \FLASH_FLAG~7_combout\ : std_logic;
SIGNAL \FLASH_FLAG~6_combout\ : std_logic;
SIGNAL \FLASH_FLAG~8_combout\ : std_logic;
SIGNAL \FLASH_FLAG~2_combout\ : std_logic;
SIGNAL \FLASH_FLAG~9_combout\ : std_logic;
SIGNAL \FLASH_FLAG~q\ : std_logic;
SIGNAL Internal_Count : std_logic_vector(28 DOWNTO 0);
SIGNAL ML_ALARM : std_logic_vector(3 DOWNTO 0);
SIGNAL SH_ALARM : std_logic_vector(3 DOWNTO 0);
SIGNAL MH_ALARM : std_logic_vector(3 DOWNTO 0);
SIGNAL HL_ALARM : std_logic_vector(3 DOWNTO 0);
SIGNAL HH_ALARM : std_logic_vector(3 DOWNTO 0);
SIGNAL SL_ALARM : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Internal_Count[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Internal_Count[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_BCD_H[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BCD_H[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BCD_H[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_BCD_L[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_BCD_L[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BCD_L[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BCD_L[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_BCD_H[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SETTING_MODE~input_o\ : std_logic;
SIGNAL \ALT_INV_SET_M~input_o\ : std_logic;
SIGNAL \ALT_INV_SET_H~input_o\ : std_logic;
SIGNAL \ALT_INV_ALARM_ON~input_o\ : std_logic;
SIGNAL \ALT_INV_SET_S~input_o\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_AM_PM_Flag~1_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_ML_Digit[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_ML_Digit[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_ML_Digit[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_ML_Digit[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[0]~1_combout\ : std_logic;
SIGNAL ALT_INV_SL_ALARM : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_SH_ALARM : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_HL_ALARM : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_HH_ALARM : std_logic_vector(0 DOWNTO 0);
SIGNAL ALT_INV_MH_ALARM : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_AM_PM_ALARM~combout\ : std_logic;
SIGNAL ALT_INV_ML_ALARM : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_HL_Digit[0]~13_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit[1]~9_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit[2]~5_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_HH_Digit[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_HH_Digit[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_AM_PM_Flag~10_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit~27_combout\ : std_logic;
SIGNAL \ALT_INV_Add7~2_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit~26_combout\ : std_logic;
SIGNAL \ALT_INV_Add7~1_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit~25_combout\ : std_logic;
SIGNAL \ALT_INV_Add7~0_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit~24_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit~32_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit~31_combout\ : std_logic;
SIGNAL \ALT_INV_Add6~1_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit~30_combout\ : std_logic;
SIGNAL \ALT_INV_Add6~0_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit~29_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[3]~28_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \ALT_INV_ML_Digit~28_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~2_combout\ : std_logic;
SIGNAL \ALT_INV_ML_Digit~27_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_combout\ : std_logic;
SIGNAL \ALT_INV_ML_Digit~26_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL \ALT_INV_ML_Digit~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit~30_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit~29_combout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit~28_combout\ : std_logic;
SIGNAL \ALT_INV_Add4~0_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit~27_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[3]~26_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_HH_Digit~19_combout\ : std_logic;
SIGNAL \ALT_INV_AM_PM_ALARM~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~2_combout\ : std_logic;
SIGNAL \ALT_INV_AM_PM_Flag~2_combout\ : std_logic;
SIGNAL \ALT_INV_AM_PM_Flag~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_SH_ALARM[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[3]~26_combout\ : std_logic;
SIGNAL \ALT_INV_ML_ALARM[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_SL_Digit[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_SL_Digit[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_SL_Digit[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_SL_Digit[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_ML_Digit[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_ML_Digit[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_ML_Digit[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_ML_Digit[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_ML_Digit[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_ML_Digit[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_ML_Digit[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_ML_Digit[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_MH_Digit[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HL_Digit~30_combout\ : std_logic;
SIGNAL \ALT_INV_HH_Digit~18_combout\ : std_logic;
SIGNAL \ALT_INV_HH_Digit~17_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit~29_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit~28_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit~27_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit~26_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit~25_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit~24_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \ALT_INV_HH_Digit~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \ALT_INV_HH_Digit[3]~15_combout\ : std_logic;
SIGNAL \ALT_INV_AM_PM_Flag~8_combout\ : std_logic;
SIGNAL \ALT_INV_HH_Digit~14_combout\ : std_logic;
SIGNAL \ALT_INV_AM_PM_Flag~7_combout\ : std_logic;
SIGNAL \ALT_INV_HH_Digit[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_AM_PM_Flag~6_combout\ : std_logic;
SIGNAL \ALT_INV_AM_PM_Flag~5_combout\ : std_logic;
SIGNAL \ALT_INV_SH_Digit[3]~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \ALT_INV_HH_Digit~13_combout\ : std_logic;
SIGNAL \ALT_INV_ClkFlag~q\ : std_logic;
SIGNAL \ALT_INV_FLASH_FLAG~8_combout\ : std_logic;
SIGNAL \ALT_INV_FLASH_FLAG~7_combout\ : std_logic;
SIGNAL \ALT_INV_FLASH_FLAG~6_combout\ : std_logic;
SIGNAL \ALT_INV_FLASH_FLAG~5_combout\ : std_logic;
SIGNAL \ALT_INV_FLASH_FLAG~4_combout\ : std_logic;
SIGNAL \ALT_INV_FLASH_FLAG~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_FLASH_FLAG~2_combout\ : std_logic;
SIGNAL \ALT_INV_FLASH_FLAG~1_combout\ : std_logic;
SIGNAL \ALT_INV_FLASH_FLAG~0_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit[0]~14_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HL_Digit[1]~10_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HL_Digit[2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HL_Digit[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_HL_Digit[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HH_Digit[0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_HH_Digit[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HH_Digit[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_HH_Digit[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_FLASH_FLAG~q\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL ALT_INV_Internal_Count : std_logic_vector(28 DOWNTO 0);

BEGIN

ww_RESET <= RESET;
ww_CLK_50 <= CLK_50;
ww_SET_S <= SET_S;
ww_SET_M <= SET_M;
ww_SET_H <= SET_H;
ww_SETTING_MODE <= SETTING_MODE;
ww_ALARM_ON <= ALARM_ON;
ww_BCD_H <= BCD_H;
ww_BCD_L <= BCD_L;
HH <= ww_HH;
HL <= ww_HL;
MH <= ww_MH;
ML <= ww_ML;
SH <= ww_SH;
SL <= ww_SL;
FLASH <= ww_FLASH;
AM_PM <= ww_AM_PM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Internal_Count[27]~DUPLICATE_q\ <= NOT \Internal_Count[27]~DUPLICATE_q\;
\ALT_INV_Internal_Count[10]~DUPLICATE_q\ <= NOT \Internal_Count[10]~DUPLICATE_q\;
\ALT_INV_Internal_Count[15]~DUPLICATE_q\ <= NOT \Internal_Count[15]~DUPLICATE_q\;
\ALT_INV_Internal_Count[16]~DUPLICATE_q\ <= NOT \Internal_Count[16]~DUPLICATE_q\;
\ALT_INV_Internal_Count[21]~DUPLICATE_q\ <= NOT \Internal_Count[21]~DUPLICATE_q\;
\ALT_INV_BCD_H[2]~input_o\ <= NOT \BCD_H[2]~input_o\;
\ALT_INV_BCD_H[1]~input_o\ <= NOT \BCD_H[1]~input_o\;
\ALT_INV_BCD_H[3]~input_o\ <= NOT \BCD_H[3]~input_o\;
\ALT_INV_BCD_L[3]~input_o\ <= NOT \BCD_L[3]~input_o\;
\ALT_INV_BCD_L[2]~input_o\ <= NOT \BCD_L[2]~input_o\;
\ALT_INV_BCD_L[1]~input_o\ <= NOT \BCD_L[1]~input_o\;
\ALT_INV_BCD_L[0]~input_o\ <= NOT \BCD_L[0]~input_o\;
\ALT_INV_BCD_H[0]~input_o\ <= NOT \BCD_H[0]~input_o\;
\ALT_INV_SETTING_MODE~input_o\ <= NOT \SETTING_MODE~input_o\;
\ALT_INV_SET_M~input_o\ <= NOT \SET_M~input_o\;
\ALT_INV_SET_H~input_o\ <= NOT \SET_H~input_o\;
\ALT_INV_ALARM_ON~input_o\ <= NOT \ALARM_ON~input_o\;
\ALT_INV_SET_S~input_o\ <= NOT \SET_S~input_o\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\ALT_INV_AM_PM_Flag~1_combout\ <= NOT \AM_PM_Flag~1_combout\;
\ALT_INV_SL_Digit[3]~13_combout\ <= NOT \SL_Digit[3]~13_combout\;
\ALT_INV_SL_Digit[2]~9_combout\ <= NOT \SL_Digit[2]~9_combout\;
\ALT_INV_SL_Digit[1]~5_combout\ <= NOT \SL_Digit[1]~5_combout\;
\ALT_INV_SL_Digit[0]~1_combout\ <= NOT \SL_Digit[0]~1_combout\;
\ALT_INV_SH_Digit[3]~13_combout\ <= NOT \SH_Digit[3]~13_combout\;
\ALT_INV_SH_Digit[2]~9_combout\ <= NOT \SH_Digit[2]~9_combout\;
\ALT_INV_SH_Digit[1]~5_combout\ <= NOT \SH_Digit[1]~5_combout\;
\ALT_INV_SH_Digit[0]~1_combout\ <= NOT \SH_Digit[0]~1_combout\;
\ALT_INV_ML_Digit[3]~13_combout\ <= NOT \ML_Digit[3]~13_combout\;
\ALT_INV_ML_Digit[2]~9_combout\ <= NOT \ML_Digit[2]~9_combout\;
\ALT_INV_ML_Digit[1]~5_combout\ <= NOT \ML_Digit[1]~5_combout\;
\ALT_INV_ML_Digit[0]~1_combout\ <= NOT \ML_Digit[0]~1_combout\;
\ALT_INV_MH_Digit[3]~13_combout\ <= NOT \MH_Digit[3]~13_combout\;
\ALT_INV_MH_Digit[2]~9_combout\ <= NOT \MH_Digit[2]~9_combout\;
\ALT_INV_MH_Digit[1]~5_combout\ <= NOT \MH_Digit[1]~5_combout\;
\ALT_INV_MH_Digit[0]~1_combout\ <= NOT \MH_Digit[0]~1_combout\;
ALT_INV_SL_ALARM(2) <= NOT SL_ALARM(2);
ALT_INV_SL_ALARM(1) <= NOT SL_ALARM(1);
ALT_INV_SL_ALARM(0) <= NOT SL_ALARM(0);
ALT_INV_SH_ALARM(3) <= NOT SH_ALARM(3);
ALT_INV_SH_ALARM(2) <= NOT SH_ALARM(2);
ALT_INV_SL_ALARM(3) <= NOT SL_ALARM(3);
ALT_INV_HL_ALARM(1) <= NOT HL_ALARM(1);
ALT_INV_HL_ALARM(0) <= NOT HL_ALARM(0);
ALT_INV_HH_ALARM(0) <= NOT HH_ALARM(0);
ALT_INV_MH_ALARM(0) <= NOT MH_ALARM(0);
ALT_INV_HL_ALARM(3) <= NOT HL_ALARM(3);
ALT_INV_HL_ALARM(2) <= NOT HL_ALARM(2);
\ALT_INV_AM_PM_ALARM~combout\ <= NOT \AM_PM_ALARM~combout\;
ALT_INV_MH_ALARM(3) <= NOT MH_ALARM(3);
ALT_INV_MH_ALARM(2) <= NOT MH_ALARM(2);
ALT_INV_MH_ALARM(1) <= NOT MH_ALARM(1);
ALT_INV_ML_ALARM(2) <= NOT ML_ALARM(2);
ALT_INV_ML_ALARM(1) <= NOT ML_ALARM(1);
ALT_INV_ML_ALARM(0) <= NOT ML_ALARM(0);
ALT_INV_SH_ALARM(1) <= NOT SH_ALARM(1);
ALT_INV_SH_ALARM(0) <= NOT SH_ALARM(0);
ALT_INV_ML_ALARM(3) <= NOT ML_ALARM(3);
\ALT_INV_HL_Digit[0]~13_combout\ <= NOT \HL_Digit[0]~13_combout\;
\ALT_INV_HL_Digit[1]~9_combout\ <= NOT \HL_Digit[1]~9_combout\;
\ALT_INV_HL_Digit[2]~5_combout\ <= NOT \HL_Digit[2]~5_combout\;
\ALT_INV_HL_Digit[3]~1_combout\ <= NOT \HL_Digit[3]~1_combout\;
\ALT_INV_HH_Digit[0]~5_combout\ <= NOT \HH_Digit[0]~5_combout\;
\ALT_INV_HH_Digit[1]~1_combout\ <= NOT \HH_Digit[1]~1_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_AM_PM_Flag~10_combout\ <= NOT \AM_PM_Flag~10_combout\;
\ALT_INV_SL_Digit~27_combout\ <= NOT \SL_Digit~27_combout\;
\ALT_INV_Add7~2_combout\ <= NOT \Add7~2_combout\;
\ALT_INV_SL_Digit~26_combout\ <= NOT \SL_Digit~26_combout\;
\ALT_INV_Add7~1_combout\ <= NOT \Add7~1_combout\;
\ALT_INV_SL_Digit~25_combout\ <= NOT \SL_Digit~25_combout\;
\ALT_INV_Add7~0_combout\ <= NOT \Add7~0_combout\;
\ALT_INV_SL_Digit~24_combout\ <= NOT \SL_Digit~24_combout\;
\ALT_INV_LessThan5~0_combout\ <= NOT \LessThan5~0_combout\;
\ALT_INV_SH_Digit~32_combout\ <= NOT \SH_Digit~32_combout\;
\ALT_INV_SH_Digit~31_combout\ <= NOT \SH_Digit~31_combout\;
\ALT_INV_Add6~1_combout\ <= NOT \Add6~1_combout\;
\ALT_INV_SH_Digit~30_combout\ <= NOT \SH_Digit~30_combout\;
\ALT_INV_Add6~0_combout\ <= NOT \Add6~0_combout\;
\ALT_INV_SH_Digit~29_combout\ <= NOT \SH_Digit~29_combout\;
\ALT_INV_SH_Digit[3]~28_combout\ <= NOT \SH_Digit[3]~28_combout\;
\ALT_INV_SH_Digit[0]~0_combout\ <= NOT \SH_Digit[0]~0_combout\;
\ALT_INV_LessThan6~1_combout\ <= NOT \LessThan6~1_combout\;
\ALT_INV_ML_Digit~28_combout\ <= NOT \ML_Digit~28_combout\;
\ALT_INV_Add5~2_combout\ <= NOT \Add5~2_combout\;
\ALT_INV_ML_Digit~27_combout\ <= NOT \ML_Digit~27_combout\;
\ALT_INV_Add5~1_combout\ <= NOT \Add5~1_combout\;
\ALT_INV_ML_Digit~26_combout\ <= NOT \ML_Digit~26_combout\;
\ALT_INV_Add5~0_combout\ <= NOT \Add5~0_combout\;
\ALT_INV_ML_Digit~25_combout\ <= NOT \ML_Digit~25_combout\;
\ALT_INV_LessThan7~0_combout\ <= NOT \LessThan7~0_combout\;
\ALT_INV_MH_Digit~30_combout\ <= NOT \MH_Digit~30_combout\;
\ALT_INV_MH_Digit~29_combout\ <= NOT \MH_Digit~29_combout\;
\ALT_INV_Add4~1_combout\ <= NOT \Add4~1_combout\;
\ALT_INV_MH_Digit~28_combout\ <= NOT \MH_Digit~28_combout\;
\ALT_INV_Add4~0_combout\ <= NOT \Add4~0_combout\;
\ALT_INV_MH_Digit~27_combout\ <= NOT \MH_Digit~27_combout\;
\ALT_INV_MH_Digit[3]~26_combout\ <= NOT \MH_Digit[3]~26_combout\;
\ALT_INV_MH_Digit[0]~0_combout\ <= NOT \MH_Digit[0]~0_combout\;
\ALT_INV_LessThan8~1_combout\ <= NOT \LessThan8~1_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_HH_Digit~19_combout\ <= NOT \HH_Digit~19_combout\;
\ALT_INV_AM_PM_ALARM~0_combout\ <= NOT \AM_PM_ALARM~0_combout\;
\ALT_INV_process_1~2_combout\ <= NOT \process_1~2_combout\;
\ALT_INV_AM_PM_Flag~2_combout\ <= NOT \AM_PM_Flag~2_combout\;
\ALT_INV_AM_PM_Flag~_emulated_q\ <= NOT \AM_PM_Flag~_emulated_q\;
\ALT_INV_SH_ALARM[1]~0_combout\ <= NOT \SH_ALARM[1]~0_combout\;
\ALT_INV_SH_Digit[3]~26_combout\ <= NOT \SH_Digit[3]~26_combout\;
\ALT_INV_ML_ALARM[0]~0_combout\ <= NOT \ML_ALARM[0]~0_combout\;
\ALT_INV_SL_Digit[3]~14_combout\ <= NOT \SL_Digit[3]~14_combout\;
\ALT_INV_SL_Digit[3]~_emulated_q\ <= NOT \SL_Digit[3]~_emulated_q\;
\ALT_INV_SL_Digit[2]~10_combout\ <= NOT \SL_Digit[2]~10_combout\;
\ALT_INV_SL_Digit[2]~_emulated_q\ <= NOT \SL_Digit[2]~_emulated_q\;
\ALT_INV_SL_Digit[1]~6_combout\ <= NOT \SL_Digit[1]~6_combout\;
\ALT_INV_SL_Digit[1]~_emulated_q\ <= NOT \SL_Digit[1]~_emulated_q\;
\ALT_INV_SL_Digit[0]~2_combout\ <= NOT \SL_Digit[0]~2_combout\;
\ALT_INV_SL_Digit[0]~_emulated_q\ <= NOT \SL_Digit[0]~_emulated_q\;
\ALT_INV_SH_Digit[3]~14_combout\ <= NOT \SH_Digit[3]~14_combout\;
\ALT_INV_SH_Digit[3]~_emulated_q\ <= NOT \SH_Digit[3]~_emulated_q\;
\ALT_INV_SH_Digit[2]~10_combout\ <= NOT \SH_Digit[2]~10_combout\;
\ALT_INV_SH_Digit[2]~_emulated_q\ <= NOT \SH_Digit[2]~_emulated_q\;
\ALT_INV_SH_Digit[1]~6_combout\ <= NOT \SH_Digit[1]~6_combout\;
\ALT_INV_SH_Digit[1]~_emulated_q\ <= NOT \SH_Digit[1]~_emulated_q\;
\ALT_INV_SH_Digit[0]~2_combout\ <= NOT \SH_Digit[0]~2_combout\;
\ALT_INV_SH_Digit[0]~_emulated_q\ <= NOT \SH_Digit[0]~_emulated_q\;
\ALT_INV_ML_Digit[3]~14_combout\ <= NOT \ML_Digit[3]~14_combout\;
\ALT_INV_ML_Digit[3]~_emulated_q\ <= NOT \ML_Digit[3]~_emulated_q\;
\ALT_INV_ML_Digit[2]~10_combout\ <= NOT \ML_Digit[2]~10_combout\;
\ALT_INV_ML_Digit[2]~_emulated_q\ <= NOT \ML_Digit[2]~_emulated_q\;
\ALT_INV_ML_Digit[1]~6_combout\ <= NOT \ML_Digit[1]~6_combout\;
\ALT_INV_ML_Digit[1]~_emulated_q\ <= NOT \ML_Digit[1]~_emulated_q\;
\ALT_INV_ML_Digit[0]~2_combout\ <= NOT \ML_Digit[0]~2_combout\;
\ALT_INV_ML_Digit[0]~_emulated_q\ <= NOT \ML_Digit[0]~_emulated_q\;
\ALT_INV_MH_Digit[3]~14_combout\ <= NOT \MH_Digit[3]~14_combout\;
\ALT_INV_MH_Digit[3]~_emulated_q\ <= NOT \MH_Digit[3]~_emulated_q\;
\ALT_INV_MH_Digit[2]~10_combout\ <= NOT \MH_Digit[2]~10_combout\;
\ALT_INV_MH_Digit[2]~_emulated_q\ <= NOT \MH_Digit[2]~_emulated_q\;
\ALT_INV_MH_Digit[1]~6_combout\ <= NOT \MH_Digit[1]~6_combout\;
\ALT_INV_MH_Digit[1]~_emulated_q\ <= NOT \MH_Digit[1]~_emulated_q\;
\ALT_INV_MH_Digit[0]~2_combout\ <= NOT \MH_Digit[0]~2_combout\;
\ALT_INV_MH_Digit[0]~_emulated_q\ <= NOT \MH_Digit[0]~_emulated_q\;
\ALT_INV_HL_Digit~30_combout\ <= NOT \HL_Digit~30_combout\;
\ALT_INV_HH_Digit~18_combout\ <= NOT \HH_Digit~18_combout\;
\ALT_INV_HH_Digit~17_combout\ <= NOT \HH_Digit~17_combout\;
\ALT_INV_HL_Digit~29_combout\ <= NOT \HL_Digit~29_combout\;
\ALT_INV_HL_Digit~28_combout\ <= NOT \HL_Digit~28_combout\;
\ALT_INV_HL_Digit~27_combout\ <= NOT \HL_Digit~27_combout\;
\ALT_INV_HL_Digit~26_combout\ <= NOT \HL_Digit~26_combout\;
\ALT_INV_Add3~1_combout\ <= NOT \Add3~1_combout\;
\ALT_INV_HL_Digit~25_combout\ <= NOT \HL_Digit~25_combout\;
\ALT_INV_HL_Digit~24_combout\ <= NOT \HL_Digit~24_combout\;
\ALT_INV_Add3~0_combout\ <= NOT \Add3~0_combout\;
\ALT_INV_HH_Digit~16_combout\ <= NOT \HH_Digit~16_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_process_1~1_combout\ <= NOT \process_1~1_combout\;
\ALT_INV_HH_Digit[3]~15_combout\ <= NOT \HH_Digit[3]~15_combout\;
\ALT_INV_AM_PM_Flag~8_combout\ <= NOT \AM_PM_Flag~8_combout\;
\ALT_INV_HH_Digit~14_combout\ <= NOT \HH_Digit~14_combout\;
\ALT_INV_AM_PM_Flag~7_combout\ <= NOT \AM_PM_Flag~7_combout\;
\ALT_INV_HH_Digit[1]~0_combout\ <= NOT \HH_Digit[1]~0_combout\;
\ALT_INV_AM_PM_Flag~6_combout\ <= NOT \AM_PM_Flag~6_combout\;
\ALT_INV_AM_PM_Flag~5_combout\ <= NOT \AM_PM_Flag~5_combout\;
\ALT_INV_SH_Digit[3]~20_combout\ <= NOT \SH_Digit[3]~20_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_LessThan8~0_combout\ <= NOT \LessThan8~0_combout\;
\ALT_INV_HH_Digit~13_combout\ <= NOT \HH_Digit~13_combout\;
\ALT_INV_ClkFlag~q\ <= NOT \ClkFlag~q\;
\ALT_INV_FLASH_FLAG~8_combout\ <= NOT \FLASH_FLAG~8_combout\;
\ALT_INV_FLASH_FLAG~7_combout\ <= NOT \FLASH_FLAG~7_combout\;
\ALT_INV_FLASH_FLAG~6_combout\ <= NOT \FLASH_FLAG~6_combout\;
\ALT_INV_FLASH_FLAG~5_combout\ <= NOT \FLASH_FLAG~5_combout\;
\ALT_INV_FLASH_FLAG~4_combout\ <= NOT \FLASH_FLAG~4_combout\;
\ALT_INV_FLASH_FLAG~3_combout\ <= NOT \FLASH_FLAG~3_combout\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
\ALT_INV_FLASH_FLAG~2_combout\ <= NOT \FLASH_FLAG~2_combout\;
\ALT_INV_FLASH_FLAG~1_combout\ <= NOT \FLASH_FLAG~1_combout\;
\ALT_INV_FLASH_FLAG~0_combout\ <= NOT \FLASH_FLAG~0_combout\;
\ALT_INV_HL_Digit[0]~14_combout\ <= NOT \HL_Digit[0]~14_combout\;
\ALT_INV_HL_Digit[0]~_emulated_q\ <= NOT \HL_Digit[0]~_emulated_q\;
\ALT_INV_HL_Digit[1]~10_combout\ <= NOT \HL_Digit[1]~10_combout\;
\ALT_INV_HL_Digit[1]~_emulated_q\ <= NOT \HL_Digit[1]~_emulated_q\;
\ALT_INV_HL_Digit[2]~6_combout\ <= NOT \HL_Digit[2]~6_combout\;
\ALT_INV_HL_Digit[2]~_emulated_q\ <= NOT \HL_Digit[2]~_emulated_q\;
\ALT_INV_HL_Digit[3]~2_combout\ <= NOT \HL_Digit[3]~2_combout\;
\ALT_INV_HL_Digit[3]~_emulated_q\ <= NOT \HL_Digit[3]~_emulated_q\;
\ALT_INV_HH_Digit[0]~6_combout\ <= NOT \HH_Digit[0]~6_combout\;
\ALT_INV_HH_Digit[0]~_emulated_q\ <= NOT \HH_Digit[0]~_emulated_q\;
\ALT_INV_HH_Digit[1]~2_combout\ <= NOT \HH_Digit[1]~2_combout\;
\ALT_INV_HH_Digit[1]~_emulated_q\ <= NOT \HH_Digit[1]~_emulated_q\;
\ALT_INV_FLASH_FLAG~q\ <= NOT \FLASH_FLAG~q\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
ALT_INV_Internal_Count(0) <= NOT Internal_Count(0);
ALT_INV_Internal_Count(1) <= NOT Internal_Count(1);
ALT_INV_Internal_Count(2) <= NOT Internal_Count(2);
ALT_INV_Internal_Count(3) <= NOT Internal_Count(3);
ALT_INV_Internal_Count(4) <= NOT Internal_Count(4);
ALT_INV_Internal_Count(5) <= NOT Internal_Count(5);
ALT_INV_Internal_Count(28) <= NOT Internal_Count(28);
ALT_INV_Internal_Count(27) <= NOT Internal_Count(27);
ALT_INV_Internal_Count(26) <= NOT Internal_Count(26);
ALT_INV_Internal_Count(25) <= NOT Internal_Count(25);
ALT_INV_Internal_Count(14) <= NOT Internal_Count(14);
ALT_INV_Internal_Count(13) <= NOT Internal_Count(13);
ALT_INV_Internal_Count(12) <= NOT Internal_Count(12);
ALT_INV_Internal_Count(11) <= NOT Internal_Count(11);
ALT_INV_Internal_Count(10) <= NOT Internal_Count(10);
ALT_INV_Internal_Count(9) <= NOT Internal_Count(9);
ALT_INV_Internal_Count(6) <= NOT Internal_Count(6);
ALT_INV_Internal_Count(7) <= NOT Internal_Count(7);
ALT_INV_Internal_Count(8) <= NOT Internal_Count(8);
ALT_INV_Internal_Count(15) <= NOT Internal_Count(15);
ALT_INV_Internal_Count(20) <= NOT Internal_Count(20);
ALT_INV_Internal_Count(19) <= NOT Internal_Count(19);
ALT_INV_Internal_Count(18) <= NOT Internal_Count(18);
ALT_INV_Internal_Count(22) <= NOT Internal_Count(22);
ALT_INV_Internal_Count(17) <= NOT Internal_Count(17);
ALT_INV_Internal_Count(16) <= NOT Internal_Count(16);
ALT_INV_Internal_Count(21) <= NOT Internal_Count(21);
ALT_INV_Internal_Count(23) <= NOT Internal_Count(23);
ALT_INV_Internal_Count(24) <= NOT Internal_Count(24);

-- Location: IOOBUF_X44_Y0_N2
\HH[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HH(6));

-- Location: IOOBUF_X0_Y21_N39
\HH[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	devoe => ww_devoe,
	o => ww_HH(5));

-- Location: IOOBUF_X0_Y21_N56
\HH[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	devoe => ww_devoe,
	o => ww_HH(4));

-- Location: IOOBUF_X50_Y0_N19
\HH[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	devoe => ww_devoe,
	o => ww_HH(3));

-- Location: IOOBUF_X43_Y0_N19
\HH[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HH_Digit[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_HH(2));

-- Location: IOOBUF_X22_Y0_N19
\HH[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HH_Digit[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_HH(1));

-- Location: IOOBUF_X29_Y0_N2
\HH[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	devoe => ww_devoe,
	o => ww_HH(0));

-- Location: IOOBUF_X29_Y0_N19
\HL[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux34~0_combout\,
	devoe => ww_devoe,
	o => ww_HL(6));

-- Location: IOOBUF_X36_Y0_N2
\HL[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => ww_HL(5));

-- Location: IOOBUF_X43_Y0_N2
\HL[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => ww_HL(4));

-- Location: IOOBUF_X52_Y0_N19
\HL[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => ww_HL(3));

-- Location: IOOBUF_X44_Y0_N19
\HL[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => ww_HL(2));

-- Location: IOOBUF_X48_Y0_N59
\HL[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => ww_HL(1));

-- Location: IOOBUF_X52_Y0_N36
\HL[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => ww_HL(0));

-- Location: IOOBUF_X51_Y0_N19
\MH[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux27~0_combout\,
	devoe => ww_devoe,
	o => ww_MH(6));

-- Location: IOOBUF_X51_Y0_N2
\MH[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => ww_MH(5));

-- Location: IOOBUF_X52_Y0_N2
\MH[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => ww_MH(4));

-- Location: IOOBUF_X46_Y0_N19
\MH[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_MH(3));

-- Location: IOOBUF_X40_Y0_N42
\MH[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => ww_MH(2));

-- Location: IOOBUF_X46_Y0_N2
\MH[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => ww_MH(1));

-- Location: IOOBUF_X40_Y0_N59
\MH[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_MH(0));

-- Location: IOOBUF_X40_Y0_N76
\ML[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_ML(6));

-- Location: IOOBUF_X46_Y0_N53
\ML[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_ML(5));

-- Location: IOOBUF_X38_Y0_N19
\ML[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_ML(4));

-- Location: IOOBUF_X36_Y0_N19
\ML[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_ML(3));

-- Location: IOOBUF_X22_Y0_N53
\ML[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_ML(2));

-- Location: IOOBUF_X38_Y0_N53
\ML[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_ML(1));

-- Location: IOOBUF_X48_Y0_N42
\ML[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_ML(0));

-- Location: IOOBUF_X51_Y0_N53
\SH[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_SH(6));

-- Location: IOOBUF_X43_Y0_N53
\SH[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_SH(5));

-- Location: IOOBUF_X38_Y0_N36
\SH[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_SH(4));

-- Location: IOOBUF_X43_Y0_N36
\SH[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_SH(3));

-- Location: IOOBUF_X44_Y0_N53
\SH[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_SH(2));

-- Location: IOOBUF_X40_Y0_N93
\SH[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_SH(1));

-- Location: IOOBUF_X44_Y0_N36
\SH[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_SH(0));

-- Location: IOOBUF_X46_Y0_N36
\SL[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_SL(6));

-- Location: IOOBUF_X50_Y0_N53
\SL[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_SL(5));

-- Location: IOOBUF_X48_Y0_N93
\SL[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_SL(4));

-- Location: IOOBUF_X50_Y0_N36
\SL[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_SL(3));

-- Location: IOOBUF_X48_Y0_N76
\SL[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_SL(2));

-- Location: IOOBUF_X51_Y0_N36
\SL[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_SL(1));

-- Location: IOOBUF_X52_Y0_N53
\SL[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_SL(0));

-- Location: IOOBUF_X0_Y18_N79
\FLASH~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FLASH_FLAG~q\,
	devoe => ww_devoe,
	o => ww_FLASH);

-- Location: IOOBUF_X0_Y20_N56
\AM_PM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AM_PM_Flag~2_combout\,
	devoe => ww_devoe,
	o => ww_AM_PM);

-- Location: IOIBUF_X10_Y0_N92
\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\SET_H~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET_H,
	o => \SET_H~input_o\);

-- Location: LABCELL_X24_Y1_N0
\AM_PM_Flag~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \AM_PM_Flag~7_combout\ = ( \RESET~input_o\ & ( !\SET_H~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SET_H~input_o\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \AM_PM_Flag~7_combout\);

-- Location: IOIBUF_X33_Y0_N92
\SETTING_MODE~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SETTING_MODE,
	o => \SETTING_MODE~input_o\);

-- Location: LABCELL_X25_Y1_N33
\HH_Digit~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit~14_combout\ = ( \SETTING_MODE~input_o\ & ( \HH_Digit[1]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HH_Digit[1]~2_combout\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \HH_Digit~14_combout\);

-- Location: IOIBUF_X22_Y0_N1
\CLK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50,
	o => \CLK_50~input_o\);

-- Location: CLKCTRL_G6
\CLK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50~input_o\,
	outclk => \CLK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X25_Y4_N30
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( Internal_Count(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~114\ = CARRY(( Internal_Count(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(0),
	cin => GND,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X25_Y3_N42
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( Internal_Count(24) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( Internal_Count(24) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(24),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X25_Y3_N45
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( Internal_Count(25) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~78\ = CARRY(( Internal_Count(25) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(25),
	cin => \Add0~2\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X25_Y3_N46
\Internal_Count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(25));

-- Location: LABCELL_X25_Y3_N48
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( Internal_Count(26) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( Internal_Count(26) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(26),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X25_Y3_N50
\Internal_Count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(26));

-- Location: LABCELL_X25_Y3_N51
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \Internal_Count[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( \Internal_Count[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Internal_Count[27]~DUPLICATE_q\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X25_Y3_N52
\Internal_Count[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[27]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y3_N54
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( Internal_Count(28) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(28),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\);

-- Location: FF_X25_Y3_N55
\Internal_Count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(28));

-- Location: FF_X25_Y3_N53
\Internal_Count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(27));

-- Location: LABCELL_X25_Y4_N6
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( !Internal_Count(25) & ( (!Internal_Count(28) & (!Internal_Count(27) & !Internal_Count(26))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(28),
	datac => ALT_INV_Internal_Count(27),
	datad => ALT_INV_Internal_Count(26),
	dataf => ALT_INV_Internal_Count(25),
	combout => \LessThan0~5_combout\);

-- Location: FF_X25_Y3_N34
\Internal_Count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(21));

-- Location: FF_X25_Y4_N29
\Internal_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~13_sumout\,
	sclr => \LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(16));

-- Location: LABCELL_X25_Y4_N15
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( Internal_Count(20) & ( (Internal_Count(22) & (Internal_Count(18) & Internal_Count(19))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(22),
	datac => ALT_INV_Internal_Count(18),
	datad => ALT_INV_Internal_Count(19),
	dataf => ALT_INV_Internal_Count(20),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X25_Y4_N21
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \LessThan0~0_combout\ & ( (!Internal_Count(23) & ((!Internal_Count(21)) # ((!Internal_Count(17) & !Internal_Count(16))))) ) ) # ( !\LessThan0~0_combout\ & ( !Internal_Count(23) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101000101000001010100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(23),
	datab => ALT_INV_Internal_Count(17),
	datac => ALT_INV_Internal_Count(21),
	datad => ALT_INV_Internal_Count(16),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X25_Y3_N16
\Internal_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(15));

-- Location: FF_X25_Y3_N1
\Internal_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(10));

-- Location: LABCELL_X25_Y4_N0
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !Internal_Count(8) & ( !Internal_Count(10) & ( (!Internal_Count(6) & (!Internal_Count(7) & !Internal_Count(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(6),
	datac => ALT_INV_Internal_Count(7),
	datad => ALT_INV_Internal_Count(9),
	datae => ALT_INV_Internal_Count(8),
	dataf => ALT_INV_Internal_Count(10),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X25_Y4_N12
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( Internal_Count(14) & ( (Internal_Count(12) & (Internal_Count(11) & Internal_Count(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(12),
	datac => ALT_INV_Internal_Count(11),
	datad => ALT_INV_Internal_Count(13),
	dataf => ALT_INV_Internal_Count(14),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X25_Y4_N18
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \LessThan0~3_combout\ & ( (!Internal_Count(23) & (!Internal_Count(17) & (!Internal_Count(15) & \LessThan0~2_combout\))) ) ) # ( !\LessThan0~3_combout\ & ( (!Internal_Count(23) & (!Internal_Count(17) & !Internal_Count(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(23),
	datab => ALT_INV_Internal_Count(17),
	datac => ALT_INV_Internal_Count(15),
	datad => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X25_Y4_N9
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~4_combout\ & ( !\LessThan0~5_combout\ ) ) # ( !\LessThan0~4_combout\ & ( (!\LessThan0~5_combout\) # ((Internal_Count(24) & !\LessThan0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110000111101011111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(24),
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: FF_X25_Y4_N50
\Internal_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~113_sumout\,
	sclr => \LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(0));

-- Location: LABCELL_X25_Y4_N33
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( Internal_Count(1) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( Internal_Count(1) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(1),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X25_Y4_N35
\Internal_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(1));

-- Location: LABCELL_X25_Y4_N36
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( Internal_Count(2) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( Internal_Count(2) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(2),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X25_Y4_N38
\Internal_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(2));

-- Location: LABCELL_X25_Y4_N39
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( Internal_Count(3) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( Internal_Count(3) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(3),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X25_Y4_N41
\Internal_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(3));

-- Location: LABCELL_X25_Y4_N42
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( Internal_Count(4) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( Internal_Count(4) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(4),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X25_Y4_N43
\Internal_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(4));

-- Location: LABCELL_X25_Y4_N45
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( Internal_Count(5) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( Internal_Count(5) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(5),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X25_Y4_N47
\Internal_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(5));

-- Location: LABCELL_X25_Y4_N48
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( Internal_Count(6) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~50\ = CARRY(( Internal_Count(6) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(6),
	cin => \Add0~94\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X25_Y4_N26
\Internal_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~49_sumout\,
	sclr => \LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(6));

-- Location: LABCELL_X25_Y4_N51
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( Internal_Count(7) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( Internal_Count(7) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(7),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X25_Y4_N53
\Internal_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(7));

-- Location: LABCELL_X25_Y4_N54
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( Internal_Count(8) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( Internal_Count(8) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(8),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X25_Y4_N56
\Internal_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(8));

-- Location: LABCELL_X25_Y4_N57
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( Internal_Count(9) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~54\ = CARRY(( Internal_Count(9) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(9),
	cin => \Add0~42\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X25_Y4_N59
\Internal_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(9));

-- Location: LABCELL_X25_Y3_N0
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \Internal_Count[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \Internal_Count[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Internal_Count[10]~DUPLICATE_q\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X25_Y3_N2
\Internal_Count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[10]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y3_N3
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( Internal_Count(11) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( Internal_Count(11) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(11),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X25_Y3_N5
\Internal_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(11));

-- Location: LABCELL_X25_Y3_N6
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( Internal_Count(12) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( Internal_Count(12) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(12),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X25_Y3_N7
\Internal_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(12));

-- Location: LABCELL_X25_Y3_N9
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( Internal_Count(13) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( Internal_Count(13) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(13),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X25_Y3_N11
\Internal_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(13));

-- Location: LABCELL_X25_Y3_N12
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( Internal_Count(14) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( Internal_Count(14) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(14),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X25_Y3_N14
\Internal_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(14));

-- Location: LABCELL_X25_Y3_N15
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \Internal_Count[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~38\ = CARRY(( \Internal_Count[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Internal_Count[15]~DUPLICATE_q\,
	cin => \Add0~74\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X25_Y3_N17
\Internal_Count[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[15]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y3_N18
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \Internal_Count[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~14\ = CARRY(( \Internal_Count[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Internal_Count[16]~DUPLICATE_q\,
	cin => \Add0~38\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X25_Y4_N28
\Internal_Count[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~13_sumout\,
	sclr => \LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[16]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y3_N21
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( Internal_Count(17) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( Internal_Count(17) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(17),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X25_Y3_N23
\Internal_Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(17));

-- Location: LABCELL_X25_Y3_N24
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( Internal_Count(18) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~26\ = CARRY(( Internal_Count(18) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(18),
	cin => \Add0~18\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X25_Y3_N26
\Internal_Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(18));

-- Location: LABCELL_X25_Y3_N27
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( Internal_Count(19) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( Internal_Count(19) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(19),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X25_Y3_N29
\Internal_Count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(19));

-- Location: LABCELL_X25_Y3_N30
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( Internal_Count(20) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( Internal_Count(20) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(20),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X25_Y3_N31
\Internal_Count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(20));

-- Location: LABCELL_X25_Y3_N33
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \Internal_Count[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~10\ = CARRY(( \Internal_Count[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Internal_Count[21]~DUPLICATE_q\,
	cin => \Add0~34\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X25_Y3_N35
\Internal_Count[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Internal_Count[21]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y3_N36
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( Internal_Count(22) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~22\ = CARRY(( Internal_Count(22) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(22),
	cin => \Add0~10\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X25_Y3_N38
\Internal_Count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(22));

-- Location: LABCELL_X25_Y3_N39
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( Internal_Count(23) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~6\ = CARRY(( Internal_Count(23) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(23),
	cin => \Add0~22\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X25_Y3_N40
\Internal_Count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(23));

-- Location: FF_X25_Y3_N44
\Internal_Count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(24));

-- Location: LABCELL_X25_Y4_N24
\ClkFlag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClkFlag~0_combout\ = ( \LessThan0~1_combout\ & ( \ClkFlag~q\ & ( \LessThan0~5_combout\ ) ) ) # ( !\LessThan0~1_combout\ & ( \ClkFlag~q\ & ( (\LessThan0~5_combout\ & ((!Internal_Count(24)) # (\LessThan0~4_combout\))) ) ) ) # ( \LessThan0~1_combout\ & ( 
-- !\ClkFlag~q\ & ( !\LessThan0~5_combout\ ) ) ) # ( !\LessThan0~1_combout\ & ( !\ClkFlag~q\ & ( (!\LessThan0~5_combout\) # ((Internal_Count(24) & !\LessThan0~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010000111111110000000000000000101011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(24),
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => \ALT_INV_LessThan0~5_combout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_ClkFlag~q\,
	combout => \ClkFlag~0_combout\);

-- Location: FF_X25_Y4_N5
ClkFlag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~input_o\,
	asdata => \ClkFlag~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkFlag~q\);

-- Location: LABCELL_X25_Y1_N27
\HH_Digit[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit[1]~1_combout\ = ( \RESET~input_o\ & ( (!\AM_PM_Flag~7_combout\ & ((\HH_Digit[1]~1_combout\))) # (\AM_PM_Flag~7_combout\ & (\HH_Digit~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AM_PM_Flag~7_combout\,
	datac => \ALT_INV_HH_Digit~14_combout\,
	datad => \ALT_INV_HH_Digit[1]~1_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \HH_Digit[1]~1_combout\);

-- Location: IOIBUF_X11_Y0_N35
\SET_S~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET_S,
	o => \SET_S~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\SET_M~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET_M,
	o => \SET_M~input_o\);

-- Location: LABCELL_X24_Y2_N12
\SH_Digit[3]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[3]~28_combout\ = ( \RESET~input_o\ & ( (!\SET_S~input_o\ & (\SET_M~input_o\ & \SET_H~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SET_S~input_o\,
	datac => \ALT_INV_SET_M~input_o\,
	datad => \ALT_INV_SET_H~input_o\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \SH_Digit[3]~28_combout\);

-- Location: IOIBUF_X33_Y0_N41
\BCD_L[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD_L(0),
	o => \BCD_L[0]~input_o\);

-- Location: LABCELL_X24_Y2_N3
\SL_Digit~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit~24_combout\ = ( \SETTING_MODE~input_o\ & ( \SL_Digit[0]~2_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_L[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SL_Digit[0]~2_combout\,
	datad => \ALT_INV_BCD_L[0]~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \SL_Digit~24_combout\);

-- Location: LABCELL_X24_Y2_N51
\SL_Digit[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit[0]~1_combout\ = ( \RESET~input_o\ & ( (!\SH_Digit[3]~28_combout\ & ((\SL_Digit[0]~1_combout\))) # (\SH_Digit[3]~28_combout\ & (\SL_Digit~24_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SL_Digit~24_combout\,
	datac => \ALT_INV_SL_Digit[0]~1_combout\,
	datad => \ALT_INV_SH_Digit[3]~28_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \SL_Digit[0]~1_combout\);

-- Location: IOIBUF_X34_Y0_N1
\BCD_L[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD_L(2),
	o => \BCD_L[2]~input_o\);

-- Location: LABCELL_X24_Y2_N36
\SL_Digit~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit~26_combout\ = ( \SETTING_MODE~input_o\ & ( \SL_Digit[2]~10_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_L[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BCD_L[2]~input_o\,
	datac => \ALT_INV_SL_Digit[2]~10_combout\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \SL_Digit~26_combout\);

-- Location: LABCELL_X24_Y2_N18
\SL_Digit[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit[2]~9_combout\ = ( \RESET~input_o\ & ( (!\SH_Digit[3]~28_combout\ & ((\SL_Digit[2]~9_combout\))) # (\SH_Digit[3]~28_combout\ & (\SL_Digit~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SL_Digit~26_combout\,
	datac => \ALT_INV_SL_Digit[2]~9_combout\,
	datad => \ALT_INV_SH_Digit[3]~28_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \SL_Digit[2]~9_combout\);

-- Location: LABCELL_X25_Y2_N6
\Add7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = !\SL_Digit[1]~6_combout\ $ (!\SL_Digit[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SL_Digit[1]~6_combout\,
	datad => \ALT_INV_SL_Digit[0]~2_combout\,
	combout => \Add7~0_combout\);

-- Location: IOIBUF_X33_Y0_N58
\BCD_L[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD_L(1),
	o => \BCD_L[1]~input_o\);

-- Location: LABCELL_X24_Y2_N24
\SL_Digit~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit~25_combout\ = ( \SETTING_MODE~input_o\ & ( \SL_Digit[1]~6_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_L[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SL_Digit[1]~6_combout\,
	datac => \ALT_INV_BCD_L[1]~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \SL_Digit~25_combout\);

-- Location: LABCELL_X24_Y2_N33
\SL_Digit[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit[1]~5_combout\ = ( \RESET~input_o\ & ( (!\SH_Digit[3]~28_combout\ & ((\SL_Digit[1]~5_combout\))) # (\SH_Digit[3]~28_combout\ & (\SL_Digit~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit~25_combout\,
	datac => \ALT_INV_SH_Digit[3]~28_combout\,
	datad => \ALT_INV_SL_Digit[1]~5_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \SL_Digit[1]~5_combout\);

-- Location: IOIBUF_X34_Y0_N18
\BCD_L[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD_L(3),
	o => \BCD_L[3]~input_o\);

-- Location: LABCELL_X26_Y2_N57
\SL_Digit~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit~27_combout\ = ( \BCD_L[3]~input_o\ & ( \SETTING_MODE~input_o\ & ( \SL_Digit[3]~14_combout\ ) ) ) # ( !\BCD_L[3]~input_o\ & ( \SETTING_MODE~input_o\ & ( \SL_Digit[3]~14_combout\ ) ) ) # ( \BCD_L[3]~input_o\ & ( !\SETTING_MODE~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SL_Digit[3]~14_combout\,
	datae => \ALT_INV_BCD_L[3]~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \SL_Digit~27_combout\);

-- Location: LABCELL_X26_Y2_N24
\SL_Digit[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit[3]~13_combout\ = ( \SL_Digit~27_combout\ & ( (\RESET~input_o\ & ((\SH_Digit[3]~28_combout\) # (\SL_Digit[3]~13_combout\))) ) ) # ( !\SL_Digit~27_combout\ & ( (\RESET~input_o\ & (\SL_Digit[3]~13_combout\ & !\SH_Digit[3]~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RESET~input_o\,
	datac => \ALT_INV_SL_Digit[3]~13_combout\,
	datad => \ALT_INV_SH_Digit[3]~28_combout\,
	dataf => \ALT_INV_SL_Digit~27_combout\,
	combout => \SL_Digit[3]~13_combout\);

-- Location: LABCELL_X26_Y2_N12
\Add7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = ( \SL_Digit[0]~2_combout\ & ( (\SL_Digit[1]~6_combout\ & \SL_Digit[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SL_Digit[1]~6_combout\,
	datad => \ALT_INV_SL_Digit[2]~10_combout\,
	dataf => \ALT_INV_SL_Digit[0]~2_combout\,
	combout => \Add7~2_combout\);

-- Location: LABCELL_X26_Y2_N33
\SL_Digit[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit[3]~15_combout\ = ( \Add7~2_combout\ & ( !\SL_Digit[3]~13_combout\ $ (\SL_Digit[3]~14_combout\) ) ) # ( !\Add7~2_combout\ & ( !\SL_Digit[3]~13_combout\ $ (((!\SL_Digit[3]~14_combout\) # (!\LessThan5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit[3]~13_combout\,
	datac => \ALT_INV_SL_Digit[3]~14_combout\,
	datad => \ALT_INV_LessThan5~0_combout\,
	dataf => \ALT_INV_Add7~2_combout\,
	combout => \SL_Digit[3]~15_combout\);

-- Location: LABCELL_X24_Y2_N57
\SH_Digit[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[0]~0_combout\ = ( \SH_Digit[3]~28_combout\ ) # ( !\SH_Digit[3]~28_combout\ & ( !\RESET~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_RESET~input_o\,
	dataf => \ALT_INV_SH_Digit[3]~28_combout\,
	combout => \SH_Digit[0]~0_combout\);

-- Location: LABCELL_X26_Y2_N45
\SH_Digit[3]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[3]~26_combout\ = ( \SET_H~input_o\ & ( \SET_M~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SET_M~input_o\,
	dataf => \ALT_INV_SET_H~input_o\,
	combout => \SH_Digit[3]~26_combout\);

-- Location: FF_X26_Y2_N35
\SL_Digit[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \SL_Digit[3]~15_combout\,
	clrn => \ALT_INV_SH_Digit[0]~0_combout\,
	ena => \SH_Digit[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SL_Digit[3]~_emulated_q\);

-- Location: LABCELL_X26_Y2_N9
\SL_Digit[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit[3]~14_combout\ = ( \SL_Digit[3]~13_combout\ & ( (\RESET~input_o\ & ((!\SH_Digit[3]~28_combout\ & (!\SL_Digit[3]~_emulated_q\)) # (\SH_Digit[3]~28_combout\ & ((\SL_Digit~27_combout\))))) ) ) # ( !\SL_Digit[3]~13_combout\ & ( (\RESET~input_o\ & 
-- ((!\SH_Digit[3]~28_combout\ & (\SL_Digit[3]~_emulated_q\)) # (\SH_Digit[3]~28_combout\ & ((\SL_Digit~27_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000100011010000000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SH_Digit[3]~28_combout\,
	datab => \ALT_INV_SL_Digit[3]~_emulated_q\,
	datac => \ALT_INV_SL_Digit~27_combout\,
	datad => \ALT_INV_RESET~input_o\,
	dataf => \ALT_INV_SL_Digit[3]~13_combout\,
	combout => \SL_Digit[3]~14_combout\);

-- Location: LABCELL_X24_Y2_N27
\SL_Digit[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit[1]~7_combout\ = ( \SL_Digit[3]~14_combout\ & ( !\SL_Digit[1]~5_combout\ $ (((!\Add7~0_combout\) # (!\LessThan5~0_combout\))) ) ) # ( !\SL_Digit[3]~14_combout\ & ( !\Add7~0_combout\ $ (!\SL_Digit[1]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~0_combout\,
	datac => \ALT_INV_SL_Digit[1]~5_combout\,
	datad => \ALT_INV_LessThan5~0_combout\,
	dataf => \ALT_INV_SL_Digit[3]~14_combout\,
	combout => \SL_Digit[1]~7_combout\);

-- Location: FF_X24_Y2_N28
\SL_Digit[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \SL_Digit[1]~7_combout\,
	clrn => \ALT_INV_SH_Digit[0]~0_combout\,
	ena => \SH_Digit[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SL_Digit[1]~_emulated_q\);

-- Location: LABCELL_X24_Y2_N42
\SL_Digit[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit[1]~6_combout\ = ( \SL_Digit[1]~5_combout\ & ( (\RESET~input_o\ & ((!\SH_Digit[3]~28_combout\ & (!\SL_Digit[1]~_emulated_q\)) # (\SH_Digit[3]~28_combout\ & ((\SL_Digit~25_combout\))))) ) ) # ( !\SL_Digit[1]~5_combout\ & ( (\RESET~input_o\ & 
-- ((!\SH_Digit[3]~28_combout\ & (\SL_Digit[1]~_emulated_q\)) # (\SH_Digit[3]~28_combout\ & ((\SL_Digit~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001010000001100001010000000110000101000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit[1]~_emulated_q\,
	datab => \ALT_INV_SL_Digit~25_combout\,
	datac => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_SH_Digit[3]~28_combout\,
	dataf => \ALT_INV_SL_Digit[1]~5_combout\,
	combout => \SL_Digit[1]~6_combout\);

-- Location: MLABCELL_X23_Y2_N21
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = !\SL_Digit[2]~10_combout\ $ (((!\SL_Digit[0]~2_combout\) # (!\SL_Digit[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101000000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit[0]~2_combout\,
	datac => \ALT_INV_SL_Digit[1]~6_combout\,
	datad => \ALT_INV_SL_Digit[2]~10_combout\,
	combout => \Add7~1_combout\);

-- Location: LABCELL_X24_Y2_N39
\SL_Digit[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit[2]~11_combout\ = ( \SL_Digit[3]~14_combout\ & ( !\SL_Digit[2]~9_combout\ $ (((!\Add7~1_combout\) # (!\LessThan5~0_combout\))) ) ) # ( !\SL_Digit[3]~14_combout\ & ( !\SL_Digit[2]~9_combout\ $ (!\Add7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit[2]~9_combout\,
	datac => \ALT_INV_Add7~1_combout\,
	datad => \ALT_INV_LessThan5~0_combout\,
	dataf => \ALT_INV_SL_Digit[3]~14_combout\,
	combout => \SL_Digit[2]~11_combout\);

-- Location: FF_X24_Y2_N40
\SL_Digit[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \SL_Digit[2]~11_combout\,
	clrn => \ALT_INV_SH_Digit[0]~0_combout\,
	ena => \SH_Digit[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SL_Digit[2]~_emulated_q\);

-- Location: LABCELL_X24_Y2_N0
\SL_Digit[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit[2]~10_combout\ = ( \SL_Digit[2]~9_combout\ & ( (\RESET~input_o\ & ((!\SH_Digit[3]~28_combout\ & ((!\SL_Digit[2]~_emulated_q\))) # (\SH_Digit[3]~28_combout\ & (\SL_Digit~26_combout\)))) ) ) # ( !\SL_Digit[2]~9_combout\ & ( (\RESET~input_o\ & 
-- ((!\SH_Digit[3]~28_combout\ & ((\SL_Digit[2]~_emulated_q\))) # (\SH_Digit[3]~28_combout\ & (\SL_Digit~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110100000000110100010000000011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit~26_combout\,
	datab => \ALT_INV_SH_Digit[3]~28_combout\,
	datac => \ALT_INV_SL_Digit[2]~_emulated_q\,
	datad => \ALT_INV_RESET~input_o\,
	dataf => \ALT_INV_SL_Digit[2]~9_combout\,
	combout => \SL_Digit[2]~10_combout\);

-- Location: MLABCELL_X23_Y2_N27
\LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!\SL_Digit[2]~10_combout\ & (!\SL_Digit[1]~6_combout\ & !\SL_Digit[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit[2]~10_combout\,
	datac => \ALT_INV_SL_Digit[1]~6_combout\,
	datad => \ALT_INV_SL_Digit[0]~2_combout\,
	combout => \LessThan5~0_combout\);

-- Location: MLABCELL_X23_Y2_N18
\SL_Digit[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit[0]~3_combout\ = ( \SL_Digit[3]~14_combout\ & ( !\SL_Digit[0]~1_combout\ $ (((!\LessThan5~0_combout\) # (\SL_Digit[0]~2_combout\))) ) ) # ( !\SL_Digit[3]~14_combout\ & ( !\SL_Digit[0]~2_combout\ $ (\SL_Digit[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010100001111101001010000111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit[0]~2_combout\,
	datac => \ALT_INV_SL_Digit[0]~1_combout\,
	datad => \ALT_INV_LessThan5~0_combout\,
	dataf => \ALT_INV_SL_Digit[3]~14_combout\,
	combout => \SL_Digit[0]~3_combout\);

-- Location: FF_X23_Y2_N20
\SL_Digit[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \SL_Digit[0]~3_combout\,
	clrn => \ALT_INV_SH_Digit[0]~0_combout\,
	ena => \SH_Digit[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SL_Digit[0]~_emulated_q\);

-- Location: LABCELL_X24_Y2_N6
\SL_Digit[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SL_Digit[0]~2_combout\ = ( \SL_Digit[0]~_emulated_q\ & ( (\RESET~input_o\ & ((!\SH_Digit[3]~28_combout\ & (!\SL_Digit[0]~1_combout\)) # (\SH_Digit[3]~28_combout\ & ((\SL_Digit~24_combout\))))) ) ) # ( !\SL_Digit[0]~_emulated_q\ & ( (\RESET~input_o\ & 
-- ((!\SH_Digit[3]~28_combout\ & (\SL_Digit[0]~1_combout\)) # (\SH_Digit[3]~28_combout\ & ((\SL_Digit~24_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100100000001100010010000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SH_Digit[3]~28_combout\,
	datab => \ALT_INV_RESET~input_o\,
	datac => \ALT_INV_SL_Digit[0]~1_combout\,
	datad => \ALT_INV_SL_Digit~24_combout\,
	dataf => \ALT_INV_SL_Digit[0]~_emulated_q\,
	combout => \SL_Digit[0]~2_combout\);

-- Location: LABCELL_X24_Y1_N15
\SH_Digit[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[3]~20_combout\ = ( \SL_Digit[3]~14_combout\ & ( ((\SL_Digit[1]~6_combout\) # (\SL_Digit[2]~10_combout\)) # (\SL_Digit[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit[0]~2_combout\,
	datac => \ALT_INV_SL_Digit[2]~10_combout\,
	datad => \ALT_INV_SL_Digit[1]~6_combout\,
	dataf => \ALT_INV_SL_Digit[3]~14_combout\,
	combout => \SH_Digit[3]~20_combout\);

-- Location: LABCELL_X19_Y1_N0
\MH_Digit[3]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[3]~26_combout\ = ( !\SET_M~input_o\ & ( \RESET~input_o\ & ( \SET_H~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SET_H~input_o\,
	datae => \ALT_INV_SET_M~input_o\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \MH_Digit[3]~26_combout\);

-- Location: LABCELL_X19_Y1_N51
\ML_Digit~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit~26_combout\ = ( \SETTING_MODE~input_o\ & ( \ML_Digit[1]~6_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_L[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ML_Digit[1]~6_combout\,
	datad => \ALT_INV_BCD_L[1]~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \ML_Digit~26_combout\);

-- Location: LABCELL_X19_Y1_N39
\ML_Digit[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[1]~5_combout\ = ( \RESET~input_o\ & ( (!\MH_Digit[3]~26_combout\ & ((\ML_Digit[1]~5_combout\))) # (\MH_Digit[3]~26_combout\ & (\ML_Digit~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ML_Digit~26_combout\,
	datac => \ALT_INV_ML_Digit[1]~5_combout\,
	datad => \ALT_INV_MH_Digit[3]~26_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \ML_Digit[1]~5_combout\);

-- Location: LABCELL_X19_Y1_N27
\Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = ( \ML_Digit[1]~6_combout\ & ( !\ML_Digit[0]~2_combout\ ) ) # ( !\ML_Digit[1]~6_combout\ & ( \ML_Digit[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ML_Digit[0]~2_combout\,
	dataf => \ALT_INV_ML_Digit[1]~6_combout\,
	combout => \Add5~0_combout\);

-- Location: LABCELL_X19_Y1_N9
\ML_Digit[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[1]~7_combout\ = ( \Add5~0_combout\ & ( \LessThan7~0_combout\ & ( !\ML_Digit[1]~5_combout\ ) ) ) # ( !\Add5~0_combout\ & ( \LessThan7~0_combout\ & ( \ML_Digit[1]~5_combout\ ) ) ) # ( \Add5~0_combout\ & ( !\LessThan7~0_combout\ & ( 
-- !\ML_Digit[1]~5_combout\ $ (\ML_Digit[3]~14_combout\) ) ) ) # ( !\Add5~0_combout\ & ( !\LessThan7~0_combout\ & ( \ML_Digit[1]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010100101010101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ML_Digit[1]~5_combout\,
	datad => \ALT_INV_ML_Digit[3]~14_combout\,
	datae => \ALT_INV_Add5~0_combout\,
	dataf => \ALT_INV_LessThan7~0_combout\,
	combout => \ML_Digit[1]~7_combout\);

-- Location: LABCELL_X20_Y1_N33
\MH_Digit[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[0]~0_combout\ = ( \MH_Digit[3]~26_combout\ ) # ( !\MH_Digit[3]~26_combout\ & ( !\RESET~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_RESET~input_o\,
	dataf => \ALT_INV_MH_Digit[3]~26_combout\,
	combout => \MH_Digit[0]~0_combout\);

-- Location: IOIBUF_X34_Y0_N35
\BCD_H[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD_H(3),
	o => \BCD_H[3]~input_o\);

-- Location: LABCELL_X24_Y2_N21
\SH_Digit~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit~32_combout\ = ( \SETTING_MODE~input_o\ & ( \SH_Digit[3]~14_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_H[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD_H[3]~input_o\,
	datac => \ALT_INV_SH_Digit[3]~14_combout\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \SH_Digit~32_combout\);

-- Location: LABCELL_X24_Y2_N15
\SH_Digit[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[3]~13_combout\ = ( \RESET~input_o\ & ( (!\SH_Digit[3]~28_combout\ & ((\SH_Digit[3]~13_combout\))) # (\SH_Digit[3]~28_combout\ & (\SH_Digit~32_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SH_Digit~32_combout\,
	datac => \ALT_INV_SH_Digit[3]~13_combout\,
	datad => \ALT_INV_SH_Digit[3]~28_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \SH_Digit[3]~13_combout\);

-- Location: MLABCELL_X23_Y2_N33
\SH_Digit[3]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[3]~27_combout\ = ( \SL_Digit[0]~2_combout\ & ( \SL_Digit[3]~14_combout\ & ( (\SET_M~input_o\ & \SET_H~input_o\) ) ) ) # ( !\SL_Digit[0]~2_combout\ & ( \SL_Digit[3]~14_combout\ & ( (\SET_M~input_o\ & (\SET_H~input_o\ & ((\SL_Digit[2]~10_combout\) 
-- # (\SL_Digit[1]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SET_M~input_o\,
	datab => \ALT_INV_SET_H~input_o\,
	datac => \ALT_INV_SL_Digit[1]~6_combout\,
	datad => \ALT_INV_SL_Digit[2]~10_combout\,
	datae => \ALT_INV_SL_Digit[0]~2_combout\,
	dataf => \ALT_INV_SL_Digit[3]~14_combout\,
	combout => \SH_Digit[3]~27_combout\);

-- Location: FF_X24_Y2_N10
\SH_Digit[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \SH_Digit[3]~13_combout\,
	clrn => \ALT_INV_SH_Digit[0]~0_combout\,
	sload => VCC,
	ena => \SH_Digit[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SH_Digit[3]~_emulated_q\);

-- Location: LABCELL_X24_Y2_N9
\SH_Digit[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[3]~14_combout\ = ( \SH_Digit[3]~_emulated_q\ & ( (\RESET~input_o\ & ((!\SH_Digit[3]~28_combout\ & ((!\SH_Digit[3]~13_combout\))) # (\SH_Digit[3]~28_combout\ & (\SH_Digit~32_combout\)))) ) ) # ( !\SH_Digit[3]~_emulated_q\ & ( (\RESET~input_o\ & 
-- ((!\SH_Digit[3]~28_combout\ & ((\SH_Digit[3]~13_combout\))) # (\SH_Digit[3]~28_combout\ & (\SH_Digit~32_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001100100011000000010010001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SH_Digit[3]~28_combout\,
	datab => \ALT_INV_RESET~input_o\,
	datac => \ALT_INV_SH_Digit~32_combout\,
	datad => \ALT_INV_SH_Digit[3]~13_combout\,
	dataf => \ALT_INV_SH_Digit[3]~_emulated_q\,
	combout => \SH_Digit[3]~14_combout\);

-- Location: IOIBUF_X34_Y0_N52
\BCD_H[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD_H(2),
	o => \BCD_H[2]~input_o\);

-- Location: LABCELL_X24_Y2_N45
\SH_Digit~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit~31_combout\ = ( \SETTING_MODE~input_o\ & ( \SH_Digit[2]~10_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_H[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BCD_H[2]~input_o\,
	datad => \ALT_INV_SH_Digit[2]~10_combout\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \SH_Digit~31_combout\);

-- Location: LABCELL_X24_Y2_N30
\SH_Digit[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[2]~9_combout\ = ( \RESET~input_o\ & ( (!\SH_Digit[3]~28_combout\ & (\SH_Digit[2]~9_combout\)) # (\SH_Digit[3]~28_combout\ & ((\SH_Digit~31_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SH_Digit[2]~9_combout\,
	datac => \ALT_INV_SH_Digit~31_combout\,
	datad => \ALT_INV_SH_Digit[3]~28_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \SH_Digit[2]~9_combout\);

-- Location: IOIBUF_X36_Y0_N35
\BCD_H[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD_H(0),
	o => \BCD_H[0]~input_o\);

-- Location: MLABCELL_X23_Y2_N42
\SH_Digit~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit~29_combout\ = ( \SETTING_MODE~input_o\ & ( \SH_Digit[0]~2_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_H[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SH_Digit[0]~2_combout\,
	datad => \ALT_INV_BCD_H[0]~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \SH_Digit~29_combout\);

-- Location: MLABCELL_X23_Y2_N39
\SH_Digit[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[0]~1_combout\ = ( \RESET~input_o\ & ( (!\SH_Digit[3]~28_combout\ & ((\SH_Digit[0]~1_combout\))) # (\SH_Digit[3]~28_combout\ & (\SH_Digit~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SH_Digit~29_combout\,
	datac => \ALT_INV_SH_Digit[3]~28_combout\,
	datad => \ALT_INV_SH_Digit[0]~1_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \SH_Digit[0]~1_combout\);

-- Location: IOIBUF_X36_Y0_N52
\BCD_H[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD_H(1),
	o => \BCD_H[1]~input_o\);

-- Location: MLABCELL_X23_Y2_N54
\SH_Digit~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit~30_combout\ = ( \SETTING_MODE~input_o\ & ( \SH_Digit[1]~6_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_H[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SH_Digit[1]~6_combout\,
	datac => \ALT_INV_BCD_H[1]~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \SH_Digit~30_combout\);

-- Location: MLABCELL_X23_Y2_N15
\SH_Digit[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[1]~5_combout\ = ( \SH_Digit[1]~5_combout\ & ( (\RESET~input_o\ & ((!\SH_Digit[3]~28_combout\) # (\SH_Digit~30_combout\))) ) ) # ( !\SH_Digit[1]~5_combout\ & ( (\RESET~input_o\ & (\SH_Digit~30_combout\ & \SH_Digit[3]~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RESET~input_o\,
	datac => \ALT_INV_SH_Digit~30_combout\,
	datad => \ALT_INV_SH_Digit[3]~28_combout\,
	dataf => \ALT_INV_SH_Digit[1]~5_combout\,
	combout => \SH_Digit[1]~5_combout\);

-- Location: MLABCELL_X23_Y2_N3
\Add6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = !\SH_Digit[1]~6_combout\ $ (!\SH_Digit[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SH_Digit[1]~6_combout\,
	datad => \ALT_INV_SH_Digit[0]~2_combout\,
	combout => \Add6~0_combout\);

-- Location: MLABCELL_X23_Y2_N51
\SH_Digit[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[1]~7_combout\ = ( \LessThan6~1_combout\ & ( \SH_Digit[1]~5_combout\ ) ) # ( !\LessThan6~1_combout\ & ( !\SH_Digit[1]~5_combout\ $ (((!\Add6~0_combout\) # (\SH_Digit[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000011111010010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SH_Digit[3]~14_combout\,
	datac => \ALT_INV_SH_Digit[1]~5_combout\,
	datad => \ALT_INV_Add6~0_combout\,
	dataf => \ALT_INV_LessThan6~1_combout\,
	combout => \SH_Digit[1]~7_combout\);

-- Location: FF_X23_Y2_N53
\SH_Digit[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \SH_Digit[1]~7_combout\,
	clrn => \ALT_INV_SH_Digit[0]~0_combout\,
	ena => \SH_Digit[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SH_Digit[1]~_emulated_q\);

-- Location: MLABCELL_X23_Y2_N9
\SH_Digit[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[1]~6_combout\ = ( \SH_Digit[1]~5_combout\ & ( (\RESET~input_o\ & ((!\SH_Digit[3]~28_combout\ & ((!\SH_Digit[1]~_emulated_q\))) # (\SH_Digit[3]~28_combout\ & (\SH_Digit~30_combout\)))) ) ) # ( !\SH_Digit[1]~5_combout\ & ( (\RESET~input_o\ & 
-- ((!\SH_Digit[3]~28_combout\ & ((\SH_Digit[1]~_emulated_q\))) # (\SH_Digit[3]~28_combout\ & (\SH_Digit~30_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010100000000110001010000000011000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SH_Digit~30_combout\,
	datab => \ALT_INV_SH_Digit[1]~_emulated_q\,
	datac => \ALT_INV_SH_Digit[3]~28_combout\,
	datad => \ALT_INV_RESET~input_o\,
	dataf => \ALT_INV_SH_Digit[1]~5_combout\,
	combout => \SH_Digit[1]~6_combout\);

-- Location: MLABCELL_X23_Y2_N6
\LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ( \SH_Digit[1]~6_combout\ & ( \SH_Digit[2]~10_combout\ ) ) # ( !\SH_Digit[1]~6_combout\ & ( (\SH_Digit[0]~2_combout\ & \SH_Digit[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SH_Digit[0]~2_combout\,
	datad => \ALT_INV_SH_Digit[2]~10_combout\,
	dataf => \ALT_INV_SH_Digit[1]~6_combout\,
	combout => \LessThan6~1_combout\);

-- Location: MLABCELL_X23_Y2_N24
\SH_Digit[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[0]~3_combout\ = ( \LessThan6~1_combout\ & ( \SH_Digit[0]~1_combout\ ) ) # ( !\LessThan6~1_combout\ & ( !\SH_Digit[0]~1_combout\ $ (((\SH_Digit[3]~14_combout\) # (\SH_Digit[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100110011110000110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SH_Digit[0]~1_combout\,
	datac => \ALT_INV_SH_Digit[0]~2_combout\,
	datad => \ALT_INV_SH_Digit[3]~14_combout\,
	dataf => \ALT_INV_LessThan6~1_combout\,
	combout => \SH_Digit[0]~3_combout\);

-- Location: FF_X23_Y2_N26
\SH_Digit[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \SH_Digit[0]~3_combout\,
	clrn => \ALT_INV_SH_Digit[0]~0_combout\,
	ena => \SH_Digit[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SH_Digit[0]~_emulated_q\);

-- Location: MLABCELL_X23_Y2_N0
\SH_Digit[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[0]~2_combout\ = ( \SH_Digit[0]~1_combout\ & ( (\RESET~input_o\ & ((!\SH_Digit[3]~28_combout\ & (!\SH_Digit[0]~_emulated_q\)) # (\SH_Digit[3]~28_combout\ & ((\SH_Digit~29_combout\))))) ) ) # ( !\SH_Digit[0]~1_combout\ & ( (\RESET~input_o\ & 
-- ((!\SH_Digit[3]~28_combout\ & (\SH_Digit[0]~_emulated_q\)) # (\SH_Digit[3]~28_combout\ & ((\SH_Digit~29_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000100000001010101000000010001010100000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RESET~input_o\,
	datab => \ALT_INV_SH_Digit[0]~_emulated_q\,
	datac => \ALT_INV_SH_Digit[3]~28_combout\,
	datad => \ALT_INV_SH_Digit~29_combout\,
	dataf => \ALT_INV_SH_Digit[0]~1_combout\,
	combout => \SH_Digit[0]~2_combout\);

-- Location: MLABCELL_X23_Y2_N57
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = ( \SH_Digit[1]~6_combout\ & ( !\SH_Digit[0]~2_combout\ $ (!\SH_Digit[2]~10_combout\) ) ) # ( !\SH_Digit[1]~6_combout\ & ( \SH_Digit[2]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SH_Digit[0]~2_combout\,
	datad => \ALT_INV_SH_Digit[2]~10_combout\,
	dataf => \ALT_INV_SH_Digit[1]~6_combout\,
	combout => \Add6~1_combout\);

-- Location: MLABCELL_X23_Y2_N48
\SH_Digit[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[2]~11_combout\ = ( \LessThan6~1_combout\ & ( \SH_Digit[2]~9_combout\ ) ) # ( !\LessThan6~1_combout\ & ( !\SH_Digit[2]~9_combout\ $ (((!\Add6~1_combout\) # (\SH_Digit[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000011111010010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SH_Digit[3]~14_combout\,
	datac => \ALT_INV_SH_Digit[2]~9_combout\,
	datad => \ALT_INV_Add6~1_combout\,
	dataf => \ALT_INV_LessThan6~1_combout\,
	combout => \SH_Digit[2]~11_combout\);

-- Location: FF_X23_Y2_N50
\SH_Digit[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \SH_Digit[2]~11_combout\,
	clrn => \ALT_INV_SH_Digit[0]~0_combout\,
	ena => \SH_Digit[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SH_Digit[2]~_emulated_q\);

-- Location: LABCELL_X24_Y2_N54
\SH_Digit[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_Digit[2]~10_combout\ = ( \SH_Digit[2]~9_combout\ & ( (\RESET~input_o\ & ((!\SH_Digit[3]~28_combout\ & (!\SH_Digit[2]~_emulated_q\)) # (\SH_Digit[3]~28_combout\ & ((\SH_Digit~31_combout\))))) ) ) # ( !\SH_Digit[2]~9_combout\ & ( (\RESET~input_o\ & 
-- ((!\SH_Digit[3]~28_combout\ & (\SH_Digit[2]~_emulated_q\)) # (\SH_Digit[3]~28_combout\ & ((\SH_Digit~31_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011100001000000011010000100000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SH_Digit[3]~28_combout\,
	datab => \ALT_INV_SH_Digit[2]~_emulated_q\,
	datac => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_SH_Digit~31_combout\,
	dataf => \ALT_INV_SH_Digit[2]~9_combout\,
	combout => \SH_Digit[2]~10_combout\);

-- Location: LABCELL_X24_Y1_N51
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( \SH_Digit[1]~6_combout\ & ( (!\SH_Digit[2]~10_combout\ & !\SH_Digit[3]~14_combout\) ) ) # ( !\SH_Digit[1]~6_combout\ & ( (!\SH_Digit[3]~14_combout\ & ((!\SH_Digit[2]~10_combout\) # (!\SH_Digit[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SH_Digit[2]~10_combout\,
	datac => \ALT_INV_SH_Digit[3]~14_combout\,
	datad => \ALT_INV_SH_Digit[0]~2_combout\,
	dataf => \ALT_INV_SH_Digit[1]~6_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X20_Y1_N15
\ML_Digit[3]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[3]~24_combout\ = ( \SH_Digit[3]~20_combout\ & ( (\SET_S~input_o\ & (\SET_H~input_o\ & !\LessThan6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SET_S~input_o\,
	datac => \ALT_INV_SET_H~input_o\,
	datad => \ALT_INV_LessThan6~0_combout\,
	dataf => \ALT_INV_SH_Digit[3]~20_combout\,
	combout => \ML_Digit[3]~24_combout\);

-- Location: FF_X19_Y1_N10
\ML_Digit[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \ML_Digit[1]~7_combout\,
	clrn => \ALT_INV_MH_Digit[0]~0_combout\,
	ena => \ML_Digit[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ML_Digit[1]~_emulated_q\);

-- Location: LABCELL_X19_Y1_N24
\ML_Digit[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[1]~6_combout\ = ( \ML_Digit[1]~5_combout\ & ( (\RESET~input_o\ & ((!\MH_Digit[3]~26_combout\ & ((!\ML_Digit[1]~_emulated_q\))) # (\MH_Digit[3]~26_combout\ & (\ML_Digit~26_combout\)))) ) ) # ( !\ML_Digit[1]~5_combout\ & ( (\RESET~input_o\ & 
-- ((!\MH_Digit[3]~26_combout\ & ((\ML_Digit[1]~_emulated_q\))) # (\MH_Digit[3]~26_combout\ & (\ML_Digit~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000000000001101100000000101100010000000010110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[3]~26_combout\,
	datab => \ALT_INV_ML_Digit~26_combout\,
	datac => \ALT_INV_ML_Digit[1]~_emulated_q\,
	datad => \ALT_INV_RESET~input_o\,
	dataf => \ALT_INV_ML_Digit[1]~5_combout\,
	combout => \ML_Digit[1]~6_combout\);

-- Location: LABCELL_X19_Y1_N36
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = ( \ML_Digit[2]~10_combout\ & ( (!\ML_Digit[1]~6_combout\) # (!\ML_Digit[0]~2_combout\) ) ) # ( !\ML_Digit[2]~10_combout\ & ( (\ML_Digit[1]~6_combout\ & \ML_Digit[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ML_Digit[1]~6_combout\,
	datad => \ALT_INV_ML_Digit[0]~2_combout\,
	dataf => \ALT_INV_ML_Digit[2]~10_combout\,
	combout => \Add5~1_combout\);

-- Location: LABCELL_X19_Y1_N45
\ML_Digit~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit~27_combout\ = ( \SETTING_MODE~input_o\ & ( \ML_Digit[2]~10_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_L[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ML_Digit[2]~10_combout\,
	datac => \ALT_INV_BCD_L[2]~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \ML_Digit~27_combout\);

-- Location: LABCELL_X19_Y1_N30
\ML_Digit[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[2]~9_combout\ = ( \RESET~input_o\ & ( (!\MH_Digit[3]~26_combout\ & ((\ML_Digit[2]~9_combout\))) # (\MH_Digit[3]~26_combout\ & (\ML_Digit~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ML_Digit~27_combout\,
	datac => \ALT_INV_MH_Digit[3]~26_combout\,
	datad => \ALT_INV_ML_Digit[2]~9_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \ML_Digit[2]~9_combout\);

-- Location: LABCELL_X19_Y1_N21
\ML_Digit[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[2]~11_combout\ = ( \ML_Digit[2]~9_combout\ & ( (!\Add5~1_combout\) # ((\ML_Digit[3]~14_combout\ & !\LessThan7~0_combout\)) ) ) # ( !\ML_Digit[2]~9_combout\ & ( (\Add5~1_combout\ & ((!\ML_Digit[3]~14_combout\) # (\LessThan7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111111111111010100001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ML_Digit[3]~14_combout\,
	datac => \ALT_INV_LessThan7~0_combout\,
	datad => \ALT_INV_Add5~1_combout\,
	dataf => \ALT_INV_ML_Digit[2]~9_combout\,
	combout => \ML_Digit[2]~11_combout\);

-- Location: FF_X19_Y1_N22
\ML_Digit[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \ML_Digit[2]~11_combout\,
	clrn => \ALT_INV_MH_Digit[0]~0_combout\,
	ena => \ML_Digit[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ML_Digit[2]~_emulated_q\);

-- Location: LABCELL_X19_Y1_N48
\ML_Digit[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[2]~10_combout\ = ( \ML_Digit[2]~9_combout\ & ( (\RESET~input_o\ & ((!\MH_Digit[3]~26_combout\ & (!\ML_Digit[2]~_emulated_q\)) # (\MH_Digit[3]~26_combout\ & ((\ML_Digit~27_combout\))))) ) ) # ( !\ML_Digit[2]~9_combout\ & ( (\RESET~input_o\ & 
-- ((!\MH_Digit[3]~26_combout\ & (\ML_Digit[2]~_emulated_q\)) # (\MH_Digit[3]~26_combout\ & ((\ML_Digit~27_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011100001000000011010000100000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[3]~26_combout\,
	datab => \ALT_INV_ML_Digit[2]~_emulated_q\,
	datac => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_ML_Digit~27_combout\,
	dataf => \ALT_INV_ML_Digit[2]~9_combout\,
	combout => \ML_Digit[2]~10_combout\);

-- Location: LABCELL_X19_Y1_N12
\LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = ( !\ML_Digit[2]~10_combout\ & ( (!\ML_Digit[0]~2_combout\ & !\ML_Digit[1]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ML_Digit[0]~2_combout\,
	datac => \ALT_INV_ML_Digit[1]~6_combout\,
	dataf => \ALT_INV_ML_Digit[2]~10_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LABCELL_X19_Y1_N57
\ML_Digit~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit~25_combout\ = ( \SETTING_MODE~input_o\ & ( \ML_Digit[0]~2_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_L[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BCD_L[0]~input_o\,
	datad => \ALT_INV_ML_Digit[0]~2_combout\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \ML_Digit~25_combout\);

-- Location: LABCELL_X19_Y1_N18
\ML_Digit[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[0]~1_combout\ = ( \RESET~input_o\ & ( (!\MH_Digit[3]~26_combout\ & ((\ML_Digit[0]~1_combout\))) # (\MH_Digit[3]~26_combout\ & (\ML_Digit~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ML_Digit~25_combout\,
	datac => \ALT_INV_ML_Digit[0]~1_combout\,
	datad => \ALT_INV_MH_Digit[3]~26_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \ML_Digit[0]~1_combout\);

-- Location: LABCELL_X19_Y1_N15
\ML_Digit[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[0]~3_combout\ = ( \ML_Digit[3]~14_combout\ & ( !\ML_Digit[0]~1_combout\ $ (((!\LessThan7~0_combout\) # (\ML_Digit[0]~2_combout\))) ) ) # ( !\ML_Digit[3]~14_combout\ & ( !\ML_Digit[0]~2_combout\ $ (\ML_Digit[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010100101101001011010010110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ML_Digit[0]~2_combout\,
	datab => \ALT_INV_LessThan7~0_combout\,
	datac => \ALT_INV_ML_Digit[0]~1_combout\,
	dataf => \ALT_INV_ML_Digit[3]~14_combout\,
	combout => \ML_Digit[0]~3_combout\);

-- Location: FF_X19_Y1_N16
\ML_Digit[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \ML_Digit[0]~3_combout\,
	clrn => \ALT_INV_MH_Digit[0]~0_combout\,
	ena => \ML_Digit[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ML_Digit[0]~_emulated_q\);

-- Location: LABCELL_X19_Y1_N54
\ML_Digit[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[0]~2_combout\ = ( \ML_Digit[0]~1_combout\ & ( (\RESET~input_o\ & ((!\MH_Digit[3]~26_combout\ & (!\ML_Digit[0]~_emulated_q\)) # (\MH_Digit[3]~26_combout\ & ((\ML_Digit~25_combout\))))) ) ) # ( !\ML_Digit[0]~1_combout\ & ( (\RESET~input_o\ & 
-- ((!\MH_Digit[3]~26_combout\ & (\ML_Digit[0]~_emulated_q\)) # (\MH_Digit[3]~26_combout\ & ((\ML_Digit~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011100001000000011010000100000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[3]~26_combout\,
	datab => \ALT_INV_ML_Digit[0]~_emulated_q\,
	datac => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_ML_Digit~25_combout\,
	dataf => \ALT_INV_ML_Digit[0]~1_combout\,
	combout => \ML_Digit[0]~2_combout\);

-- Location: LABCELL_X20_Y1_N0
\Add5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = ( \ML_Digit[1]~6_combout\ & ( (\ML_Digit[0]~2_combout\ & \ML_Digit[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ML_Digit[0]~2_combout\,
	datad => \ALT_INV_ML_Digit[2]~10_combout\,
	dataf => \ALT_INV_ML_Digit[1]~6_combout\,
	combout => \Add5~2_combout\);

-- Location: LABCELL_X20_Y1_N27
\ML_Digit~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit~28_combout\ = ( \SETTING_MODE~input_o\ & ( \ML_Digit[3]~14_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_L[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ML_Digit[3]~14_combout\,
	datad => \ALT_INV_BCD_L[3]~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \ML_Digit~28_combout\);

-- Location: LABCELL_X20_Y1_N3
\ML_Digit[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[3]~13_combout\ = ( \RESET~input_o\ & ( (!\MH_Digit[3]~26_combout\ & ((\ML_Digit[3]~13_combout\))) # (\MH_Digit[3]~26_combout\ & (\ML_Digit~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ML_Digit~28_combout\,
	datac => \ALT_INV_MH_Digit[3]~26_combout\,
	datad => \ALT_INV_ML_Digit[3]~13_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \ML_Digit[3]~13_combout\);

-- Location: LABCELL_X20_Y1_N39
\ML_Digit[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[3]~15_combout\ = ( \ML_Digit[3]~14_combout\ & ( !\ML_Digit[3]~13_combout\ $ (((!\LessThan7~0_combout\) # (\Add5~2_combout\))) ) ) # ( !\ML_Digit[3]~14_combout\ & ( !\Add5~2_combout\ $ (!\ML_Digit[3]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000001111101001010000111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~2_combout\,
	datac => \ALT_INV_ML_Digit[3]~13_combout\,
	datad => \ALT_INV_LessThan7~0_combout\,
	dataf => \ALT_INV_ML_Digit[3]~14_combout\,
	combout => \ML_Digit[3]~15_combout\);

-- Location: FF_X20_Y1_N40
\ML_Digit[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \ML_Digit[3]~15_combout\,
	clrn => \ALT_INV_MH_Digit[0]~0_combout\,
	ena => \ML_Digit[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ML_Digit[3]~_emulated_q\);

-- Location: LABCELL_X20_Y1_N30
\ML_Digit[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_Digit[3]~14_combout\ = ( \ML_Digit[3]~13_combout\ & ( (\RESET~input_o\ & ((!\MH_Digit[3]~26_combout\ & (!\ML_Digit[3]~_emulated_q\)) # (\MH_Digit[3]~26_combout\ & ((\ML_Digit~28_combout\))))) ) ) # ( !\ML_Digit[3]~13_combout\ & ( (\RESET~input_o\ & 
-- ((!\MH_Digit[3]~26_combout\ & (\ML_Digit[3]~_emulated_q\)) # (\MH_Digit[3]~26_combout\ & ((\ML_Digit~28_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010101000000010100010100000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RESET~input_o\,
	datab => \ALT_INV_MH_Digit[3]~26_combout\,
	datac => \ALT_INV_ML_Digit[3]~_emulated_q\,
	datad => \ALT_INV_ML_Digit~28_combout\,
	dataf => \ALT_INV_ML_Digit[3]~13_combout\,
	combout => \ML_Digit[3]~14_combout\);

-- Location: LABCELL_X20_Y1_N36
\AM_PM_Flag~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \AM_PM_Flag~5_combout\ = ( \ML_Digit[1]~6_combout\ & ( \ML_Digit[3]~14_combout\ ) ) # ( !\ML_Digit[1]~6_combout\ & ( (\ML_Digit[3]~14_combout\ & ((\ML_Digit[2]~10_combout\) # (\ML_Digit[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ML_Digit[3]~14_combout\,
	datac => \ALT_INV_ML_Digit[0]~2_combout\,
	datad => \ALT_INV_ML_Digit[2]~10_combout\,
	dataf => \ALT_INV_ML_Digit[1]~6_combout\,
	combout => \AM_PM_Flag~5_combout\);

-- Location: LABCELL_X20_Y1_N57
\MH_Digit~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit~29_combout\ = ( \SETTING_MODE~input_o\ & ( \MH_Digit[2]~10_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_H[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD_H[2]~input_o\,
	datac => \ALT_INV_MH_Digit[2]~10_combout\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \MH_Digit~29_combout\);

-- Location: LABCELL_X20_Y1_N12
\MH_Digit[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[2]~9_combout\ = ( \MH_Digit~29_combout\ & ( (\RESET~input_o\ & ((\MH_Digit[2]~9_combout\) # (\MH_Digit[3]~26_combout\))) ) ) # ( !\MH_Digit~29_combout\ & ( (!\MH_Digit[3]~26_combout\ & (\RESET~input_o\ & \MH_Digit[2]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MH_Digit[3]~26_combout\,
	datac => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_MH_Digit[2]~9_combout\,
	dataf => \ALT_INV_MH_Digit~29_combout\,
	combout => \MH_Digit[2]~9_combout\);

-- Location: LABCELL_X20_Y1_N45
\MH_Digit~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit~30_combout\ = ( \SETTING_MODE~input_o\ & ( \MH_Digit[3]~14_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_H[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BCD_H[3]~input_o\,
	datad => \ALT_INV_MH_Digit[3]~14_combout\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \MH_Digit~30_combout\);

-- Location: LABCELL_X20_Y1_N6
\MH_Digit[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[3]~13_combout\ = ( \MH_Digit~30_combout\ & ( \RESET~input_o\ & ( (\MH_Digit[3]~26_combout\) # (\MH_Digit[3]~13_combout\) ) ) ) # ( !\MH_Digit~30_combout\ & ( \RESET~input_o\ & ( (\MH_Digit[3]~13_combout\ & !\MH_Digit[3]~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MH_Digit[3]~13_combout\,
	datad => \ALT_INV_MH_Digit[3]~26_combout\,
	datae => \ALT_INV_MH_Digit~30_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \MH_Digit[3]~13_combout\);

-- Location: LABCELL_X20_Y1_N24
\MH_Digit[3]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[3]~25_combout\ = ( \SH_Digit[3]~20_combout\ & ( (\SET_S~input_o\ & (\SET_H~input_o\ & (\AM_PM_Flag~5_combout\ & !\LessThan6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SET_S~input_o\,
	datab => \ALT_INV_SET_H~input_o\,
	datac => \ALT_INV_AM_PM_Flag~5_combout\,
	datad => \ALT_INV_LessThan6~0_combout\,
	dataf => \ALT_INV_SH_Digit[3]~20_combout\,
	combout => \MH_Digit[3]~25_combout\);

-- Location: FF_X20_Y1_N52
\MH_Digit[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \MH_Digit[3]~13_combout\,
	clrn => \ALT_INV_MH_Digit[0]~0_combout\,
	sload => VCC,
	ena => \MH_Digit[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MH_Digit[3]~_emulated_q\);

-- Location: LABCELL_X20_Y1_N48
\MH_Digit[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[3]~14_combout\ = ( \MH_Digit~30_combout\ & ( \MH_Digit[3]~13_combout\ & ( (\RESET~input_o\ & ((!\MH_Digit[3]~_emulated_q\) # (\MH_Digit[3]~26_combout\))) ) ) ) # ( !\MH_Digit~30_combout\ & ( \MH_Digit[3]~13_combout\ & ( 
-- (!\MH_Digit[3]~26_combout\ & (!\MH_Digit[3]~_emulated_q\ & \RESET~input_o\)) ) ) ) # ( \MH_Digit~30_combout\ & ( !\MH_Digit[3]~13_combout\ & ( (\RESET~input_o\ & ((\MH_Digit[3]~_emulated_q\) # (\MH_Digit[3]~26_combout\))) ) ) ) # ( !\MH_Digit~30_combout\ 
-- & ( !\MH_Digit[3]~13_combout\ & ( (!\MH_Digit[3]~26_combout\ & (\MH_Digit[3]~_emulated_q\ & \RESET~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000001110000011100001000000010000000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[3]~26_combout\,
	datab => \ALT_INV_MH_Digit[3]~_emulated_q\,
	datac => \ALT_INV_RESET~input_o\,
	datae => \ALT_INV_MH_Digit~30_combout\,
	dataf => \ALT_INV_MH_Digit[3]~13_combout\,
	combout => \MH_Digit[3]~14_combout\);

-- Location: LABCELL_X21_Y1_N48
\MH_Digit~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit~28_combout\ = ( \BCD_H[1]~input_o\ & ( \SETTING_MODE~input_o\ & ( \MH_Digit[1]~6_combout\ ) ) ) # ( !\BCD_H[1]~input_o\ & ( \SETTING_MODE~input_o\ & ( \MH_Digit[1]~6_combout\ ) ) ) # ( \BCD_H[1]~input_o\ & ( !\SETTING_MODE~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MH_Digit[1]~6_combout\,
	datae => \ALT_INV_BCD_H[1]~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \MH_Digit~28_combout\);

-- Location: LABCELL_X21_Y1_N15
\MH_Digit[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[1]~5_combout\ = ( \RESET~input_o\ & ( (!\MH_Digit[3]~26_combout\ & (\MH_Digit[1]~5_combout\)) # (\MH_Digit[3]~26_combout\ & ((\MH_Digit~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MH_Digit[1]~5_combout\,
	datac => \ALT_INV_MH_Digit~28_combout\,
	datad => \ALT_INV_MH_Digit[3]~26_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \MH_Digit[1]~5_combout\);

-- Location: LABCELL_X21_Y1_N57
\MH_Digit~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit~27_combout\ = ( \SETTING_MODE~input_o\ & ( \MH_Digit[0]~2_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_H[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[0]~2_combout\,
	datad => \ALT_INV_BCD_H[0]~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \MH_Digit~27_combout\);

-- Location: LABCELL_X21_Y1_N33
\MH_Digit[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[0]~1_combout\ = ( \MH_Digit~27_combout\ & ( \RESET~input_o\ & ( (\MH_Digit[0]~1_combout\) # (\MH_Digit[3]~26_combout\) ) ) ) # ( !\MH_Digit~27_combout\ & ( \RESET~input_o\ & ( (!\MH_Digit[3]~26_combout\ & \MH_Digit[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[3]~26_combout\,
	datad => \ALT_INV_MH_Digit[0]~1_combout\,
	datae => \ALT_INV_MH_Digit~27_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \MH_Digit[0]~1_combout\);

-- Location: LABCELL_X21_Y1_N21
\MH_Digit[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[0]~3_combout\ = ( \MH_Digit[0]~2_combout\ & ( \MH_Digit[0]~1_combout\ ) ) # ( !\MH_Digit[0]~2_combout\ & ( \MH_Digit[0]~1_combout\ & ( (\LessThan8~1_combout\) # (\MH_Digit[3]~14_combout\) ) ) ) # ( !\MH_Digit[0]~2_combout\ & ( 
-- !\MH_Digit[0]~1_combout\ & ( (!\MH_Digit[3]~14_combout\ & !\LessThan8~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MH_Digit[3]~14_combout\,
	datad => \ALT_INV_LessThan8~1_combout\,
	datae => \ALT_INV_MH_Digit[0]~2_combout\,
	dataf => \ALT_INV_MH_Digit[0]~1_combout\,
	combout => \MH_Digit[0]~3_combout\);

-- Location: FF_X21_Y1_N22
\MH_Digit[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \MH_Digit[0]~3_combout\,
	clrn => \ALT_INV_MH_Digit[0]~0_combout\,
	ena => \MH_Digit[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MH_Digit[0]~_emulated_q\);

-- Location: LABCELL_X21_Y1_N0
\MH_Digit[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[0]~2_combout\ = ( \MH_Digit[0]~_emulated_q\ & ( \MH_Digit[0]~1_combout\ & ( (\MH_Digit[3]~26_combout\ & (\RESET~input_o\ & \MH_Digit~27_combout\)) ) ) ) # ( !\MH_Digit[0]~_emulated_q\ & ( \MH_Digit[0]~1_combout\ & ( (\RESET~input_o\ & 
-- ((!\MH_Digit[3]~26_combout\) # (\MH_Digit~27_combout\))) ) ) ) # ( \MH_Digit[0]~_emulated_q\ & ( !\MH_Digit[0]~1_combout\ & ( (\RESET~input_o\ & ((!\MH_Digit[3]~26_combout\) # (\MH_Digit~27_combout\))) ) ) ) # ( !\MH_Digit[0]~_emulated_q\ & ( 
-- !\MH_Digit[0]~1_combout\ & ( (\MH_Digit[3]~26_combout\ & (\RESET~input_o\ & \MH_Digit~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001001000100011001100100010001100110000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[3]~26_combout\,
	datab => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_MH_Digit~27_combout\,
	datae => \ALT_INV_MH_Digit[0]~_emulated_q\,
	dataf => \ALT_INV_MH_Digit[0]~1_combout\,
	combout => \MH_Digit[0]~2_combout\);

-- Location: LABCELL_X21_Y1_N54
\LessThan8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = ( \MH_Digit[2]~10_combout\ & ( (\MH_Digit[1]~6_combout\) # (\MH_Digit[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[0]~2_combout\,
	datab => \ALT_INV_MH_Digit[1]~6_combout\,
	dataf => \ALT_INV_MH_Digit[2]~10_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LABCELL_X21_Y1_N45
\Add4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = ( \MH_Digit[1]~6_combout\ & ( !\MH_Digit[0]~2_combout\ ) ) # ( !\MH_Digit[1]~6_combout\ & ( \MH_Digit[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_MH_Digit[0]~2_combout\,
	dataf => \ALT_INV_MH_Digit[1]~6_combout\,
	combout => \Add4~0_combout\);

-- Location: LABCELL_X21_Y1_N39
\MH_Digit[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[1]~7_combout\ = ( \Add4~0_combout\ & ( !\MH_Digit[1]~5_combout\ $ (((\LessThan8~1_combout\) # (\MH_Digit[3]~14_combout\))) ) ) # ( !\Add4~0_combout\ & ( \MH_Digit[1]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101001010101010101010101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[1]~5_combout\,
	datac => \ALT_INV_MH_Digit[3]~14_combout\,
	datad => \ALT_INV_LessThan8~1_combout\,
	datae => \ALT_INV_Add4~0_combout\,
	combout => \MH_Digit[1]~7_combout\);

-- Location: FF_X21_Y1_N40
\MH_Digit[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \MH_Digit[1]~7_combout\,
	clrn => \ALT_INV_MH_Digit[0]~0_combout\,
	ena => \MH_Digit[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MH_Digit[1]~_emulated_q\);

-- Location: LABCELL_X21_Y1_N42
\MH_Digit[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[1]~6_combout\ = ( \MH_Digit[1]~5_combout\ & ( (\RESET~input_o\ & ((!\MH_Digit[3]~26_combout\ & (!\MH_Digit[1]~_emulated_q\)) # (\MH_Digit[3]~26_combout\ & ((\MH_Digit~28_combout\))))) ) ) # ( !\MH_Digit[1]~5_combout\ & ( (\RESET~input_o\ & 
-- ((!\MH_Digit[3]~26_combout\ & (\MH_Digit[1]~_emulated_q\)) # (\MH_Digit[3]~26_combout\ & ((\MH_Digit~28_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000100011010000000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[3]~26_combout\,
	datab => \ALT_INV_MH_Digit[1]~_emulated_q\,
	datac => \ALT_INV_MH_Digit~28_combout\,
	datad => \ALT_INV_RESET~input_o\,
	dataf => \ALT_INV_MH_Digit[1]~5_combout\,
	combout => \MH_Digit[1]~6_combout\);

-- Location: LABCELL_X21_Y1_N27
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = ( \MH_Digit[0]~2_combout\ & ( \MH_Digit[2]~10_combout\ & ( !\MH_Digit[1]~6_combout\ ) ) ) # ( !\MH_Digit[0]~2_combout\ & ( \MH_Digit[2]~10_combout\ ) ) # ( \MH_Digit[0]~2_combout\ & ( !\MH_Digit[2]~10_combout\ & ( 
-- \MH_Digit[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MH_Digit[1]~6_combout\,
	datae => \ALT_INV_MH_Digit[0]~2_combout\,
	dataf => \ALT_INV_MH_Digit[2]~10_combout\,
	combout => \Add4~1_combout\);

-- Location: LABCELL_X20_Y1_N21
\MH_Digit[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[2]~11_combout\ = ( \Add4~1_combout\ & ( \LessThan8~1_combout\ & ( \MH_Digit[2]~9_combout\ ) ) ) # ( !\Add4~1_combout\ & ( \LessThan8~1_combout\ & ( \MH_Digit[2]~9_combout\ ) ) ) # ( \Add4~1_combout\ & ( !\LessThan8~1_combout\ & ( 
-- !\MH_Digit[2]~9_combout\ $ (\MH_Digit[3]~14_combout\) ) ) ) # ( !\Add4~1_combout\ & ( !\LessThan8~1_combout\ & ( \MH_Digit[2]~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101001011010010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[2]~9_combout\,
	datac => \ALT_INV_MH_Digit[3]~14_combout\,
	datae => \ALT_INV_Add4~1_combout\,
	dataf => \ALT_INV_LessThan8~1_combout\,
	combout => \MH_Digit[2]~11_combout\);

-- Location: FF_X20_Y1_N22
\MH_Digit[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \MH_Digit[2]~11_combout\,
	clrn => \ALT_INV_MH_Digit[0]~0_combout\,
	ena => \MH_Digit[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MH_Digit[2]~_emulated_q\);

-- Location: LABCELL_X20_Y1_N42
\MH_Digit[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MH_Digit[2]~10_combout\ = ( \MH_Digit[2]~9_combout\ & ( (\RESET~input_o\ & ((!\MH_Digit[3]~26_combout\ & (!\MH_Digit[2]~_emulated_q\)) # (\MH_Digit[3]~26_combout\ & ((\MH_Digit~29_combout\))))) ) ) # ( !\MH_Digit[2]~9_combout\ & ( (\RESET~input_o\ & 
-- ((!\MH_Digit[3]~26_combout\ & (\MH_Digit[2]~_emulated_q\)) # (\MH_Digit[3]~26_combout\ & ((\MH_Digit~29_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011100001000000011010000100000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[3]~26_combout\,
	datab => \ALT_INV_MH_Digit[2]~_emulated_q\,
	datac => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_MH_Digit~29_combout\,
	dataf => \ALT_INV_MH_Digit[2]~9_combout\,
	combout => \MH_Digit[2]~10_combout\);

-- Location: LABCELL_X24_Y1_N36
\LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = ( !\MH_Digit[3]~14_combout\ & ( (!\MH_Digit[2]~10_combout\) # ((!\MH_Digit[1]~6_combout\ & !\MH_Digit[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100111111001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MH_Digit[2]~10_combout\,
	datac => \ALT_INV_MH_Digit[1]~6_combout\,
	datad => \ALT_INV_MH_Digit[0]~2_combout\,
	dataf => \ALT_INV_MH_Digit[3]~14_combout\,
	combout => \LessThan8~0_combout\);

-- Location: LABCELL_X24_Y1_N33
\AM_PM_Flag~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \AM_PM_Flag~6_combout\ = ( !\LessThan8~0_combout\ & ( \SET_M~input_o\ & ( (\SET_S~input_o\ & (\SH_Digit[3]~20_combout\ & (\AM_PM_Flag~5_combout\ & !\LessThan6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SET_S~input_o\,
	datab => \ALT_INV_SH_Digit[3]~20_combout\,
	datac => \ALT_INV_AM_PM_Flag~5_combout\,
	datad => \ALT_INV_LessThan6~0_combout\,
	datae => \ALT_INV_LessThan8~0_combout\,
	dataf => \ALT_INV_SET_M~input_o\,
	combout => \AM_PM_Flag~6_combout\);

-- Location: LABCELL_X26_Y1_N36
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\BCD_H[1]~input_o\ & ( !\BCD_H[3]~input_o\ & ( !\BCD_H[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD_H[2]~input_o\,
	datae => \ALT_INV_BCD_H[1]~input_o\,
	dataf => \ALT_INV_BCD_H[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X23_Y1_N33
\HL_Digit~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit~26_combout\ = ( \BCD_L[2]~input_o\ & ( ((!\BCD_H[0]~input_o\ & \Equal0~0_combout\)) # (\BCD_L[1]~input_o\) ) ) # ( !\BCD_L[2]~input_o\ & ( (\BCD_L[3]~input_o\ & (!\BCD_L[1]~input_o\ & ((!\Equal0~0_combout\) # (\BCD_H[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000100010001000000010000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD_L[3]~input_o\,
	datab => \ALT_INV_BCD_L[1]~input_o\,
	datac => \ALT_INV_BCD_H[0]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_BCD_L[2]~input_o\,
	combout => \HL_Digit~26_combout\);

-- Location: LABCELL_X24_Y1_N9
\HL_Digit~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit~27_combout\ = ( \SETTING_MODE~input_o\ & ( \HL_Digit[2]~6_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \HL_Digit~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HL_Digit[2]~6_combout\,
	datad => \ALT_INV_HL_Digit~26_combout\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \HL_Digit~27_combout\);

-- Location: MLABCELL_X23_Y1_N42
\process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = ( !\BCD_L[2]~input_o\ & ( (!\BCD_L[3]~input_o\ & ((!\BCD_L[0]~input_o\) # (!\BCD_L[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD_L[0]~input_o\,
	datab => \ALT_INV_BCD_L[1]~input_o\,
	datac => \ALT_INV_BCD_L[3]~input_o\,
	dataf => \ALT_INV_BCD_L[2]~input_o\,
	combout => \process_1~1_combout\);

-- Location: MLABCELL_X23_Y1_N6
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( !\BCD_L[2]~input_o\ & ( (!\BCD_L[1]~input_o\ & !\BCD_L[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BCD_L[1]~input_o\,
	datac => \ALT_INV_BCD_L[3]~input_o\,
	dataf => \ALT_INV_BCD_L[2]~input_o\,
	combout => \LessThan4~0_combout\);

-- Location: MLABCELL_X23_Y1_N3
\HL_Digit~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit~28_combout\ = ( \BCD_L[1]~input_o\ & ( \BCD_H[0]~input_o\ & ( (!\Equal0~0_combout\ & ((!\LessThan4~0_combout\))) # (\Equal0~0_combout\ & (!\process_1~1_combout\)) ) ) ) # ( !\BCD_L[1]~input_o\ & ( \BCD_H[0]~input_o\ & ( (!\Equal0~0_combout\ & 
-- ((\LessThan4~0_combout\))) # (\Equal0~0_combout\ & (\process_1~1_combout\)) ) ) ) # ( \BCD_L[1]~input_o\ & ( !\BCD_H[0]~input_o\ & ( (!\Equal0~0_combout\ & !\LessThan4~0_combout\) ) ) ) # ( !\BCD_L[1]~input_o\ & ( !\BCD_H[0]~input_o\ & ( 
-- (\LessThan4~0_combout\) # (\Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111101000001010000000011011000110111110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_process_1~1_combout\,
	datac => \ALT_INV_LessThan4~0_combout\,
	datae => \ALT_INV_BCD_L[1]~input_o\,
	dataf => \ALT_INV_BCD_H[0]~input_o\,
	combout => \HL_Digit~28_combout\);

-- Location: LABCELL_X24_Y1_N42
\HL_Digit~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit~29_combout\ = ( \SETTING_MODE~input_o\ & ( \HL_Digit[1]~10_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( !\HL_Digit~28_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HL_Digit~28_combout\,
	datad => \ALT_INV_HL_Digit[1]~10_combout\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \HL_Digit~29_combout\);

-- Location: LABCELL_X24_Y1_N21
\HL_Digit[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit[1]~9_combout\ = ( \RESET~input_o\ & ( (!\AM_PM_Flag~7_combout\ & (\HL_Digit[1]~9_combout\)) # (\AM_PM_Flag~7_combout\ & ((\HL_Digit~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HL_Digit[1]~9_combout\,
	datac => \ALT_INV_HL_Digit~29_combout\,
	datad => \ALT_INV_AM_PM_Flag~7_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \HL_Digit[1]~9_combout\);

-- Location: LABCELL_X25_Y1_N21
\HL_Digit~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit~30_combout\ = ( \SETTING_MODE~input_o\ & ( \HL_Digit[0]~14_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \BCD_L[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HL_Digit[0]~14_combout\,
	datad => \ALT_INV_BCD_L[0]~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \HL_Digit~30_combout\);

-- Location: LABCELL_X25_Y1_N12
\HL_Digit[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit[0]~13_combout\ = ( \HL_Digit~30_combout\ & ( (\RESET~input_o\ & ((\HL_Digit[0]~13_combout\) # (\AM_PM_Flag~7_combout\))) ) ) # ( !\HL_Digit~30_combout\ & ( (!\AM_PM_Flag~7_combout\ & (\HL_Digit[0]~13_combout\ & \RESET~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AM_PM_Flag~7_combout\,
	datac => \ALT_INV_HL_Digit[0]~13_combout\,
	datad => \ALT_INV_RESET~input_o\,
	dataf => \ALT_INV_HL_Digit~30_combout\,
	combout => \HL_Digit[0]~13_combout\);

-- Location: MLABCELL_X23_Y1_N12
\HL_Digit~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit~24_combout\ = ( \BCD_L[2]~input_o\ & ( \BCD_L[3]~input_o\ ) ) # ( !\BCD_L[2]~input_o\ & ( (!\BCD_L[3]~input_o\ & (((!\Equal0~0_combout\ & !\BCD_L[1]~input_o\)))) # (\BCD_L[3]~input_o\ & (((!\BCD_H[0]~input_o\ & \Equal0~0_combout\)) # 
-- (\BCD_L[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010001010101101001000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD_L[3]~input_o\,
	datab => \ALT_INV_BCD_H[0]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_BCD_L[1]~input_o\,
	dataf => \ALT_INV_BCD_L[2]~input_o\,
	combout => \HL_Digit~24_combout\);

-- Location: LABCELL_X25_Y1_N39
\HL_Digit~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit~25_combout\ = ( \SETTING_MODE~input_o\ & ( \HL_Digit[3]~2_combout\ ) ) # ( !\SETTING_MODE~input_o\ & ( \HL_Digit~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HL_Digit~24_combout\,
	datad => \ALT_INV_HL_Digit[3]~2_combout\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \HL_Digit~25_combout\);

-- Location: LABCELL_X25_Y1_N57
\HL_Digit[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit[3]~1_combout\ = ( \RESET~input_o\ & ( (!\AM_PM_Flag~7_combout\ & ((\HL_Digit[3]~1_combout\))) # (\AM_PM_Flag~7_combout\ & (\HL_Digit~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HL_Digit~25_combout\,
	datac => \ALT_INV_AM_PM_Flag~7_combout\,
	datad => \ALT_INV_HL_Digit[3]~1_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \HL_Digit[3]~1_combout\);

-- Location: LABCELL_X26_Y1_N42
\Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = ( \HL_Digit[1]~10_combout\ & ( \HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_HL_Digit[0]~14_combout\,
	datae => \ALT_INV_HL_Digit[1]~10_combout\,
	dataf => \ALT_INV_HL_Digit[2]~6_combout\,
	combout => \Add3~0_combout\);

-- Location: LABCELL_X25_Y1_N24
\HL_Digit[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit[3]~3_combout\ = ( \Add3~0_combout\ & ( !\HL_Digit[3]~1_combout\ $ (((!\HH_Digit~13_combout\) # (\HL_Digit[3]~2_combout\))) ) ) # ( !\Add3~0_combout\ & ( !\HL_Digit[3]~1_combout\ $ (((!\HH_Digit~13_combout\) # (!\HL_Digit[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000111100001100110011110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HL_Digit[3]~1_combout\,
	datac => \ALT_INV_HH_Digit~13_combout\,
	datad => \ALT_INV_HL_Digit[3]~2_combout\,
	dataf => \ALT_INV_Add3~0_combout\,
	combout => \HL_Digit[3]~3_combout\);

-- Location: LABCELL_X25_Y1_N42
\HH_Digit[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit[1]~0_combout\ = ( \AM_PM_Flag~7_combout\ ) # ( !\AM_PM_Flag~7_combout\ & ( !\RESET~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_RESET~input_o\,
	dataf => \ALT_INV_AM_PM_Flag~7_combout\,
	combout => \HH_Digit[1]~0_combout\);

-- Location: FF_X25_Y1_N25
\HL_Digit[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HL_Digit[3]~3_combout\,
	clrn => \ALT_INV_HH_Digit[1]~0_combout\,
	ena => \AM_PM_Flag~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HL_Digit[3]~_emulated_q\);

-- Location: LABCELL_X25_Y1_N45
\HL_Digit[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit[3]~2_combout\ = ( \HL_Digit[3]~1_combout\ & ( (\RESET~input_o\ & ((!\AM_PM_Flag~7_combout\ & ((!\HL_Digit[3]~_emulated_q\))) # (\AM_PM_Flag~7_combout\ & (\HL_Digit~25_combout\)))) ) ) # ( !\HL_Digit[3]~1_combout\ & ( (\RESET~input_o\ & 
-- ((!\AM_PM_Flag~7_combout\ & ((\HL_Digit[3]~_emulated_q\))) # (\AM_PM_Flag~7_combout\ & (\HL_Digit~25_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010101000101000000010100010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RESET~input_o\,
	datab => \ALT_INV_AM_PM_Flag~7_combout\,
	datac => \ALT_INV_HL_Digit~25_combout\,
	datad => \ALT_INV_HL_Digit[3]~_emulated_q\,
	dataf => \ALT_INV_HL_Digit[3]~1_combout\,
	combout => \HL_Digit[3]~2_combout\);

-- Location: LABCELL_X24_Y1_N54
\HH_Digit~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit~16_combout\ = ( \process_1~1_combout\ & ( \SETTING_MODE~input_o\ & ( \HH_Digit[0]~6_combout\ ) ) ) # ( !\process_1~1_combout\ & ( \SETTING_MODE~input_o\ & ( \HH_Digit[0]~6_combout\ ) ) ) # ( \process_1~1_combout\ & ( !\SETTING_MODE~input_o\ & ( 
-- (!\Equal0~0_combout\ & (!\LessThan4~0_combout\)) # (\Equal0~0_combout\ & ((\BCD_H[0]~input_o\))) ) ) ) # ( !\process_1~1_combout\ & ( !\SETTING_MODE~input_o\ & ( (!\LessThan4~0_combout\ & !\Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan4~0_combout\,
	datab => \ALT_INV_BCD_H[0]~input_o\,
	datac => \ALT_INV_HH_Digit[0]~6_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_process_1~1_combout\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \HH_Digit~16_combout\);

-- Location: LABCELL_X24_Y1_N12
\HH_Digit[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit[0]~5_combout\ = ( \RESET~input_o\ & ( (!\AM_PM_Flag~7_combout\ & (\HH_Digit[0]~5_combout\)) # (\AM_PM_Flag~7_combout\ & ((\HH_Digit~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HH_Digit[0]~5_combout\,
	datac => \ALT_INV_HH_Digit~16_combout\,
	datad => \ALT_INV_AM_PM_Flag~7_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \HH_Digit[0]~5_combout\);

-- Location: LABCELL_X21_Y1_N6
\AM_PM_Flag~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \AM_PM_Flag~8_combout\ = ( \MH_Digit[3]~14_combout\ & ( \MH_Digit[2]~10_combout\ & ( \SET_M~input_o\ ) ) ) # ( !\MH_Digit[3]~14_combout\ & ( \MH_Digit[2]~10_combout\ & ( (\SET_M~input_o\ & ((\MH_Digit[1]~6_combout\) # (\MH_Digit[0]~2_combout\))) ) ) ) # ( 
-- \MH_Digit[3]~14_combout\ & ( !\MH_Digit[2]~10_combout\ & ( \SET_M~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SET_M~input_o\,
	datac => \ALT_INV_MH_Digit[0]~2_combout\,
	datad => \ALT_INV_MH_Digit[1]~6_combout\,
	datae => \ALT_INV_MH_Digit[3]~14_combout\,
	dataf => \ALT_INV_MH_Digit[2]~10_combout\,
	combout => \AM_PM_Flag~8_combout\);

-- Location: LABCELL_X24_Y1_N30
\HH_Digit[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit[3]~15_combout\ = ( !\HH_Digit~13_combout\ & ( \AM_PM_Flag~8_combout\ & ( (\SET_S~input_o\ & (\SH_Digit[3]~20_combout\ & (!\LessThan6~0_combout\ & \AM_PM_Flag~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SET_S~input_o\,
	datab => \ALT_INV_SH_Digit[3]~20_combout\,
	datac => \ALT_INV_LessThan6~0_combout\,
	datad => \ALT_INV_AM_PM_Flag~5_combout\,
	datae => \ALT_INV_HH_Digit~13_combout\,
	dataf => \ALT_INV_AM_PM_Flag~8_combout\,
	combout => \HH_Digit[3]~15_combout\);

-- Location: LABCELL_X24_Y1_N27
\HH_Digit[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit[0]~7_combout\ = ( \HH_Digit[0]~6_combout\ & ( !\HH_Digit[0]~5_combout\ $ (\HH_Digit[3]~15_combout\) ) ) # ( !\HH_Digit[0]~6_combout\ & ( !\HH_Digit[0]~5_combout\ $ (((!\HH_Digit[3]~15_combout\) # (\HH_Digit[1]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110011001111000011001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HH_Digit[0]~5_combout\,
	datac => \ALT_INV_HH_Digit[3]~15_combout\,
	datad => \ALT_INV_HH_Digit[1]~2_combout\,
	dataf => \ALT_INV_HH_Digit[0]~6_combout\,
	combout => \HH_Digit[0]~7_combout\);

-- Location: FF_X24_Y1_N28
\HH_Digit[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HH_Digit[0]~7_combout\,
	clrn => \ALT_INV_HH_Digit[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HH_Digit[0]~_emulated_q\);

-- Location: LABCELL_X24_Y1_N24
\HH_Digit[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit[0]~6_combout\ = ( \HH_Digit[0]~_emulated_q\ & ( (\RESET~input_o\ & ((!\AM_PM_Flag~7_combout\ & (!\HH_Digit[0]~5_combout\)) # (\AM_PM_Flag~7_combout\ & ((\HH_Digit~16_combout\))))) ) ) # ( !\HH_Digit[0]~_emulated_q\ & ( (\RESET~input_o\ & 
-- ((!\AM_PM_Flag~7_combout\ & (\HH_Digit[0]~5_combout\)) # (\AM_PM_Flag~7_combout\ & ((\HH_Digit~16_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011100001000000011010000100000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AM_PM_Flag~7_combout\,
	datab => \ALT_INV_HH_Digit[0]~5_combout\,
	datac => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_HH_Digit~16_combout\,
	dataf => \ALT_INV_HH_Digit[0]~_emulated_q\,
	combout => \HH_Digit[0]~6_combout\);

-- Location: LABCELL_X26_Y1_N54
\HH_Digit~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit~18_combout\ = ( !\HH_Digit[0]~6_combout\ & ( \HL_Digit[2]~6_combout\ & ( !\HH_Digit[1]~2_combout\ ) ) ) # ( \HH_Digit[0]~6_combout\ & ( !\HL_Digit[2]~6_combout\ & ( (!\HL_Digit[0]~14_combout\ & (!\HL_Digit[3]~2_combout\ & 
-- !\HL_Digit[1]~10_combout\)) ) ) ) # ( !\HH_Digit[0]~6_combout\ & ( !\HL_Digit[2]~6_combout\ & ( (!\HH_Digit[1]~2_combout\) # ((!\HL_Digit[0]~14_combout\ & (!\HL_Digit[3]~2_combout\ & !\HL_Digit[1]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101010110000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HH_Digit[1]~2_combout\,
	datab => \ALT_INV_HL_Digit[0]~14_combout\,
	datac => \ALT_INV_HL_Digit[3]~2_combout\,
	datad => \ALT_INV_HL_Digit[1]~10_combout\,
	datae => \ALT_INV_HH_Digit[0]~6_combout\,
	dataf => \ALT_INV_HL_Digit[2]~6_combout\,
	combout => \HH_Digit~18_combout\);

-- Location: MLABCELL_X23_Y1_N54
\HH_Digit~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit~17_combout\ = ( !\HH_Digit[1]~2_combout\ & ( \HL_Digit[3]~2_combout\ & ( (!\HH_Digit[0]~6_combout\ & (((\HL_Digit[2]~6_combout\) # (\HL_Digit[0]~14_combout\)) # (\HL_Digit[1]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HL_Digit[1]~10_combout\,
	datab => \ALT_INV_HL_Digit[0]~14_combout\,
	datac => \ALT_INV_HL_Digit[2]~6_combout\,
	datad => \ALT_INV_HH_Digit[0]~6_combout\,
	datae => \ALT_INV_HH_Digit[1]~2_combout\,
	dataf => \ALT_INV_HL_Digit[3]~2_combout\,
	combout => \HH_Digit~17_combout\);

-- Location: LABCELL_X24_Y1_N45
\HL_Digit[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit[0]~15_combout\ = ( \HH_Digit~17_combout\ & ( \HL_Digit[0]~13_combout\ ) ) # ( !\HH_Digit~17_combout\ & ( !\HL_Digit[0]~13_combout\ $ (((!\HH_Digit~18_combout\) # (\HL_Digit[0]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000011111010010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HL_Digit[0]~14_combout\,
	datac => \ALT_INV_HL_Digit[0]~13_combout\,
	datad => \ALT_INV_HH_Digit~18_combout\,
	dataf => \ALT_INV_HH_Digit~17_combout\,
	combout => \HL_Digit[0]~15_combout\);

-- Location: FF_X24_Y1_N47
\HL_Digit[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HL_Digit[0]~15_combout\,
	clrn => \ALT_INV_HH_Digit[1]~0_combout\,
	ena => \AM_PM_Flag~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HL_Digit[0]~_emulated_q\);

-- Location: LABCELL_X25_Y1_N18
\HL_Digit[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit[0]~14_combout\ = ( \HL_Digit[0]~13_combout\ & ( (\RESET~input_o\ & ((!\AM_PM_Flag~7_combout\ & (!\HL_Digit[0]~_emulated_q\)) # (\AM_PM_Flag~7_combout\ & ((\HL_Digit~30_combout\))))) ) ) # ( !\HL_Digit[0]~13_combout\ & ( (\RESET~input_o\ & 
-- ((!\AM_PM_Flag~7_combout\ & (\HL_Digit[0]~_emulated_q\)) # (\AM_PM_Flag~7_combout\ & ((\HL_Digit~30_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100100000001100010010000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AM_PM_Flag~7_combout\,
	datab => \ALT_INV_RESET~input_o\,
	datac => \ALT_INV_HL_Digit[0]~_emulated_q\,
	datad => \ALT_INV_HL_Digit~30_combout\,
	dataf => \ALT_INV_HL_Digit[0]~13_combout\,
	combout => \HL_Digit[0]~14_combout\);

-- Location: LABCELL_X24_Y1_N18
\HL_Digit[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit[1]~11_combout\ = !\HL_Digit[1]~9_combout\ $ (((!\HH_Digit~13_combout\) # (!\HL_Digit[0]~14_combout\ $ (\HL_Digit[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001100101010101100110010101010110011001010101011001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HL_Digit[1]~9_combout\,
	datab => \ALT_INV_HH_Digit~13_combout\,
	datac => \ALT_INV_HL_Digit[0]~14_combout\,
	datad => \ALT_INV_HL_Digit[1]~10_combout\,
	combout => \HL_Digit[1]~11_combout\);

-- Location: FF_X24_Y1_N19
\HL_Digit[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HL_Digit[1]~11_combout\,
	clrn => \ALT_INV_HH_Digit[1]~0_combout\,
	ena => \AM_PM_Flag~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HL_Digit[1]~_emulated_q\);

-- Location: LABCELL_X24_Y1_N3
\HL_Digit[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit[1]~10_combout\ = ( \HL_Digit~29_combout\ & ( (\RESET~input_o\ & ((!\HL_Digit[1]~_emulated_q\ $ (!\HL_Digit[1]~9_combout\)) # (\AM_PM_Flag~7_combout\))) ) ) # ( !\HL_Digit~29_combout\ & ( (\RESET~input_o\ & (!\AM_PM_Flag~7_combout\ & 
-- (!\HL_Digit[1]~_emulated_q\ $ (!\HL_Digit[1]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000000100000100000000010101010001010001010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RESET~input_o\,
	datab => \ALT_INV_HL_Digit[1]~_emulated_q\,
	datac => \ALT_INV_AM_PM_Flag~7_combout\,
	datad => \ALT_INV_HL_Digit[1]~9_combout\,
	dataf => \ALT_INV_HL_Digit~29_combout\,
	combout => \HL_Digit[1]~10_combout\);

-- Location: LABCELL_X25_Y1_N15
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = ( \HL_Digit[0]~14_combout\ & ( \HL_Digit[1]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HL_Digit[1]~10_combout\,
	dataf => \ALT_INV_HL_Digit[0]~14_combout\,
	combout => \Add3~1_combout\);

-- Location: LABCELL_X24_Y1_N48
\HL_Digit[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit[2]~5_combout\ = ( \RESET~input_o\ & ( (!\AM_PM_Flag~7_combout\ & ((\HL_Digit[2]~5_combout\))) # (\AM_PM_Flag~7_combout\ & (\HL_Digit~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HL_Digit~27_combout\,
	datac => \ALT_INV_HL_Digit[2]~5_combout\,
	datad => \ALT_INV_AM_PM_Flag~7_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \HL_Digit[2]~5_combout\);

-- Location: LABCELL_X24_Y1_N39
\HL_Digit[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit[2]~7_combout\ = ( \HL_Digit[2]~5_combout\ & ( (!\HH_Digit~13_combout\) # (!\Add3~1_combout\ $ (\HL_Digit[2]~6_combout\)) ) ) # ( !\HL_Digit[2]~5_combout\ & ( (\HH_Digit~13_combout\ & (!\Add3~1_combout\ $ (!\HL_Digit[2]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101011111111101001011111111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_combout\,
	datac => \ALT_INV_HL_Digit[2]~6_combout\,
	datad => \ALT_INV_HH_Digit~13_combout\,
	dataf => \ALT_INV_HL_Digit[2]~5_combout\,
	combout => \HL_Digit[2]~7_combout\);

-- Location: FF_X24_Y1_N40
\HL_Digit[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HL_Digit[2]~7_combout\,
	clrn => \ALT_INV_HH_Digit[1]~0_combout\,
	ena => \AM_PM_Flag~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HL_Digit[2]~_emulated_q\);

-- Location: LABCELL_X24_Y1_N6
\HL_Digit[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HL_Digit[2]~6_combout\ = ( \HL_Digit[2]~5_combout\ & ( (\RESET~input_o\ & ((!\AM_PM_Flag~7_combout\ & ((!\HL_Digit[2]~_emulated_q\))) # (\AM_PM_Flag~7_combout\ & (\HL_Digit~27_combout\)))) ) ) # ( !\HL_Digit[2]~5_combout\ & ( (\RESET~input_o\ & 
-- ((!\AM_PM_Flag~7_combout\ & ((\HL_Digit[2]~_emulated_q\))) # (\AM_PM_Flag~7_combout\ & (\HL_Digit~27_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110100001101000000010000110100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HL_Digit~27_combout\,
	datab => \ALT_INV_AM_PM_Flag~7_combout\,
	datac => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_HL_Digit[2]~_emulated_q\,
	dataf => \ALT_INV_HL_Digit[2]~5_combout\,
	combout => \HL_Digit[2]~6_combout\);

-- Location: LABCELL_X25_Y1_N48
\HH_Digit~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit~13_combout\ = ( !\HH_Digit[0]~6_combout\ & ( \HL_Digit[1]~10_combout\ & ( (!\HL_Digit[3]~2_combout\ & !\HH_Digit[1]~2_combout\) ) ) ) # ( \HH_Digit[0]~6_combout\ & ( !\HL_Digit[1]~10_combout\ & ( (!\HL_Digit[2]~6_combout\ & 
-- (!\HL_Digit[3]~2_combout\ & !\HL_Digit[0]~14_combout\)) ) ) ) # ( !\HH_Digit[0]~6_combout\ & ( !\HL_Digit[1]~10_combout\ & ( (!\HL_Digit[3]~2_combout\ & ((!\HH_Digit[1]~2_combout\) # ((!\HL_Digit[2]~6_combout\ & !\HL_Digit[0]~14_combout\)))) # 
-- (\HL_Digit[3]~2_combout\ & (!\HL_Digit[2]~6_combout\ & (!\HL_Digit[0]~14_combout\ & !\HH_Digit[1]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110010000000100000001000000011001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HL_Digit[2]~6_combout\,
	datab => \ALT_INV_HL_Digit[3]~2_combout\,
	datac => \ALT_INV_HL_Digit[0]~14_combout\,
	datad => \ALT_INV_HH_Digit[1]~2_combout\,
	datae => \ALT_INV_HH_Digit[0]~6_combout\,
	dataf => \ALT_INV_HL_Digit[1]~10_combout\,
	combout => \HH_Digit~13_combout\);

-- Location: LABCELL_X25_Y1_N3
\HH_Digit[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit[1]~3_combout\ = ( \HH_Digit~13_combout\ & ( !\HH_Digit[1]~1_combout\ $ (!\HH_Digit[1]~2_combout\) ) ) # ( !\HH_Digit~13_combout\ & ( !\HH_Digit[1]~1_combout\ $ (((!\HH_Digit[1]~2_combout\) # (\AM_PM_Flag~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HH_Digit[1]~1_combout\,
	datac => \ALT_INV_HH_Digit[1]~2_combout\,
	datad => \ALT_INV_AM_PM_Flag~6_combout\,
	dataf => \ALT_INV_HH_Digit~13_combout\,
	combout => \HH_Digit[1]~3_combout\);

-- Location: FF_X25_Y1_N4
\HH_Digit[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HH_Digit[1]~3_combout\,
	clrn => \ALT_INV_HH_Digit[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HH_Digit[1]~_emulated_q\);

-- Location: LABCELL_X25_Y1_N30
\HH_Digit[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit[1]~2_combout\ = ( \HH_Digit[1]~1_combout\ & ( (\RESET~input_o\ & ((!\AM_PM_Flag~7_combout\ & ((!\HH_Digit[1]~_emulated_q\))) # (\AM_PM_Flag~7_combout\ & (\HH_Digit~14_combout\)))) ) ) # ( !\HH_Digit[1]~1_combout\ & ( (\RESET~input_o\ & 
-- ((!\AM_PM_Flag~7_combout\ & ((\HH_Digit[1]~_emulated_q\))) # (\AM_PM_Flag~7_combout\ & (\HH_Digit~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010101000101000000010100010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RESET~input_o\,
	datab => \ALT_INV_AM_PM_Flag~7_combout\,
	datac => \ALT_INV_HH_Digit~14_combout\,
	datad => \ALT_INV_HH_Digit[1]~_emulated_q\,
	dataf => \ALT_INV_HH_Digit[1]~1_combout\,
	combout => \HH_Digit[1]~2_combout\);

-- Location: MLABCELL_X28_Y1_N12
\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( (\HH_Digit[0]~6_combout\) # (\HH_Digit[1]~2_combout\) ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( (\HH_Digit[0]~6_combout\) # (\HH_Digit[1]~2_combout\) 
-- ) ) ) # ( \HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( (\HH_Digit[0]~6_combout\) # (\HH_Digit[1]~2_combout\) ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( (((!\HL_Digit[3]~2_combout\ & !\HL_Digit[1]~10_combout\)) # 
-- (\HH_Digit[0]~6_combout\)) # (\HH_Digit[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HH_Digit[1]~2_combout\,
	datab => \ALT_INV_HL_Digit[3]~2_combout\,
	datac => \ALT_INV_HH_Digit[0]~6_combout\,
	datad => \ALT_INV_HL_Digit[1]~10_combout\,
	datae => \ALT_INV_HL_Digit[2]~6_combout\,
	dataf => \ALT_INV_HL_Digit[0]~14_combout\,
	combout => \Mux40~0_combout\);

-- Location: MLABCELL_X28_Y1_N42
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( (!\HL_Digit[3]~2_combout\ & !\HL_Digit[1]~10_combout\) ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( !\HL_Digit[3]~2_combout\ $ 
-- (!\HL_Digit[1]~10_combout\) ) ) ) # ( \HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( !\HL_Digit[3]~2_combout\ ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( (!\HL_Digit[3]~2_combout\ & (((!\HH_Digit[1]~2_combout\ & 
-- !\HH_Digit[0]~6_combout\)) # (\HL_Digit[1]~10_combout\))) # (\HL_Digit[3]~2_combout\ & (((!\HL_Digit[1]~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001111001100110011001100110000110011110011001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HH_Digit[1]~2_combout\,
	datab => \ALT_INV_HL_Digit[3]~2_combout\,
	datac => \ALT_INV_HH_Digit[0]~6_combout\,
	datad => \ALT_INV_HL_Digit[1]~10_combout\,
	datae => \ALT_INV_HL_Digit[2]~6_combout\,
	dataf => \ALT_INV_HL_Digit[0]~14_combout\,
	combout => \Mux34~0_combout\);

-- Location: MLABCELL_X28_Y1_N48
\Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( \HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( (\HL_Digit[1]~10_combout\) # (\HL_Digit[3]~2_combout\) ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( (!\HL_Digit[3]~2_combout\) # 
-- (\HL_Digit[1]~10_combout\) ) ) ) # ( \HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( \HL_Digit[3]~2_combout\ ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( ((!\HH_Digit[1]~2_combout\ & (!\HL_Digit[3]~2_combout\ & 
-- !\HH_Digit[0]~6_combout\))) # (\HL_Digit[1]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011111111001100110011001111001100111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HH_Digit[1]~2_combout\,
	datab => \ALT_INV_HL_Digit[3]~2_combout\,
	datac => \ALT_INV_HH_Digit[0]~6_combout\,
	datad => \ALT_INV_HL_Digit[1]~10_combout\,
	datae => \ALT_INV_HL_Digit[2]~6_combout\,
	dataf => \ALT_INV_HL_Digit[0]~14_combout\,
	combout => \Mux33~0_combout\);

-- Location: MLABCELL_X28_Y1_N6
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( \HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ ) ) # ( !\HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ ) ) # ( \HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( (!\HL_Digit[1]~10_combout\) # 
-- (\HL_Digit[3]~2_combout\) ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( (\HL_Digit[3]~2_combout\ & \HL_Digit[1]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HL_Digit[3]~2_combout\,
	datad => \ALT_INV_HL_Digit[1]~10_combout\,
	datae => \ALT_INV_HL_Digit[2]~6_combout\,
	dataf => \ALT_INV_HL_Digit[0]~14_combout\,
	combout => \Mux32~0_combout\);

-- Location: MLABCELL_X28_Y1_N39
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( (\HL_Digit[3]~2_combout\) # (\HL_Digit[1]~10_combout\) ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( !\HL_Digit[1]~10_combout\ $ (\HL_Digit[3]~2_combout\) 
-- ) ) ) # ( \HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( (!\HL_Digit[1]~10_combout\) # (\HL_Digit[3]~2_combout\) ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( (\HL_Digit[1]~10_combout\ & \HL_Digit[3]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111111000011110000110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HL_Digit[1]~10_combout\,
	datac => \ALT_INV_HL_Digit[3]~2_combout\,
	datae => \ALT_INV_HL_Digit[2]~6_combout\,
	dataf => \ALT_INV_HL_Digit[0]~14_combout\,
	combout => \Mux31~0_combout\);

-- Location: MLABCELL_X28_Y1_N18
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( \HL_Digit[3]~2_combout\ ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( (\HL_Digit[3]~2_combout\ & \HL_Digit[1]~10_combout\) ) ) ) # ( 
-- \HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( \HL_Digit[3]~2_combout\ ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( ((!\HH_Digit[1]~2_combout\ & (!\HL_Digit[3]~2_combout\ & !\HH_Digit[0]~6_combout\))) # 
-- (\HL_Digit[1]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011111111001100110011001100000000001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HH_Digit[1]~2_combout\,
	datab => \ALT_INV_HL_Digit[3]~2_combout\,
	datac => \ALT_INV_HH_Digit[0]~6_combout\,
	datad => \ALT_INV_HL_Digit[1]~10_combout\,
	datae => \ALT_INV_HL_Digit[2]~6_combout\,
	dataf => \ALT_INV_HL_Digit[0]~14_combout\,
	combout => \Mux30~0_combout\);

-- Location: MLABCELL_X28_Y1_N0
\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( (!\HL_Digit[1]~10_combout\) # (\HL_Digit[3]~2_combout\) ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( (\HL_Digit[3]~2_combout\ & \HL_Digit[1]~10_combout\) 
-- ) ) ) # ( \HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( (\HL_Digit[1]~10_combout\) # (\HL_Digit[3]~2_combout\) ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( (\HL_Digit[3]~2_combout\ & \HL_Digit[1]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100111111111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HL_Digit[3]~2_combout\,
	datad => \ALT_INV_HL_Digit[1]~10_combout\,
	datae => \ALT_INV_HL_Digit[2]~6_combout\,
	dataf => \ALT_INV_HL_Digit[0]~14_combout\,
	combout => \Mux29~0_combout\);

-- Location: MLABCELL_X28_Y1_N33
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( \HL_Digit[3]~2_combout\ ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( \HL_Digit[0]~14_combout\ & ( !\HL_Digit[1]~10_combout\ $ (\HL_Digit[3]~2_combout\) ) ) ) # ( 
-- \HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( (!\HL_Digit[1]~10_combout\) # (\HL_Digit[3]~2_combout\) ) ) ) # ( !\HL_Digit[2]~6_combout\ & ( !\HL_Digit[0]~14_combout\ & ( (\HL_Digit[1]~10_combout\ & \HL_Digit[3]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111111000011110000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HL_Digit[1]~10_combout\,
	datac => \ALT_INV_HL_Digit[3]~2_combout\,
	datae => \ALT_INV_HL_Digit[2]~6_combout\,
	dataf => \ALT_INV_HL_Digit[0]~14_combout\,
	combout => \Mux28~0_combout\);

-- Location: MLABCELL_X23_Y1_N27
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \MH_Digit[3]~14_combout\ & ( \MH_Digit[0]~2_combout\ & ( (!\MH_Digit[1]~6_combout\ & !\MH_Digit[2]~10_combout\) ) ) ) # ( !\MH_Digit[3]~14_combout\ & ( \MH_Digit[0]~2_combout\ & ( !\MH_Digit[1]~6_combout\ $ 
-- (!\MH_Digit[2]~10_combout\) ) ) ) # ( \MH_Digit[3]~14_combout\ & ( !\MH_Digit[0]~2_combout\ & ( (!\MH_Digit[1]~6_combout\ & !\MH_Digit[2]~10_combout\) ) ) ) # ( !\MH_Digit[3]~14_combout\ & ( !\MH_Digit[0]~2_combout\ & ( (\MH_Digit[2]~10_combout\) # 
-- (\MH_Digit[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111101010100000000001010101101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[1]~6_combout\,
	datad => \ALT_INV_MH_Digit[2]~10_combout\,
	datae => \ALT_INV_MH_Digit[3]~14_combout\,
	dataf => \ALT_INV_MH_Digit[0]~2_combout\,
	combout => \Mux27~0_combout\);

-- Location: MLABCELL_X23_Y1_N9
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \MH_Digit[2]~10_combout\ & ( ((\MH_Digit[1]~6_combout\ & \MH_Digit[0]~2_combout\)) # (\MH_Digit[3]~14_combout\) ) ) # ( !\MH_Digit[2]~10_combout\ & ( ((\MH_Digit[0]~2_combout\ & !\MH_Digit[3]~14_combout\)) # (\MH_Digit[1]~6_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[1]~6_combout\,
	datac => \ALT_INV_MH_Digit[0]~2_combout\,
	datad => \ALT_INV_MH_Digit[3]~14_combout\,
	dataf => \ALT_INV_MH_Digit[2]~10_combout\,
	combout => \Mux26~0_combout\);

-- Location: LABCELL_X21_Y1_N12
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \MH_Digit[1]~6_combout\ & ( (\MH_Digit[3]~14_combout\) # (\MH_Digit[0]~2_combout\) ) ) # ( !\MH_Digit[1]~6_combout\ & ( (\MH_Digit[2]~10_combout\) # (\MH_Digit[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[0]~2_combout\,
	datac => \ALT_INV_MH_Digit[2]~10_combout\,
	datad => \ALT_INV_MH_Digit[3]~14_combout\,
	dataf => \ALT_INV_MH_Digit[1]~6_combout\,
	combout => \Mux25~0_combout\);

-- Location: MLABCELL_X23_Y1_N51
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \MH_Digit[2]~10_combout\ & ( (!\MH_Digit[1]~6_combout\ $ (\MH_Digit[0]~2_combout\)) # (\MH_Digit[3]~14_combout\) ) ) # ( !\MH_Digit[2]~10_combout\ & ( (!\MH_Digit[1]~6_combout\ & (\MH_Digit[0]~2_combout\ & !\MH_Digit[3]~14_combout\)) 
-- # (\MH_Digit[1]~6_combout\ & ((\MH_Digit[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010101000010100101010110100101111111111010010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[1]~6_combout\,
	datac => \ALT_INV_MH_Digit[0]~2_combout\,
	datad => \ALT_INV_MH_Digit[3]~14_combout\,
	dataf => \ALT_INV_MH_Digit[2]~10_combout\,
	combout => \Mux24~0_combout\);

-- Location: MLABCELL_X23_Y1_N21
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \MH_Digit[2]~10_combout\ & ( \MH_Digit[3]~14_combout\ ) ) # ( !\MH_Digit[2]~10_combout\ & ( (\MH_Digit[1]~6_combout\ & ((!\MH_Digit[0]~2_combout\) # (\MH_Digit[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MH_Digit[3]~14_combout\,
	datac => \ALT_INV_MH_Digit[0]~2_combout\,
	datad => \ALT_INV_MH_Digit[1]~6_combout\,
	dataf => \ALT_INV_MH_Digit[2]~10_combout\,
	combout => \Mux23~0_combout\);

-- Location: MLABCELL_X23_Y1_N18
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \MH_Digit[2]~10_combout\ & ( (!\MH_Digit[0]~2_combout\ $ (!\MH_Digit[1]~6_combout\)) # (\MH_Digit[3]~14_combout\) ) ) # ( !\MH_Digit[2]~10_combout\ & ( (\MH_Digit[3]~14_combout\ & \MH_Digit[1]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101111011011110110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[0]~2_combout\,
	datab => \ALT_INV_MH_Digit[3]~14_combout\,
	datac => \ALT_INV_MH_Digit[1]~6_combout\,
	dataf => \ALT_INV_MH_Digit[2]~10_combout\,
	combout => \Mux22~0_combout\);

-- Location: MLABCELL_X23_Y1_N39
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \MH_Digit[2]~10_combout\ & ( ((!\MH_Digit[1]~6_combout\ & !\MH_Digit[0]~2_combout\)) # (\MH_Digit[3]~14_combout\) ) ) # ( !\MH_Digit[2]~10_combout\ & ( (!\MH_Digit[1]~6_combout\ & (\MH_Digit[0]~2_combout\ & 
-- !\MH_Digit[3]~14_combout\)) # (\MH_Digit[1]~6_combout\ & ((\MH_Digit[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010101000010100101010110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[1]~6_combout\,
	datac => \ALT_INV_MH_Digit[0]~2_combout\,
	datad => \ALT_INV_MH_Digit[3]~14_combout\,
	dataf => \ALT_INV_MH_Digit[2]~10_combout\,
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X20_Y2_N0
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \ML_Digit[0]~2_combout\ & ( \ML_Digit[2]~10_combout\ & ( (!\ML_Digit[3]~14_combout\ & !\ML_Digit[1]~6_combout\) ) ) ) # ( !\ML_Digit[0]~2_combout\ & ( \ML_Digit[2]~10_combout\ & ( !\ML_Digit[3]~14_combout\ ) ) ) # ( 
-- \ML_Digit[0]~2_combout\ & ( !\ML_Digit[2]~10_combout\ & ( !\ML_Digit[3]~14_combout\ $ (!\ML_Digit[1]~6_combout\) ) ) ) # ( !\ML_Digit[0]~2_combout\ & ( !\ML_Digit[2]~10_combout\ & ( !\ML_Digit[3]~14_combout\ $ (!\ML_Digit[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100110011001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ML_Digit[3]~14_combout\,
	datad => \ALT_INV_ML_Digit[1]~6_combout\,
	datae => \ALT_INV_ML_Digit[0]~2_combout\,
	dataf => \ALT_INV_ML_Digit[2]~10_combout\,
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X20_Y2_N51
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \ML_Digit[2]~10_combout\ & ( ((\ML_Digit[1]~6_combout\ & \ML_Digit[0]~2_combout\)) # (\ML_Digit[3]~14_combout\) ) ) # ( !\ML_Digit[2]~10_combout\ & ( ((!\ML_Digit[3]~14_combout\ & \ML_Digit[0]~2_combout\)) # (\ML_Digit[1]~6_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ML_Digit[3]~14_combout\,
	datac => \ALT_INV_ML_Digit[1]~6_combout\,
	datad => \ALT_INV_ML_Digit[0]~2_combout\,
	dataf => \ALT_INV_ML_Digit[2]~10_combout\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X20_Y2_N54
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \ML_Digit[2]~10_combout\ & ( ((!\ML_Digit[1]~6_combout\) # (\ML_Digit[3]~14_combout\)) # (\ML_Digit[0]~2_combout\) ) ) # ( !\ML_Digit[2]~10_combout\ & ( ((\ML_Digit[3]~14_combout\ & \ML_Digit[1]~6_combout\)) # 
-- (\ML_Digit[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011111111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ML_Digit[0]~2_combout\,
	datab => \ALT_INV_ML_Digit[3]~14_combout\,
	datad => \ALT_INV_ML_Digit[1]~6_combout\,
	dataf => \ALT_INV_ML_Digit[2]~10_combout\,
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X20_Y2_N39
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \ML_Digit[2]~10_combout\ & ( (!\ML_Digit[1]~6_combout\ $ (\ML_Digit[0]~2_combout\)) # (\ML_Digit[3]~14_combout\) ) ) # ( !\ML_Digit[2]~10_combout\ & ( (!\ML_Digit[3]~14_combout\ & (!\ML_Digit[1]~6_combout\ & \ML_Digit[0]~2_combout\)) 
-- # (\ML_Digit[3]~14_combout\ & (\ML_Digit[1]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010111110101010111111111010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ML_Digit[3]~14_combout\,
	datac => \ALT_INV_ML_Digit[1]~6_combout\,
	datad => \ALT_INV_ML_Digit[0]~2_combout\,
	dataf => \ALT_INV_ML_Digit[2]~10_combout\,
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X20_Y2_N18
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \ML_Digit[0]~2_combout\ & ( \ML_Digit[2]~10_combout\ & ( \ML_Digit[3]~14_combout\ ) ) ) # ( !\ML_Digit[0]~2_combout\ & ( \ML_Digit[2]~10_combout\ & ( \ML_Digit[3]~14_combout\ ) ) ) # ( \ML_Digit[0]~2_combout\ & ( 
-- !\ML_Digit[2]~10_combout\ & ( (\ML_Digit[3]~14_combout\ & \ML_Digit[1]~6_combout\) ) ) ) # ( !\ML_Digit[0]~2_combout\ & ( !\ML_Digit[2]~10_combout\ & ( \ML_Digit[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ML_Digit[3]~14_combout\,
	datad => \ALT_INV_ML_Digit[1]~6_combout\,
	datae => \ALT_INV_ML_Digit[0]~2_combout\,
	dataf => \ALT_INV_ML_Digit[2]~10_combout\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X20_Y2_N9
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \ML_Digit[2]~10_combout\ & ( (!\ML_Digit[1]~6_combout\ $ (!\ML_Digit[0]~2_combout\)) # (\ML_Digit[3]~14_combout\) ) ) # ( !\ML_Digit[2]~10_combout\ & ( (\ML_Digit[3]~14_combout\ & \ML_Digit[1]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111111101010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ML_Digit[3]~14_combout\,
	datac => \ALT_INV_ML_Digit[1]~6_combout\,
	datad => \ALT_INV_ML_Digit[0]~2_combout\,
	dataf => \ALT_INV_ML_Digit[2]~10_combout\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X20_Y2_N33
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \ML_Digit[0]~2_combout\ & ( \ML_Digit[2]~10_combout\ & ( \ML_Digit[3]~14_combout\ ) ) ) # ( !\ML_Digit[0]~2_combout\ & ( \ML_Digit[2]~10_combout\ & ( (!\ML_Digit[1]~6_combout\) # (\ML_Digit[3]~14_combout\) ) ) ) # ( 
-- \ML_Digit[0]~2_combout\ & ( !\ML_Digit[2]~10_combout\ & ( !\ML_Digit[3]~14_combout\ $ (\ML_Digit[1]~6_combout\) ) ) ) # ( !\ML_Digit[0]~2_combout\ & ( !\ML_Digit[2]~10_combout\ & ( (\ML_Digit[3]~14_combout\ & \ML_Digit[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000111100001111110011111100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ML_Digit[3]~14_combout\,
	datac => \ALT_INV_ML_Digit[1]~6_combout\,
	datae => \ALT_INV_ML_Digit[0]~2_combout\,
	dataf => \ALT_INV_ML_Digit[2]~10_combout\,
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X39_Y2_N24
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( !\SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ & ( !\SH_Digit[1]~6_combout\ ) ) ) # ( \SH_Digit[2]~10_combout\ & ( !\SH_Digit[3]~14_combout\ & ( (!\SH_Digit[1]~6_combout\) # (!\SH_Digit[0]~2_combout\) ) ) ) # ( 
-- !\SH_Digit[2]~10_combout\ & ( !\SH_Digit[3]~14_combout\ & ( \SH_Digit[1]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111001111110011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SH_Digit[1]~6_combout\,
	datac => \ALT_INV_SH_Digit[0]~2_combout\,
	datae => \ALT_INV_SH_Digit[2]~10_combout\,
	dataf => \ALT_INV_SH_Digit[3]~14_combout\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X39_Y2_N9
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ ) ) # ( !\SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ & ( \SH_Digit[1]~6_combout\ ) ) ) # ( \SH_Digit[2]~10_combout\ & ( !\SH_Digit[3]~14_combout\ & ( 
-- (\SH_Digit[0]~2_combout\ & \SH_Digit[1]~6_combout\) ) ) ) # ( !\SH_Digit[2]~10_combout\ & ( !\SH_Digit[3]~14_combout\ & ( (\SH_Digit[1]~6_combout\) # (\SH_Digit[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000001010000010100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SH_Digit[0]~2_combout\,
	datac => \ALT_INV_SH_Digit[1]~6_combout\,
	datae => \ALT_INV_SH_Digit[2]~10_combout\,
	dataf => \ALT_INV_SH_Digit[3]~14_combout\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X39_Y2_N48
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ ) ) # ( !\SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ & ( (\SH_Digit[0]~2_combout\) # (\SH_Digit[1]~6_combout\) ) ) ) # ( \SH_Digit[2]~10_combout\ & ( 
-- !\SH_Digit[3]~14_combout\ & ( (!\SH_Digit[1]~6_combout\) # (\SH_Digit[0]~2_combout\) ) ) ) # ( !\SH_Digit[2]~10_combout\ & ( !\SH_Digit[3]~14_combout\ & ( \SH_Digit[0]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011111100111100111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SH_Digit[1]~6_combout\,
	datac => \ALT_INV_SH_Digit[0]~2_combout\,
	datae => \ALT_INV_SH_Digit[2]~10_combout\,
	dataf => \ALT_INV_SH_Digit[3]~14_combout\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X39_Y2_N57
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ ) ) # ( !\SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ & ( \SH_Digit[1]~6_combout\ ) ) ) # ( \SH_Digit[2]~10_combout\ & ( !\SH_Digit[3]~14_combout\ & ( 
-- !\SH_Digit[0]~2_combout\ $ (\SH_Digit[1]~6_combout\) ) ) ) # ( !\SH_Digit[2]~10_combout\ & ( !\SH_Digit[3]~14_combout\ & ( (\SH_Digit[0]~2_combout\ & !\SH_Digit[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101001011010010100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SH_Digit[0]~2_combout\,
	datac => \ALT_INV_SH_Digit[1]~6_combout\,
	datae => \ALT_INV_SH_Digit[2]~10_combout\,
	dataf => \ALT_INV_SH_Digit[3]~14_combout\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X39_Y2_N39
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ ) ) # ( !\SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ & ( \SH_Digit[1]~6_combout\ ) ) ) # ( !\SH_Digit[2]~10_combout\ & ( !\SH_Digit[3]~14_combout\ & ( 
-- (!\SH_Digit[0]~2_combout\ & \SH_Digit[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SH_Digit[0]~2_combout\,
	datac => \ALT_INV_SH_Digit[1]~6_combout\,
	datae => \ALT_INV_SH_Digit[2]~10_combout\,
	dataf => \ALT_INV_SH_Digit[3]~14_combout\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X39_Y2_N33
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ ) ) # ( !\SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ & ( \SH_Digit[1]~6_combout\ ) ) ) # ( \SH_Digit[2]~10_combout\ & ( !\SH_Digit[3]~14_combout\ & ( 
-- !\SH_Digit[0]~2_combout\ $ (!\SH_Digit[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SH_Digit[0]~2_combout\,
	datac => \ALT_INV_SH_Digit[1]~6_combout\,
	datae => \ALT_INV_SH_Digit[2]~10_combout\,
	dataf => \ALT_INV_SH_Digit[3]~14_combout\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X39_Y2_N12
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ ) ) # ( !\SH_Digit[2]~10_combout\ & ( \SH_Digit[3]~14_combout\ & ( \SH_Digit[1]~6_combout\ ) ) ) # ( \SH_Digit[2]~10_combout\ & ( !\SH_Digit[3]~14_combout\ & ( 
-- (!\SH_Digit[1]~6_combout\ & !\SH_Digit[0]~2_combout\) ) ) ) # ( !\SH_Digit[2]~10_combout\ & ( !\SH_Digit[3]~14_combout\ & ( (!\SH_Digit[1]~6_combout\ & \SH_Digit[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SH_Digit[1]~6_combout\,
	datac => \ALT_INV_SH_Digit[0]~2_combout\,
	datae => \ALT_INV_SH_Digit[2]~10_combout\,
	dataf => \ALT_INV_SH_Digit[3]~14_combout\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X26_Y2_N0
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \SL_Digit[1]~6_combout\ & ( (!\SL_Digit[3]~14_combout\ & ((!\SL_Digit[0]~2_combout\) # (!\SL_Digit[2]~10_combout\))) ) ) # ( !\SL_Digit[1]~6_combout\ & ( !\SL_Digit[3]~14_combout\ $ (!\SL_Digit[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SL_Digit[0]~2_combout\,
	datac => \ALT_INV_SL_Digit[3]~14_combout\,
	datad => \ALT_INV_SL_Digit[2]~10_combout\,
	dataf => \ALT_INV_SL_Digit[1]~6_combout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X25_Y2_N24
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \SL_Digit[2]~10_combout\ & ( ((\SL_Digit[1]~6_combout\ & \SL_Digit[0]~2_combout\)) # (\SL_Digit[3]~14_combout\) ) ) # ( !\SL_Digit[2]~10_combout\ & ( ((!\SL_Digit[3]~14_combout\ & \SL_Digit[0]~2_combout\)) # (\SL_Digit[1]~6_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SL_Digit[1]~6_combout\,
	datac => \ALT_INV_SL_Digit[3]~14_combout\,
	datad => \ALT_INV_SL_Digit[0]~2_combout\,
	dataf => \ALT_INV_SL_Digit[2]~10_combout\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X23_Y2_N45
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \SL_Digit[3]~14_combout\ & ( ((\SL_Digit[0]~2_combout\) # (\SL_Digit[1]~6_combout\)) # (\SL_Digit[2]~10_combout\) ) ) # ( !\SL_Digit[3]~14_combout\ & ( ((\SL_Digit[2]~10_combout\ & !\SL_Digit[1]~6_combout\)) # 
-- (\SL_Digit[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit[2]~10_combout\,
	datac => \ALT_INV_SL_Digit[1]~6_combout\,
	datad => \ALT_INV_SL_Digit[0]~2_combout\,
	dataf => \ALT_INV_SL_Digit[3]~14_combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X26_Y2_N27
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \SL_Digit[3]~14_combout\ & ( (\SL_Digit[2]~10_combout\) # (\SL_Digit[1]~6_combout\) ) ) # ( !\SL_Digit[3]~14_combout\ & ( (!\SL_Digit[1]~6_combout\ & (!\SL_Digit[0]~2_combout\ $ (!\SL_Digit[2]~10_combout\))) # (\SL_Digit[1]~6_combout\ 
-- & (\SL_Digit[0]~2_combout\ & \SL_Digit[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit[1]~6_combout\,
	datac => \ALT_INV_SL_Digit[0]~2_combout\,
	datad => \ALT_INV_SL_Digit[2]~10_combout\,
	dataf => \ALT_INV_SL_Digit[3]~14_combout\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X26_Y2_N36
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \SL_Digit[0]~2_combout\ & ( (\SL_Digit[3]~14_combout\ & ((\SL_Digit[2]~10_combout\) # (\SL_Digit[1]~6_combout\))) ) ) # ( !\SL_Digit[0]~2_combout\ & ( (!\SL_Digit[2]~10_combout\ & ((\SL_Digit[1]~6_combout\))) # 
-- (\SL_Digit[2]~10_combout\ & (\SL_Digit[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SL_Digit[3]~14_combout\,
	datac => \ALT_INV_SL_Digit[1]~6_combout\,
	datad => \ALT_INV_SL_Digit[2]~10_combout\,
	dataf => \ALT_INV_SL_Digit[0]~2_combout\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X23_Y2_N12
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \SL_Digit[3]~14_combout\ & ( (\SL_Digit[2]~10_combout\) # (\SL_Digit[1]~6_combout\) ) ) # ( !\SL_Digit[3]~14_combout\ & ( (\SL_Digit[2]~10_combout\ & (!\SL_Digit[1]~6_combout\ $ (!\SL_Digit[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit[1]~6_combout\,
	datac => \ALT_INV_SL_Digit[0]~2_combout\,
	datad => \ALT_INV_SL_Digit[2]~10_combout\,
	dataf => \ALT_INV_SL_Digit[3]~14_combout\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X26_Y2_N48
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \SL_Digit[1]~6_combout\ & ( \SL_Digit[3]~14_combout\ ) ) # ( !\SL_Digit[1]~6_combout\ & ( !\SL_Digit[2]~10_combout\ $ (((!\SL_Digit[0]~2_combout\) # (\SL_Digit[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111001100001100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SL_Digit[0]~2_combout\,
	datac => \ALT_INV_SL_Digit[3]~14_combout\,
	datad => \ALT_INV_SL_Digit[2]~10_combout\,
	dataf => \ALT_INV_SL_Digit[1]~6_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X25_Y2_N30
\SH_ALARM[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SH_ALARM[1]~0_combout\ = ( \SETTING_MODE~input_o\ & ( (\SH_Digit[3]~26_combout\ & !\SET_S~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SH_Digit[3]~26_combout\,
	datad => \ALT_INV_SET_S~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \SH_ALARM[1]~0_combout\);

-- Location: LABCELL_X21_Y2_N54
\SH_ALARM[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- SH_ALARM(1) = ( SH_ALARM(1) & ( \RESET~input_o\ & ( (!\SH_ALARM[1]~0_combout\) # (\BCD_H[1]~input_o\) ) ) ) # ( !SH_ALARM(1) & ( \RESET~input_o\ & ( (\BCD_H[1]~input_o\ & \SH_ALARM[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BCD_H[1]~input_o\,
	datad => \ALT_INV_SH_ALARM[1]~0_combout\,
	datae => ALT_INV_SH_ALARM(1),
	dataf => \ALT_INV_RESET~input_o\,
	combout => SH_ALARM(1));

-- Location: LABCELL_X20_Y2_N36
\ML_ALARM[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ML_ALARM[0]~0_combout\ = ( \SETTING_MODE~input_o\ & ( (\SET_H~input_o\ & !\SET_M~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SET_H~input_o\,
	datad => \ALT_INV_SET_M~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \ML_ALARM[0]~0_combout\);

-- Location: LABCELL_X20_Y2_N48
\ML_ALARM[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- ML_ALARM(3) = ( \RESET~input_o\ & ( (!\ML_ALARM[0]~0_combout\ & ((ML_ALARM(3)))) # (\ML_ALARM[0]~0_combout\ & (\BCD_L[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BCD_L[3]~input_o\,
	datac => ALT_INV_ML_ALARM(3),
	datad => \ALT_INV_ML_ALARM[0]~0_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => ML_ALARM(3));

-- Location: LABCELL_X21_Y2_N36
\SH_ALARM[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- SH_ALARM(0) = ( SH_ALARM(0) & ( \RESET~input_o\ & ( (!\SH_ALARM[1]~0_combout\) # (\BCD_H[0]~input_o\) ) ) ) # ( !SH_ALARM(0) & ( \RESET~input_o\ & ( (\BCD_H[0]~input_o\ & \SH_ALARM[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BCD_H[0]~input_o\,
	datad => \ALT_INV_SH_ALARM[1]~0_combout\,
	datae => ALT_INV_SH_ALARM(0),
	dataf => \ALT_INV_RESET~input_o\,
	combout => SH_ALARM(0));

-- Location: LABCELL_X21_Y2_N21
\FLASH_FLAG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLASH_FLAG~0_combout\ = ( \ML_Digit[3]~14_combout\ & ( \SH_Digit[1]~6_combout\ & ( (SH_ALARM(1) & (ML_ALARM(3) & (!\SH_Digit[0]~2_combout\ $ (SH_ALARM(0))))) ) ) ) # ( !\ML_Digit[3]~14_combout\ & ( \SH_Digit[1]~6_combout\ & ( (SH_ALARM(1) & (!ML_ALARM(3) 
-- & (!\SH_Digit[0]~2_combout\ $ (SH_ALARM(0))))) ) ) ) # ( \ML_Digit[3]~14_combout\ & ( !\SH_Digit[1]~6_combout\ & ( (!SH_ALARM(1) & (ML_ALARM(3) & (!\SH_Digit[0]~2_combout\ $ (SH_ALARM(0))))) ) ) ) # ( !\ML_Digit[3]~14_combout\ & ( !\SH_Digit[1]~6_combout\ 
-- & ( (!SH_ALARM(1) & (!ML_ALARM(3) & (!\SH_Digit[0]~2_combout\ $ (SH_ALARM(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SH_ALARM(1),
	datab => ALT_INV_ML_ALARM(3),
	datac => \ALT_INV_SH_Digit[0]~2_combout\,
	datad => ALT_INV_SH_ALARM(0),
	datae => \ALT_INV_ML_Digit[3]~14_combout\,
	dataf => \ALT_INV_SH_Digit[1]~6_combout\,
	combout => \FLASH_FLAG~0_combout\);

-- Location: LABCELL_X20_Y2_N27
\ML_ALARM[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- ML_ALARM(1) = ( ML_ALARM(1) & ( \RESET~input_o\ & ( (!\ML_ALARM[0]~0_combout\) # (\BCD_L[1]~input_o\) ) ) ) # ( !ML_ALARM(1) & ( \RESET~input_o\ & ( (\BCD_L[1]~input_o\ & \ML_ALARM[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD_L[1]~input_o\,
	datad => \ALT_INV_ML_ALARM[0]~0_combout\,
	datae => ALT_INV_ML_ALARM(1),
	dataf => \ALT_INV_RESET~input_o\,
	combout => ML_ALARM(1));

-- Location: LABCELL_X20_Y2_N6
\ML_ALARM[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- ML_ALARM(2) = ( \RESET~input_o\ & ( (!\ML_ALARM[0]~0_combout\ & (ML_ALARM(2))) # (\ML_ALARM[0]~0_combout\ & ((\BCD_L[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_ML_ALARM(2),
	datac => \ALT_INV_BCD_L[2]~input_o\,
	datad => \ALT_INV_ML_ALARM[0]~0_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => ML_ALARM(2));

-- Location: LABCELL_X20_Y2_N45
\ML_ALARM[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- ML_ALARM(0) = ( ML_ALARM(0) & ( \RESET~input_o\ & ( (!\ML_ALARM[0]~0_combout\) # (\BCD_L[0]~input_o\) ) ) ) # ( !ML_ALARM(0) & ( \RESET~input_o\ & ( (\BCD_L[0]~input_o\ & \ML_ALARM[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD_L[0]~input_o\,
	datad => \ALT_INV_ML_ALARM[0]~0_combout\,
	datae => ALT_INV_ML_ALARM(0),
	dataf => \ALT_INV_RESET~input_o\,
	combout => ML_ALARM(0));

-- Location: LABCELL_X20_Y2_N12
\FLASH_FLAG~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLASH_FLAG~1_combout\ = ( \ML_Digit[1]~6_combout\ & ( \ML_Digit[2]~10_combout\ & ( (ML_ALARM(1) & (ML_ALARM(2) & (!\ML_Digit[0]~2_combout\ $ (ML_ALARM(0))))) ) ) ) # ( !\ML_Digit[1]~6_combout\ & ( \ML_Digit[2]~10_combout\ & ( (!ML_ALARM(1) & (ML_ALARM(2) 
-- & (!\ML_Digit[0]~2_combout\ $ (ML_ALARM(0))))) ) ) ) # ( \ML_Digit[1]~6_combout\ & ( !\ML_Digit[2]~10_combout\ & ( (ML_ALARM(1) & (!ML_ALARM(2) & (!\ML_Digit[0]~2_combout\ $ (ML_ALARM(0))))) ) ) ) # ( !\ML_Digit[1]~6_combout\ & ( !\ML_Digit[2]~10_combout\ 
-- & ( (!ML_ALARM(1) & (!ML_ALARM(2) & (!\ML_Digit[0]~2_combout\ $ (ML_ALARM(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ML_ALARM(1),
	datab => ALT_INV_ML_ALARM(2),
	datac => \ALT_INV_ML_Digit[0]~2_combout\,
	datad => ALT_INV_ML_ALARM(0),
	datae => \ALT_INV_ML_Digit[1]~6_combout\,
	dataf => \ALT_INV_ML_Digit[2]~10_combout\,
	combout => \FLASH_FLAG~1_combout\);

-- Location: IOIBUF_X33_Y0_N75
\ALARM_ON~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALARM_ON,
	o => \ALARM_ON~input_o\);

-- Location: LABCELL_X26_Y2_N51
\AM_PM_ALARM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AM_PM_ALARM~0_combout\ = ( \SETTING_MODE~input_o\ & ( !\SET_H~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SET_H~input_o\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \AM_PM_ALARM~0_combout\);

-- Location: LABCELL_X26_Y2_N39
\HL_ALARM[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- HL_ALARM(0) = ( \RESET~input_o\ & ( (!\AM_PM_ALARM~0_combout\ & (HL_ALARM(0))) # (\AM_PM_ALARM~0_combout\ & ((\BCD_L[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AM_PM_ALARM~0_combout\,
	datac => ALT_INV_HL_ALARM(0),
	datad => \ALT_INV_BCD_L[0]~input_o\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => HL_ALARM(0));

-- Location: LABCELL_X26_Y2_N3
\HL_ALARM[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- HL_ALARM(1) = ( \RESET~input_o\ & ( (!\AM_PM_ALARM~0_combout\ & ((HL_ALARM(1)))) # (\AM_PM_ALARM~0_combout\ & (!\HL_Digit~28_combout\)) ) ) # ( !\RESET~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AM_PM_ALARM~0_combout\,
	datac => \ALT_INV_HL_Digit~28_combout\,
	datad => ALT_INV_HL_ALARM(1),
	dataf => \ALT_INV_RESET~input_o\,
	combout => HL_ALARM(1));

-- Location: MLABCELL_X23_Y1_N36
\HH_Digit~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \HH_Digit~19_combout\ = ( \BCD_H[0]~input_o\ & ( (!\Equal0~0_combout\ & ((!\LessThan4~0_combout\))) # (\Equal0~0_combout\ & (\process_1~1_combout\)) ) ) # ( !\BCD_H[0]~input_o\ & ( (!\Equal0~0_combout\ & !\LessThan4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110011000000111111001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_LessThan4~0_combout\,
	dataf => \ALT_INV_BCD_H[0]~input_o\,
	combout => \HH_Digit~19_combout\);

-- Location: LABCELL_X26_Y2_N42
\HH_ALARM[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- HH_ALARM(0) = ( \RESET~input_o\ & ( (!\AM_PM_ALARM~0_combout\ & (HH_ALARM(0))) # (\AM_PM_ALARM~0_combout\ & ((\HH_Digit~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_HH_ALARM(0),
	datac => \ALT_INV_AM_PM_ALARM~0_combout\,
	datad => \ALT_INV_HH_Digit~19_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => HH_ALARM(0));

-- Location: LABCELL_X25_Y2_N42
\FLASH_FLAG~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLASH_FLAG~4_combout\ = ( \HL_Digit[0]~14_combout\ & ( \HL_Digit[1]~10_combout\ & ( (HL_ALARM(0) & (HL_ALARM(1) & (!\HH_Digit[0]~6_combout\ $ (HH_ALARM(0))))) ) ) ) # ( !\HL_Digit[0]~14_combout\ & ( \HL_Digit[1]~10_combout\ & ( (!HL_ALARM(0) & 
-- (HL_ALARM(1) & (!\HH_Digit[0]~6_combout\ $ (HH_ALARM(0))))) ) ) ) # ( \HL_Digit[0]~14_combout\ & ( !\HL_Digit[1]~10_combout\ & ( (HL_ALARM(0) & (!HL_ALARM(1) & (!\HH_Digit[0]~6_combout\ $ (HH_ALARM(0))))) ) ) ) # ( !\HL_Digit[0]~14_combout\ & ( 
-- !\HL_Digit[1]~10_combout\ & ( (!HL_ALARM(0) & (!HL_ALARM(1) & (!\HH_Digit[0]~6_combout\ $ (HH_ALARM(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HL_ALARM(0),
	datab => \ALT_INV_HH_Digit[0]~6_combout\,
	datac => ALT_INV_HL_ALARM(1),
	datad => ALT_INV_HH_ALARM(0),
	datae => \ALT_INV_HL_Digit[0]~14_combout\,
	dataf => \ALT_INV_HL_Digit[1]~10_combout\,
	combout => \FLASH_FLAG~4_combout\);

-- Location: LABCELL_X26_Y2_N15
\HL_ALARM[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- HL_ALARM(2) = ( \RESET~input_o\ & ( (!\AM_PM_ALARM~0_combout\ & (HL_ALARM(2))) # (\AM_PM_ALARM~0_combout\ & ((\HL_Digit~26_combout\))) ) ) # ( !\RESET~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AM_PM_ALARM~0_combout\,
	datac => ALT_INV_HL_ALARM(2),
	datad => \ALT_INV_HL_Digit~26_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => HL_ALARM(2));

-- Location: MLABCELL_X23_Y2_N36
\HL_ALARM[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- HL_ALARM(3) = ( \AM_PM_ALARM~0_combout\ & ( (\RESET~input_o\ & \HL_Digit~24_combout\) ) ) # ( !\AM_PM_ALARM~0_combout\ & ( (\RESET~input_o\ & HL_ALARM(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RESET~input_o\,
	datac => \ALT_INV_HL_Digit~24_combout\,
	datad => ALT_INV_HL_ALARM(3),
	dataf => \ALT_INV_AM_PM_ALARM~0_combout\,
	combout => HL_ALARM(3));

-- Location: LABCELL_X21_Y2_N3
\MH_ALARM[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- MH_ALARM(0) = ( \RESET~input_o\ & ( \ML_ALARM[0]~0_combout\ & ( \BCD_H[0]~input_o\ ) ) ) # ( !\RESET~input_o\ & ( \ML_ALARM[0]~0_combout\ ) ) # ( \RESET~input_o\ & ( !\ML_ALARM[0]~0_combout\ & ( MH_ALARM(0) ) ) ) # ( !\RESET~input_o\ & ( 
-- !\ML_ALARM[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001111111111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD_H[0]~input_o\,
	datad => ALT_INV_MH_ALARM(0),
	datae => \ALT_INV_RESET~input_o\,
	dataf => \ALT_INV_ML_ALARM[0]~0_combout\,
	combout => MH_ALARM(0));

-- Location: LABCELL_X25_Y2_N54
\FLASH_FLAG~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLASH_FLAG~3_combout\ = ( \MH_Digit[0]~2_combout\ & ( \HL_Digit[3]~2_combout\ & ( (HL_ALARM(3) & (MH_ALARM(0) & (!HL_ALARM(2) $ (\HL_Digit[2]~6_combout\)))) ) ) ) # ( !\MH_Digit[0]~2_combout\ & ( \HL_Digit[3]~2_combout\ & ( (HL_ALARM(3) & (!MH_ALARM(0) & 
-- (!HL_ALARM(2) $ (\HL_Digit[2]~6_combout\)))) ) ) ) # ( \MH_Digit[0]~2_combout\ & ( !\HL_Digit[3]~2_combout\ & ( (!HL_ALARM(3) & (MH_ALARM(0) & (!HL_ALARM(2) $ (\HL_Digit[2]~6_combout\)))) ) ) ) # ( !\MH_Digit[0]~2_combout\ & ( !\HL_Digit[3]~2_combout\ & ( 
-- (!HL_ALARM(3) & (!MH_ALARM(0) & (!HL_ALARM(2) $ (\HL_Digit[2]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HL_ALARM(2),
	datab => ALT_INV_HL_ALARM(3),
	datac => ALT_INV_MH_ALARM(0),
	datad => \ALT_INV_HL_Digit[2]~6_combout\,
	datae => \ALT_INV_MH_Digit[0]~2_combout\,
	dataf => \ALT_INV_HL_Digit[3]~2_combout\,
	combout => \FLASH_FLAG~3_combout\);

-- Location: MLABCELL_X23_Y1_N48
\process_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = ( \BCD_H[0]~input_o\ & ( (!\process_1~1_combout\) # (!\Equal0~0_combout\) ) ) # ( !\BCD_H[0]~input_o\ & ( !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_BCD_H[0]~input_o\,
	combout => \process_1~2_combout\);

-- Location: LABCELL_X26_Y2_N30
AM_PM_ALARM : cyclonev_lcell_comb
-- Equation(s):
-- \AM_PM_ALARM~combout\ = ( \RESET~input_o\ & ( (!\AM_PM_ALARM~0_combout\ & (\AM_PM_ALARM~combout\)) # (\AM_PM_ALARM~0_combout\ & ((\process_1~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AM_PM_ALARM~combout\,
	datac => \ALT_INV_AM_PM_ALARM~0_combout\,
	datad => \ALT_INV_process_1~2_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \AM_PM_ALARM~combout\);

-- Location: LABCELL_X26_Y1_N33
\AM_PM_Flag~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \AM_PM_Flag~10_combout\ = ( \Equal0~0_combout\ & ( \SETTING_MODE~input_o\ & ( \AM_PM_Flag~2_combout\ ) ) ) # ( !\Equal0~0_combout\ & ( \SETTING_MODE~input_o\ & ( \AM_PM_Flag~2_combout\ ) ) ) # ( \Equal0~0_combout\ & ( !\SETTING_MODE~input_o\ & ( 
-- (!\process_1~1_combout\ & \BCD_H[0]~input_o\) ) ) ) # ( !\Equal0~0_combout\ & ( !\SETTING_MODE~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001100110001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AM_PM_Flag~2_combout\,
	datab => \ALT_INV_process_1~1_combout\,
	datad => \ALT_INV_BCD_H[0]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_SETTING_MODE~input_o\,
	combout => \AM_PM_Flag~10_combout\);

-- Location: LABCELL_X26_Y1_N51
\AM_PM_Flag~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AM_PM_Flag~1_combout\ = ( \AM_PM_Flag~7_combout\ & ( \AM_PM_Flag~10_combout\ & ( \RESET~input_o\ ) ) ) # ( !\AM_PM_Flag~7_combout\ & ( \AM_PM_Flag~10_combout\ & ( (\RESET~input_o\ & \AM_PM_Flag~1_combout\) ) ) ) # ( !\AM_PM_Flag~7_combout\ & ( 
-- !\AM_PM_Flag~10_combout\ & ( (\RESET~input_o\ & \AM_PM_Flag~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000000000000001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_AM_PM_Flag~1_combout\,
	datae => \ALT_INV_AM_PM_Flag~7_combout\,
	dataf => \ALT_INV_AM_PM_Flag~10_combout\,
	combout => \AM_PM_Flag~1_combout\);

-- Location: LABCELL_X25_Y1_N54
\AM_PM_Flag~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AM_PM_Flag~3_combout\ = ( \AM_PM_Flag~1_combout\ & ( !\AM_PM_Flag~2_combout\ $ (((!\HH_Digit~18_combout\ & \AM_PM_Flag~6_combout\))) ) ) # ( !\AM_PM_Flag~1_combout\ & ( !\AM_PM_Flag~2_combout\ $ (((!\AM_PM_Flag~6_combout\) # (\HH_Digit~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011000011111100001111110000001111001111000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HH_Digit~18_combout\,
	datac => \ALT_INV_AM_PM_Flag~2_combout\,
	datad => \ALT_INV_AM_PM_Flag~6_combout\,
	dataf => \ALT_INV_AM_PM_Flag~1_combout\,
	combout => \AM_PM_Flag~3_combout\);

-- Location: FF_X25_Y1_N55
\AM_PM_Flag~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \AM_PM_Flag~3_combout\,
	clrn => \ALT_INV_HH_Digit[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AM_PM_Flag~_emulated_q\);

-- Location: LABCELL_X25_Y1_N36
\AM_PM_Flag~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AM_PM_Flag~2_combout\ = ( \AM_PM_Flag~1_combout\ & ( (\RESET~input_o\ & ((!\AM_PM_Flag~7_combout\ & (!\AM_PM_Flag~_emulated_q\)) # (\AM_PM_Flag~7_combout\ & ((\AM_PM_Flag~10_combout\))))) ) ) # ( !\AM_PM_Flag~1_combout\ & ( (\RESET~input_o\ & 
-- ((!\AM_PM_Flag~7_combout\ & (\AM_PM_Flag~_emulated_q\)) # (\AM_PM_Flag~7_combout\ & ((\AM_PM_Flag~10_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011100001000000011010000100000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AM_PM_Flag~7_combout\,
	datab => \ALT_INV_AM_PM_Flag~_emulated_q\,
	datac => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_AM_PM_Flag~10_combout\,
	dataf => \ALT_INV_AM_PM_Flag~1_combout\,
	combout => \AM_PM_Flag~2_combout\);

-- Location: LABCELL_X26_Y2_N18
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( \AM_PM_Flag~2_combout\ & ( !\AM_PM_ALARM~combout\ ) ) # ( !\AM_PM_Flag~2_combout\ & ( \AM_PM_ALARM~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AM_PM_ALARM~combout\,
	dataf => \ALT_INV_AM_PM_Flag~2_combout\,
	combout => \process_1~0_combout\);

-- Location: LABCELL_X25_Y2_N48
\FLASH_FLAG~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLASH_FLAG~5_combout\ = ( \FLASH_FLAG~3_combout\ & ( !\process_1~0_combout\ & ( (\SET_S~input_o\ & (\ALARM_ON~input_o\ & (!\HH_Digit[1]~2_combout\ & \FLASH_FLAG~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SET_S~input_o\,
	datab => \ALT_INV_ALARM_ON~input_o\,
	datac => \ALT_INV_HH_Digit[1]~2_combout\,
	datad => \ALT_INV_FLASH_FLAG~4_combout\,
	datae => \ALT_INV_FLASH_FLAG~3_combout\,
	dataf => \ALT_INV_process_1~0_combout\,
	combout => \FLASH_FLAG~5_combout\);

-- Location: LABCELL_X25_Y2_N33
\SL_ALARM[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- SL_ALARM(3) = ( \RESET~input_o\ & ( (!\SH_ALARM[1]~0_combout\ & (SL_ALARM(3))) # (\SH_ALARM[1]~0_combout\ & ((\BCD_L[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SL_ALARM(3),
	datab => \ALT_INV_BCD_L[3]~input_o\,
	datac => \ALT_INV_SH_ALARM[1]~0_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => SL_ALARM(3));

-- Location: LABCELL_X25_Y2_N21
\SL_ALARM[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- SL_ALARM(2) = ( \RESET~input_o\ & ( (!\SH_ALARM[1]~0_combout\ & (SL_ALARM(2))) # (\SH_ALARM[1]~0_combout\ & ((\BCD_L[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SL_ALARM(2),
	datac => \ALT_INV_SH_ALARM[1]~0_combout\,
	datad => \ALT_INV_BCD_L[2]~input_o\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => SL_ALARM(2));

-- Location: LABCELL_X25_Y2_N27
\SL_ALARM[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- SL_ALARM(1) = ( \RESET~input_o\ & ( (!\SH_ALARM[1]~0_combout\ & ((SL_ALARM(1)))) # (\SH_ALARM[1]~0_combout\ & (\BCD_L[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD_L[1]~input_o\,
	datac => \ALT_INV_SH_ALARM[1]~0_combout\,
	datad => ALT_INV_SL_ALARM(1),
	dataf => \ALT_INV_RESET~input_o\,
	combout => SL_ALARM(1));

-- Location: LABCELL_X25_Y2_N18
\FLASH_FLAG~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLASH_FLAG~7_combout\ = ( \SL_Digit[2]~10_combout\ & ( (SL_ALARM(2) & (!SL_ALARM(1) $ (\SL_Digit[1]~6_combout\))) ) ) # ( !\SL_Digit[2]~10_combout\ & ( (!SL_ALARM(2) & (!SL_ALARM(1) $ (\SL_Digit[1]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SL_ALARM(2),
	datac => ALT_INV_SL_ALARM(1),
	datad => \ALT_INV_SL_Digit[1]~6_combout\,
	dataf => \ALT_INV_SL_Digit[2]~10_combout\,
	combout => \FLASH_FLAG~7_combout\);

-- Location: LABCELL_X25_Y2_N9
\SH_ALARM[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- SH_ALARM(3) = ( \RESET~input_o\ & ( (!\SH_ALARM[1]~0_combout\ & ((SH_ALARM(3)))) # (\SH_ALARM[1]~0_combout\ & (\BCD_H[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BCD_H[3]~input_o\,
	datac => \ALT_INV_SH_ALARM[1]~0_combout\,
	datad => ALT_INV_SH_ALARM(3),
	dataf => \ALT_INV_RESET~input_o\,
	combout => SH_ALARM(3));

-- Location: LABCELL_X24_Y2_N48
\SH_ALARM[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- SH_ALARM(2) = ( SH_ALARM(2) & ( (\RESET~input_o\ & ((!\SH_ALARM[1]~0_combout\) # (\BCD_H[2]~input_o\))) ) ) # ( !SH_ALARM(2) & ( (\RESET~input_o\ & (\SH_ALARM[1]~0_combout\ & \BCD_H[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RESET~input_o\,
	datac => \ALT_INV_SH_ALARM[1]~0_combout\,
	datad => \ALT_INV_BCD_H[2]~input_o\,
	dataf => ALT_INV_SH_ALARM(2),
	combout => SH_ALARM(2));

-- Location: LABCELL_X21_Y2_N12
\SL_ALARM[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- SL_ALARM(0) = ( \SH_ALARM[1]~0_combout\ & ( \RESET~input_o\ & ( \BCD_L[0]~input_o\ ) ) ) # ( !\SH_ALARM[1]~0_combout\ & ( \RESET~input_o\ & ( SL_ALARM(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BCD_L[0]~input_o\,
	datad => ALT_INV_SL_ALARM(0),
	datae => \ALT_INV_SH_ALARM[1]~0_combout\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => SL_ALARM(0));

-- Location: LABCELL_X25_Y2_N12
\FLASH_FLAG~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLASH_FLAG~6_combout\ = ( \SH_Digit[2]~10_combout\ & ( SL_ALARM(0) & ( (\SL_Digit[0]~2_combout\ & (SH_ALARM(2) & (!SH_ALARM(3) $ (\SH_Digit[3]~14_combout\)))) ) ) ) # ( !\SH_Digit[2]~10_combout\ & ( SL_ALARM(0) & ( (\SL_Digit[0]~2_combout\ & 
-- (!SH_ALARM(2) & (!SH_ALARM(3) $ (\SH_Digit[3]~14_combout\)))) ) ) ) # ( \SH_Digit[2]~10_combout\ & ( !SL_ALARM(0) & ( (!\SL_Digit[0]~2_combout\ & (SH_ALARM(2) & (!SH_ALARM(3) $ (\SH_Digit[3]~14_combout\)))) ) ) ) # ( !\SH_Digit[2]~10_combout\ & ( 
-- !SL_ALARM(0) & ( (!\SL_Digit[0]~2_combout\ & (!SH_ALARM(2) & (!SH_ALARM(3) $ (\SH_Digit[3]~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SL_Digit[0]~2_combout\,
	datab => ALT_INV_SH_ALARM(3),
	datac => \ALT_INV_SH_Digit[3]~14_combout\,
	datad => ALT_INV_SH_ALARM(2),
	datae => \ALT_INV_SH_Digit[2]~10_combout\,
	dataf => ALT_INV_SL_ALARM(0),
	combout => \FLASH_FLAG~6_combout\);

-- Location: LABCELL_X25_Y2_N36
\FLASH_FLAG~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLASH_FLAG~8_combout\ = ( \SL_Digit[3]~14_combout\ & ( \FLASH_FLAG~6_combout\ & ( (SL_ALARM(3) & (\SET_H~input_o\ & (\FLASH_FLAG~7_combout\ & \SET_M~input_o\))) ) ) ) # ( !\SL_Digit[3]~14_combout\ & ( \FLASH_FLAG~6_combout\ & ( (!SL_ALARM(3) & 
-- (\SET_H~input_o\ & (\FLASH_FLAG~7_combout\ & \SET_M~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SL_ALARM(3),
	datab => \ALT_INV_SET_H~input_o\,
	datac => \ALT_INV_FLASH_FLAG~7_combout\,
	datad => \ALT_INV_SET_M~input_o\,
	datae => \ALT_INV_SL_Digit[3]~14_combout\,
	dataf => \ALT_INV_FLASH_FLAG~6_combout\,
	combout => \FLASH_FLAG~8_combout\);

-- Location: LABCELL_X25_Y1_N0
\MH_ALARM[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- MH_ALARM(3) = ( \ML_ALARM[0]~0_combout\ & ( (\BCD_H[3]~input_o\ & \RESET~input_o\) ) ) # ( !\ML_ALARM[0]~0_combout\ & ( (\RESET~input_o\ & MH_ALARM(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BCD_H[3]~input_o\,
	datac => \ALT_INV_RESET~input_o\,
	datad => ALT_INV_MH_ALARM(3),
	dataf => \ALT_INV_ML_ALARM[0]~0_combout\,
	combout => MH_ALARM(3));

-- Location: LABCELL_X26_Y1_N27
\MH_ALARM[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- MH_ALARM(2) = ( \ML_ALARM[0]~0_combout\ & ( MH_ALARM(2) & ( (\RESET~input_o\ & \BCD_H[2]~input_o\) ) ) ) # ( !\ML_ALARM[0]~0_combout\ & ( MH_ALARM(2) & ( \RESET~input_o\ ) ) ) # ( \ML_ALARM[0]~0_combout\ & ( !MH_ALARM(2) & ( (\RESET~input_o\ & 
-- \BCD_H[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100110011001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_BCD_H[2]~input_o\,
	datae => \ALT_INV_ML_ALARM[0]~0_combout\,
	dataf => ALT_INV_MH_ALARM(2),
	combout => MH_ALARM(2));

-- Location: LABCELL_X26_Y1_N12
\MH_ALARM[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- MH_ALARM(1) = ( \ML_ALARM[0]~0_combout\ & ( MH_ALARM(1) & ( (!\RESET~input_o\) # (\BCD_H[1]~input_o\) ) ) ) # ( !\ML_ALARM[0]~0_combout\ & ( MH_ALARM(1) ) ) # ( \ML_ALARM[0]~0_combout\ & ( !MH_ALARM(1) & ( (!\RESET~input_o\) # (\BCD_H[1]~input_o\) ) ) ) # 
-- ( !\ML_ALARM[0]~0_combout\ & ( !MH_ALARM(1) & ( !\RESET~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001111111111111111111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RESET~input_o\,
	datad => \ALT_INV_BCD_H[1]~input_o\,
	datae => \ALT_INV_ML_ALARM[0]~0_combout\,
	dataf => ALT_INV_MH_ALARM(1),
	combout => MH_ALARM(1));

-- Location: LABCELL_X25_Y1_N6
\FLASH_FLAG~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLASH_FLAG~2_combout\ = ( MH_ALARM(2) & ( MH_ALARM(1) & ( (\MH_Digit[1]~6_combout\ & (\MH_Digit[2]~10_combout\ & (!MH_ALARM(3) $ (\MH_Digit[3]~14_combout\)))) ) ) ) # ( !MH_ALARM(2) & ( MH_ALARM(1) & ( (\MH_Digit[1]~6_combout\ & 
-- (!\MH_Digit[2]~10_combout\ & (!MH_ALARM(3) $ (\MH_Digit[3]~14_combout\)))) ) ) ) # ( MH_ALARM(2) & ( !MH_ALARM(1) & ( (!\MH_Digit[1]~6_combout\ & (\MH_Digit[2]~10_combout\ & (!MH_ALARM(3) $ (\MH_Digit[3]~14_combout\)))) ) ) ) # ( !MH_ALARM(2) & ( 
-- !MH_ALARM(1) & ( (!\MH_Digit[1]~6_combout\ & (!\MH_Digit[2]~10_combout\ & (!MH_ALARM(3) $ (\MH_Digit[3]~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MH_Digit[1]~6_combout\,
	datab => \ALT_INV_MH_Digit[2]~10_combout\,
	datac => ALT_INV_MH_ALARM(3),
	datad => \ALT_INV_MH_Digit[3]~14_combout\,
	datae => ALT_INV_MH_ALARM(2),
	dataf => ALT_INV_MH_ALARM(1),
	combout => \FLASH_FLAG~2_combout\);

-- Location: LABCELL_X25_Y2_N3
\FLASH_FLAG~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLASH_FLAG~9_combout\ = ( \FLASH_FLAG~8_combout\ & ( \FLASH_FLAG~2_combout\ & ( ((\FLASH_FLAG~0_combout\ & (\FLASH_FLAG~1_combout\ & \FLASH_FLAG~5_combout\))) # (\FLASH_FLAG~q\) ) ) ) # ( !\FLASH_FLAG~8_combout\ & ( \FLASH_FLAG~2_combout\ & ( 
-- \FLASH_FLAG~q\ ) ) ) # ( \FLASH_FLAG~8_combout\ & ( !\FLASH_FLAG~2_combout\ & ( \FLASH_FLAG~q\ ) ) ) # ( !\FLASH_FLAG~8_combout\ & ( !\FLASH_FLAG~2_combout\ & ( \FLASH_FLAG~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FLASH_FLAG~q\,
	datab => \ALT_INV_FLASH_FLAG~0_combout\,
	datac => \ALT_INV_FLASH_FLAG~1_combout\,
	datad => \ALT_INV_FLASH_FLAG~5_combout\,
	datae => \ALT_INV_FLASH_FLAG~8_combout\,
	dataf => \ALT_INV_FLASH_FLAG~2_combout\,
	combout => \FLASH_FLAG~9_combout\);

-- Location: FF_X25_Y2_N2
FLASH_FLAG : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \FLASH_FLAG~9_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLASH_FLAG~q\);

-- Location: LABCELL_X25_Y23_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


