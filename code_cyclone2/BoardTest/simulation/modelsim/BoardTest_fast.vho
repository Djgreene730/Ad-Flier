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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 11.1 Build 216 11/23/2011 Service Pack 1 SJ Web Edition"

-- DATE "04/09/2012 03:13:34"

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

ENTITY 	BoardTest IS
    PORT (
	TLED_Orange_1 : OUT std_logic;
	TLED_Orange_2 : OUT std_logic;
	clk : IN std_logic;
	Switch_1 : IN std_logic_vector(3 DOWNTO 0);
	Switch_2 : IN std_logic;
	Switch_3 : IN std_logic;
	Switch_4 : IN std_logic;
	PIC_Bus : IN std_logic_vector(7 DOWNTO 0);
	PIC_A_D : IN std_logic;
	PIC_R_W : IN std_logic
	);
END BoardTest;

-- Design Ports Information
-- TLED_Orange_1	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TLED_Orange_2	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Switch_1[0]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[2]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[3]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_2	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_3	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_4	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_Bus[1]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_Bus[2]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_Bus[3]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_Bus[4]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_Bus[5]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_Bus[6]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_Bus[7]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_A_D	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_R_W	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_Bus[0]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BoardTest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TLED_Orange_1 : std_logic;
SIGNAL ww_TLED_Orange_2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Switch_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Switch_2 : std_logic;
SIGNAL ww_Switch_3 : std_logic;
SIGNAL ww_Switch_4 : std_logic;
SIGNAL ww_PIC_Bus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PIC_A_D : std_logic;
SIGNAL ww_PIC_R_W : std_logic;
SIGNAL \U_1HzPulse|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_1HzPulse|Add0~2_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~12_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~14_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~16_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~24_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~30_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~45\ : std_logic;
SIGNAL \U_1HzPulse|Add0~46_combout\ : std_logic;
SIGNAL \U_1HzPulse|Equal0~3_combout\ : std_logic;
SIGNAL \U_1HzPulse|cnt~11_combout\ : std_logic;
SIGNAL \U_1HzPulse|cnt~13_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~35\ : std_logic;
SIGNAL \U_1HzPulse|Add0~37\ : std_logic;
SIGNAL \U_1HzPulse|Add0~38_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~39\ : std_logic;
SIGNAL \U_1HzPulse|Add0~41\ : std_logic;
SIGNAL \U_1HzPulse|Add0~42_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~40_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~43\ : std_logic;
SIGNAL \U_1HzPulse|Add0~44_combout\ : std_logic;
SIGNAL \U_1HzPulse|cnt~5_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~1\ : std_logic;
SIGNAL \U_1HzPulse|Add0~3\ : std_logic;
SIGNAL \U_1HzPulse|Add0~4_combout\ : std_logic;
SIGNAL \U_1HzPulse|cnt~8_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~5\ : std_logic;
SIGNAL \U_1HzPulse|Add0~6_combout\ : std_logic;
SIGNAL \U_1HzPulse|cnt~7_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~7\ : std_logic;
SIGNAL \U_1HzPulse|Add0~9\ : std_logic;
SIGNAL \U_1HzPulse|Add0~10_combout\ : std_logic;
SIGNAL \U_1HzPulse|cnt~6_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~8_combout\ : std_logic;
SIGNAL \U_1HzPulse|Equal0~0_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~22_combout\ : std_logic;
SIGNAL \U_1HzPulse|Equal0~2_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~0_combout\ : std_logic;
SIGNAL \U_1HzPulse|cnt~9_combout\ : std_logic;
SIGNAL \U_1HzPulse|Equal0~1_combout\ : std_logic;
SIGNAL \U_1HzPulse|Equal0~4_combout\ : std_logic;
SIGNAL \U_1HzPulse|cnt~12_combout\ : std_logic;
SIGNAL \U_1HzPulse|Equal0~6_combout\ : std_logic;
SIGNAL \U_1HzPulse|cnt~10_combout\ : std_logic;
SIGNAL \U_1HzPulse|cnt~4_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~11\ : std_logic;
SIGNAL \U_1HzPulse|Add0~13\ : std_logic;
SIGNAL \U_1HzPulse|Add0~15\ : std_logic;
SIGNAL \U_1HzPulse|Add0~17\ : std_logic;
SIGNAL \U_1HzPulse|Add0~18_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~19\ : std_logic;
SIGNAL \U_1HzPulse|Add0~20_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~21\ : std_logic;
SIGNAL \U_1HzPulse|Add0~23\ : std_logic;
SIGNAL \U_1HzPulse|Add0~25\ : std_logic;
SIGNAL \U_1HzPulse|Add0~26_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~27\ : std_logic;
SIGNAL \U_1HzPulse|Add0~28_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~29\ : std_logic;
SIGNAL \U_1HzPulse|Add0~31\ : std_logic;
SIGNAL \U_1HzPulse|Add0~32_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~33\ : std_logic;
SIGNAL \U_1HzPulse|Add0~34_combout\ : std_logic;
SIGNAL \U_1HzPulse|Add0~36_combout\ : std_logic;
SIGNAL \U_1HzPulse|Equal0~5_combout\ : std_logic;
SIGNAL \U_1HzPulse|Equal0~7_combout\ : std_logic;
SIGNAL \U_1HzPulse|clk_out~regout\ : std_logic;
SIGNAL \U_1HzPulse|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \current_State~0_combout\ : std_logic;
SIGNAL \current_State~regout\ : std_logic;
SIGNAL \TLED_Orange_1~0_combout\ : std_logic;
SIGNAL \TLED_Orange_1~reg0_regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \TLED_Orange_2~reg0feeder_combout\ : std_logic;
SIGNAL \TLED_Orange_2~reg0_regout\ : std_logic;
SIGNAL \PIC_Bus~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_1HzPulse|cnt\ : std_logic_vector(23 DOWNTO 0);

BEGIN

TLED_Orange_1 <= ww_TLED_Orange_1;
TLED_Orange_2 <= ww_TLED_Orange_2;
ww_clk <= clk;
ww_Switch_1 <= Switch_1;
ww_Switch_2 <= Switch_2;
ww_Switch_3 <= Switch_3;
ww_Switch_4 <= Switch_4;
ww_PIC_Bus <= PIC_Bus;
ww_PIC_A_D <= PIC_A_D;
ww_PIC_R_W <= PIC_R_W;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_1HzPulse|clk_out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \U_1HzPulse|clk_out~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X18_Y11_N10
\U_1HzPulse|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~2_combout\ = (\U_1HzPulse|cnt\(1) & (!\U_1HzPulse|Add0~1\)) # (!\U_1HzPulse|cnt\(1) & ((\U_1HzPulse|Add0~1\) # (GND)))
-- \U_1HzPulse|Add0~3\ = CARRY((!\U_1HzPulse|Add0~1\) # (!\U_1HzPulse|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(1),
	datad => VCC,
	cin => \U_1HzPulse|Add0~1\,
	combout => \U_1HzPulse|Add0~2_combout\,
	cout => \U_1HzPulse|Add0~3\);

-- Location: LCCOMB_X18_Y11_N20
\U_1HzPulse|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~12_combout\ = (\U_1HzPulse|cnt\(6) & (\U_1HzPulse|Add0~11\ $ (GND))) # (!\U_1HzPulse|cnt\(6) & (!\U_1HzPulse|Add0~11\ & VCC))
-- \U_1HzPulse|Add0~13\ = CARRY((\U_1HzPulse|cnt\(6) & !\U_1HzPulse|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(6),
	datad => VCC,
	cin => \U_1HzPulse|Add0~11\,
	combout => \U_1HzPulse|Add0~12_combout\,
	cout => \U_1HzPulse|Add0~13\);

-- Location: LCCOMB_X18_Y11_N22
\U_1HzPulse|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~14_combout\ = (\U_1HzPulse|cnt\(7) & (!\U_1HzPulse|Add0~13\)) # (!\U_1HzPulse|cnt\(7) & ((\U_1HzPulse|Add0~13\) # (GND)))
-- \U_1HzPulse|Add0~15\ = CARRY((!\U_1HzPulse|Add0~13\) # (!\U_1HzPulse|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(7),
	datad => VCC,
	cin => \U_1HzPulse|Add0~13\,
	combout => \U_1HzPulse|Add0~14_combout\,
	cout => \U_1HzPulse|Add0~15\);

-- Location: LCCOMB_X18_Y11_N24
\U_1HzPulse|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~16_combout\ = (\U_1HzPulse|cnt\(8) & (\U_1HzPulse|Add0~15\ $ (GND))) # (!\U_1HzPulse|cnt\(8) & (!\U_1HzPulse|Add0~15\ & VCC))
-- \U_1HzPulse|Add0~17\ = CARRY((\U_1HzPulse|cnt\(8) & !\U_1HzPulse|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(8),
	datad => VCC,
	cin => \U_1HzPulse|Add0~15\,
	combout => \U_1HzPulse|Add0~16_combout\,
	cout => \U_1HzPulse|Add0~17\);

-- Location: LCCOMB_X18_Y10_N0
\U_1HzPulse|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~24_combout\ = (\U_1HzPulse|cnt\(12) & (\U_1HzPulse|Add0~23\ $ (GND))) # (!\U_1HzPulse|cnt\(12) & (!\U_1HzPulse|Add0~23\ & VCC))
-- \U_1HzPulse|Add0~25\ = CARRY((\U_1HzPulse|cnt\(12) & !\U_1HzPulse|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(12),
	datad => VCC,
	cin => \U_1HzPulse|Add0~23\,
	combout => \U_1HzPulse|Add0~24_combout\,
	cout => \U_1HzPulse|Add0~25\);

-- Location: LCCOMB_X18_Y10_N6
\U_1HzPulse|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~30_combout\ = (\U_1HzPulse|cnt\(15) & (!\U_1HzPulse|Add0~29\)) # (!\U_1HzPulse|cnt\(15) & ((\U_1HzPulse|Add0~29\) # (GND)))
-- \U_1HzPulse|Add0~31\ = CARRY((!\U_1HzPulse|Add0~29\) # (!\U_1HzPulse|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(15),
	datad => VCC,
	cin => \U_1HzPulse|Add0~29\,
	combout => \U_1HzPulse|Add0~30_combout\,
	cout => \U_1HzPulse|Add0~31\);

-- Location: LCCOMB_X18_Y10_N20
\U_1HzPulse|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~44_combout\ = (\U_1HzPulse|cnt\(22) & (\U_1HzPulse|Add0~43\ $ (GND))) # (!\U_1HzPulse|cnt\(22) & (!\U_1HzPulse|Add0~43\ & VCC))
-- \U_1HzPulse|Add0~45\ = CARRY((\U_1HzPulse|cnt\(22) & !\U_1HzPulse|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(22),
	datad => VCC,
	cin => \U_1HzPulse|Add0~43\,
	combout => \U_1HzPulse|Add0~44_combout\,
	cout => \U_1HzPulse|Add0~45\);

-- Location: LCCOMB_X18_Y10_N22
\U_1HzPulse|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~46_combout\ = \U_1HzPulse|Add0~45\ $ (\U_1HzPulse|cnt\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_1HzPulse|cnt\(23),
	cin => \U_1HzPulse|Add0~45\,
	combout => \U_1HzPulse|Add0~46_combout\);

-- Location: LCFF_X18_Y11_N11
\U_1HzPulse|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(1));

-- Location: LCFF_X19_Y11_N23
\U_1HzPulse|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(12));

-- Location: LCFF_X18_Y10_N7
\U_1HzPulse|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(15));

-- Location: LCCOMB_X18_Y10_N24
\U_1HzPulse|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Equal0~3_combout\ = (!\U_1HzPulse|cnt\(15) & (!\U_1HzPulse|cnt\(13) & (!\U_1HzPulse|cnt\(14) & \U_1HzPulse|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(15),
	datab => \U_1HzPulse|cnt\(13),
	datac => \U_1HzPulse|cnt\(14),
	datad => \U_1HzPulse|cnt\(12),
	combout => \U_1HzPulse|Equal0~3_combout\);

-- Location: LCFF_X18_Y10_N31
\U_1HzPulse|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|cnt~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(23));

-- Location: LCCOMB_X19_Y11_N22
\U_1HzPulse|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|cnt~11_combout\ = (\U_1HzPulse|Add0~24_combout\ & (((!\U_1HzPulse|Equal0~4_combout\) # (!\U_1HzPulse|Equal0~5_combout\)) # (!\U_1HzPulse|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|Equal0~6_combout\,
	datab => \U_1HzPulse|Equal0~5_combout\,
	datac => \U_1HzPulse|Add0~24_combout\,
	datad => \U_1HzPulse|Equal0~4_combout\,
	combout => \U_1HzPulse|cnt~11_combout\);

-- Location: LCCOMB_X18_Y10_N30
\U_1HzPulse|cnt~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|cnt~13_combout\ = (\U_1HzPulse|Add0~46_combout\ & (((!\U_1HzPulse|Equal0~4_combout\) # (!\U_1HzPulse|Equal0~5_combout\)) # (!\U_1HzPulse|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|Equal0~6_combout\,
	datab => \U_1HzPulse|Equal0~5_combout\,
	datac => \U_1HzPulse|Equal0~4_combout\,
	datad => \U_1HzPulse|Add0~46_combout\,
	combout => \U_1HzPulse|cnt~13_combout\);

-- Location: LCCOMB_X18_Y10_N10
\U_1HzPulse|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~34_combout\ = (\U_1HzPulse|cnt\(17) & (!\U_1HzPulse|Add0~33\)) # (!\U_1HzPulse|cnt\(17) & ((\U_1HzPulse|Add0~33\) # (GND)))
-- \U_1HzPulse|Add0~35\ = CARRY((!\U_1HzPulse|Add0~33\) # (!\U_1HzPulse|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(17),
	datad => VCC,
	cin => \U_1HzPulse|Add0~33\,
	combout => \U_1HzPulse|Add0~34_combout\,
	cout => \U_1HzPulse|Add0~35\);

-- Location: LCCOMB_X18_Y10_N12
\U_1HzPulse|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~36_combout\ = (\U_1HzPulse|cnt\(18) & (\U_1HzPulse|Add0~35\ $ (GND))) # (!\U_1HzPulse|cnt\(18) & (!\U_1HzPulse|Add0~35\ & VCC))
-- \U_1HzPulse|Add0~37\ = CARRY((\U_1HzPulse|cnt\(18) & !\U_1HzPulse|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(18),
	datad => VCC,
	cin => \U_1HzPulse|Add0~35\,
	combout => \U_1HzPulse|Add0~36_combout\,
	cout => \U_1HzPulse|Add0~37\);

-- Location: LCCOMB_X18_Y10_N14
\U_1HzPulse|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~38_combout\ = (\U_1HzPulse|cnt\(19) & (!\U_1HzPulse|Add0~37\)) # (!\U_1HzPulse|cnt\(19) & ((\U_1HzPulse|Add0~37\) # (GND)))
-- \U_1HzPulse|Add0~39\ = CARRY((!\U_1HzPulse|Add0~37\) # (!\U_1HzPulse|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(19),
	datad => VCC,
	cin => \U_1HzPulse|Add0~37\,
	combout => \U_1HzPulse|Add0~38_combout\,
	cout => \U_1HzPulse|Add0~39\);

-- Location: LCFF_X18_Y10_N15
\U_1HzPulse|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(19));

-- Location: LCCOMB_X18_Y10_N16
\U_1HzPulse|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~40_combout\ = (\U_1HzPulse|cnt\(20) & (\U_1HzPulse|Add0~39\ $ (GND))) # (!\U_1HzPulse|cnt\(20) & (!\U_1HzPulse|Add0~39\ & VCC))
-- \U_1HzPulse|Add0~41\ = CARRY((\U_1HzPulse|cnt\(20) & !\U_1HzPulse|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(20),
	datad => VCC,
	cin => \U_1HzPulse|Add0~39\,
	combout => \U_1HzPulse|Add0~40_combout\,
	cout => \U_1HzPulse|Add0~41\);

-- Location: LCCOMB_X18_Y10_N18
\U_1HzPulse|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~42_combout\ = (\U_1HzPulse|cnt\(21) & (!\U_1HzPulse|Add0~41\)) # (!\U_1HzPulse|cnt\(21) & ((\U_1HzPulse|Add0~41\) # (GND)))
-- \U_1HzPulse|Add0~43\ = CARRY((!\U_1HzPulse|Add0~41\) # (!\U_1HzPulse|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(21),
	datad => VCC,
	cin => \U_1HzPulse|Add0~41\,
	combout => \U_1HzPulse|Add0~42_combout\,
	cout => \U_1HzPulse|Add0~43\);

-- Location: LCFF_X18_Y10_N19
\U_1HzPulse|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(21));

-- Location: LCFF_X18_Y10_N17
\U_1HzPulse|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(20));

-- Location: LCCOMB_X19_Y11_N28
\U_1HzPulse|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|cnt~5_combout\ = (\U_1HzPulse|Add0~12_combout\ & (((!\U_1HzPulse|Equal0~4_combout\) # (!\U_1HzPulse|Equal0~5_combout\)) # (!\U_1HzPulse|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|Add0~12_combout\,
	datab => \U_1HzPulse|Equal0~6_combout\,
	datac => \U_1HzPulse|Equal0~5_combout\,
	datad => \U_1HzPulse|Equal0~4_combout\,
	combout => \U_1HzPulse|cnt~5_combout\);

-- Location: LCFF_X19_Y11_N29
\U_1HzPulse|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(6));

-- Location: LCCOMB_X18_Y11_N8
\U_1HzPulse|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~0_combout\ = \U_1HzPulse|cnt\(0) $ (VCC)
-- \U_1HzPulse|Add0~1\ = CARRY(\U_1HzPulse|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(0),
	datad => VCC,
	combout => \U_1HzPulse|Add0~0_combout\,
	cout => \U_1HzPulse|Add0~1\);

-- Location: LCCOMB_X18_Y11_N12
\U_1HzPulse|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~4_combout\ = (\U_1HzPulse|cnt\(2) & (\U_1HzPulse|Add0~3\ $ (GND))) # (!\U_1HzPulse|cnt\(2) & (!\U_1HzPulse|Add0~3\ & VCC))
-- \U_1HzPulse|Add0~5\ = CARRY((\U_1HzPulse|cnt\(2) & !\U_1HzPulse|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(2),
	datad => VCC,
	cin => \U_1HzPulse|Add0~3\,
	combout => \U_1HzPulse|Add0~4_combout\,
	cout => \U_1HzPulse|Add0~5\);

-- Location: LCCOMB_X18_Y11_N4
\U_1HzPulse|cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|cnt~8_combout\ = (\U_1HzPulse|Add0~4_combout\ & (((!\U_1HzPulse|Equal0~6_combout\) # (!\U_1HzPulse|Equal0~4_combout\)) # (!\U_1HzPulse|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|Equal0~5_combout\,
	datab => \U_1HzPulse|Add0~4_combout\,
	datac => \U_1HzPulse|Equal0~4_combout\,
	datad => \U_1HzPulse|Equal0~6_combout\,
	combout => \U_1HzPulse|cnt~8_combout\);

-- Location: LCFF_X18_Y11_N5
\U_1HzPulse|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(2));

-- Location: LCCOMB_X18_Y11_N14
\U_1HzPulse|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~6_combout\ = (\U_1HzPulse|cnt\(3) & (!\U_1HzPulse|Add0~5\)) # (!\U_1HzPulse|cnt\(3) & ((\U_1HzPulse|Add0~5\) # (GND)))
-- \U_1HzPulse|Add0~7\ = CARRY((!\U_1HzPulse|Add0~5\) # (!\U_1HzPulse|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(3),
	datad => VCC,
	cin => \U_1HzPulse|Add0~5\,
	combout => \U_1HzPulse|Add0~6_combout\,
	cout => \U_1HzPulse|Add0~7\);

-- Location: LCCOMB_X18_Y11_N2
\U_1HzPulse|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|cnt~7_combout\ = (\U_1HzPulse|Add0~6_combout\ & (((!\U_1HzPulse|Equal0~5_combout\) # (!\U_1HzPulse|Equal0~4_combout\)) # (!\U_1HzPulse|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|Equal0~6_combout\,
	datab => \U_1HzPulse|Add0~6_combout\,
	datac => \U_1HzPulse|Equal0~4_combout\,
	datad => \U_1HzPulse|Equal0~5_combout\,
	combout => \U_1HzPulse|cnt~7_combout\);

-- Location: LCFF_X18_Y11_N3
\U_1HzPulse|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(3));

-- Location: LCCOMB_X18_Y11_N16
\U_1HzPulse|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~8_combout\ = (\U_1HzPulse|cnt\(4) & (\U_1HzPulse|Add0~7\ $ (GND))) # (!\U_1HzPulse|cnt\(4) & (!\U_1HzPulse|Add0~7\ & VCC))
-- \U_1HzPulse|Add0~9\ = CARRY((\U_1HzPulse|cnt\(4) & !\U_1HzPulse|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(4),
	datad => VCC,
	cin => \U_1HzPulse|Add0~7\,
	combout => \U_1HzPulse|Add0~8_combout\,
	cout => \U_1HzPulse|Add0~9\);

-- Location: LCCOMB_X18_Y11_N18
\U_1HzPulse|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~10_combout\ = (\U_1HzPulse|cnt\(5) & (!\U_1HzPulse|Add0~9\)) # (!\U_1HzPulse|cnt\(5) & ((\U_1HzPulse|Add0~9\) # (GND)))
-- \U_1HzPulse|Add0~11\ = CARRY((!\U_1HzPulse|Add0~9\) # (!\U_1HzPulse|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(5),
	datad => VCC,
	cin => \U_1HzPulse|Add0~9\,
	combout => \U_1HzPulse|Add0~10_combout\,
	cout => \U_1HzPulse|Add0~11\);

-- Location: LCCOMB_X18_Y11_N0
\U_1HzPulse|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|cnt~6_combout\ = (\U_1HzPulse|Add0~10_combout\ & (((!\U_1HzPulse|Equal0~5_combout\) # (!\U_1HzPulse|Equal0~4_combout\)) # (!\U_1HzPulse|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|Equal0~6_combout\,
	datab => \U_1HzPulse|Add0~10_combout\,
	datac => \U_1HzPulse|Equal0~4_combout\,
	datad => \U_1HzPulse|Equal0~5_combout\,
	combout => \U_1HzPulse|cnt~6_combout\);

-- Location: LCFF_X18_Y11_N1
\U_1HzPulse|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(5));

-- Location: LCFF_X18_Y11_N17
\U_1HzPulse|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(4));

-- Location: LCCOMB_X19_Y11_N6
\U_1HzPulse|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Equal0~0_combout\ = (\U_1HzPulse|cnt\(7) & (\U_1HzPulse|cnt\(6) & (\U_1HzPulse|cnt\(5) & !\U_1HzPulse|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(7),
	datab => \U_1HzPulse|cnt\(6),
	datac => \U_1HzPulse|cnt\(5),
	datad => \U_1HzPulse|cnt\(4),
	combout => \U_1HzPulse|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y11_N30
\U_1HzPulse|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~22_combout\ = (\U_1HzPulse|cnt\(11) & (!\U_1HzPulse|Add0~21\)) # (!\U_1HzPulse|cnt\(11) & ((\U_1HzPulse|Add0~21\) # (GND)))
-- \U_1HzPulse|Add0~23\ = CARRY((!\U_1HzPulse|Add0~21\) # (!\U_1HzPulse|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(11),
	datad => VCC,
	cin => \U_1HzPulse|Add0~21\,
	combout => \U_1HzPulse|Add0~22_combout\,
	cout => \U_1HzPulse|Add0~23\);

-- Location: LCFF_X18_Y11_N31
\U_1HzPulse|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(11));

-- Location: LCCOMB_X19_Y11_N26
\U_1HzPulse|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Equal0~2_combout\ = (\U_1HzPulse|cnt\(8) & (!\U_1HzPulse|cnt\(9) & (!\U_1HzPulse|cnt\(11) & !\U_1HzPulse|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(8),
	datab => \U_1HzPulse|cnt\(9),
	datac => \U_1HzPulse|cnt\(11),
	datad => \U_1HzPulse|cnt\(10),
	combout => \U_1HzPulse|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y11_N6
\U_1HzPulse|cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|cnt~9_combout\ = (\U_1HzPulse|Add0~0_combout\ & (((!\U_1HzPulse|Equal0~5_combout\) # (!\U_1HzPulse|Equal0~4_combout\)) # (!\U_1HzPulse|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|Equal0~6_combout\,
	datab => \U_1HzPulse|Add0~0_combout\,
	datac => \U_1HzPulse|Equal0~4_combout\,
	datad => \U_1HzPulse|Equal0~5_combout\,
	combout => \U_1HzPulse|cnt~9_combout\);

-- Location: LCFF_X18_Y11_N7
\U_1HzPulse|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(0));

-- Location: LCCOMB_X17_Y10_N24
\U_1HzPulse|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Equal0~1_combout\ = (!\U_1HzPulse|cnt\(1) & (!\U_1HzPulse|cnt\(0) & (\U_1HzPulse|cnt\(3) & \U_1HzPulse|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(1),
	datab => \U_1HzPulse|cnt\(0),
	datac => \U_1HzPulse|cnt\(3),
	datad => \U_1HzPulse|cnt\(2),
	combout => \U_1HzPulse|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y10_N26
\U_1HzPulse|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Equal0~4_combout\ = (\U_1HzPulse|Equal0~3_combout\ & (\U_1HzPulse|Equal0~0_combout\ & (\U_1HzPulse|Equal0~2_combout\ & \U_1HzPulse|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|Equal0~3_combout\,
	datab => \U_1HzPulse|Equal0~0_combout\,
	datac => \U_1HzPulse|Equal0~2_combout\,
	datad => \U_1HzPulse|Equal0~1_combout\,
	combout => \U_1HzPulse|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y10_N28
\U_1HzPulse|cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|cnt~12_combout\ = (\U_1HzPulse|Add0~44_combout\ & (((!\U_1HzPulse|Equal0~4_combout\) # (!\U_1HzPulse|Equal0~5_combout\)) # (!\U_1HzPulse|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|Equal0~6_combout\,
	datab => \U_1HzPulse|Equal0~5_combout\,
	datac => \U_1HzPulse|Add0~44_combout\,
	datad => \U_1HzPulse|Equal0~4_combout\,
	combout => \U_1HzPulse|cnt~12_combout\);

-- Location: LCFF_X18_Y10_N29
\U_1HzPulse|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(22));

-- Location: LCCOMB_X19_Y11_N4
\U_1HzPulse|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Equal0~6_combout\ = (\U_1HzPulse|cnt\(23) & (!\U_1HzPulse|cnt\(21) & (!\U_1HzPulse|cnt\(20) & \U_1HzPulse|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(23),
	datab => \U_1HzPulse|cnt\(21),
	datac => \U_1HzPulse|cnt\(20),
	datad => \U_1HzPulse|cnt\(22),
	combout => \U_1HzPulse|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y11_N10
\U_1HzPulse|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|cnt~10_combout\ = (\U_1HzPulse|Add0~16_combout\ & (((!\U_1HzPulse|Equal0~4_combout\) # (!\U_1HzPulse|Equal0~5_combout\)) # (!\U_1HzPulse|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|Add0~16_combout\,
	datab => \U_1HzPulse|Equal0~6_combout\,
	datac => \U_1HzPulse|Equal0~5_combout\,
	datad => \U_1HzPulse|Equal0~4_combout\,
	combout => \U_1HzPulse|cnt~10_combout\);

-- Location: LCFF_X19_Y11_N11
\U_1HzPulse|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(8));

-- Location: LCCOMB_X19_Y11_N12
\U_1HzPulse|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|cnt~4_combout\ = (\U_1HzPulse|Add0~14_combout\ & (((!\U_1HzPulse|Equal0~4_combout\) # (!\U_1HzPulse|Equal0~5_combout\)) # (!\U_1HzPulse|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|Add0~14_combout\,
	datab => \U_1HzPulse|Equal0~6_combout\,
	datac => \U_1HzPulse|Equal0~5_combout\,
	datad => \U_1HzPulse|Equal0~4_combout\,
	combout => \U_1HzPulse|cnt~4_combout\);

-- Location: LCFF_X19_Y11_N13
\U_1HzPulse|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(7));

-- Location: LCCOMB_X18_Y11_N26
\U_1HzPulse|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~18_combout\ = (\U_1HzPulse|cnt\(9) & (!\U_1HzPulse|Add0~17\)) # (!\U_1HzPulse|cnt\(9) & ((\U_1HzPulse|Add0~17\) # (GND)))
-- \U_1HzPulse|Add0~19\ = CARRY((!\U_1HzPulse|Add0~17\) # (!\U_1HzPulse|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(9),
	datad => VCC,
	cin => \U_1HzPulse|Add0~17\,
	combout => \U_1HzPulse|Add0~18_combout\,
	cout => \U_1HzPulse|Add0~19\);

-- Location: LCFF_X18_Y11_N27
\U_1HzPulse|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(9));

-- Location: LCCOMB_X18_Y11_N28
\U_1HzPulse|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~20_combout\ = (\U_1HzPulse|cnt\(10) & (\U_1HzPulse|Add0~19\ $ (GND))) # (!\U_1HzPulse|cnt\(10) & (!\U_1HzPulse|Add0~19\ & VCC))
-- \U_1HzPulse|Add0~21\ = CARRY((\U_1HzPulse|cnt\(10) & !\U_1HzPulse|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(10),
	datad => VCC,
	cin => \U_1HzPulse|Add0~19\,
	combout => \U_1HzPulse|Add0~20_combout\,
	cout => \U_1HzPulse|Add0~21\);

-- Location: LCFF_X18_Y11_N29
\U_1HzPulse|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(10));

-- Location: LCCOMB_X18_Y10_N2
\U_1HzPulse|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~26_combout\ = (\U_1HzPulse|cnt\(13) & (!\U_1HzPulse|Add0~25\)) # (!\U_1HzPulse|cnt\(13) & ((\U_1HzPulse|Add0~25\) # (GND)))
-- \U_1HzPulse|Add0~27\ = CARRY((!\U_1HzPulse|Add0~25\) # (!\U_1HzPulse|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(13),
	datad => VCC,
	cin => \U_1HzPulse|Add0~25\,
	combout => \U_1HzPulse|Add0~26_combout\,
	cout => \U_1HzPulse|Add0~27\);

-- Location: LCFF_X18_Y10_N3
\U_1HzPulse|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(13));

-- Location: LCCOMB_X18_Y10_N4
\U_1HzPulse|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~28_combout\ = (\U_1HzPulse|cnt\(14) & (\U_1HzPulse|Add0~27\ $ (GND))) # (!\U_1HzPulse|cnt\(14) & (!\U_1HzPulse|Add0~27\ & VCC))
-- \U_1HzPulse|Add0~29\ = CARRY((\U_1HzPulse|cnt\(14) & !\U_1HzPulse|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(14),
	datad => VCC,
	cin => \U_1HzPulse|Add0~27\,
	combout => \U_1HzPulse|Add0~28_combout\,
	cout => \U_1HzPulse|Add0~29\);

-- Location: LCFF_X18_Y10_N5
\U_1HzPulse|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(14));

-- Location: LCCOMB_X18_Y10_N8
\U_1HzPulse|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Add0~32_combout\ = (\U_1HzPulse|cnt\(16) & (\U_1HzPulse|Add0~31\ $ (GND))) # (!\U_1HzPulse|cnt\(16) & (!\U_1HzPulse|Add0~31\ & VCC))
-- \U_1HzPulse|Add0~33\ = CARRY((\U_1HzPulse|cnt\(16) & !\U_1HzPulse|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|cnt\(16),
	datad => VCC,
	cin => \U_1HzPulse|Add0~31\,
	combout => \U_1HzPulse|Add0~32_combout\,
	cout => \U_1HzPulse|Add0~33\);

-- Location: LCFF_X18_Y10_N9
\U_1HzPulse|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(16));

-- Location: LCFF_X18_Y10_N11
\U_1HzPulse|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(17));

-- Location: LCFF_X18_Y10_N13
\U_1HzPulse|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|cnt\(18));

-- Location: LCCOMB_X19_Y11_N8
\U_1HzPulse|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Equal0~5_combout\ = (!\U_1HzPulse|cnt\(19) & (!\U_1HzPulse|cnt\(17) & (!\U_1HzPulse|cnt\(18) & !\U_1HzPulse|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzPulse|cnt\(19),
	datab => \U_1HzPulse|cnt\(17),
	datac => \U_1HzPulse|cnt\(18),
	datad => \U_1HzPulse|cnt\(16),
	combout => \U_1HzPulse|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y11_N16
\U_1HzPulse|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzPulse|Equal0~7_combout\ = (\U_1HzPulse|Equal0~5_combout\ & (\U_1HzPulse|Equal0~6_combout\ & \U_1HzPulse|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzPulse|Equal0~5_combout\,
	datac => \U_1HzPulse|Equal0~6_combout\,
	datad => \U_1HzPulse|Equal0~4_combout\,
	combout => \U_1HzPulse|Equal0~7_combout\);

-- Location: LCFF_X19_Y11_N17
\U_1HzPulse|clk_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzPulse|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzPulse|clk_out~regout\);

-- Location: CLKCTRL_G4
\U_1HzPulse|clk_out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_1HzPulse|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_1HzPulse|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y7_N26
\current_State~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \current_State~0_combout\ = !\current_State~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_State~regout\,
	combout => \current_State~0_combout\);

-- Location: LCFF_X1_Y7_N27
current_State : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzPulse|clk_out~clkctrl_outclk\,
	datain => \current_State~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_State~regout\);

-- Location: LCCOMB_X1_Y7_N16
\TLED_Orange_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLED_Orange_1~0_combout\ = !\current_State~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_State~regout\,
	combout => \TLED_Orange_1~0_combout\);

-- Location: LCFF_X1_Y7_N17
\TLED_Orange_1~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzPulse|clk_out~clkctrl_outclk\,
	datain => \TLED_Orange_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLED_Orange_1~reg0_regout\);

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

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_Bus[0]~I\ : cycloneii_io
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
	padio => ww_PIC_Bus(0),
	combout => \PIC_Bus~combout\(0));

-- Location: LCCOMB_X25_Y1_N16
\TLED_Orange_2~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TLED_Orange_2~reg0feeder_combout\ = \PIC_Bus~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_Bus~combout\(0),
	combout => \TLED_Orange_2~reg0feeder_combout\);

-- Location: LCFF_X25_Y1_N17
\TLED_Orange_2~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \TLED_Orange_2~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TLED_Orange_2~reg0_regout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TLED_Orange_1~I\ : cycloneii_io
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
	datain => \TLED_Orange_1~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TLED_Orange_1);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TLED_Orange_2~I\ : cycloneii_io
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
	datain => \TLED_Orange_2~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TLED_Orange_2);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_1[0]~I\ : cycloneii_io
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
	padio => ww_Switch_1(0));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_1[1]~I\ : cycloneii_io
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
	padio => ww_Switch_1(1));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_1[2]~I\ : cycloneii_io
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
	padio => ww_Switch_1(2));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_1[3]~I\ : cycloneii_io
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
	padio => ww_Switch_1(3));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_2~I\ : cycloneii_io
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
	padio => ww_Switch_2);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_3~I\ : cycloneii_io
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
	padio => ww_Switch_3);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_4~I\ : cycloneii_io
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
	padio => ww_Switch_4);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_Bus[1]~I\ : cycloneii_io
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
	padio => ww_PIC_Bus(1));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_Bus[2]~I\ : cycloneii_io
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
	padio => ww_PIC_Bus(2));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_Bus[3]~I\ : cycloneii_io
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
	padio => ww_PIC_Bus(3));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_Bus[4]~I\ : cycloneii_io
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
	padio => ww_PIC_Bus(4));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_Bus[5]~I\ : cycloneii_io
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
	padio => ww_PIC_Bus(5));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_Bus[6]~I\ : cycloneii_io
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
	padio => ww_PIC_Bus(6));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_Bus[7]~I\ : cycloneii_io
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
	padio => ww_PIC_Bus(7));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_A_D~I\ : cycloneii_io
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
	padio => ww_PIC_A_D);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_R_W~I\ : cycloneii_io
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
	padio => ww_PIC_R_W);
END structure;


