-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 11.0 Build 157 04/27/2011 SJ Web Edition"

-- DATE "04/18/2012 22:23:30"

-- 
-- Device: Altera EP2C8T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rangefinder IS
    PORT (
	trigger : OUT std_logic;
	altitude : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	edge : IN std_logic
	);
END rangefinder;

-- Design Ports Information
-- trigger	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- altitude[0]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- altitude[1]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- altitude[2]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- altitude[3]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- altitude[4]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- altitude[5]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- altitude[6]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- altitude[7]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- edge	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF rangefinder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_trigger : std_logic;
SIGNAL ww_altitude : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_edge : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timevector[1]~2_combout\ : std_logic;
SIGNAL \timevector[12]~24_combout\ : std_logic;
SIGNAL \timevector[13]~26_combout\ : std_logic;
SIGNAL \timevector[14]~28_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~26_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~26_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~28_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~28_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~30_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~28_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~30_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~26_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~28_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~30_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~26_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~34_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~38_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~34_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~36_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~38_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~28_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~30_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~38_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~42_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~26_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~28_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~30_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~32_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[272]~11_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~36_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~50_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[338]~56_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~64_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[363]~70_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~77_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~79_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~83_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~84_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~97_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~100_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[409]~105_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~114_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~115_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~117_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[434]~122_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~128_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~129_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~138_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[459]~140_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~149_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~157_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~159_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[482]~161_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~163_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~165_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~179_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[507]~181_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~186_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~189_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[531]~198_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~204_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \LessThan2~11_combout\ : std_logic;
SIGNAL \LessThan2~12_combout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \LessThan2~17_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan2~22_combout\ : std_logic;
SIGNAL \edgeend[8]~feeder_combout\ : std_logic;
SIGNAL \edgeend[21]~feeder_combout\ : std_logic;
SIGNAL \edgeend[10]~feeder_combout\ : std_logic;
SIGNAL \edgeend[11]~feeder_combout\ : std_logic;
SIGNAL \edgeend[5]~feeder_combout\ : std_logic;
SIGNAL \edgeend[0]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~24_combout\ : std_logic;
SIGNAL \count[19]~63\ : std_logic;
SIGNAL \count[20]~65\ : std_logic;
SIGNAL \count[21]~66_combout\ : std_logic;
SIGNAL \count[21]~67\ : std_logic;
SIGNAL \count[22]~68_combout\ : std_logic;
SIGNAL \count[20]~64_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \count[0]~25\ : std_logic;
SIGNAL \count[1]~27\ : std_logic;
SIGNAL \count[2]~29\ : std_logic;
SIGNAL \count[3]~30_combout\ : std_logic;
SIGNAL \count[3]~31\ : std_logic;
SIGNAL \count[4]~33\ : std_logic;
SIGNAL \count[5]~34_combout\ : std_logic;
SIGNAL \count[5]~35\ : std_logic;
SIGNAL \count[6]~37\ : std_logic;
SIGNAL \count[7]~38_combout\ : std_logic;
SIGNAL \count[7]~39\ : std_logic;
SIGNAL \count[8]~41\ : std_logic;
SIGNAL \count[9]~42_combout\ : std_logic;
SIGNAL \count[9]~43\ : std_logic;
SIGNAL \count[10]~44_combout\ : std_logic;
SIGNAL \count[10]~45\ : std_logic;
SIGNAL \count[11]~46_combout\ : std_logic;
SIGNAL \count[11]~47\ : std_logic;
SIGNAL \count[12]~48_combout\ : std_logic;
SIGNAL \count[12]~49\ : std_logic;
SIGNAL \count[13]~50_combout\ : std_logic;
SIGNAL \count[13]~51\ : std_logic;
SIGNAL \count[14]~52_combout\ : std_logic;
SIGNAL \count[14]~53\ : std_logic;
SIGNAL \count[15]~55\ : std_logic;
SIGNAL \count[16]~56_combout\ : std_logic;
SIGNAL \count[16]~57\ : std_logic;
SIGNAL \count[17]~59\ : std_logic;
SIGNAL \count[18]~61\ : std_logic;
SIGNAL \count[19]~62_combout\ : std_logic;
SIGNAL \count[17]~58_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \count[22]~69\ : std_logic;
SIGNAL \count[23]~70_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \trigger~reg0_regout\ : std_logic;
SIGNAL \edge~combout\ : std_logic;
SIGNAL \edgeYet~regout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \edgeend[22]~feeder_combout\ : std_logic;
SIGNAL \edgeYet2~0_combout\ : std_logic;
SIGNAL \edgeYet2~regout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \edgeend[20]~feeder_combout\ : std_logic;
SIGNAL \edgeend[19]~feeder_combout\ : std_logic;
SIGNAL \count[18]~60_combout\ : std_logic;
SIGNAL \edgeend[18]~feeder_combout\ : std_logic;
SIGNAL \edgeend[17]~feeder_combout\ : std_logic;
SIGNAL \count[15]~54_combout\ : std_logic;
SIGNAL \edgeend[15]~feeder_combout\ : std_logic;
SIGNAL \count[8]~40_combout\ : std_logic;
SIGNAL \count[6]~36_combout\ : std_logic;
SIGNAL \count[4]~32_combout\ : std_logic;
SIGNAL \count[2]~28_combout\ : std_logic;
SIGNAL \count[1]~26_combout\ : std_logic;
SIGNAL \edgeend[1]~feeder_combout\ : std_logic;
SIGNAL \timevector[0]~1\ : std_logic;
SIGNAL \timevector[1]~3\ : std_logic;
SIGNAL \timevector[2]~5\ : std_logic;
SIGNAL \timevector[3]~7\ : std_logic;
SIGNAL \timevector[4]~9\ : std_logic;
SIGNAL \timevector[5]~11\ : std_logic;
SIGNAL \timevector[6]~13\ : std_logic;
SIGNAL \timevector[7]~15\ : std_logic;
SIGNAL \timevector[8]~17\ : std_logic;
SIGNAL \timevector[9]~19\ : std_logic;
SIGNAL \timevector[10]~21\ : std_logic;
SIGNAL \timevector[11]~23\ : std_logic;
SIGNAL \timevector[12]~25\ : std_logic;
SIGNAL \timevector[13]~27\ : std_logic;
SIGNAL \timevector[14]~29\ : std_logic;
SIGNAL \timevector[15]~31\ : std_logic;
SIGNAL \timevector[16]~33\ : std_logic;
SIGNAL \timevector[17]~35\ : std_logic;
SIGNAL \timevector[18]~37\ : std_logic;
SIGNAL \timevector[19]~39\ : std_logic;
SIGNAL \timevector[20]~41\ : std_logic;
SIGNAL \timevector[21]~43\ : std_logic;
SIGNAL \timevector[22]~45\ : std_logic;
SIGNAL \timevector[23]~46_combout\ : std_logic;
SIGNAL \timevector[22]~44_combout\ : std_logic;
SIGNAL \timevector[20]~40_combout\ : std_logic;
SIGNAL \timevector[18]~36_combout\ : std_logic;
SIGNAL \timevector[17]~34_combout\ : std_logic;
SIGNAL \timevector[15]~30_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[250]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[249]~9_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[247]~1_combout\ : std_logic;
SIGNAL \timevector[19]~38_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[246]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[242]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[275]~19_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ : std_logic;
SIGNAL \timevector[21]~42_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[248]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[273]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[271]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[245]~3_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[270]~13_combout\ : std_logic;
SIGNAL \timevector[16]~32_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[243]~5_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[268]~15_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[267]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~23\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~31_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[274]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~32_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~23_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~27_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[241]~7_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[266]~17_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~28_combout\ : std_logic;
SIGNAL \timevector[11]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~23\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~25\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~44_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~45_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~21_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~33_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~34_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~35_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[244]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[269]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~25_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~37_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~26_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~38_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~39_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[265]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[290]~29_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~41_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[313]~43_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~23\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~25\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~58_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~27\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~46_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~47_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~48_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~49_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~51_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~52_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~40_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~53_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~54_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[289]~30_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[314]~42_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~55_combout\ : std_logic;
SIGNAL \timevector[10]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[337]~57_combout\ : std_logic;
SIGNAL \timevector[9]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~23\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~25\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~27\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[15]~28_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[15]~29\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~73_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~60_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~61_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~62_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~63_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~65_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~67_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~68_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~69_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[362]~71_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[361]~72_combout\ : std_logic;
SIGNAL \timevector[8]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~23\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~25\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~27\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~29\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~30_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~31\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~89_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~59_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~74_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~90_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~75_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~76_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~78_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~66_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~81_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~85_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[387]~86_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[386]~87_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[385]~88_combout\ : std_logic;
SIGNAL \timevector[7]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~23\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~25\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~27\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~29\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~31\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~32_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~33\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~106_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~91_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~26_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~92_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~93_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~94_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~82_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~98_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~99_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[411]~103_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[410]~104_combout\ : std_logic;
SIGNAL \timevector[6]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~23\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~25\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~27\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~29\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~31\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~33\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~35\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~32_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~107_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~125_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~26_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~110_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~111_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~116_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~101_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~118_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~102_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~119_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~120_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[435]~121_combout\ : std_logic;
SIGNAL \timevector[5]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~23\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~25\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~27\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~29\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~31\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~33\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~34_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~34_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~124_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~35\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~37\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~144_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~95_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~112_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~130_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~80_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~96_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~113_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~131_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~132_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~133_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~135_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~136_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~137_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~139_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[457]~142_combout\ : std_logic;
SIGNAL \timevector[4]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~23\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~25\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~27\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~29\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~31\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~33\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~35\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~36_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~164_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~36_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~143_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~37\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~39\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~108_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~32_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~126_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~145_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~32_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~109_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~127_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~146_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~30_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~147_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~151_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~134_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~153_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~154_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~156_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~158_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[433]~123_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[458]~141_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[483]~160_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~23\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~25\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~27\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~29\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~31\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~33\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~35\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~37\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~39\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~41\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~185_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~40_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~184_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~166_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~32_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~167_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~28_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~169_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~26_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~150_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~170_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~173_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~174_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~155_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~175_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~176_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~177_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~178_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~180_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[481]~162_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[506]~182_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\ : std_logic;
SIGNAL \timevector[3]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[505]~183_combout\ : std_logic;
SIGNAL \timevector[2]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~23\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~25\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~27\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~29\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~31\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~33\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~35\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~37\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~39\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~41\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~43\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~40_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~188_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~36_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~187_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~34_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~202_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~30_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~28_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~148_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~168_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~32_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~203_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~205_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~26_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~171_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~200_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~152_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~172_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~201_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~190_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~191_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~192_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~193_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~194_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~206_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~199_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~195_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~207_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[530]~196_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[529]~197_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~1\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~5\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~7\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~9\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~11\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~13\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~15\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~17\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~19\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~21\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~23\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~25\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~27\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~29\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~31\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~33\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~35\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~37\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~39\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~41\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~43\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~45\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~46_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~40_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~38_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~34_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~36_combout\ : std_logic;
SIGNAL \LessThan2~18_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~44_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~42_combout\ : std_logic;
SIGNAL \LessThan2~19_combout\ : std_logic;
SIGNAL \LessThan2~20_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~20_combout\ : std_logic;
SIGNAL \LessThan2~15_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\ : std_logic;
SIGNAL \timevector[0]~0_combout\ : std_logic;
SIGNAL \LessThan2~13_combout\ : std_logic;
SIGNAL \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~22_combout\ : std_logic;
SIGNAL \LessThan2~16_combout\ : std_logic;
SIGNAL \LessThan2~21_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL count : std_logic_vector(23 DOWNTO 0);
SIGNAL edgebegin : std_logic_vector(23 DOWNTO 0);
SIGNAL edgeend : std_logic_vector(23 DOWNTO 0);

BEGIN

trigger <= ww_trigger;
altitude <= ww_altitude;
ww_clk <= clk;
ww_edge <= edge;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X16_Y15_N10
\timevector[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[1]~2_combout\ = (edgebegin(1) & ((edgeend(1) & (!\timevector[0]~1\)) # (!edgeend(1) & (\timevector[0]~1\ & VCC)))) # (!edgebegin(1) & ((edgeend(1) & ((\timevector[0]~1\) # (GND))) # (!edgeend(1) & (!\timevector[0]~1\))))
-- \timevector[1]~3\ = CARRY((edgebegin(1) & (edgeend(1) & !\timevector[0]~1\)) # (!edgebegin(1) & ((edgeend(1)) # (!\timevector[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgebegin(1),
	datab => edgeend(1),
	datad => VCC,
	cin => \timevector[0]~1\,
	combout => \timevector[1]~2_combout\,
	cout => \timevector[1]~3\);

-- Location: LCCOMB_X16_Y14_N0
\timevector[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[12]~24_combout\ = ((edgeend(12) $ (edgebegin(12) $ (\timevector[11]~23\)))) # (GND)
-- \timevector[12]~25\ = CARRY((edgeend(12) & (edgebegin(12) & !\timevector[11]~23\)) # (!edgeend(12) & ((edgebegin(12)) # (!\timevector[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(12),
	datab => edgebegin(12),
	datad => VCC,
	cin => \timevector[11]~23\,
	combout => \timevector[12]~24_combout\,
	cout => \timevector[12]~25\);

-- Location: LCCOMB_X16_Y14_N2
\timevector[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[13]~26_combout\ = (edgeend(13) & ((edgebegin(13) & (!\timevector[12]~25\)) # (!edgebegin(13) & ((\timevector[12]~25\) # (GND))))) # (!edgeend(13) & ((edgebegin(13) & (\timevector[12]~25\ & VCC)) # (!edgebegin(13) & (!\timevector[12]~25\))))
-- \timevector[13]~27\ = CARRY((edgeend(13) & ((!\timevector[12]~25\) # (!edgebegin(13)))) # (!edgeend(13) & (!edgebegin(13) & !\timevector[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(13),
	datab => edgebegin(13),
	datad => VCC,
	cin => \timevector[12]~25\,
	combout => \timevector[13]~26_combout\,
	cout => \timevector[13]~27\);

-- Location: LCCOMB_X16_Y14_N4
\timevector[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[14]~28_combout\ = ((edgeend(14) $ (edgebegin(14) $ (\timevector[13]~27\)))) # (GND)
-- \timevector[14]~29\ = CARRY((edgeend(14) & (edgebegin(14) & !\timevector[13]~27\)) # (!edgeend(14) & ((edgebegin(14)) # (!\timevector[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(14),
	datab => edgebegin(14),
	datad => VCC,
	cin => \timevector[13]~27\,
	combout => \timevector[14]~28_combout\,
	cout => \timevector[14]~29\);

-- Location: LCCOMB_X14_Y13_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\timevector[16]~32_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ $ (GND))) # (!\timevector[16]~32_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((\timevector[16]~32_combout\ & !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[16]~32_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X14_Y13_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\ = (\timevector[23]~46_combout\ & (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~17\)) # (!\timevector[23]~46_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~17\) # (!\timevector[23]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timevector[23]~46_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~19\);

-- Location: LCCOMB_X17_Y11_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[242]~6_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[242]~6_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[242]~6_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[242]~6_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X17_Y11_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[243]~5_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[243]~5_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[243]~5_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[243]~5_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X17_Y11_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[247]~1_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[247]~1_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[247]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[247]~1_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~15\);

-- Location: LCCOMB_X16_Y11_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[268]~15_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[268]~15_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[268]~15_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[268]~15_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~9\);

-- Location: LCCOMB_X16_Y11_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[270]~13_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[270]~13_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[270]~13_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[270]~13_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~13\);

-- Location: LCCOMB_X16_Y11_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[272]~11_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[272]~11_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[272]~11_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[272]~11_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~17\);

-- Location: LCCOMB_X16_Y11_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[275]~19_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~21\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[275]~19_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~21\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~23\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[275]~19_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[275]~19_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~22_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~23\);

-- Location: LCCOMB_X19_Y12_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~27_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~27_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~27_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~27_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~9\);

-- Location: LCCOMB_X19_Y12_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~24_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~24_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~24_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~15\);

-- Location: LCCOMB_X22_Y10_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[313]~43_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[313]~43_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[313]~43_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[313]~43_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X22_Y10_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~37_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~37_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~37_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~15\);

-- Location: LCCOMB_X23_Y11_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[337]~57_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[337]~57_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[337]~57_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[337]~57_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~3\);

-- Location: LCCOMB_X23_Y11_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[338]~56_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[338]~56_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[338]~56_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[338]~56_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~5\);

-- Location: LCCOMB_X23_Y11_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~54_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~54_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~54_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~54_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~9\);

-- Location: LCCOMB_X23_Y11_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~53_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~53_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~53_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~11\);

-- Location: LCCOMB_X23_Y11_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~51_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~51_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~51_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~15\);

-- Location: LCCOMB_X23_Y11_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~50_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~50_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~50_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~50_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~17\);

-- Location: LCCOMB_X23_Y11_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~26_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~59_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~25\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~59_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~25\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~27\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~59_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~59_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~25\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~26_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~27\);

-- Location: LCCOMB_X21_Y9_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~69_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~69_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~69_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~69_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~9\);

-- Location: LCCOMB_X21_Y9_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~68_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~68_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~68_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~11\);

-- Location: LCCOMB_X21_Y8_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~64_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~64_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~64_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~19\);

-- Location: LCCOMB_X21_Y8_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~63_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~63_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~63_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~63_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~21\);

-- Location: LCCOMB_X21_Y8_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~62_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~21\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~62_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~21\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~23\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~62_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~62_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~22_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~23\);

-- Location: LCCOMB_X21_Y8_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~26_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~60_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~25\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~60_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~25\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~27\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~60_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~60_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~25\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~26_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~27\);

-- Location: LCCOMB_X21_Y8_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~28_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~74_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~27\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~74_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~27\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~29\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~74_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~74_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~27\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~28_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~29\);

-- Location: LCCOMB_X17_Y9_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\ = \timevector[7]~14_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ = CARRY(\timevector[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timevector[7]~14_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~1\);

-- Location: LCCOMB_X17_Y9_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[385]~88_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[385]~88_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[385]~88_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[385]~88_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~3\);

-- Location: LCCOMB_X17_Y9_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[387]~86_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[387]~86_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[387]~86_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[387]~86_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~7\);

-- Location: LCCOMB_X17_Y9_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~84_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~84_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~84_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~11\);

-- Location: LCCOMB_X17_Y9_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~81_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~81_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~81_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~81_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~17\);

-- Location: LCCOMB_X17_Y8_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~80_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~80_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~80_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~19\);

-- Location: LCCOMB_X17_Y8_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~28_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~75_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~27\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~75_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~27\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~29\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~75_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~75_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~27\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~28_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~29\);

-- Location: LCCOMB_X17_Y8_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~30_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~90_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~29\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~90_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~29\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~31\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~90_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~90_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~29\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~30_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~31\);

-- Location: LCCOMB_X15_Y9_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[409]~105_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[409]~105_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[409]~105_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[409]~105_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~3\);

-- Location: LCCOMB_X15_Y9_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[410]~104_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[410]~104_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[410]~104_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[410]~104_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~5\);

-- Location: LCCOMB_X15_Y9_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~100_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~100_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~100_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~100_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~13\);

-- Location: LCCOMB_X15_Y9_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~98_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~98_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~98_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~98_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~17\);

-- Location: LCCOMB_X15_Y8_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~97_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~97_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~97_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~19\);

-- Location: LCCOMB_X15_Y8_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~96_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~96_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~96_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~96_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~21\);

-- Location: LCCOMB_X15_Y8_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~24_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~94_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~23\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~94_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~23\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~25\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~94_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~94_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~23\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~24_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~25\);

-- Location: LCCOMB_X15_Y8_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~28_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~92_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~27\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~92_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~27\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~29\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~92_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~92_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~27\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~28_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~29\);

-- Location: LCCOMB_X15_Y8_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~30_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~91_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~29\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~91_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~29\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~31\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~91_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~91_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~29\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~30_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~31\);

-- Location: LCCOMB_X16_Y9_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[434]~122_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[434]~122_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[434]~122_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[434]~122_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~5\);

-- Location: LCCOMB_X16_Y9_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~120_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~120_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~120_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~120_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~9\);

-- Location: LCCOMB_X16_Y8_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~26_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~111_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~25\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~111_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~25\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~27\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~111_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~111_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~25\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~26_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~27\);

-- Location: LCCOMB_X16_Y8_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~28_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~110_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~27\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~110_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~27\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~29\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~110_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~110_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~27\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~28_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~29\);

-- Location: LCCOMB_X16_Y8_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~30_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~109_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~29\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~109_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~29\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~31\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~109_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~109_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~29\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~30_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~31\);

-- Location: LCCOMB_X15_Y6_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\ = \timevector[4]~8_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~1\ = CARRY(\timevector[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timevector[4]~8_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~1\);

-- Location: LCCOMB_X15_Y6_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[457]~142_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[457]~142_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[457]~142_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[457]~142_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~3\);

-- Location: LCCOMB_X15_Y6_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[459]~140_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[459]~140_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[459]~140_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[459]~140_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~7\);

-- Location: LCCOMB_X15_Y6_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~139_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~139_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~139_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~139_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~9\);

-- Location: LCCOMB_X15_Y6_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~138_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~138_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~138_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~11\);

-- Location: LCCOMB_X15_Y6_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~137_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~137_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~137_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~137_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~13\);

-- Location: LCCOMB_X15_Y6_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~135_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~135_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~135_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~135_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~17\);

-- Location: LCCOMB_X15_Y5_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~132_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~21\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~132_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~21\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~23\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~132_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~132_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~22_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~23\);

-- Location: LCCOMB_X15_Y5_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~26_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~130_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~25\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~130_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~25\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~27\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~130_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~130_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~25\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~26_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~27\);

-- Location: LCCOMB_X15_Y5_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~34_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~126_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~33\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~126_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~33\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~35\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~126_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~126_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~33\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~34_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~35\);

-- Location: LCCOMB_X15_Y5_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~38_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~143_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~37\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~143_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~37\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~39\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~143_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~143_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~37\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~38_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~39\);

-- Location: LCCOMB_X13_Y5_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[482]~161_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[482]~161_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[482]~161_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[482]~161_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~5\);

-- Location: LCCOMB_X13_Y5_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~159_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~159_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~159_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~159_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~9\);

-- Location: LCCOMB_X13_Y5_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~156_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~156_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~156_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~156_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~15\);

-- Location: LCCOMB_X13_Y4_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~152_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~21\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~152_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~21\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~23\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~152_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~152_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~22_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~23\);

-- Location: LCCOMB_X13_Y4_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~24_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~151_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~23\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~151_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~23\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~25\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~151_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~151_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~23\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~24_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~25\);

-- Location: LCCOMB_X13_Y4_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~34_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~146_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~33\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~146_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~33\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~35\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~146_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~146_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~33\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~34_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~35\);

-- Location: LCCOMB_X13_Y4_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~36_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~145_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~35\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~145_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~35\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~37\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~145_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~145_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~35\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~36_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~37\);

-- Location: LCCOMB_X13_Y4_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~38_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~164_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~37\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~164_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~37\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~39\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~164_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~164_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~37\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~38_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~39\);

-- Location: LCCOMB_X14_Y5_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\ = \timevector[2]~4_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~1\ = CARRY(\timevector[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timevector[2]~4_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~1\);

-- Location: LCCOMB_X14_Y5_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[506]~182_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[506]~182_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[506]~182_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[506]~182_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~5\);

-- Location: LCCOMB_X14_Y4_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~28_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~170_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~27\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~170_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~27\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~29\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~170_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~170_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~27\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~28_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~29\);

-- Location: LCCOMB_X14_Y4_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~30_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~169_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~29\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~169_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~29\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~31\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~169_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~169_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~29\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~30_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~31\);

-- Location: LCCOMB_X14_Y4_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~38_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~165_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~37\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~165_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~37\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~39\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~165_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~165_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~37\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~38_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~39\);

-- Location: LCCOMB_X14_Y4_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~42_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~184_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~41\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~184_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~41\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~43\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~184_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~184_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~41\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~42_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~43\);

-- Location: LCCOMB_X14_Y7_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[529]~197_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[529]~197_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[529]~197_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[529]~197_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~3\);

-- Location: LCCOMB_X14_Y7_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[531]~198_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[531]~198_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[531]~198_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[531]~198_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~7\);

-- Location: LCCOMB_X14_Y7_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~207_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~207_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~207_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~207_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~9\);

-- Location: LCCOMB_X14_Y7_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~195_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~195_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~195_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~11\);

-- Location: LCCOMB_X14_Y7_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~199_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~199_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~199_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~199_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~13\);

-- Location: LCCOMB_X14_Y7_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~193_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~193_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~193_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~19\);

-- Location: LCCOMB_X14_Y6_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~24_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~190_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~23\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~190_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~23\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~25\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~190_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~190_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~23\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~24_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~25\);

-- Location: LCCOMB_X14_Y6_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~26_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~201_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~25\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~201_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~25\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~27\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~201_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~201_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~25\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~26_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~27\);

-- Location: LCCOMB_X14_Y6_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~28_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~200_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~27\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~200_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~27\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~29\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~200_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~200_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~27\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~28_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~29\);

-- Location: LCCOMB_X14_Y6_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~30_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~205_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~29\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~205_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~29\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~31\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~205_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~205_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~29\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~30_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~31\);

-- Location: LCCOMB_X14_Y6_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~32_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~204_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~31\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~204_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~31\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~33\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~204_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~204_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~31\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~32_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~33\);

-- Location: LCFF_X17_Y14_N17
\edgeend[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[21]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(21));

-- Location: LCFF_X16_Y14_N17
\edgebegin[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(20),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(20));

-- Location: LCFF_X16_Y14_N15
\edgebegin[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(19),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(19));

-- Location: LCFF_X16_Y14_N13
\edgebegin[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(18),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(18));

-- Location: LCFF_X16_Y14_N11
\edgebegin[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(17),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(17));

-- Location: LCFF_X16_Y14_N9
\edgebegin[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(16),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(16));

-- Location: LCFF_X16_Y14_N7
\edgebegin[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(15),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(15));

-- Location: LCFF_X17_Y14_N31
\edgeend[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(14),
	sload => VCC,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(14));

-- Location: LCFF_X17_Y14_N25
\edgeend[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(13),
	sload => VCC,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(13));

-- Location: LCFF_X17_Y14_N11
\edgeend[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(12),
	sload => VCC,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(12));

-- Location: LCFF_X17_Y14_N5
\edgeend[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[11]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(11));

-- Location: LCFF_X17_Y14_N7
\edgeend[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[10]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(10));

-- Location: LCFF_X17_Y14_N1
\edgeend[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(9),
	sload => VCC,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(9));

-- Location: LCFF_X15_Y15_N3
\edgeend[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[8]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(8));

-- Location: LCFF_X16_Y15_N1
\edgeend[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(7),
	sload => VCC,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(7));

-- Location: LCFF_X16_Y15_N21
\edgebegin[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(6),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(6));

-- Location: LCFF_X14_Y14_N1
\edgeend[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[5]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(5));

-- Location: LCFF_X16_Y15_N17
\edgebegin[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(4),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(4));

-- Location: LCFF_X14_Y14_N11
\edgeend[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(3),
	sload => VCC,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(3));

-- Location: LCFF_X16_Y15_N13
\edgebegin[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(2),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(2));

-- Location: LCFF_X16_Y15_N11
\edgebegin[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(1),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(1));

-- Location: LCFF_X14_Y14_N23
\edgeend[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[0]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(0));

-- Location: LCFF_X14_Y14_N9
\edgeend[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(23),
	sload => VCC,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(23));

-- Location: LCFF_X16_Y14_N21
\edgebegin[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(22),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(22));

-- Location: LCCOMB_X18_Y11_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[272]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[272]~11_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[247]~1_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[247]~1_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[272]~11_combout\);

-- Location: LCCOMB_X18_Y11_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[272]~11_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~16_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[272]~11_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~22_combout\);

-- Location: LCCOMB_X21_Y12_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~24_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[270]~13_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[270]~13_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~24_combout\);

-- Location: LCCOMB_X21_Y12_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~36_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~24_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~24_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~36_combout\);

-- Location: LCCOMB_X18_Y10_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~50_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~37_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~37_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~50_combout\);

-- Location: LCCOMB_X24_Y11_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[338]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[338]~56_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[313]~43_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[313]~43_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[338]~56_combout\);

-- Location: LCCOMB_X18_Y10_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~64_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~50_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~50_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~16_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~64_combout\);

-- Location: LCCOMB_X24_Y11_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[363]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[363]~70_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[338]~56_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[338]~56_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[363]~70_combout\);

-- Location: LCCOMB_X18_Y10_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~77_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~62_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~22_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~62_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~77_combout\);

-- Location: LCCOMB_X18_Y10_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~79_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~64_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~64_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~18_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~79_combout\);

-- Location: LCCOMB_X21_Y9_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~83_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~68_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~68_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~83_combout\);

-- Location: LCCOMB_X21_Y9_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~84_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~69_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~69_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~84_combout\);

-- Location: LCCOMB_X17_Y9_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~97_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~81_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~16_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~81_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~97_combout\);

-- Location: LCCOMB_X17_Y9_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~100_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~84_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~84_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~100_combout\);

-- Location: LCCOMB_X17_Y9_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[409]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[409]~105_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & (\timevector[7]~14_combout\)) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timevector[7]~14_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[409]~105_combout\);

-- Location: LCCOMB_X18_Y10_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~114_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~97_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~18_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~97_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~114_combout\);

-- Location: LCCOMB_X15_Y9_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~115_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~98_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~16_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~98_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~115_combout\);

-- Location: LCCOMB_X15_Y9_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~117_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~100_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~12_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~100_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~117_combout\);

-- Location: LCCOMB_X15_Y9_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[434]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[434]~122_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[409]~105_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[409]~105_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[434]~122_combout\);

-- Location: LCCOMB_X16_Y8_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~128_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~110_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~110_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~28_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~128_combout\);

-- Location: LCCOMB_X17_Y5_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~129_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~111_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~111_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~26_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~129_combout\);

-- Location: LCCOMB_X16_Y9_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~138_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~120_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~120_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~8_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~138_combout\);

-- Location: LCCOMB_X16_Y9_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[459]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[459]~140_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[434]~122_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[434]~122_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[459]~140_combout\);

-- Location: LCCOMB_X15_Y5_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~149_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~130_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~26_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~130_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~149_combout\);

-- Location: LCCOMB_X14_Y6_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~157_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~138_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~138_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~157_combout\);

-- Location: LCCOMB_X18_Y9_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~159_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[459]~140_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[459]~140_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~159_combout\);

-- Location: LCCOMB_X15_Y6_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[482]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[482]~161_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[457]~142_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[457]~142_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[482]~161_combout\);

-- Location: LCCOMB_X17_Y8_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~163_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~143_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~38_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~143_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~163_combout\);

-- Location: LCCOMB_X13_Y8_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~165_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~145_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~36_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~145_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~165_combout\);

-- Location: LCCOMB_X13_Y5_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~179_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~159_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~8_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~159_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~179_combout\);

-- Location: LCCOMB_X13_Y8_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[507]~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[507]~181_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[482]~161_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[482]~161_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[507]~181_combout\);

-- Location: LCCOMB_X13_Y8_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~186_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~165_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~165_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~38_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~186_combout\);

-- Location: LCCOMB_X15_Y7_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~189_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~184_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~42_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~184_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~189_combout\);

-- Location: LCCOMB_X14_Y7_N0
\LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\timevector[1]~2_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[529]~197_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[530]~196_combout\) # 
-- (\timevector[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[1]~2_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[529]~197_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[530]~196_combout\,
	datad => \timevector[0]~0_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X14_Y5_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[531]~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[531]~198_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[506]~182_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[506]~182_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[531]~198_combout\);

-- Location: LCCOMB_X14_Y5_N6
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[531]~198_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[507]~181_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[531]~198_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[507]~181_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X15_Y7_N30
\LessThan2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~199_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~178_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~178_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~199_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~12_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X15_Y7_N24
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (\LessThan2~4_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~195_combout\) # ((\LessThan2~5_combout\) # (\LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~4_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~195_combout\,
	datac => \LessThan2~5_combout\,
	datad => \LessThan2~6_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X15_Y7_N2
\LessThan2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~194_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~192_combout\) # ((\LessThan2~7_combout\) # 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~194_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~192_combout\,
	datac => \LessThan2~7_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~193_combout\,
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X22_Y9_N28
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~188_combout\) # ((\LessThan2~22_combout\) # ((\LessThan2~8_combout\ & \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~8_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~191_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~188_combout\,
	datad => \LessThan2~22_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X13_Y8_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~204_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~169_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~169_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~30_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~204_combout\);

-- Location: LCCOMB_X13_Y8_N20
\LessThan2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~205_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~203_combout\) # 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~202_combout\) # (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~204_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~205_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~203_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~202_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~204_combout\,
	combout => \LessThan2~10_combout\);

-- Location: LCCOMB_X22_Y9_N30
\LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~11_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~200_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~201_combout\) # (\LessThan2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~200_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~201_combout\,
	datac => \LessThan2~10_combout\,
	combout => \LessThan2~11_combout\);

-- Location: LCCOMB_X22_Y9_N24
\LessThan2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~186_combout\) # ((\LessThan2~11_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~187_combout\) # (\LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~186_combout\,
	datab => \LessThan2~11_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~187_combout\,
	datad => \LessThan2~9_combout\,
	combout => \LessThan2~12_combout\);

-- Location: LCCOMB_X14_Y7_N4
\LessThan2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~8_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\) # 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~12_combout\) # (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~8_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~12_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \LessThan2~14_combout\);

-- Location: LCCOMB_X16_Y6_N0
\LessThan2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~17_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~26_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~30_combout\) # 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~28_combout\) # (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~26_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~30_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~28_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~24_combout\,
	combout => \LessThan2~17_combout\);

-- Location: LCCOMB_X15_Y14_N24
\LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (count(15)) # ((count(16)) # ((count(14)) # (count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(16),
	datac => count(14),
	datad => count(13),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X15_Y7_N22
\LessThan2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~190_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~184_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~42_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~190_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~184_combout\,
	combout => \LessThan2~22_combout\);

-- Location: LCCOMB_X15_Y15_N2
\edgeend[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[8]~feeder_combout\ = count(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(8),
	combout => \edgeend[8]~feeder_combout\);

-- Location: LCCOMB_X17_Y14_N16
\edgeend[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[21]~feeder_combout\ = count(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(21),
	combout => \edgeend[21]~feeder_combout\);

-- Location: LCCOMB_X17_Y14_N6
\edgeend[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[10]~feeder_combout\ = count(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(10),
	combout => \edgeend[10]~feeder_combout\);

-- Location: LCCOMB_X17_Y14_N4
\edgeend[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[11]~feeder_combout\ = count(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(11),
	combout => \edgeend[11]~feeder_combout\);

-- Location: LCCOMB_X14_Y14_N0
\edgeend[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[5]~feeder_combout\ = count(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(5),
	combout => \edgeend[5]~feeder_combout\);

-- Location: LCCOMB_X14_Y14_N22
\edgeend[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[0]~feeder_combout\ = count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(0),
	combout => \edgeend[0]~feeder_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y15_N8
\count[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~24_combout\ = count(0) $ (VCC)
-- \count[0]~25\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~24_combout\,
	cout => \count[0]~25\);

-- Location: LCCOMB_X15_Y14_N14
\count[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[19]~62_combout\ = (count(19) & (!\count[18]~61\)) # (!count(19) & ((\count[18]~61\) # (GND)))
-- \count[19]~63\ = CARRY((!\count[18]~61\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \count[18]~61\,
	combout => \count[19]~62_combout\,
	cout => \count[19]~63\);

-- Location: LCCOMB_X15_Y14_N16
\count[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[20]~64_combout\ = (count(20) & (\count[19]~63\ $ (GND))) # (!count(20) & (!\count[19]~63\ & VCC))
-- \count[20]~65\ = CARRY((count(20) & !\count[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \count[19]~63\,
	combout => \count[20]~64_combout\,
	cout => \count[20]~65\);

-- Location: LCCOMB_X15_Y14_N18
\count[21]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[21]~66_combout\ = (count(21) & (!\count[20]~65\)) # (!count(21) & ((\count[20]~65\) # (GND)))
-- \count[21]~67\ = CARRY((!\count[20]~65\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~65\,
	combout => \count[21]~66_combout\,
	cout => \count[21]~67\);

-- Location: LCFF_X15_Y14_N19
\count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[21]~66_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LCCOMB_X15_Y14_N20
\count[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[22]~68_combout\ = (count(22) & (\count[21]~67\ $ (GND))) # (!count(22) & (!\count[21]~67\ & VCC))
-- \count[22]~69\ = CARRY((count(22) & !\count[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~67\,
	combout => \count[22]~68_combout\,
	cout => \count[22]~69\);

-- Location: LCFF_X15_Y14_N21
\count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[22]~68_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LCFF_X15_Y14_N17
\count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[20]~64_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LCCOMB_X15_Y14_N28
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(20)) # (!count(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(19),
	datad => count(20),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y14_N30
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (count(23)) # ((count(21)) # ((count(22)) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(21),
	datac => count(22),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCFF_X15_Y15_N9
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[0]~24_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X15_Y15_N10
\count[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~26_combout\ = (count(1) & (!\count[0]~25\)) # (!count(1) & ((\count[0]~25\) # (GND)))
-- \count[1]~27\ = CARRY((!\count[0]~25\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \count[0]~25\,
	combout => \count[1]~26_combout\,
	cout => \count[1]~27\);

-- Location: LCCOMB_X15_Y15_N12
\count[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~28_combout\ = (count(2) & (\count[1]~27\ $ (GND))) # (!count(2) & (!\count[1]~27\ & VCC))
-- \count[2]~29\ = CARRY((count(2) & !\count[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~27\,
	combout => \count[2]~28_combout\,
	cout => \count[2]~29\);

-- Location: LCCOMB_X15_Y15_N14
\count[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~30_combout\ = (count(3) & (!\count[2]~29\)) # (!count(3) & ((\count[2]~29\) # (GND)))
-- \count[3]~31\ = CARRY((!\count[2]~29\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~29\,
	combout => \count[3]~30_combout\,
	cout => \count[3]~31\);

-- Location: LCFF_X15_Y15_N15
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[3]~30_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCCOMB_X15_Y15_N16
\count[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~32_combout\ = (count(4) & (\count[3]~31\ $ (GND))) # (!count(4) & (!\count[3]~31\ & VCC))
-- \count[4]~33\ = CARRY((count(4) & !\count[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \count[3]~31\,
	combout => \count[4]~32_combout\,
	cout => \count[4]~33\);

-- Location: LCCOMB_X15_Y15_N18
\count[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~34_combout\ = (count(5) & (!\count[4]~33\)) # (!count(5) & ((\count[4]~33\) # (GND)))
-- \count[5]~35\ = CARRY((!\count[4]~33\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~33\,
	combout => \count[5]~34_combout\,
	cout => \count[5]~35\);

-- Location: LCFF_X15_Y15_N19
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[5]~34_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCCOMB_X15_Y15_N20
\count[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~36_combout\ = (count(6) & (\count[5]~35\ $ (GND))) # (!count(6) & (!\count[5]~35\ & VCC))
-- \count[6]~37\ = CARRY((count(6) & !\count[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~35\,
	combout => \count[6]~36_combout\,
	cout => \count[6]~37\);

-- Location: LCCOMB_X15_Y15_N22
\count[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[7]~38_combout\ = (count(7) & (!\count[6]~37\)) # (!count(7) & ((\count[6]~37\) # (GND)))
-- \count[7]~39\ = CARRY((!\count[6]~37\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~37\,
	combout => \count[7]~38_combout\,
	cout => \count[7]~39\);

-- Location: LCFF_X15_Y15_N23
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[7]~38_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCCOMB_X15_Y15_N24
\count[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[8]~40_combout\ = (count(8) & (\count[7]~39\ $ (GND))) # (!count(8) & (!\count[7]~39\ & VCC))
-- \count[8]~41\ = CARRY((count(8) & !\count[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \count[7]~39\,
	combout => \count[8]~40_combout\,
	cout => \count[8]~41\);

-- Location: LCCOMB_X15_Y15_N26
\count[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[9]~42_combout\ = (count(9) & (!\count[8]~41\)) # (!count(9) & ((\count[8]~41\) # (GND)))
-- \count[9]~43\ = CARRY((!\count[8]~41\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~41\,
	combout => \count[9]~42_combout\,
	cout => \count[9]~43\);

-- Location: LCFF_X15_Y15_N27
\count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[9]~42_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LCCOMB_X15_Y15_N28
\count[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[10]~44_combout\ = (count(10) & (\count[9]~43\ $ (GND))) # (!count(10) & (!\count[9]~43\ & VCC))
-- \count[10]~45\ = CARRY((count(10) & !\count[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~43\,
	combout => \count[10]~44_combout\,
	cout => \count[10]~45\);

-- Location: LCFF_X15_Y15_N29
\count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[10]~44_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LCCOMB_X15_Y15_N30
\count[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[11]~46_combout\ = (count(11) & (!\count[10]~45\)) # (!count(11) & ((\count[10]~45\) # (GND)))
-- \count[11]~47\ = CARRY((!\count[10]~45\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~45\,
	combout => \count[11]~46_combout\,
	cout => \count[11]~47\);

-- Location: LCFF_X15_Y15_N31
\count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[11]~46_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LCCOMB_X15_Y14_N0
\count[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[12]~48_combout\ = (count(12) & (\count[11]~47\ $ (GND))) # (!count(12) & (!\count[11]~47\ & VCC))
-- \count[12]~49\ = CARRY((count(12) & !\count[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~47\,
	combout => \count[12]~48_combout\,
	cout => \count[12]~49\);

-- Location: LCFF_X15_Y14_N1
\count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[12]~48_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LCCOMB_X15_Y14_N2
\count[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[13]~50_combout\ = (count(13) & (!\count[12]~49\)) # (!count(13) & ((\count[12]~49\) # (GND)))
-- \count[13]~51\ = CARRY((!\count[12]~49\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~49\,
	combout => \count[13]~50_combout\,
	cout => \count[13]~51\);

-- Location: LCFF_X15_Y14_N3
\count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[13]~50_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LCCOMB_X15_Y14_N4
\count[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[14]~52_combout\ = (count(14) & (\count[13]~51\ $ (GND))) # (!count(14) & (!\count[13]~51\ & VCC))
-- \count[14]~53\ = CARRY((count(14) & !\count[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~51\,
	combout => \count[14]~52_combout\,
	cout => \count[14]~53\);

-- Location: LCFF_X15_Y14_N5
\count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[14]~52_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LCCOMB_X15_Y14_N6
\count[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[15]~54_combout\ = (count(15) & (!\count[14]~53\)) # (!count(15) & ((\count[14]~53\) # (GND)))
-- \count[15]~55\ = CARRY((!\count[14]~53\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~53\,
	combout => \count[15]~54_combout\,
	cout => \count[15]~55\);

-- Location: LCCOMB_X15_Y14_N8
\count[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[16]~56_combout\ = (count(16) & (\count[15]~55\ $ (GND))) # (!count(16) & (!\count[15]~55\ & VCC))
-- \count[16]~57\ = CARRY((count(16) & !\count[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~55\,
	combout => \count[16]~56_combout\,
	cout => \count[16]~57\);

-- Location: LCFF_X15_Y14_N9
\count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[16]~56_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LCCOMB_X15_Y14_N10
\count[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[17]~58_combout\ = (count(17) & (!\count[16]~57\)) # (!count(17) & ((\count[16]~57\) # (GND)))
-- \count[17]~59\ = CARRY((!\count[16]~57\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \count[16]~57\,
	combout => \count[17]~58_combout\,
	cout => \count[17]~59\);

-- Location: LCCOMB_X15_Y14_N12
\count[18]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[18]~60_combout\ = (count(18) & (\count[17]~59\ $ (GND))) # (!count(18) & (!\count[17]~59\ & VCC))
-- \count[18]~61\ = CARRY((count(18) & !\count[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~59\,
	combout => \count[18]~60_combout\,
	cout => \count[18]~61\);

-- Location: LCFF_X15_Y14_N15
\count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[19]~62_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LCFF_X15_Y14_N11
\count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[17]~58_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LCCOMB_X15_Y14_N26
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (count(18)) # ((count(19)) # ((count(20)) # (count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(19),
	datac => count(20),
	datad => count(17),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X15_Y14_N22
\count[23]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[23]~70_combout\ = \count[22]~69\ $ (count(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(23),
	cin => \count[22]~69\,
	combout => \count[23]~70_combout\);

-- Location: LCFF_X15_Y14_N23
\count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[23]~70_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LCCOMB_X15_Y15_N4
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (count(8)) # ((count(21)) # ((count(23)) # (count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(21),
	datac => count(23),
	datad => count(22),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X15_Y15_N6
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (count(12)) # ((count(10)) # ((count(9)) # (count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(10),
	datac => count(9),
	datad => count(11),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X15_Y15_N0
\LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (!\LessThan1~2_combout\ & (!\LessThan1~3_combout\ & (!\LessThan1~0_combout\ & !\LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \LessThan1~3_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCFF_X15_Y15_N1
\trigger~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \trigger~reg0_regout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\edge~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_edge,
	combout => \edge~combout\);

-- Location: LCFF_X17_Y14_N3
edgeYet : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \edge~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edgeYet~regout\);

-- Location: LCCOMB_X17_Y14_N2
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\edge~combout\ & !\edgeYet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge~combout\,
	datac => \edgeYet~regout\,
	combout => \process_0~0_combout\);

-- Location: LCFF_X16_Y14_N23
\edgebegin[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(23),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(23));

-- Location: LCCOMB_X14_Y14_N26
\edgeend[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[22]~feeder_combout\ = count(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(22),
	combout => \edgeend[22]~feeder_combout\);

-- Location: LCCOMB_X17_Y14_N12
\edgeYet2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeYet2~0_combout\ = (\edge~combout\) # (\edgeYet2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge~combout\,
	datac => \edgeYet2~regout\,
	combout => \edgeYet2~0_combout\);

-- Location: LCFF_X17_Y14_N13
edgeYet2 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeYet2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edgeYet2~regout\);

-- Location: LCCOMB_X17_Y14_N22
\process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\edge~combout\ & \edgeYet2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \edge~combout\,
	datad => \edgeYet2~regout\,
	combout => \process_0~1_combout\);

-- Location: LCFF_X14_Y14_N27
\edgeend[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[22]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(22));

-- Location: LCFF_X16_Y14_N19
\edgebegin[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(21),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(21));

-- Location: LCCOMB_X17_Y14_N18
\edgeend[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[20]~feeder_combout\ = count(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(20),
	combout => \edgeend[20]~feeder_combout\);

-- Location: LCFF_X17_Y14_N19
\edgeend[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[20]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(20));

-- Location: LCCOMB_X17_Y14_N20
\edgeend[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[19]~feeder_combout\ = count(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(19),
	combout => \edgeend[19]~feeder_combout\);

-- Location: LCFF_X17_Y14_N21
\edgeend[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[19]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(19));

-- Location: LCFF_X15_Y14_N13
\count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[18]~60_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LCCOMB_X17_Y14_N14
\edgeend[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[18]~feeder_combout\ = count(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(18),
	combout => \edgeend[18]~feeder_combout\);

-- Location: LCFF_X17_Y14_N15
\edgeend[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[18]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(18));

-- Location: LCCOMB_X17_Y14_N8
\edgeend[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[17]~feeder_combout\ = count(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(17),
	combout => \edgeend[17]~feeder_combout\);

-- Location: LCFF_X17_Y14_N9
\edgeend[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[17]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(17));

-- Location: LCFF_X17_Y14_N27
\edgeend[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(16),
	sload => VCC,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(16));

-- Location: LCFF_X15_Y14_N7
\count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[15]~54_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LCCOMB_X17_Y14_N28
\edgeend[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[15]~feeder_combout\ = count(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(15),
	combout => \edgeend[15]~feeder_combout\);

-- Location: LCFF_X17_Y14_N29
\edgeend[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[15]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(15));

-- Location: LCFF_X16_Y14_N5
\edgebegin[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(14),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(14));

-- Location: LCFF_X16_Y14_N3
\edgebegin[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(13),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(13));

-- Location: LCFF_X16_Y14_N1
\edgebegin[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(12),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(12));

-- Location: LCFF_X16_Y15_N31
\edgebegin[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(11),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(11));

-- Location: LCFF_X16_Y15_N29
\edgebegin[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(10),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(10));

-- Location: LCFF_X16_Y15_N27
\edgebegin[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(9),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(9));

-- Location: LCFF_X15_Y15_N25
\count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[8]~40_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LCFF_X16_Y15_N25
\edgebegin[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(8),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(8));

-- Location: LCFF_X16_Y15_N23
\edgebegin[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(7),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(7));

-- Location: LCFF_X15_Y15_N21
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[6]~36_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCFF_X16_Y15_N3
\edgeend[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(6),
	sload => VCC,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(6));

-- Location: LCFF_X16_Y15_N19
\edgebegin[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(5),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(5));

-- Location: LCFF_X15_Y15_N17
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[4]~32_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCFF_X16_Y15_N5
\edgeend[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(4),
	sload => VCC,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(4));

-- Location: LCFF_X16_Y15_N15
\edgebegin[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(3),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(3));

-- Location: LCFF_X15_Y15_N13
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[2]~28_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCFF_X16_Y15_N7
\edgeend[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(2),
	sload => VCC,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(2));

-- Location: LCFF_X15_Y15_N11
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[1]~26_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X14_Y14_N12
\edgeend[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \edgeend[1]~feeder_combout\ = count(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(1),
	combout => \edgeend[1]~feeder_combout\);

-- Location: LCFF_X14_Y14_N13
\edgeend[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \edgeend[1]~feeder_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgeend(1));

-- Location: LCFF_X16_Y15_N9
\edgebegin[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => count(0),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => edgebegin(0));

-- Location: LCCOMB_X16_Y15_N8
\timevector[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[0]~0_combout\ = (edgeend(0) & (edgebegin(0) $ (VCC))) # (!edgeend(0) & ((edgebegin(0)) # (GND)))
-- \timevector[0]~1\ = CARRY((edgebegin(0)) # (!edgeend(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(0),
	datab => edgebegin(0),
	datad => VCC,
	combout => \timevector[0]~0_combout\,
	cout => \timevector[0]~1\);

-- Location: LCCOMB_X16_Y15_N12
\timevector[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[2]~4_combout\ = ((edgebegin(2) $ (edgeend(2) $ (\timevector[1]~3\)))) # (GND)
-- \timevector[2]~5\ = CARRY((edgebegin(2) & ((!\timevector[1]~3\) # (!edgeend(2)))) # (!edgebegin(2) & (!edgeend(2) & !\timevector[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgebegin(2),
	datab => edgeend(2),
	datad => VCC,
	cin => \timevector[1]~3\,
	combout => \timevector[2]~4_combout\,
	cout => \timevector[2]~5\);

-- Location: LCCOMB_X16_Y15_N14
\timevector[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[3]~6_combout\ = (edgeend(3) & ((edgebegin(3) & (!\timevector[2]~5\)) # (!edgebegin(3) & ((\timevector[2]~5\) # (GND))))) # (!edgeend(3) & ((edgebegin(3) & (\timevector[2]~5\ & VCC)) # (!edgebegin(3) & (!\timevector[2]~5\))))
-- \timevector[3]~7\ = CARRY((edgeend(3) & ((!\timevector[2]~5\) # (!edgebegin(3)))) # (!edgeend(3) & (!edgebegin(3) & !\timevector[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(3),
	datab => edgebegin(3),
	datad => VCC,
	cin => \timevector[2]~5\,
	combout => \timevector[3]~6_combout\,
	cout => \timevector[3]~7\);

-- Location: LCCOMB_X16_Y15_N16
\timevector[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[4]~8_combout\ = ((edgebegin(4) $ (edgeend(4) $ (\timevector[3]~7\)))) # (GND)
-- \timevector[4]~9\ = CARRY((edgebegin(4) & ((!\timevector[3]~7\) # (!edgeend(4)))) # (!edgebegin(4) & (!edgeend(4) & !\timevector[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgebegin(4),
	datab => edgeend(4),
	datad => VCC,
	cin => \timevector[3]~7\,
	combout => \timevector[4]~8_combout\,
	cout => \timevector[4]~9\);

-- Location: LCCOMB_X16_Y15_N18
\timevector[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[5]~10_combout\ = (edgeend(5) & ((edgebegin(5) & (!\timevector[4]~9\)) # (!edgebegin(5) & ((\timevector[4]~9\) # (GND))))) # (!edgeend(5) & ((edgebegin(5) & (\timevector[4]~9\ & VCC)) # (!edgebegin(5) & (!\timevector[4]~9\))))
-- \timevector[5]~11\ = CARRY((edgeend(5) & ((!\timevector[4]~9\) # (!edgebegin(5)))) # (!edgeend(5) & (!edgebegin(5) & !\timevector[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(5),
	datab => edgebegin(5),
	datad => VCC,
	cin => \timevector[4]~9\,
	combout => \timevector[5]~10_combout\,
	cout => \timevector[5]~11\);

-- Location: LCCOMB_X16_Y15_N20
\timevector[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[6]~12_combout\ = ((edgebegin(6) $ (edgeend(6) $ (\timevector[5]~11\)))) # (GND)
-- \timevector[6]~13\ = CARRY((edgebegin(6) & ((!\timevector[5]~11\) # (!edgeend(6)))) # (!edgebegin(6) & (!edgeend(6) & !\timevector[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgebegin(6),
	datab => edgeend(6),
	datad => VCC,
	cin => \timevector[5]~11\,
	combout => \timevector[6]~12_combout\,
	cout => \timevector[6]~13\);

-- Location: LCCOMB_X16_Y15_N22
\timevector[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[7]~14_combout\ = (edgeend(7) & ((edgebegin(7) & (!\timevector[6]~13\)) # (!edgebegin(7) & ((\timevector[6]~13\) # (GND))))) # (!edgeend(7) & ((edgebegin(7) & (\timevector[6]~13\ & VCC)) # (!edgebegin(7) & (!\timevector[6]~13\))))
-- \timevector[7]~15\ = CARRY((edgeend(7) & ((!\timevector[6]~13\) # (!edgebegin(7)))) # (!edgeend(7) & (!edgebegin(7) & !\timevector[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(7),
	datab => edgebegin(7),
	datad => VCC,
	cin => \timevector[6]~13\,
	combout => \timevector[7]~14_combout\,
	cout => \timevector[7]~15\);

-- Location: LCCOMB_X16_Y15_N24
\timevector[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[8]~16_combout\ = ((edgeend(8) $ (edgebegin(8) $ (\timevector[7]~15\)))) # (GND)
-- \timevector[8]~17\ = CARRY((edgeend(8) & (edgebegin(8) & !\timevector[7]~15\)) # (!edgeend(8) & ((edgebegin(8)) # (!\timevector[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(8),
	datab => edgebegin(8),
	datad => VCC,
	cin => \timevector[7]~15\,
	combout => \timevector[8]~16_combout\,
	cout => \timevector[8]~17\);

-- Location: LCCOMB_X16_Y15_N26
\timevector[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[9]~18_combout\ = (edgeend(9) & ((edgebegin(9) & (!\timevector[8]~17\)) # (!edgebegin(9) & ((\timevector[8]~17\) # (GND))))) # (!edgeend(9) & ((edgebegin(9) & (\timevector[8]~17\ & VCC)) # (!edgebegin(9) & (!\timevector[8]~17\))))
-- \timevector[9]~19\ = CARRY((edgeend(9) & ((!\timevector[8]~17\) # (!edgebegin(9)))) # (!edgeend(9) & (!edgebegin(9) & !\timevector[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(9),
	datab => edgebegin(9),
	datad => VCC,
	cin => \timevector[8]~17\,
	combout => \timevector[9]~18_combout\,
	cout => \timevector[9]~19\);

-- Location: LCCOMB_X16_Y15_N28
\timevector[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[10]~20_combout\ = ((edgeend(10) $ (edgebegin(10) $ (\timevector[9]~19\)))) # (GND)
-- \timevector[10]~21\ = CARRY((edgeend(10) & (edgebegin(10) & !\timevector[9]~19\)) # (!edgeend(10) & ((edgebegin(10)) # (!\timevector[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(10),
	datab => edgebegin(10),
	datad => VCC,
	cin => \timevector[9]~19\,
	combout => \timevector[10]~20_combout\,
	cout => \timevector[10]~21\);

-- Location: LCCOMB_X16_Y15_N30
\timevector[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[11]~22_combout\ = (edgeend(11) & ((edgebegin(11) & (!\timevector[10]~21\)) # (!edgebegin(11) & ((\timevector[10]~21\) # (GND))))) # (!edgeend(11) & ((edgebegin(11) & (\timevector[10]~21\ & VCC)) # (!edgebegin(11) & (!\timevector[10]~21\))))
-- \timevector[11]~23\ = CARRY((edgeend(11) & ((!\timevector[10]~21\) # (!edgebegin(11)))) # (!edgeend(11) & (!edgebegin(11) & !\timevector[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(11),
	datab => edgebegin(11),
	datad => VCC,
	cin => \timevector[10]~21\,
	combout => \timevector[11]~22_combout\,
	cout => \timevector[11]~23\);

-- Location: LCCOMB_X16_Y14_N6
\timevector[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[15]~30_combout\ = (edgebegin(15) & ((edgeend(15) & (!\timevector[14]~29\)) # (!edgeend(15) & (\timevector[14]~29\ & VCC)))) # (!edgebegin(15) & ((edgeend(15) & ((\timevector[14]~29\) # (GND))) # (!edgeend(15) & (!\timevector[14]~29\))))
-- \timevector[15]~31\ = CARRY((edgebegin(15) & (edgeend(15) & !\timevector[14]~29\)) # (!edgebegin(15) & ((edgeend(15)) # (!\timevector[14]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgebegin(15),
	datab => edgeend(15),
	datad => VCC,
	cin => \timevector[14]~29\,
	combout => \timevector[15]~30_combout\,
	cout => \timevector[15]~31\);

-- Location: LCCOMB_X16_Y14_N8
\timevector[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[16]~32_combout\ = ((edgebegin(16) $ (edgeend(16) $ (\timevector[15]~31\)))) # (GND)
-- \timevector[16]~33\ = CARRY((edgebegin(16) & ((!\timevector[15]~31\) # (!edgeend(16)))) # (!edgebegin(16) & (!edgeend(16) & !\timevector[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgebegin(16),
	datab => edgeend(16),
	datad => VCC,
	cin => \timevector[15]~31\,
	combout => \timevector[16]~32_combout\,
	cout => \timevector[16]~33\);

-- Location: LCCOMB_X16_Y14_N10
\timevector[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[17]~34_combout\ = (edgebegin(17) & ((edgeend(17) & (!\timevector[16]~33\)) # (!edgeend(17) & (\timevector[16]~33\ & VCC)))) # (!edgebegin(17) & ((edgeend(17) & ((\timevector[16]~33\) # (GND))) # (!edgeend(17) & (!\timevector[16]~33\))))
-- \timevector[17]~35\ = CARRY((edgebegin(17) & (edgeend(17) & !\timevector[16]~33\)) # (!edgebegin(17) & ((edgeend(17)) # (!\timevector[16]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgebegin(17),
	datab => edgeend(17),
	datad => VCC,
	cin => \timevector[16]~33\,
	combout => \timevector[17]~34_combout\,
	cout => \timevector[17]~35\);

-- Location: LCCOMB_X16_Y14_N12
\timevector[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[18]~36_combout\ = ((edgebegin(18) $ (edgeend(18) $ (\timevector[17]~35\)))) # (GND)
-- \timevector[18]~37\ = CARRY((edgebegin(18) & ((!\timevector[17]~35\) # (!edgeend(18)))) # (!edgebegin(18) & (!edgeend(18) & !\timevector[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgebegin(18),
	datab => edgeend(18),
	datad => VCC,
	cin => \timevector[17]~35\,
	combout => \timevector[18]~36_combout\,
	cout => \timevector[18]~37\);

-- Location: LCCOMB_X16_Y14_N14
\timevector[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[19]~38_combout\ = (edgebegin(19) & ((edgeend(19) & (!\timevector[18]~37\)) # (!edgeend(19) & (\timevector[18]~37\ & VCC)))) # (!edgebegin(19) & ((edgeend(19) & ((\timevector[18]~37\) # (GND))) # (!edgeend(19) & (!\timevector[18]~37\))))
-- \timevector[19]~39\ = CARRY((edgebegin(19) & (edgeend(19) & !\timevector[18]~37\)) # (!edgebegin(19) & ((edgeend(19)) # (!\timevector[18]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgebegin(19),
	datab => edgeend(19),
	datad => VCC,
	cin => \timevector[18]~37\,
	combout => \timevector[19]~38_combout\,
	cout => \timevector[19]~39\);

-- Location: LCCOMB_X16_Y14_N16
\timevector[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[20]~40_combout\ = ((edgebegin(20) $ (edgeend(20) $ (\timevector[19]~39\)))) # (GND)
-- \timevector[20]~41\ = CARRY((edgebegin(20) & ((!\timevector[19]~39\) # (!edgeend(20)))) # (!edgebegin(20) & (!edgeend(20) & !\timevector[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgebegin(20),
	datab => edgeend(20),
	datad => VCC,
	cin => \timevector[19]~39\,
	combout => \timevector[20]~40_combout\,
	cout => \timevector[20]~41\);

-- Location: LCCOMB_X16_Y14_N18
\timevector[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[21]~42_combout\ = (edgeend(21) & ((edgebegin(21) & (!\timevector[20]~41\)) # (!edgebegin(21) & ((\timevector[20]~41\) # (GND))))) # (!edgeend(21) & ((edgebegin(21) & (\timevector[20]~41\ & VCC)) # (!edgebegin(21) & (!\timevector[20]~41\))))
-- \timevector[21]~43\ = CARRY((edgeend(21) & ((!\timevector[20]~41\) # (!edgebegin(21)))) # (!edgeend(21) & (!edgebegin(21) & !\timevector[20]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(21),
	datab => edgebegin(21),
	datad => VCC,
	cin => \timevector[20]~41\,
	combout => \timevector[21]~42_combout\,
	cout => \timevector[21]~43\);

-- Location: LCCOMB_X16_Y14_N20
\timevector[22]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[22]~44_combout\ = ((edgebegin(22) $ (edgeend(22) $ (\timevector[21]~43\)))) # (GND)
-- \timevector[22]~45\ = CARRY((edgebegin(22) & ((!\timevector[21]~43\) # (!edgeend(22)))) # (!edgebegin(22) & (!edgeend(22) & !\timevector[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgebegin(22),
	datab => edgeend(22),
	datad => VCC,
	cin => \timevector[21]~43\,
	combout => \timevector[22]~44_combout\,
	cout => \timevector[22]~45\);

-- Location: LCCOMB_X16_Y14_N22
\timevector[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \timevector[23]~46_combout\ = edgeend(23) $ (\timevector[22]~45\ $ (!edgebegin(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => edgeend(23),
	datad => edgebegin(23),
	cin => \timevector[22]~45\,
	combout => \timevector[23]~46_combout\);

-- Location: LCCOMB_X14_Y13_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = \timevector[14]~28_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY(\timevector[14]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[14]~28_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X14_Y13_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\timevector[15]~30_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & VCC)) # (!\timevector[15]~30_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\timevector[15]~30_combout\ & !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timevector[15]~30_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X14_Y13_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\timevector[17]~34_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & VCC)) # (!\timevector[17]~34_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY((!\timevector[17]~34_combout\ & !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timevector[17]~34_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X14_Y13_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = (\timevector[18]~36_combout\ & ((GND) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~7\))) # 
-- (!\timevector[18]~36_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ = CARRY((\timevector[18]~36_combout\) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timevector[18]~36_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~9\);

-- Location: LCCOMB_X14_Y13_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = (\timevector[19]~38_combout\ & (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~9\)) # (!\timevector[19]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~9\) # (!\timevector[19]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[19]~38_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~11\);

-- Location: LCCOMB_X14_Y13_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ = (\timevector[20]~40_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ $ (GND))) # (!\timevector[20]~40_combout\ 
-- & (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ = CARRY((\timevector[20]~40_combout\ & !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timevector[20]~40_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~13\);

-- Location: LCCOMB_X14_Y13_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ = (\timevector[21]~42_combout\ & (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~13\)) # (!\timevector[21]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~13\) # (!\timevector[21]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[21]~42_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~15\);

-- Location: LCCOMB_X14_Y13_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\ = (\timevector[22]~44_combout\ & ((GND) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~15\))) # 
-- (!\timevector[22]~44_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ = CARRY((\timevector[22]~44_combout\) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timevector[22]~44_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~17\);

-- Location: LCCOMB_X14_Y13_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ = \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\);

-- Location: LCCOMB_X18_Y11_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[250]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[250]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\timevector[23]~46_combout\))) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \timevector[23]~46_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[250]~8_combout\);

-- Location: LCCOMB_X21_Y11_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[249]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[249]~9_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\timevector[22]~44_combout\))) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\,
	datad => \timevector[22]~44_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[249]~9_combout\);

-- Location: LCCOMB_X18_Y11_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[247]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[247]~1_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\timevector[20]~40_combout\))) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \timevector[20]~40_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[247]~1_combout\);

-- Location: LCCOMB_X18_Y11_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[246]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[246]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\timevector[19]~38_combout\)) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timevector[19]~38_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[246]~2_combout\);

-- Location: LCCOMB_X21_Y12_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[242]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[242]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\timevector[15]~30_combout\))) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \timevector[15]~30_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[242]~6_combout\);

-- Location: LCCOMB_X17_Y11_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = \timevector[13]~26_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY(\timevector[13]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[13]~26_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X17_Y11_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[241]~7_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[241]~7_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[241]~7_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[241]~7_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X17_Y11_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[244]~4_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[244]~4_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[244]~4_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[244]~4_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~9\);

-- Location: LCCOMB_X17_Y11_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[245]~3_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[245]~3_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[245]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[245]~3_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~11\);

-- Location: LCCOMB_X17_Y11_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[246]~2_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[246]~2_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[246]~2_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[246]~2_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~13\);

-- Location: LCCOMB_X17_Y11_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[248]~0_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[248]~0_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[248]~0_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[248]~0_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~17\);

-- Location: LCCOMB_X17_Y11_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[249]~9_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[249]~9_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[249]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[249]~9_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~19\);

-- Location: LCCOMB_X17_Y11_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[250]~8_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[250]~8_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[250]~8_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[250]~8_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~21\);

-- Location: LCCOMB_X17_Y11_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ = !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\);

-- Location: LCCOMB_X18_Y11_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[275]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[275]~19_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[250]~8_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[250]~8_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[275]~19_combout\);

-- Location: LCCOMB_X21_Y11_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[248]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[248]~0_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\timevector[21]~42_combout\))) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \timevector[21]~42_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[248]~0_combout\);

-- Location: LCCOMB_X21_Y11_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[273]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[273]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[248]~0_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[248]~0_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[273]~10_combout\);

-- Location: LCCOMB_X17_Y11_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[271]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[271]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[246]~2_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[246]~2_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[271]~12_combout\);

-- Location: LCCOMB_X21_Y12_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[245]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[245]~3_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\timevector[18]~36_combout\))) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \timevector[18]~36_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[245]~3_combout\);

-- Location: LCCOMB_X21_Y12_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[270]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[270]~13_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[245]~3_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[245]~3_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[270]~13_combout\);

-- Location: LCCOMB_X14_Y13_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[243]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[243]~5_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\timevector[16]~32_combout\))) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datac => \timevector[16]~32_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[243]~5_combout\);

-- Location: LCCOMB_X18_Y11_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[268]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[268]~15_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[243]~5_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[243]~5_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[268]~15_combout\);

-- Location: LCCOMB_X21_Y12_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[267]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[267]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[242]~6_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[242]~6_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[267]~16_combout\);

-- Location: LCCOMB_X16_Y11_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = \timevector[12]~24_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY(\timevector[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[12]~24_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X16_Y11_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[265]~18_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[265]~18_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[265]~18_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[265]~18_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X16_Y11_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[266]~17_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[266]~17_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[266]~17_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[266]~17_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X16_Y11_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[267]~16_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[267]~16_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[267]~16_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[267]~16_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~7\);

-- Location: LCCOMB_X16_Y11_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[269]~14_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[269]~14_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[269]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[269]~14_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~11\);

-- Location: LCCOMB_X16_Y11_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[271]~12_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[271]~12_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[271]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[271]~12_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~15\);

-- Location: LCCOMB_X16_Y11_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[273]~10_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[273]~10_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[273]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[273]~10_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~19\);

-- Location: LCCOMB_X16_Y11_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[274]~20_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[274]~20_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[274]~20_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[274]~20_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~21\);

-- Location: LCCOMB_X16_Y11_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ = \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~23\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\);

-- Location: LCCOMB_X18_Y11_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~31_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[275]~19_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~22_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[275]~19_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~31_combout\);

-- Location: LCCOMB_X21_Y11_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[274]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[274]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[249]~9_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~18_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[249]~9_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[274]~20_combout\);

-- Location: LCCOMB_X21_Y11_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~32_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[274]~20_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~20_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[274]~20_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~32_combout\);

-- Location: LCCOMB_X18_Y11_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~23_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[271]~12_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[271]~12_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~23_combout\);

-- Location: LCCOMB_X21_Y12_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~27_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[267]~16_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[267]~16_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~27_combout\);

-- Location: LCCOMB_X14_Y13_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[241]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[241]~7_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\timevector[14]~28_combout\)) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[14]~28_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[241]~7_combout\);

-- Location: LCCOMB_X14_Y13_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[266]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[266]~17_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[241]~7_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[241]~7_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[266]~17_combout\);

-- Location: LCCOMB_X14_Y13_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~28_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[266]~17_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[266]~17_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~28_combout\);

-- Location: LCCOMB_X19_Y12_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ = \timevector[11]~22_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ = CARRY(\timevector[11]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timevector[11]~22_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~1\);

-- Location: LCCOMB_X19_Y12_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[289]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[289]~30_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[289]~30_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[289]~30_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X19_Y12_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[290]~29_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[290]~29_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[290]~29_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[290]~29_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~5\);

-- Location: LCCOMB_X19_Y12_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~28_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~28_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~28_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~7\);

-- Location: LCCOMB_X19_Y12_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~26_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~26_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~11\);

-- Location: LCCOMB_X19_Y12_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~25_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~25_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~25_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~25_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~13\);

-- Location: LCCOMB_X19_Y12_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~23_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~23_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~23_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~23_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~17\);

-- Location: LCCOMB_X19_Y12_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~22_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~22_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~22_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~19\);

-- Location: LCCOMB_X19_Y12_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~21_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~21_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~21_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~21_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~21\);

-- Location: LCCOMB_X19_Y12_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~21\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~32_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~21\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~23\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~32_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~32_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~22_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~23\);

-- Location: LCCOMB_X19_Y12_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~24_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~31_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~23\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~31_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~23\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~25\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~31_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~31_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~23\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~24_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~25\);

-- Location: LCCOMB_X19_Y12_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ = !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~25\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\);

-- Location: LCCOMB_X19_Y12_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~44_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~31_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~31_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~24_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~44_combout\);

-- Location: LCCOMB_X21_Y11_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~45_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~32_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~22_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~32_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~45_combout\);

-- Location: LCCOMB_X21_Y11_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~21_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[273]~10_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~18_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[273]~10_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~21_combout\);

-- Location: LCCOMB_X21_Y11_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~33_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~21_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~21_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~20_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~33_combout\);

-- Location: LCCOMB_X21_Y11_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~34_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~22_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~22_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~18_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~34_combout\);

-- Location: LCCOMB_X19_Y12_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~35_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~23_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~23_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~16_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~35_combout\);

-- Location: LCCOMB_X18_Y10_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[244]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[244]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\timevector[17]~34_combout\)) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datac => \timevector[17]~34_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[244]~4_combout\);

-- Location: LCCOMB_X18_Y10_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[269]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[269]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[244]~4_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[244]~4_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[269]~14_combout\);

-- Location: LCCOMB_X18_Y10_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~25_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[269]~14_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[269]~14_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~25_combout\);

-- Location: LCCOMB_X18_Y10_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~37_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~25_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~25_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~37_combout\);

-- Location: LCCOMB_X16_Y11_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~26_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[268]~15_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[268]~15_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~26_combout\);

-- Location: LCCOMB_X19_Y10_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~38_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~26_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~26_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~38_combout\);

-- Location: LCCOMB_X21_Y12_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~39_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~27_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~27_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~39_combout\);

-- Location: LCCOMB_X17_Y11_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[265]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[265]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (\timevector[13]~26_combout\)) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[13]~26_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[265]~18_combout\);

-- Location: LCCOMB_X17_Y11_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[290]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[290]~29_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[265]~18_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[265]~18_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[290]~29_combout\);

-- Location: LCCOMB_X17_Y11_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~41_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[290]~29_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[290]~29_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~41_combout\);

-- Location: LCCOMB_X22_Y10_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[313]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[313]~43_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & ((\timevector[11]~22_combout\))) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datad => \timevector[11]~22_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[313]~43_combout\);

-- Location: LCCOMB_X22_Y10_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = \timevector[10]~20_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY(\timevector[10]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[10]~20_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X22_Y10_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[314]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[314]~42_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[314]~42_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[314]~42_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~5\);

-- Location: LCCOMB_X22_Y10_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~41_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~41_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~41_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~41_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~7\);

-- Location: LCCOMB_X22_Y10_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~40_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~40_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~40_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~9\);

-- Location: LCCOMB_X22_Y10_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~39_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~39_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~39_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~11\);

-- Location: LCCOMB_X22_Y10_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~38_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~38_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~38_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~13\);

-- Location: LCCOMB_X22_Y10_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~36_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~36_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~36_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~17\);

-- Location: LCCOMB_X22_Y10_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~35_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~35_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~35_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~19\);

-- Location: LCCOMB_X22_Y10_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~34_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~34_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~34_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~21\);

-- Location: LCCOMB_X22_Y10_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~33_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~21\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~33_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~21\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~23\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~33_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~33_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~23\);

-- Location: LCCOMB_X22_Y10_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~45_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~23\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~45_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~23\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~25\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~45_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~45_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~23\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~25\);

-- Location: LCCOMB_X22_Y10_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~25\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~44_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~25\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~27\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~44_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~44_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~25\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~27\);

-- Location: LCCOMB_X24_Y11_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~58_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~44_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~44_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~58_combout\);

-- Location: LCCOMB_X22_Y10_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ = \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~27\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\);

-- Location: LCCOMB_X21_Y11_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~46_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~33_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~33_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~46_combout\);

-- Location: LCCOMB_X21_Y11_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~47_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~34_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~34_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~47_combout\);

-- Location: LCCOMB_X24_Y11_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~48_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~35_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~35_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~48_combout\);

-- Location: LCCOMB_X21_Y12_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~49_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~36_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~36_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~49_combout\);

-- Location: LCCOMB_X24_Y11_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~51_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~38_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~38_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~51_combout\);

-- Location: LCCOMB_X21_Y12_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~52_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~39_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~39_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~52_combout\);

-- Location: LCCOMB_X14_Y13_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~40_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~28_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~28_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~40_combout\);

-- Location: LCCOMB_X24_Y11_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~53_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~40_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~40_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~53_combout\);

-- Location: LCCOMB_X24_Y11_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~54_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~41_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~41_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~54_combout\);

-- Location: LCCOMB_X16_Y11_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[289]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[289]~30_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & (\timevector[12]~24_combout\)) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[12]~24_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[289]~30_combout\);

-- Location: LCCOMB_X16_Y11_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[314]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[314]~42_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[289]~30_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[289]~30_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[314]~42_combout\);

-- Location: LCCOMB_X24_Y11_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~55_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[314]~42_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[314]~42_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~55_combout\);

-- Location: LCCOMB_X24_Y11_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[337]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[337]~57_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & (\timevector[10]~20_combout\)) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \timevector[10]~20_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[337]~57_combout\);

-- Location: LCCOMB_X23_Y11_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ = \timevector[9]~18_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ = CARRY(\timevector[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timevector[9]~18_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~1\);

-- Location: LCCOMB_X23_Y11_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~55_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~55_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~55_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~55_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~7\);

-- Location: LCCOMB_X23_Y11_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~52_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~52_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~52_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~52_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~13\);

-- Location: LCCOMB_X23_Y11_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~49_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~49_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~49_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~19\);

-- Location: LCCOMB_X23_Y11_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~48_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~48_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~48_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~48_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~21\);

-- Location: LCCOMB_X23_Y11_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~47_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~21\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~47_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~21\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~23\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~47_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~47_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~22_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~23\);

-- Location: LCCOMB_X23_Y11_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~24_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~46_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~23\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~46_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~23\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~25\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~46_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~46_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~23\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~24_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~25\);

-- Location: LCCOMB_X23_Y11_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[15]~28_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~58_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~27\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~58_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~27\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[15]~29\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~58_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~58_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~27\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[15]~28_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[15]~29\);

-- Location: LCCOMB_X23_Y11_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ = !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[15]~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[15]~29\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\);

-- Location: LCCOMB_X24_Y11_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~73_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~58_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[15]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[15]~28_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~58_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~73_combout\);

-- Location: LCCOMB_X21_Y11_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~60_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~46_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~46_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[13]~24_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~60_combout\);

-- Location: LCCOMB_X21_Y11_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~61_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~47_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[12]~22_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~47_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~61_combout\);

-- Location: LCCOMB_X24_Y11_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~62_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~48_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~48_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[11]~20_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~62_combout\);

-- Location: LCCOMB_X21_Y12_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~63_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~49_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~49_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[10]~18_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~63_combout\);

-- Location: LCCOMB_X24_Y11_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~65_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~51_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~51_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~65_combout\);

-- Location: LCCOMB_X24_Y11_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~67_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~53_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~53_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~67_combout\);

-- Location: LCCOMB_X24_Y11_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~68_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~54_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~54_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~68_combout\);

-- Location: LCCOMB_X24_Y11_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~69_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~55_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~55_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~69_combout\);

-- Location: LCCOMB_X24_Y11_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[362]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[362]~71_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[337]~57_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[337]~57_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[362]~71_combout\);

-- Location: LCCOMB_X22_Y13_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[361]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[361]~72_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & (\timevector[9]~18_combout\)) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[9]~18_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[361]~72_combout\);

-- Location: LCCOMB_X21_Y9_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ = \timevector[8]~16_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ = CARRY(\timevector[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timevector[8]~16_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~1\);

-- Location: LCCOMB_X21_Y9_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[361]~72_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[361]~72_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[361]~72_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[361]~72_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~3\);

-- Location: LCCOMB_X21_Y9_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[362]~71_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[362]~71_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[362]~71_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[362]~71_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~5\);

-- Location: LCCOMB_X21_Y9_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[363]~70_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[363]~70_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[363]~70_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[363]~70_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~7\);

-- Location: LCCOMB_X21_Y9_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~67_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~67_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~67_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~67_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~13\);

-- Location: LCCOMB_X21_Y9_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~66_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~66_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~66_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~15\);

-- Location: LCCOMB_X21_Y8_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~65_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~65_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~65_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~65_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~17\);

-- Location: LCCOMB_X21_Y8_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~24_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~61_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~23\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~61_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~23\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~25\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~61_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~61_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~23\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~24_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~25\);

-- Location: LCCOMB_X21_Y8_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~30_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~73_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~29\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~73_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~29\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~31\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~73_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~73_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~29\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~30_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~31\);

-- Location: LCCOMB_X21_Y8_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ = \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~31\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\);

-- Location: LCCOMB_X21_Y8_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~89_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~73_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~30_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~73_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~89_combout\);

-- Location: LCCOMB_X21_Y11_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~59_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~45_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~45_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~59_combout\);

-- Location: LCCOMB_X21_Y11_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~74_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~59_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[14]~26_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~59_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~74_combout\);

-- Location: LCCOMB_X21_Y11_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~90_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~74_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~28_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~74_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~90_combout\);

-- Location: LCCOMB_X21_Y8_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~75_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~60_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~26_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~60_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~75_combout\);

-- Location: LCCOMB_X21_Y8_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~76_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~61_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~24_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~61_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~76_combout\);

-- Location: LCCOMB_X21_Y12_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~78_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~63_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~20_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~63_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~78_combout\);

-- Location: LCCOMB_X21_Y12_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~66_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~52_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~52_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_15_result_int[7]~12_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~66_combout\);

-- Location: LCCOMB_X21_Y12_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~81_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~66_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~66_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~81_combout\);

-- Location: LCCOMB_X21_Y9_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~85_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[363]~70_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[363]~70_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~85_combout\);

-- Location: LCCOMB_X21_Y9_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[387]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[387]~86_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[362]~71_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[362]~71_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[387]~86_combout\);

-- Location: LCCOMB_X21_Y9_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[386]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[386]~87_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[361]~72_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[361]~72_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[386]~87_combout\);

-- Location: LCCOMB_X21_Y9_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[385]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[385]~88_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & (\timevector[8]~16_combout\)) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datab => \timevector[8]~16_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[385]~88_combout\);

-- Location: LCCOMB_X17_Y9_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[386]~87_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[386]~87_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[386]~87_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[386]~87_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~5\);

-- Location: LCCOMB_X17_Y9_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~85_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~85_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~85_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~85_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~9\);

-- Location: LCCOMB_X17_Y9_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~83_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~83_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~83_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~83_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~13\);

-- Location: LCCOMB_X17_Y9_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~82_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~82_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~82_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~15\);

-- Location: LCCOMB_X17_Y8_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~79_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~79_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~79_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~79_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~21\);

-- Location: LCCOMB_X17_Y8_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~78_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~21\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~78_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~21\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~23\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~78_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~78_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~22_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~23\);

-- Location: LCCOMB_X17_Y8_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~24_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~77_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~23\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~77_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~23\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~25\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~77_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~77_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~23\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~24_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~25\);

-- Location: LCCOMB_X17_Y8_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~26_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~76_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~25\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~76_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~25\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~27\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~76_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~76_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~25\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~26_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~27\);

-- Location: LCCOMB_X17_Y8_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~32_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~89_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~31\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~89_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~31\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~33\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~89_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~89_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~31\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~32_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~33\);

-- Location: LCCOMB_X17_Y8_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ = !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~33\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~33\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\);

-- Location: LCCOMB_X17_Y8_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~106_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~89_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~32_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~89_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~106_combout\);

-- Location: LCCOMB_X18_Y10_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~91_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~75_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~28_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~75_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~91_combout\);

-- Location: LCCOMB_X17_Y8_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~92_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~76_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~26_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~76_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~92_combout\);

-- Location: LCCOMB_X18_Y10_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~93_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~77_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~77_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~24_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~93_combout\);

-- Location: LCCOMB_X21_Y12_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~94_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~78_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~78_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~22_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~94_combout\);

-- Location: LCCOMB_X21_Y9_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~82_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~67_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~12_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~67_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~82_combout\);

-- Location: LCCOMB_X17_Y9_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~98_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~82_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~82_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~98_combout\);

-- Location: LCCOMB_X17_Y9_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~99_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~83_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~83_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~99_combout\);

-- Location: LCCOMB_X21_Y9_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[411]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[411]~103_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[386]~87_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[386]~87_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[411]~103_combout\);

-- Location: LCCOMB_X17_Y9_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[410]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[410]~104_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[385]~88_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[385]~88_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[410]~104_combout\);

-- Location: LCCOMB_X15_Y9_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\ = \timevector[6]~12_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ = CARRY(\timevector[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timevector[6]~12_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~1\);

-- Location: LCCOMB_X15_Y9_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[411]~103_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[411]~103_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[411]~103_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[411]~103_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~7\);

-- Location: LCCOMB_X15_Y9_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~102_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~102_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~102_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~102_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~9\);

-- Location: LCCOMB_X15_Y9_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~101_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~101_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~101_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~11\);

-- Location: LCCOMB_X15_Y9_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~99_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~99_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~99_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~15\);

-- Location: LCCOMB_X15_Y8_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~95_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~21\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~95_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~21\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~23\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~95_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~95_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~22_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~23\);

-- Location: LCCOMB_X15_Y8_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~26_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~93_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~25\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~93_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~25\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~27\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~93_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~93_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~25\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~26_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~27\);

-- Location: LCCOMB_X15_Y8_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~32_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~107_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~31\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~107_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~31\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~33\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~107_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~107_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~31\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~32_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~33\);

-- Location: LCCOMB_X15_Y8_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~34_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~106_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~33\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~106_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~33\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~35\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~106_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~106_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~33\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~34_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~35\);

-- Location: LCCOMB_X15_Y8_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ = \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~35\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~35\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\);

-- Location: LCCOMB_X17_Y8_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~107_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~90_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~30_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~90_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~107_combout\);

-- Location: LCCOMB_X15_Y8_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~125_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~107_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~32_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~107_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~125_combout\);

-- Location: LCCOMB_X15_Y8_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~110_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~93_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~26_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~93_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~110_combout\);

-- Location: LCCOMB_X15_Y8_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~111_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~94_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~24_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~94_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~111_combout\);

-- Location: LCCOMB_X22_Y9_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~116_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~99_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~14_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~99_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~116_combout\);

-- Location: LCCOMB_X21_Y12_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~101_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~85_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~85_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~101_combout\);

-- Location: LCCOMB_X15_Y9_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~118_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~101_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~101_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~118_combout\);

-- Location: LCCOMB_X17_Y9_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~102_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[387]~86_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[387]~86_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~102_combout\);

-- Location: LCCOMB_X18_Y10_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~119_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~102_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~8_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~102_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~119_combout\);

-- Location: LCCOMB_X15_Y9_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~120_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[411]~103_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[411]~103_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~120_combout\);

-- Location: LCCOMB_X18_Y10_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[435]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[435]~121_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[410]~104_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[410]~104_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[435]~121_combout\);

-- Location: LCCOMB_X16_Y9_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\ = \timevector[5]~10_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ = CARRY(\timevector[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timevector[5]~10_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~1\);

-- Location: LCCOMB_X16_Y9_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[433]~123_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[433]~123_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[433]~123_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[433]~123_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~3\);

-- Location: LCCOMB_X16_Y9_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[435]~121_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[435]~121_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[435]~121_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[435]~121_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~7\);

-- Location: LCCOMB_X16_Y9_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~119_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~119_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~119_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~11\);

-- Location: LCCOMB_X16_Y9_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~118_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~118_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~118_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~118_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~13\);

-- Location: LCCOMB_X16_Y9_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~117_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~117_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~117_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~15\);

-- Location: LCCOMB_X16_Y9_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~116_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~116_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~116_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~116_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~17\);

-- Location: LCCOMB_X16_Y9_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~115_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~115_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~115_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~19\);

-- Location: LCCOMB_X16_Y8_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~114_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~114_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~114_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~114_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~21\);

-- Location: LCCOMB_X16_Y8_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~113_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~21\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~113_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~21\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~23\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~113_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~113_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~22_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~23\);

-- Location: LCCOMB_X16_Y8_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~24_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~112_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~23\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~112_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~23\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~25\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~112_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~112_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~23\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~24_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~25\);

-- Location: LCCOMB_X16_Y8_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~32_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~108_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~31\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~108_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~31\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~33\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~108_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~108_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~31\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~32_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~33\);

-- Location: LCCOMB_X16_Y8_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~34_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~125_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~33\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~125_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~33\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~35\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~125_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~125_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~33\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~34_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~35\);

-- Location: LCCOMB_X17_Y8_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~124_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~106_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~34_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~106_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~124_combout\);

-- Location: LCCOMB_X16_Y8_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~36_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~124_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~35\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~124_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~35\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~37\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~124_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~124_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~35\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~36_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~37\);

-- Location: LCCOMB_X16_Y8_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ = !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~37\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~37\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\);

-- Location: LCCOMB_X15_Y8_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~144_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~125_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~125_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~34_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~144_combout\);

-- Location: LCCOMB_X18_Y10_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~95_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~79_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~79_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~95_combout\);

-- Location: LCCOMB_X18_Y10_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~112_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~95_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~22_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~95_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~112_combout\);

-- Location: LCCOMB_X16_Y8_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~130_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~112_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~24_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~112_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~130_combout\);

-- Location: LCCOMB_X21_Y8_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~80_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~65_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~16_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~65_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~80_combout\);

-- Location: LCCOMB_X21_Y8_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~96_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~80_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~18_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~80_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~96_combout\);

-- Location: LCCOMB_X21_Y8_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~113_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~96_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~20_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~96_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~113_combout\);

-- Location: LCCOMB_X21_Y8_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~131_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~113_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~22_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~113_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~131_combout\);

-- Location: LCCOMB_X16_Y8_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~132_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~114_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~114_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~132_combout\);

-- Location: LCCOMB_X16_Y9_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~133_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~115_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~115_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~18_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~133_combout\);

-- Location: LCCOMB_X13_Y5_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~135_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~117_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~117_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~14_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~135_combout\);

-- Location: LCCOMB_X16_Y9_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~136_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~118_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~118_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~136_combout\);

-- Location: LCCOMB_X16_Y9_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~137_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~119_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~119_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~137_combout\);

-- Location: LCCOMB_X16_Y9_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~139_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[435]~121_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[435]~121_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~139_combout\);

-- Location: LCCOMB_X15_Y6_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[457]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[457]~142_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & (\timevector[5]~10_combout\)) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	datac => \timevector[5]~10_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[457]~142_combout\);

-- Location: LCCOMB_X15_Y6_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[458]~141_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[458]~141_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[458]~141_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[458]~141_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~5\);

-- Location: LCCOMB_X15_Y6_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~136_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~136_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~136_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~15\);

-- Location: LCCOMB_X15_Y6_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~134_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~134_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~134_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~19\);

-- Location: LCCOMB_X15_Y5_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~133_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~133_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~133_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~133_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~21\);

-- Location: LCCOMB_X15_Y5_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~24_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~131_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~23\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~131_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~23\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~25\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~131_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~131_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~23\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~24_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~25\);

-- Location: LCCOMB_X15_Y5_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~28_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~129_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~27\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~129_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~27\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~29\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~129_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~129_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~27\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~28_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~29\);

-- Location: LCCOMB_X15_Y5_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~30_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~128_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~29\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~128_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~29\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~31\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~128_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~128_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~29\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~30_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~31\);

-- Location: LCCOMB_X15_Y5_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~32_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~127_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~31\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~127_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~31\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~33\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~127_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~127_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~31\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~32_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~33\);

-- Location: LCCOMB_X15_Y5_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~36_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~144_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~35\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~144_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~35\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~37\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~144_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~144_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~35\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~36_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~37\);

-- Location: LCCOMB_X15_Y5_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~164_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~144_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~144_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~36_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~164_combout\);

-- Location: LCCOMB_X17_Y8_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~143_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~124_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~124_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~36_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~143_combout\);

-- Location: LCCOMB_X15_Y5_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ = \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~39\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~39\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\);

-- Location: LCCOMB_X15_Y8_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~108_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~91_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~30_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~91_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~108_combout\);

-- Location: LCCOMB_X16_Y8_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~126_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~108_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~108_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~32_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~126_combout\);

-- Location: LCCOMB_X16_Y8_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~145_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~126_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~34_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~126_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~145_combout\);

-- Location: LCCOMB_X15_Y8_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~109_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~92_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~28_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~92_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~109_combout\);

-- Location: LCCOMB_X16_Y8_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~127_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~109_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~30_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~109_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~127_combout\);

-- Location: LCCOMB_X14_Y4_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~146_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~127_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~32_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~127_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~146_combout\);

-- Location: LCCOMB_X13_Y4_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~147_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~128_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~128_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~30_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~147_combout\);

-- Location: LCCOMB_X14_Y6_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~151_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~132_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~22_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~132_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~151_combout\);

-- Location: LCCOMB_X22_Y9_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~134_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~116_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~16_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~116_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~134_combout\);

-- Location: LCCOMB_X15_Y6_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~153_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~134_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~18_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~134_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~153_combout\);

-- Location: LCCOMB_X13_Y5_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~154_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~135_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~16_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~135_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~154_combout\);

-- Location: LCCOMB_X15_Y6_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~156_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~137_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~12_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~137_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~156_combout\);

-- Location: LCCOMB_X15_Y7_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~158_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~139_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~8_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~139_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~158_combout\);

-- Location: LCCOMB_X15_Y9_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[433]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[433]~123_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & (\timevector[6]~12_combout\)) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datab => \timevector[6]~12_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[433]~123_combout\);

-- Location: LCCOMB_X15_Y9_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[458]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[458]~141_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[433]~123_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[433]~123_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[458]~141_combout\);

-- Location: LCCOMB_X15_Y6_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[483]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[483]~160_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[458]~141_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[458]~141_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[483]~160_combout\);

-- Location: LCCOMB_X13_Y5_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\ = \timevector[3]~6_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~1\ = CARRY(\timevector[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[3]~6_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~1\);

-- Location: LCCOMB_X13_Y5_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[481]~162_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[481]~162_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[481]~162_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[481]~162_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~3\);

-- Location: LCCOMB_X13_Y5_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[483]~160_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[483]~160_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[483]~160_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[483]~160_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~7\);

-- Location: LCCOMB_X13_Y5_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~158_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~158_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~158_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~158_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~11\);

-- Location: LCCOMB_X13_Y5_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~157_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~157_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~157_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~157_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~13\);

-- Location: LCCOMB_X13_Y5_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~155_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~155_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~155_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~155_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~17\);

-- Location: LCCOMB_X13_Y5_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~154_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~154_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~154_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~19\);

-- Location: LCCOMB_X13_Y5_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~153_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~153_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~153_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~153_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~21\);

-- Location: LCCOMB_X13_Y4_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~26_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~150_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~25\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~150_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~25\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~27\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~150_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~150_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~25\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~26_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~27\);

-- Location: LCCOMB_X13_Y4_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~28_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~149_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~27\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~149_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~27\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~29\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~149_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~149_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~27\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~28_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~29\);

-- Location: LCCOMB_X13_Y4_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~30_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~148_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~29\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~148_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~29\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~31\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~148_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~148_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~29\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~30_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~31\);

-- Location: LCCOMB_X13_Y4_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~32_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~147_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~31\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~147_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~31\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~33\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~147_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~147_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~31\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~32_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~33\);

-- Location: LCCOMB_X13_Y4_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~40_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~163_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~39\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~163_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~39\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~41\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~163_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~163_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~39\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~40_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~41\);

-- Location: LCCOMB_X13_Y4_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ = !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~41\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~41\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\);

-- Location: LCCOMB_X13_Y4_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~185_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~164_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~38_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~164_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~185_combout\);

-- Location: LCCOMB_X17_Y8_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~184_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~163_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~163_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~40_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~184_combout\);

-- Location: LCCOMB_X14_Y4_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~166_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~146_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~34_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~146_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~166_combout\);

-- Location: LCCOMB_X13_Y4_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~167_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~147_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~147_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~32_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~167_combout\);

-- Location: LCCOMB_X13_Y8_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~169_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~149_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~149_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~28_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~169_combout\);

-- Location: LCCOMB_X15_Y5_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~150_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~131_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~24_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~131_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~150_combout\);

-- Location: LCCOMB_X13_Y4_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~170_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~150_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~26_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~150_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~170_combout\);

-- Location: LCCOMB_X13_Y5_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~173_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~153_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~20_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~153_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~173_combout\);

-- Location: LCCOMB_X13_Y5_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~174_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~154_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~18_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~154_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~174_combout\);

-- Location: LCCOMB_X15_Y6_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~155_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~136_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~136_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~14_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~155_combout\);

-- Location: LCCOMB_X15_Y7_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~175_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~155_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~16_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~155_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~175_combout\);

-- Location: LCCOMB_X15_Y7_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~176_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~156_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~14_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~156_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~176_combout\);

-- Location: LCCOMB_X15_Y7_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~177_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~157_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~157_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~12_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~177_combout\);

-- Location: LCCOMB_X15_Y7_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~178_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~158_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~158_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~178_combout\);

-- Location: LCCOMB_X14_Y5_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~180_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[483]~160_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[483]~160_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~180_combout\);

-- Location: LCCOMB_X13_Y8_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[481]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[481]~162_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & ((\timevector[4]~8_combout\))) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datad => \timevector[4]~8_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[481]~162_combout\);

-- Location: LCCOMB_X13_Y8_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[506]~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[506]~182_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[481]~162_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[481]~162_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[506]~182_combout\);

-- Location: LCCOMB_X13_Y8_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[505]~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[505]~183_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & ((\timevector[3]~6_combout\))) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datad => \timevector[3]~6_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[505]~183_combout\);

-- Location: LCCOMB_X14_Y5_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[505]~183_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~1\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[505]~183_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~1\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[505]~183_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[505]~183_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~1\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~3\);

-- Location: LCCOMB_X14_Y5_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[507]~181_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~5\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[507]~181_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~5\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~7\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[507]~181_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[507]~181_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~5\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~7\);

-- Location: LCCOMB_X14_Y5_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~180_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~7\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~180_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~7\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~9\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~180_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~180_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~7\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~8_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~9\);

-- Location: LCCOMB_X14_Y5_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~179_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~9\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~179_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~9\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~11\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~9\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~179_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~9\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~11\);

-- Location: LCCOMB_X14_Y5_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~178_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~11\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~178_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~11\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~13\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~178_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~178_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~11\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~12_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~13\);

-- Location: LCCOMB_X14_Y5_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~177_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~177_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~177_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~15\);

-- Location: LCCOMB_X14_Y5_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~176_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~176_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~176_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~176_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~17\);

-- Location: LCCOMB_X14_Y5_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~175_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~17\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~175_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~17\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~19\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~17\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~175_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~17\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~18_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~19\);

-- Location: LCCOMB_X14_Y5_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~174_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~174_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~174_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~174_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~21\);

-- Location: LCCOMB_X14_Y4_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~173_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~21\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~173_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~21\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~23\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~173_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~173_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~22_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~23\);

-- Location: LCCOMB_X14_Y4_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~24_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~172_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~23\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~172_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~23\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~25\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~172_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~172_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~23\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~24_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~25\);

-- Location: LCCOMB_X14_Y4_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~26_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~171_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~25\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~171_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~25\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~27\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~171_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~171_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~25\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~26_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~27\);

-- Location: LCCOMB_X14_Y4_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~32_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~168_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~31\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~168_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~31\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~33\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~168_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~168_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~31\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~32_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~33\);

-- Location: LCCOMB_X14_Y4_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~34_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~167_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~33\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~167_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~33\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~35\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~167_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~167_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~33\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~34_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~35\);

-- Location: LCCOMB_X14_Y4_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~36_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~166_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~35\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~166_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~35\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~37\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~166_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~166_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~35\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~36_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~37\);

-- Location: LCCOMB_X14_Y4_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~40_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~185_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~39\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~185_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~39\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~41\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~185_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~185_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~39\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~40_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~41\);

-- Location: LCCOMB_X14_Y4_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ = \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~43\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~43\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\);

-- Location: LCCOMB_X15_Y7_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~188_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~185_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~185_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~40_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~188_combout\);

-- Location: LCCOMB_X14_Y4_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~187_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~166_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~166_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~36_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~187_combout\);

-- Location: LCCOMB_X13_Y8_N4
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~202_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~167_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~167_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~34_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~202_combout\);

-- Location: LCCOMB_X15_Y5_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~148_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~129_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~129_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~28_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~148_combout\);

-- Location: LCCOMB_X13_Y4_N26
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~168_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~148_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~30_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~148_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~168_combout\);

-- Location: LCCOMB_X13_Y8_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~203_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~168_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~168_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~32_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~203_combout\);

-- Location: LCCOMB_X13_Y8_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~205_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~170_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~28_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~170_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~205_combout\);

-- Location: LCCOMB_X14_Y6_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~171_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~151_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~24_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~151_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~171_combout\);

-- Location: LCCOMB_X14_Y6_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~200_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~171_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~26_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~171_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~200_combout\);

-- Location: LCCOMB_X15_Y5_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~152_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~133_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~20_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~133_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~152_combout\);

-- Location: LCCOMB_X13_Y8_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~172_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~152_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~22_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~152_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~172_combout\);

-- Location: LCCOMB_X13_Y8_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~201_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~172_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~172_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~24_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~201_combout\);

-- Location: LCCOMB_X14_Y4_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~190_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~173_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~22_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~173_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~190_combout\);

-- Location: LCCOMB_X15_Y7_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~191_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~174_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~174_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~20_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~191_combout\);

-- Location: LCCOMB_X15_Y7_N0
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~192_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~175_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~18_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~175_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~192_combout\);

-- Location: LCCOMB_X15_Y7_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~193_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~176_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~16_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~176_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~193_combout\);

-- Location: LCCOMB_X15_Y7_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~194_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~177_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~14_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~177_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~194_combout\);

-- Location: LCCOMB_X15_Y7_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~206_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~178_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~178_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~12_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~206_combout\);

-- Location: LCCOMB_X14_Y5_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~199_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~179_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~179_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~199_combout\);

-- Location: LCCOMB_X14_Y5_N2
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~195_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~180_combout\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~8_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~180_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~195_combout\);

-- Location: LCCOMB_X13_Y8_N6
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~207_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[507]~181_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[507]~181_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~207_combout\);

-- Location: LCCOMB_X13_Y8_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[530]~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[530]~196_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[505]~183_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[505]~183_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[530]~196_combout\);

-- Location: LCCOMB_X17_Y7_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[529]~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[529]~197_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & ((\timevector[2]~4_combout\))) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datad => \timevector[2]~4_combout\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[529]~197_combout\);

-- Location: LCCOMB_X14_Y7_N8
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\ = \timevector[1]~2_combout\ $ (VCC)
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~1\ = CARRY(\timevector[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timevector[1]~2_combout\,
	datad => VCC,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~1\);

-- Location: LCCOMB_X14_Y7_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[530]~196_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ $ (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[530]~196_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ & VCC))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~5\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[530]~196_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[530]~196_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~3\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~5\);

-- Location: LCCOMB_X14_Y7_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~14_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~206_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~13\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~206_combout\ & 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~13\) # (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~15\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~13\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~206_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~206_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~13\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~14_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~15\);

-- Location: LCCOMB_X14_Y7_N24
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~194_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~15\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~194_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~15\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~17\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~194_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~194_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~15\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~16_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~17\);

-- Location: LCCOMB_X14_Y7_N28
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~20_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~192_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~19\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~192_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~19\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~21\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~192_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~192_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~19\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~20_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~21\);

-- Location: LCCOMB_X14_Y7_N30
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~22_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~191_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~21\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~191_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~21\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~23\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~191_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~191_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~21\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~22_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~23\);

-- Location: LCCOMB_X14_Y6_N10
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~34_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~203_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~33\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~203_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~33\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~35\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~203_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~203_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~33\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~34_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~35\);

-- Location: LCCOMB_X14_Y6_N12
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~36_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~202_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~35\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~202_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~35\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~37\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~202_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~202_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~35\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~36_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~37\);

-- Location: LCCOMB_X14_Y6_N14
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~38_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~187_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~37\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~187_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~37\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~39\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~187_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~187_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~37\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~38_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~39\);

-- Location: LCCOMB_X14_Y6_N16
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~40_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~186_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~39\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~186_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~39\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~41\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~186_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~186_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~39\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~40_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~41\);

-- Location: LCCOMB_X14_Y6_N18
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~42_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~188_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~41\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~188_combout\ & 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~41\))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~43\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~188_combout\ & 
-- !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~188_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~41\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~42_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~43\);

-- Location: LCCOMB_X14_Y6_N20
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~44_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~189_combout\ & ((GND) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~43\))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~189_combout\ & 
-- (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~43\ $ (GND)))
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~45\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~189_combout\) # 
-- (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~189_combout\,
	datad => VCC,
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~43\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~44_combout\,
	cout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~45\);

-- Location: LCCOMB_X14_Y6_N22
\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~46_combout\ = !\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~45\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~45\,
	combout => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~46_combout\);

-- Location: LCCOMB_X19_Y6_N0
\LessThan2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~18_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~32_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~38_combout\) # 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~34_combout\) # (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~32_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~38_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~34_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~36_combout\,
	combout => \LessThan2~18_combout\);

-- Location: LCCOMB_X23_Y6_N24
\LessThan2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~19_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~44_combout\) # (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~44_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~42_combout\,
	combout => \LessThan2~19_combout\);

-- Location: LCCOMB_X22_Y9_N4
\LessThan2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~20_combout\ = (\LessThan2~17_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~40_combout\) # ((\LessThan2~18_combout\) # (\LessThan2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~17_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~40_combout\,
	datac => \LessThan2~18_combout\,
	datad => \LessThan2~19_combout\,
	combout => \LessThan2~20_combout\);

-- Location: LCCOMB_X14_Y7_N6
\LessThan2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~15_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~18_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~14_combout\) # 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~16_combout\) # (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~18_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~14_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~16_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~20_combout\,
	combout => \LessThan2~15_combout\);

-- Location: LCCOMB_X14_Y7_N2
\LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~13_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\) # ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\) # 
-- ((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\) # (\timevector[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\,
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\,
	datad => \timevector[0]~0_combout\,
	combout => \LessThan2~13_combout\);

-- Location: LCCOMB_X22_Y9_N2
\LessThan2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~16_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~22_combout\ & ((\LessThan2~14_combout\) # ((\LessThan2~15_combout\) # (\LessThan2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datab => \LessThan2~15_combout\,
	datac => \LessThan2~13_combout\,
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~22_combout\,
	combout => \LessThan2~16_combout\);

-- Location: LCCOMB_X22_Y9_N22
\LessThan2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~21_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~46_combout\ & (\LessThan2~12_combout\)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~46_combout\ & 
-- (((\LessThan2~20_combout\) # (\LessThan2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~12_combout\,
	datab => \LessThan2~20_combout\,
	datac => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~46_combout\,
	datad => \LessThan2~16_combout\,
	combout => \LessThan2~21_combout\);

-- Location: LCCOMB_X22_Y9_N6
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~46_combout\ & (\LessThan2~21_combout\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~46_combout\ & 
-- (\LessThan2~21_combout\ $ (VCC)))
-- \Add2~1\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~46_combout\ & \LessThan2~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~46_combout\,
	datab => \LessThan2~21_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X22_Y9_N8
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & ((\Add2~1\) # (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\ & (!\Add2~1\))
-- \Add2~3\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\) # (!\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~44_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X22_Y9_N10
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & (!\Add2~3\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & (\Add2~3\ $ 
-- (GND)))
-- \Add2~5\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~42_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X22_Y9_N12
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & ((\Add2~5\) # (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\ & (!\Add2~5\))
-- \Add2~7\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\) # (!\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~40_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X22_Y9_N14
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & (!\Add2~7\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & (\Add2~7\ $ 
-- (GND)))
-- \Add2~9\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~38_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X22_Y9_N16
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & ((\Add2~9\) # (GND))) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\ & (!\Add2~9\))
-- \Add2~11\ = CARRY((\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\) # (!\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~36_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X22_Y9_N18
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & (!\Add2~11\ & VCC)) # (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & (\Add2~11\ $ 
-- (GND)))
-- \Add2~13\ = CARRY((!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~34_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X22_Y9_N20
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add2~13\ $ (!\Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~32_combout\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\trigger~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \trigger~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_trigger);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\altitude[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_altitude(0));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\altitude[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_altitude(1));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\altitude[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_altitude(2));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\altitude[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_altitude(3));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\altitude[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_altitude(4));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\altitude[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_altitude(5));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\altitude[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_altitude(6));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\altitude[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_altitude(7));
END structure;


