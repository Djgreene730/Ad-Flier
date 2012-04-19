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

-- DATE "04/18/2012 21:53:27"

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
	BLED_Blue : OUT std_logic_vector(3 DOWNTO 0);
	BLED_Orange : OUT std_logic_vector(3 DOWNTO 0);
	PIC_PBUS_OK_OUT : OUT std_logic;
	PIC_SPI_MISO : OUT std_logic;
	Ultra_T_Trigger : OUT std_logic;
	Ultra_B_Trigger : OUT std_logic;
	Motor_North : OUT std_logic;
	Motor_East : OUT std_logic;
	Motor_South : OUT std_logic;
	Motor_West : OUT std_logic;
	Camera_SCL : OUT std_logic;
	Camera_RESET : OUT std_logic;
	Camera_EXTCLK : OUT std_logic;
	FPGA_SPI_Clock : OUT std_logic;
	FPGA_SPI_MOSI : OUT std_logic;
	FPGA_I2C_Clock : OUT std_logic;
	Gyro_ChipSelect : OUT std_logic;
	SRAM_ChipSelect : OUT std_logic;
	SRAM_WriteProtect : OUT std_logic;
	Accel_SelAddr0 : OUT std_logic;
	clk : IN std_logic;
	clk_DS1085Z_0 : IN std_logic;
	clk_DS1085Z_1 : IN std_logic;
	Switch_1 : IN std_logic_vector(3 DOWNTO 0);
	Switch_2 : IN std_logic;
	Switch_3 : IN std_logic;
	Switch_4 : IN std_logic;
	PIC_PBUS_Data : INOUT std_logic_vector(7 DOWNTO 0);
	PIC_PBUS_A_D : IN std_logic;
	PIC_PBUS_R_W : IN std_logic;
	PIC_PBUS_OK_IN : IN std_logic;
	PIC_SPI_SCLK : IN std_logic;
	PIC_SPI_MOSI : IN std_logic;
	PIC_SPI_Select : IN std_logic;
	Ultra_T_Edge : IN std_logic;
	Ultra_B_Edge : IN std_logic;
	Camera_SDA : INOUT std_logic;
	Camera_HD : IN std_logic;
	Camera_VD : IN std_logic;
	Camera_DCLK : IN std_logic;
	Camera_DOUT : IN std_logic_vector(7 DOWNTO 0);
	FPGA_SPI_MISO : IN std_logic;
	FPGA_I2C_Data : INOUT std_logic;
	Gyro_DataReady : IN std_logic;
	Gyro_Interrupt : IN std_logic;
	Accel_Interrupt1 : IN std_logic;
	Accel_Interrupt2 : IN std_logic
	);
END BoardTest;

-- Design Ports Information
-- PIC_PBUS_Data[0]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PIC_PBUS_Data[1]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PIC_PBUS_Data[2]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PIC_PBUS_Data[3]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PIC_PBUS_Data[4]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PIC_PBUS_Data[5]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PIC_PBUS_Data[6]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PIC_PBUS_Data[7]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Camera_SDA	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- FPGA_I2C_Data	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_DS1085Z_0	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_DS1085Z_1	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_3	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_4	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TLED_Orange_1	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TLED_Orange_2	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BLED_Blue[0]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BLED_Blue[1]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BLED_Blue[2]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BLED_Blue[3]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BLED_Orange[0]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BLED_Orange[1]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BLED_Orange[2]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BLED_Orange[3]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PIC_PBUS_OK_OUT	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PIC_SPI_MISO	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Ultra_T_Trigger	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Ultra_B_Trigger	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Ultra_B_Edge	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Motor_North	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Motor_East	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Motor_South	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Motor_West	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Camera_SCL	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Camera_RESET	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Camera_EXTCLK	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Camera_HD	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Camera_VD	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Camera_DCLK	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Camera_DOUT[0]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Camera_DOUT[1]	=>  Location: PIN_94,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Camera_DOUT[2]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Camera_DOUT[3]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Camera_DOUT[4]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Camera_DOUT[5]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Camera_DOUT[6]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Camera_DOUT[7]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_SPI_Clock	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FPGA_SPI_MISO	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_SPI_MOSI	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FPGA_I2C_Clock	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Gyro_ChipSelect	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Gyro_DataReady	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Gyro_Interrupt	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRAM_ChipSelect	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WriteProtect	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Accel_Interrupt1	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Accel_Interrupt2	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Accel_SelAddr0	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_2	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[0]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[2]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[3]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Ultra_T_Edge	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_PBUS_A_D	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_PBUS_OK_IN	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_PBUS_R_W	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_SPI_MOSI	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_SPI_SCLK	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_SPI_Select	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_BLED_Blue : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BLED_Orange : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PIC_PBUS_OK_OUT : std_logic;
SIGNAL ww_PIC_SPI_MISO : std_logic;
SIGNAL ww_Ultra_T_Trigger : std_logic;
SIGNAL ww_Ultra_B_Trigger : std_logic;
SIGNAL ww_Motor_North : std_logic;
SIGNAL ww_Motor_East : std_logic;
SIGNAL ww_Motor_South : std_logic;
SIGNAL ww_Motor_West : std_logic;
SIGNAL ww_Camera_SCL : std_logic;
SIGNAL ww_Camera_RESET : std_logic;
SIGNAL ww_Camera_EXTCLK : std_logic;
SIGNAL ww_FPGA_SPI_Clock : std_logic;
SIGNAL ww_FPGA_SPI_MOSI : std_logic;
SIGNAL ww_FPGA_I2C_Clock : std_logic;
SIGNAL ww_Gyro_ChipSelect : std_logic;
SIGNAL ww_SRAM_ChipSelect : std_logic;
SIGNAL ww_SRAM_WriteProtect : std_logic;
SIGNAL ww_Accel_SelAddr0 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clk_DS1085Z_0 : std_logic;
SIGNAL ww_clk_DS1085Z_1 : std_logic;
SIGNAL ww_Switch_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Switch_2 : std_logic;
SIGNAL ww_Switch_3 : std_logic;
SIGNAL ww_Switch_4 : std_logic;
SIGNAL ww_PIC_PBUS_A_D : std_logic;
SIGNAL ww_PIC_PBUS_R_W : std_logic;
SIGNAL ww_PIC_PBUS_OK_IN : std_logic;
SIGNAL ww_PIC_SPI_SCLK : std_logic;
SIGNAL ww_PIC_SPI_MOSI : std_logic;
SIGNAL ww_PIC_SPI_Select : std_logic;
SIGNAL ww_Ultra_T_Edge : std_logic;
SIGNAL ww_Ultra_B_Edge : std_logic;
SIGNAL ww_Camera_HD : std_logic;
SIGNAL ww_Camera_VD : std_logic;
SIGNAL ww_Camera_DCLK : std_logic;
SIGNAL ww_Camera_DOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_FPGA_SPI_MISO : std_logic;
SIGNAL ww_Gyro_DataReady : std_logic;
SIGNAL ww_Gyro_Interrupt : std_logic;
SIGNAL ww_Accel_Interrupt1 : std_logic;
SIGNAL ww_Accel_Interrupt2 : std_logic;
SIGNAL \U_1HzClkDivider|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_Ranger_Top|Add1~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~26_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~30_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~34_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~26_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~28_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[1]~26_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[2]~28_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[4]~32_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[6]~36_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[18]~60_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[20]~64_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[10]~30\ : std_logic;
SIGNAL \Motor_1|pulsecount[11]~31_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~22_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~28_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~34_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[1]~7_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[3]~11_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[4]~13_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[6]~17_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[1]~9_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~0_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~5_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~15_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~21_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~29_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~41_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~43_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~49_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~50_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~51_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~56_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~69_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~71_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~72_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~79_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~83_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~94_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~103_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~119_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~126_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~137_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~139_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~0_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~13_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan1~3_combout\ : std_logic;
SIGNAL \pwm1[6]~1_combout\ : std_logic;
SIGNAL \pwm1[0]~7_combout\ : std_logic;
SIGNAL \pwm2[4]~3_combout\ : std_logic;
SIGNAL \pwm2[2]~5_combout\ : std_logic;
SIGNAL \pwm2[1]~6_combout\ : std_logic;
SIGNAL \pwm3[6]~1_combout\ : std_logic;
SIGNAL \pwm3[5]~2_combout\ : std_logic;
SIGNAL \pwm3[0]~7_combout\ : std_logic;
SIGNAL \pwm4[6]~1_combout\ : std_logic;
SIGNAL \pwm4[0]~7_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~2_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~11_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~3_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~4_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~5_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~6_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~7_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~8_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent[0]~9_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent[0]~10_combout\ : std_logic;
SIGNAL \PIC_SPI_MOSI~combout\ : std_logic;
SIGNAL \Registers|RegZM|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegYM|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegYD|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegAD|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegZM|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegYD|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \PIC_PBUS_Data[0]~0\ : std_logic;
SIGNAL \PIC_PBUS_Data[1]~1\ : std_logic;
SIGNAL \PIC_PBUS_Data[2]~2\ : std_logic;
SIGNAL \PIC_PBUS_Data[3]~3\ : std_logic;
SIGNAL \PIC_PBUS_Data[4]~4\ : std_logic;
SIGNAL \PIC_PBUS_Data[5]~5\ : std_logic;
SIGNAL \PIC_PBUS_Data[6]~6\ : std_logic;
SIGNAL \PIC_PBUS_Data[7]~7\ : std_logic;
SIGNAL \Registers|RegAD|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \Switch_2~combout\ : std_logic;
SIGNAL \PIC_PBUS_R_W~combout\ : std_logic;
SIGNAL \PIC_PBUS_OK_IN~combout\ : std_logic;
SIGNAL \Registers|RegCont|state.wa2~regout\ : std_logic;
SIGNAL \PIC_PBUS_A_D~combout\ : std_logic;
SIGNAL \Registers|RegCont|nextstate.wd1~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|state.wd1~regout\ : std_logic;
SIGNAL \Registers|RegCont|state.wd2~regout\ : std_logic;
SIGNAL \Registers|RegCont|ok_in~combout\ : std_logic;
SIGNAL \Registers|RegCont|nextstate.rd1~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|state.rd1~regout\ : std_logic;
SIGNAL \Registers|RegCont|Selector2~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|state.rd2~regout\ : std_logic;
SIGNAL \Registers|RegCont|state.ra1~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|state.ra1~1_combout\ : std_logic;
SIGNAL \Registers|RegCont|state.ra1~regout\ : std_logic;
SIGNAL \Registers|RegCont|tbo~combout\ : std_logic;
SIGNAL \Registers|RegCont|Selector0~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|state.fetch~regout\ : std_logic;
SIGNAL \Registers|RegCont|nextstate.wa1~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|state.wa1~regout\ : std_logic;
SIGNAL \Registers|RegCont|regi07~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi06~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi06~1_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi04~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi07~1_combout\ : std_logic;
SIGNAL \Registers|databus[0]~1_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi02~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi03~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi00~0_combout\ : std_logic;
SIGNAL \Registers|RegXM|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi03~1_combout\ : std_logic;
SIGNAL \Registers|databus[0]~0_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[0]~0_combout\ : std_logic;
SIGNAL \Registers|RegYD|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi01~0_combout\ : std_logic;
SIGNAL \Registers|RegZD|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[1]~2_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi05~0_combout\ : std_logic;
SIGNAL \Registers|databus[1]~3_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[1]~1_combout\ : std_logic;
SIGNAL \Registers|databus[2]~5_combout\ : std_logic;
SIGNAL \Registers|RegZD|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegXM|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[2]~4_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[2]~2_combout\ : std_logic;
SIGNAL \Registers|databus[3]~7_combout\ : std_logic;
SIGNAL \Registers|RegXM|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[3]~6_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[3]~3_combout\ : std_logic;
SIGNAL \Registers|databus[4]~8_combout\ : std_logic;
SIGNAL \Registers|databus[4]~9_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[4]~4_combout\ : std_logic;
SIGNAL \Registers|databus[5]~10_combout\ : std_logic;
SIGNAL \Registers|RegZM|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[5]~11_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[5]~5_combout\ : std_logic;
SIGNAL \Registers|RegAD|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[6]~13_combout\ : std_logic;
SIGNAL \Registers|RegXM|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[6]~12_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[6]~6_combout\ : std_logic;
SIGNAL \Registers|RegZM|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegAD|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[7]~15_combout\ : std_logic;
SIGNAL \Registers|RegZD|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegXM|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[7]~14_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[7]~7_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~0_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~10_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~1\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~2_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~9_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~3\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~4_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~8_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~5\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~6_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~1_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~7\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~8_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~7_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~9\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~10_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~38_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~5_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~6_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~11\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~12_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~5_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~0_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~3_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~4_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~13\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~14_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~4_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~15\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~16_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~17\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~18_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~19\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~20_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~21\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~23\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~24_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~25\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~26_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~27\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~29\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~30_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~31\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~32_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~33\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~35\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~36_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~37\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~39\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~40_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~41\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~42_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~12_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~43\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~44_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~13_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~6_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~7_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|clk_out~regout\ : std_logic;
SIGNAL \U_1HzClkDivider|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \current_State~0_combout\ : std_logic;
SIGNAL \current_State~regout\ : std_logic;
SIGNAL \TLED_Orange_1~0_combout\ : std_logic;
SIGNAL \TLED_Orange_1~reg0_regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \PIC_SPI_SCLK~combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|SCKr[0]~feeder_combout\ : std_logic;
SIGNAL \PIC_SPI_Select~combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|SSELr[1]~feeder_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|bitcnt~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|Add1~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|bitcnt~1_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|bitcnt~2_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_received~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_received~1_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_received~regout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_received[0]~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|LED~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|LED~regout\ : std_logic;
SIGNAL \U_Ranger_Top|count[0]~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan0~0_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[22]~69\ : std_logic;
SIGNAL \U_Ranger_Top|count[23]~70_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan0~1_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[0]~25\ : std_logic;
SIGNAL \U_Ranger_Top|count[1]~27\ : std_logic;
SIGNAL \U_Ranger_Top|count[2]~29\ : std_logic;
SIGNAL \U_Ranger_Top|count[3]~30_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[3]~31\ : std_logic;
SIGNAL \U_Ranger_Top|count[4]~33\ : std_logic;
SIGNAL \U_Ranger_Top|count[5]~34_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[5]~35\ : std_logic;
SIGNAL \U_Ranger_Top|count[6]~37\ : std_logic;
SIGNAL \U_Ranger_Top|count[7]~38_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[7]~39\ : std_logic;
SIGNAL \U_Ranger_Top|count[8]~41\ : std_logic;
SIGNAL \U_Ranger_Top|count[9]~42_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[9]~43\ : std_logic;
SIGNAL \U_Ranger_Top|count[10]~44_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[10]~45\ : std_logic;
SIGNAL \U_Ranger_Top|count[11]~46_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[11]~47\ : std_logic;
SIGNAL \U_Ranger_Top|count[12]~48_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[12]~49\ : std_logic;
SIGNAL \U_Ranger_Top|count[13]~50_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[13]~51\ : std_logic;
SIGNAL \U_Ranger_Top|count[14]~52_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[14]~53\ : std_logic;
SIGNAL \U_Ranger_Top|count[15]~55\ : std_logic;
SIGNAL \U_Ranger_Top|count[16]~56_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[16]~57\ : std_logic;
SIGNAL \U_Ranger_Top|count[17]~59\ : std_logic;
SIGNAL \U_Ranger_Top|count[18]~61\ : std_logic;
SIGNAL \U_Ranger_Top|count[19]~62_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[19]~63\ : std_logic;
SIGNAL \U_Ranger_Top|count[20]~65\ : std_logic;
SIGNAL \U_Ranger_Top|count[21]~66_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[21]~67\ : std_logic;
SIGNAL \U_Ranger_Top|count[22]~68_combout\ : std_logic;
SIGNAL \Ultra_T_Edge~combout\ : std_logic;
SIGNAL \U_Ranger_Top|edgeYet~regout\ : std_logic;
SIGNAL \U_Ranger_Top|process_0~0_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[17]~58_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[15]~54_combout\ : std_logic;
SIGNAL \U_Ranger_Top|count[8]~40_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~1_cout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~3\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~5\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~7\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~9\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~11\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~13\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~15\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~17\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~19\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~21\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~23\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~25\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~27\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~28_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~29\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~30_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~1\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~3\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~5\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~7\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~9\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~11\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~13\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~15\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~17\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~19\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~1_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~3_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~7_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~0_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~9_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~1\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~3\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~5\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~7\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~9\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~11\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~13\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~15\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~17\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~19\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~21\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~11_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~13_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~17_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~19_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~1\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~3\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~5\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~7\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~9\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~11\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~13\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~15\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~17\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~19\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~21\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~23\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~23_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~26_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~27_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~28_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~30_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~0_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~31_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~0_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~32_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~13\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~17\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~19\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~21\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~23\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~25\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~34_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~33_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~35_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~36_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~25_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~37_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~38_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~39_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~40_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~42_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~44_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~1_cout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~3\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~5\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~7\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~9\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~11\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~13\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~15\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~17\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~19\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~21\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~23\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~25\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~27\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~46_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~26_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~45_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~47_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~52_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~53_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~54_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~55_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1_cout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~17\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~19\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~21\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~23\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~25\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~27\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~29\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~26_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~59_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~60_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~48_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~61_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~63_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~65_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~67_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~68_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~57_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~70_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~1_cout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~3\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~5\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~7\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~9\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~11\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~13\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~15\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~17\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~19\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~21\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~23\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~25\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~27\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~28_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~28_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~58_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~29\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~31\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~73_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~26_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~74_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~75_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~62_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~76_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~64_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~78_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~66_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~80_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~81_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~84_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Add1~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~86_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~1_cout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~3\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~5\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~7\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~9\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~11\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~13\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~15\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~17\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~19\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~21\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~23\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~25\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~27\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~29\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~30_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~31\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~33\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~88_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~26_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~90_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~91_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~93_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~95_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~96_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~98_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~85_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~100_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~101_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~1_cout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~3\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~5\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~7\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~9\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~11\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~13\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~15\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~17\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~19\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~21\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~23\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~25\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~27\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~29\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~31\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~32_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~32_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~87_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~33\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~35\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~104_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~28_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~89_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~30_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~105_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~28_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~106_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~26_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~107_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~109_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~111_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~112_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~82_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~97_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~113_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~114_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~99_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~115_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~116_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~102_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~118_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~1_cout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~3\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~5\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~7\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~9\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~11\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~13\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~15\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~17\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~19\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~21\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~23\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~25\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~27\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~29\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~31\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~33\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~35\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~37\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~36_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~120_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~34_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~121_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~32_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~122_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~30_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~123_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~28_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~124_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~77_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~92_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~24_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~108_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~26_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~125_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~110_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~127_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~128_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~129_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~130_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~131_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~132_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~133_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~117_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~134_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~136_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~1_cout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~3\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~5\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~7\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~9\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~11\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~13\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~15\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~17\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~19\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~21\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~23\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~25\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~27\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~29\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~31\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~33\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~35\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~37\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~39\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~22_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~148_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~138_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~140_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~141_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~135_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~143_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~146_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~145_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~144_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~14_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~15_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~149_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~30_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~152_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~26_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~150_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~38_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~156_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~34_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~154_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~36_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~155_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~9_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~11_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~17_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~32_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~153_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~28_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~151_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~20_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~147_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~142_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~1_cout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~3\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~5\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~7\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~9\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~11\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~13\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~15\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~17\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~19\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~21\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~23\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~25\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~27\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~29\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~31\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~33\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~35\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~37\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~39\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~41\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~36_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~38_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~40_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~30_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~34_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~32_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~1_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~3_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~18_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~5_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~16_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~10_combout\ : std_logic;
SIGNAL \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~12_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~6_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~7_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~8_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan2~18_combout\ : std_logic;
SIGNAL \BLED_Orange[0]~5\ : std_logic;
SIGNAL \BLED_Orange[1]~7\ : std_logic;
SIGNAL \BLED_Orange[2]~9\ : std_logic;
SIGNAL \BLED_Orange[3]~11\ : std_logic;
SIGNAL \BLED_Blue[0]~4_combout\ : std_logic;
SIGNAL \BLED_Blue[0]~reg0_regout\ : std_logic;
SIGNAL \BLED_Blue[0]~5\ : std_logic;
SIGNAL \BLED_Blue[1]~6_combout\ : std_logic;
SIGNAL \BLED_Blue[1]~reg0_regout\ : std_logic;
SIGNAL \BLED_Blue[1]~7\ : std_logic;
SIGNAL \BLED_Blue[2]~8_combout\ : std_logic;
SIGNAL \BLED_Blue[2]~reg0_regout\ : std_logic;
SIGNAL \BLED_Blue[2]~9\ : std_logic;
SIGNAL \BLED_Blue[3]~10_combout\ : std_logic;
SIGNAL \BLED_Blue[3]~reg0_regout\ : std_logic;
SIGNAL \BLED_Orange[0]~4_combout\ : std_logic;
SIGNAL \BLED_Orange[0]~reg0_regout\ : std_logic;
SIGNAL \BLED_Orange[1]~6_combout\ : std_logic;
SIGNAL \BLED_Orange[1]~reg0_regout\ : std_logic;
SIGNAL \BLED_Orange[2]~8_combout\ : std_logic;
SIGNAL \BLED_Orange[2]~reg0_regout\ : std_logic;
SIGNAL \BLED_Orange[3]~10_combout\ : std_logic;
SIGNAL \BLED_Orange[3]~reg0_regout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[0]~21_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[1]~8\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[2]~9_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|Equal2~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[2]~10\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[3]~12\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[4]~14\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[5]~15_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[5]~16\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[6]~18\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[7]~19_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~1_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent[0]~2_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|MISO~feeder_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|MISO~regout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan1~0_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan1~1_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan1~2_combout\ : std_logic;
SIGNAL \U_Ranger_Top|LessThan1~4_combout\ : std_logic;
SIGNAL \U_Ranger_Top|trigger~regout\ : std_logic;
SIGNAL \Motor_1|pulsecount[1]~11_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[0]~7_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[0]~8\ : std_logic;
SIGNAL \Motor_1|clockcount[1]~10\ : std_logic;
SIGNAL \Motor_1|clockcount[2]~11_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[2]~12\ : std_logic;
SIGNAL \Motor_1|clockcount[3]~14\ : std_logic;
SIGNAL \Motor_1|clockcount[4]~15_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[4]~16\ : std_logic;
SIGNAL \Motor_1|clockcount[5]~17_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[5]~18\ : std_logic;
SIGNAL \Motor_1|clockcount[6]~19_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[3]~13_combout\ : std_logic;
SIGNAL \Motor_1|Equal0~0_combout\ : std_logic;
SIGNAL \Motor_1|Equal0~1_combout\ : std_logic;
SIGNAL \Motor_1|clocktick~regout\ : std_logic;
SIGNAL \Motor_1|pulsecount[1]~12\ : std_logic;
SIGNAL \Motor_1|pulsecount[2]~13_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[2]~14\ : std_logic;
SIGNAL \Motor_1|pulsecount[3]~15_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[3]~16\ : std_logic;
SIGNAL \Motor_1|pulsecount[4]~18\ : std_logic;
SIGNAL \Motor_1|pulsecount[5]~19_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[5]~20\ : std_logic;
SIGNAL \Motor_1|pulsecount[6]~21_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[6]~22\ : std_logic;
SIGNAL \Motor_1|pulsecount[7]~24\ : std_logic;
SIGNAL \Motor_1|pulsecount[8]~25_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[8]~26\ : std_logic;
SIGNAL \Motor_1|pulsecount[9]~27_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[9]~28\ : std_logic;
SIGNAL \Motor_1|pulsecount[10]~29_combout\ : std_logic;
SIGNAL \Motor_1|LessThan0~0_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[7]~23_combout\ : std_logic;
SIGNAL \counter[1]~7_combout\ : std_logic;
SIGNAL \counter[1]~8\ : std_logic;
SIGNAL \counter[2]~10\ : std_logic;
SIGNAL \counter[3]~11_combout\ : std_logic;
SIGNAL \counter[3]~12\ : std_logic;
SIGNAL \counter[4]~13_combout\ : std_logic;
SIGNAL \counter[4]~14\ : std_logic;
SIGNAL \counter[5]~16\ : std_logic;
SIGNAL \counter[6]~17_combout\ : std_logic;
SIGNAL \counter[6]~18\ : std_logic;
SIGNAL \counter[7]~19_combout\ : std_logic;
SIGNAL \pwm1[7]~0_combout\ : std_logic;
SIGNAL \counter[5]~15_combout\ : std_logic;
SIGNAL \pwm1[5]~2_combout\ : std_logic;
SIGNAL \pwm1[4]~3_combout\ : std_logic;
SIGNAL \pwm1[3]~4_combout\ : std_logic;
SIGNAL \counter[2]~9_combout\ : std_logic;
SIGNAL \pwm1[2]~5_combout\ : std_logic;
SIGNAL \pwm1[1]~6_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[0]~33_combout\ : std_logic;
SIGNAL \Motor_1|LessThan0~2_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~4_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~6_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~8_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~10_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~12_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~14_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~15_combout\ : std_logic;
SIGNAL \Motor_1|LessThan0~17_combout\ : std_logic;
SIGNAL \Motor_1|pwm~regout\ : std_logic;
SIGNAL \pwm2[7]~0_combout\ : std_logic;
SIGNAL \pwm2[6]~1_combout\ : std_logic;
SIGNAL \pwm2[5]~2_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[4]~17_combout\ : std_logic;
SIGNAL \pwm2[3]~4_combout\ : std_logic;
SIGNAL \pwm2[0]~7_combout\ : std_logic;
SIGNAL \Motor_2|LessThan0~1_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~3_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~5_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~7_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~9_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~11_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~13_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~14_combout\ : std_logic;
SIGNAL \Motor_2|LessThan0~16_combout\ : std_logic;
SIGNAL \Motor_2|pwm~regout\ : std_logic;
SIGNAL \pwm3[7]~0_combout\ : std_logic;
SIGNAL \pwm3[4]~3_combout\ : std_logic;
SIGNAL \pwm3[3]~4_combout\ : std_logic;
SIGNAL \pwm3[2]~5_combout\ : std_logic;
SIGNAL \pwm3[1]~6_combout\ : std_logic;
SIGNAL \Motor_3|LessThan0~1_cout\ : std_logic;
SIGNAL \Motor_3|LessThan0~3_cout\ : std_logic;
SIGNAL \Motor_3|LessThan0~5_cout\ : std_logic;
SIGNAL \Motor_3|LessThan0~7_cout\ : std_logic;
SIGNAL \Motor_3|LessThan0~9_cout\ : std_logic;
SIGNAL \Motor_3|LessThan0~11_cout\ : std_logic;
SIGNAL \Motor_3|LessThan0~13_cout\ : std_logic;
SIGNAL \Motor_3|LessThan0~14_combout\ : std_logic;
SIGNAL \Motor_3|LessThan0~16_combout\ : std_logic;
SIGNAL \Motor_3|pwm~regout\ : std_logic;
SIGNAL \pwm4[7]~0_combout\ : std_logic;
SIGNAL \pwm4[5]~2_combout\ : std_logic;
SIGNAL \pwm4[4]~3_combout\ : std_logic;
SIGNAL \pwm4[3]~4_combout\ : std_logic;
SIGNAL \pwm4[2]~5_combout\ : std_logic;
SIGNAL \pwm4[1]~6_combout\ : std_logic;
SIGNAL \Motor_4|LessThan0~1_cout\ : std_logic;
SIGNAL \Motor_4|LessThan0~3_cout\ : std_logic;
SIGNAL \Motor_4|LessThan0~5_cout\ : std_logic;
SIGNAL \Motor_4|LessThan0~7_cout\ : std_logic;
SIGNAL \Motor_4|LessThan0~9_cout\ : std_logic;
SIGNAL \Motor_4|LessThan0~11_cout\ : std_logic;
SIGNAL \Motor_4|LessThan0~13_cout\ : std_logic;
SIGNAL \Motor_4|LessThan0~14_combout\ : std_logic;
SIGNAL \Motor_4|LessThan0~16_combout\ : std_logic;
SIGNAL \Motor_4|pwm~regout\ : std_logic;
SIGNAL \Switch_1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Registers|RegXD|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Registers|RegAdd|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Motor_1|clockcount\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Motor_1|pulsecount\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_Ranger_Top|count\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \U_Ranger_Top|edgebegin\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|MOSIr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|SCKr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|SSELr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|bitcnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|byte_data_received\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|byte_data_sent\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_1HzClkDivider|cnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL counter : std_logic_vector(7 DOWNTO 0);
SIGNAL \Registers|RegAM|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Registers|RegAD|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Registers|RegZM|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Registers|RegYM|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Registers|RegXM|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Registers|RegZD|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Registers|RegYD|tmp\ : std_logic_vector(7 DOWNTO 0);

BEGIN

TLED_Orange_1 <= ww_TLED_Orange_1;
TLED_Orange_2 <= ww_TLED_Orange_2;
BLED_Blue <= ww_BLED_Blue;
BLED_Orange <= ww_BLED_Orange;
PIC_PBUS_OK_OUT <= ww_PIC_PBUS_OK_OUT;
PIC_SPI_MISO <= ww_PIC_SPI_MISO;
Ultra_T_Trigger <= ww_Ultra_T_Trigger;
Ultra_B_Trigger <= ww_Ultra_B_Trigger;
Motor_North <= ww_Motor_North;
Motor_East <= ww_Motor_East;
Motor_South <= ww_Motor_South;
Motor_West <= ww_Motor_West;
Camera_SCL <= ww_Camera_SCL;
Camera_RESET <= ww_Camera_RESET;
Camera_EXTCLK <= ww_Camera_EXTCLK;
FPGA_SPI_Clock <= ww_FPGA_SPI_Clock;
FPGA_SPI_MOSI <= ww_FPGA_SPI_MOSI;
FPGA_I2C_Clock <= ww_FPGA_I2C_Clock;
Gyro_ChipSelect <= ww_Gyro_ChipSelect;
SRAM_ChipSelect <= ww_SRAM_ChipSelect;
SRAM_WriteProtect <= ww_SRAM_WriteProtect;
Accel_SelAddr0 <= ww_Accel_SelAddr0;
ww_clk <= clk;
ww_clk_DS1085Z_0 <= clk_DS1085Z_0;
ww_clk_DS1085Z_1 <= clk_DS1085Z_1;
ww_Switch_1 <= Switch_1;
ww_Switch_2 <= Switch_2;
ww_Switch_3 <= Switch_3;
ww_Switch_4 <= Switch_4;
ww_PIC_PBUS_A_D <= PIC_PBUS_A_D;
ww_PIC_PBUS_R_W <= PIC_PBUS_R_W;
ww_PIC_PBUS_OK_IN <= PIC_PBUS_OK_IN;
ww_PIC_SPI_SCLK <= PIC_SPI_SCLK;
ww_PIC_SPI_MOSI <= PIC_SPI_MOSI;
ww_PIC_SPI_Select <= PIC_SPI_Select;
ww_Ultra_T_Edge <= Ultra_T_Edge;
ww_Ultra_B_Edge <= Ultra_B_Edge;
ww_Camera_HD <= Camera_HD;
ww_Camera_VD <= Camera_VD;
ww_Camera_DCLK <= Camera_DCLK;
ww_Camera_DOUT <= Camera_DOUT;
ww_FPGA_SPI_MISO <= FPGA_SPI_MISO;
ww_Gyro_DataReady <= Gyro_DataReady;
ww_Gyro_Interrupt <= Gyro_Interrupt;
ww_Accel_Interrupt1 <= Accel_Interrupt1;
ww_Accel_Interrupt2 <= Accel_Interrupt2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_1HzClkDivider|clk_out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \U_1HzClkDivider|clk_out~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X19_Y10_N6
\U_Ranger_Top|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~6_combout\ = (\U_Ranger_Top|edgebegin\(11) & (\U_Ranger_Top|Add1~5\ & VCC)) # (!\U_Ranger_Top|edgebegin\(11) & (!\U_Ranger_Top|Add1~5\))
-- \U_Ranger_Top|Add1~7\ = CARRY((!\U_Ranger_Top|edgebegin\(11) & !\U_Ranger_Top|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(11),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~5\,
	combout => \U_Ranger_Top|Add1~6_combout\,
	cout => \U_Ranger_Top|Add1~7\);

-- Location: LCCOMB_X19_Y10_N10
\U_Ranger_Top|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~10_combout\ = (\U_Ranger_Top|edgebegin\(13) & (\U_Ranger_Top|Add1~9\ & VCC)) # (!\U_Ranger_Top|edgebegin\(13) & (!\U_Ranger_Top|Add1~9\))
-- \U_Ranger_Top|Add1~11\ = CARRY((!\U_Ranger_Top|edgebegin\(13) & !\U_Ranger_Top|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(13),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~9\,
	combout => \U_Ranger_Top|Add1~10_combout\,
	cout => \U_Ranger_Top|Add1~11\);

-- Location: LCCOMB_X19_Y10_N26
\U_Ranger_Top|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~26_combout\ = (\U_Ranger_Top|edgebegin\(21) & (\U_Ranger_Top|Add1~25\ & VCC)) # (!\U_Ranger_Top|edgebegin\(21) & (!\U_Ranger_Top|Add1~25\))
-- \U_Ranger_Top|Add1~27\ = CARRY((!\U_Ranger_Top|edgebegin\(21) & !\U_Ranger_Top|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|edgebegin\(21),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~25\,
	combout => \U_Ranger_Top|Add1~26_combout\,
	cout => \U_Ranger_Top|Add1~27\);

-- Location: LCCOMB_X18_Y10_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~2_combout\ = (\U_Ranger_Top|Add1~14_combout\ & (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~1\ & VCC)) # 
-- (!\U_Ranger_Top|Add1~14_combout\ & (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~1\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~3\ = CARRY((!\U_Ranger_Top|Add1~14_combout\ & !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~14_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~1\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~2_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~3\);

-- Location: LCCOMB_X18_Y10_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~4_combout\ = (\U_Ranger_Top|Add1~16_combout\ & (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~3\ $ (GND))) # 
-- (!\U_Ranger_Top|Add1~16_combout\ & (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~3\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~5\ = CARRY((\U_Ranger_Top|Add1~16_combout\ & !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Add1~16_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~3\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~4_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~5\);

-- Location: LCCOMB_X18_Y10_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~8_combout\ = (\U_Ranger_Top|Add1~20_combout\ & (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~7\ $ (GND))) # 
-- (!\U_Ranger_Top|Add1~20_combout\ & (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~7\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~9\ = CARRY((\U_Ranger_Top|Add1~20_combout\ & !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~20_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~7\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~8_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~9\);

-- Location: LCCOMB_X18_Y10_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~14_combout\ = (\U_Ranger_Top|Add1~26_combout\ & (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~13\)) # 
-- (!\U_Ranger_Top|Add1~26_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~13\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~15\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~13\) # (!\U_Ranger_Top|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Add1~26_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~13\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~14_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~15\);

-- Location: LCCOMB_X18_Y10_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~18_combout\ = (\U_Ranger_Top|Add1~30_combout\ & (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~17\)) # 
-- (!\U_Ranger_Top|Add1~30_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~17\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~19\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~17\) # (!\U_Ranger_Top|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~30_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~17\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~18_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~19\);

-- Location: LCCOMB_X21_Y10_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~6_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~7\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~6_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~7\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~9\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~6_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~6_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~7\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~8_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~9\);

-- Location: LCCOMB_X21_Y10_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~5_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~9\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~5_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~9\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~11\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~5_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~5_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~9\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~10_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~11\);

-- Location: LCCOMB_X21_Y10_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~20_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~0_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~19\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~0_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~19\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~21\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~0_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~0_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~19\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~20_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~21\);

-- Location: LCCOMB_X21_Y8_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~18_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~5\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~18_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~5\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~7\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~5\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~18_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~5\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~6_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~7\);

-- Location: LCCOMB_X21_Y8_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~22_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~10_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~21\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~10_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~21\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~23\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~10_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~10_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~21\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~22_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~23\);

-- Location: LCCOMB_X22_Y7_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~32_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~32_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~32_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X22_Y7_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~31_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~31_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~31_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~31_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X22_Y7_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~29_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~29_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~29_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~29_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X21_Y6_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~44_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~3\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~44_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~3\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~5\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~44_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~44_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~3\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~4_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~5\);

-- Location: LCCOMB_X21_Y6_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~14_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~39_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~13\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~39_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~13\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~15\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~13\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~39_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~13\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~14_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~15\);

-- Location: LCCOMB_X21_Y6_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~15\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~38_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~15\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~17\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~38_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~38_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~15\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~16_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~17\);

-- Location: LCCOMB_X21_Y6_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~18_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~37_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~17\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~37_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~17\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~19\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~17\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~37_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~17\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~18_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~19\);

-- Location: LCCOMB_X17_Y6_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1_cout\ & ((\U_Ranger_Top|Add1~4_combout\ $ 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\)))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1_cout\ & (\U_Ranger_Top|Add1~4_combout\ $ 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\))))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1_cout\ & (\U_Ranger_Top|Add1~4_combout\ $ 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Add1~4_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1_cout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~2_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3\);

-- Location: LCCOMB_X17_Y6_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~57_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~57_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~57_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~57_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~3\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~4_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5\);

-- Location: LCCOMB_X17_Y6_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~56_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~56_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~56_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~5\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~6_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7\);

-- Location: LCCOMB_X17_Y6_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~22_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~48_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~21\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~48_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~21\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~23\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~48_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~48_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~21\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~22_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~23\);

-- Location: LCCOMB_X16_Y6_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~69_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~7\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~69_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~7\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~9\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~69_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~69_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~7\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~8_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~9\);

-- Location: LCCOMB_X16_Y5_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~65_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~15\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~65_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~15\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~17\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~65_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~65_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~15\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~16_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~17\);

-- Location: LCCOMB_X16_Y5_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~30_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~58_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~29\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~58_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~29\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~31\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~58_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~58_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~29\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~30_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~31\);

-- Location: LCCOMB_X15_Y5_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~18_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~79_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~17\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~79_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~17\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~19\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~17\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~79_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~17\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~18_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~19\);

-- Location: LCCOMB_X14_Y6_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~1_cout\ & ((\U_Ranger_Top|edgebegin\(7) $ 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\)))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~1_cout\ & (\U_Ranger_Top|edgebegin\(7) $ 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\))))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~3\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~1_cout\ & (\U_Ranger_Top|edgebegin\(7) $ 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(7),
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~1_cout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~2_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~3\);

-- Location: LCCOMB_X14_Y6_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~102_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~3\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~102_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~3\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~5\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~102_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~102_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~3\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~4_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~5\);

-- Location: LCCOMB_X14_Y6_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~12_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~98_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~11\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~98_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~11\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~13\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~98_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~98_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~11\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~12_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~13\);

-- Location: LCCOMB_X14_Y6_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~14_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~97_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~13\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~97_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~13\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~15\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~13\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~97_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~13\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~14_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~15\);

-- Location: LCCOMB_X14_Y5_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~34_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~87_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~33\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~87_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~33\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~35\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~87_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~87_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~33\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~34_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~35\);

-- Location: LCCOMB_X13_Y8_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~1_cout\ & ((\U_Ranger_Top|edgebegin\(6) $ 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\)))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~1_cout\ & (\U_Ranger_Top|edgebegin\(6) $ 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\))))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~3\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~1_cout\ & (\U_Ranger_Top|edgebegin\(6) $ 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(6),
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~1_cout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~2_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~3\);

-- Location: LCCOMB_X13_Y7_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~24_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~109_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~23\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~109_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~23\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~25\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~109_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~109_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~23\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~24_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~25\);

-- Location: LCCOMB_X14_Y8_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~131_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~15\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~131_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~15\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~17\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~131_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~131_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~15\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~16_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~17\);

-- Location: LCCOMB_X14_Y7_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~24_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~127_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~23\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~127_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~23\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~25\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~127_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~127_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~23\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~24_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~25\);

-- Location: LCCOMB_X15_Y10_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~1_cout\ & ((\U_Ranger_Top|edgebegin\(4) $ 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\)))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~1_cout\ & (\U_Ranger_Top|edgebegin\(4) $ 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\))))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~3\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~1_cout\ & (\U_Ranger_Top|edgebegin\(4) $ 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(4),
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~1_cout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~2_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~3\);

-- Location: LCCOMB_X15_Y10_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~14_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~141_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~13\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~141_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~13\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~15\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~13\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~141_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~13\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~14_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~15\);

-- Location: LCCOMB_X15_Y10_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~20_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~138_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~19\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~138_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~19\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~21\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~138_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~138_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~19\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~20_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~21\);

-- Location: LCCOMB_X15_Y9_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~22_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~147_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~21\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~147_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~21\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~23\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~147_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~147_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~21\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~22_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~23\);

-- Location: LCCOMB_X15_Y9_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~24_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~148_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~23\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~148_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~23\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~25\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~148_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~148_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~23\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~24_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~25\);

-- Location: LCCOMB_X15_Y9_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~26_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~149_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~25\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~149_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~25\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~27\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~149_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~149_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~25\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~26_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~27\);

-- Location: LCCOMB_X15_Y9_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~28_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~150_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~27\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~150_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~27\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~29\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~150_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~150_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~27\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~28_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~29\);

-- Location: LCFF_X17_Y8_N13
\U_Ranger_Top|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[18]~60_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(18));

-- Location: LCFF_X17_Y8_N17
\U_Ranger_Top|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[20]~64_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(20));

-- Location: LCFF_X6_Y16_N21
\Motor_1|pulsecount[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[11]~31_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(11));

-- Location: LCFF_X17_Y9_N21
\U_Ranger_Top|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[6]~36_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(6));

-- Location: LCFF_X17_Y9_N17
\U_Ranger_Top|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[4]~32_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(4));

-- Location: LCFF_X17_Y9_N13
\U_Ranger_Top|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[2]~28_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(2));

-- Location: LCFF_X17_Y9_N11
\U_Ranger_Top|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[1]~26_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(1));

-- Location: LCCOMB_X17_Y9_N10
\U_Ranger_Top|count[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[1]~26_combout\ = (\U_Ranger_Top|count\(1) & (!\U_Ranger_Top|count[0]~25\)) # (!\U_Ranger_Top|count\(1) & ((\U_Ranger_Top|count[0]~25\) # (GND)))
-- \U_Ranger_Top|count[1]~27\ = CARRY((!\U_Ranger_Top|count[0]~25\) # (!\U_Ranger_Top|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(1),
	datad => VCC,
	cin => \U_Ranger_Top|count[0]~25\,
	combout => \U_Ranger_Top|count[1]~26_combout\,
	cout => \U_Ranger_Top|count[1]~27\);

-- Location: LCCOMB_X17_Y9_N12
\U_Ranger_Top|count[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[2]~28_combout\ = (\U_Ranger_Top|count\(2) & (\U_Ranger_Top|count[1]~27\ $ (GND))) # (!\U_Ranger_Top|count\(2) & (!\U_Ranger_Top|count[1]~27\ & VCC))
-- \U_Ranger_Top|count[2]~29\ = CARRY((\U_Ranger_Top|count\(2) & !\U_Ranger_Top|count[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(2),
	datad => VCC,
	cin => \U_Ranger_Top|count[1]~27\,
	combout => \U_Ranger_Top|count[2]~28_combout\,
	cout => \U_Ranger_Top|count[2]~29\);

-- Location: LCCOMB_X17_Y9_N16
\U_Ranger_Top|count[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[4]~32_combout\ = (\U_Ranger_Top|count\(4) & (\U_Ranger_Top|count[3]~31\ $ (GND))) # (!\U_Ranger_Top|count\(4) & (!\U_Ranger_Top|count[3]~31\ & VCC))
-- \U_Ranger_Top|count[4]~33\ = CARRY((\U_Ranger_Top|count\(4) & !\U_Ranger_Top|count[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(4),
	datad => VCC,
	cin => \U_Ranger_Top|count[3]~31\,
	combout => \U_Ranger_Top|count[4]~32_combout\,
	cout => \U_Ranger_Top|count[4]~33\);

-- Location: LCCOMB_X17_Y9_N20
\U_Ranger_Top|count[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[6]~36_combout\ = (\U_Ranger_Top|count\(6) & (\U_Ranger_Top|count[5]~35\ $ (GND))) # (!\U_Ranger_Top|count\(6) & (!\U_Ranger_Top|count[5]~35\ & VCC))
-- \U_Ranger_Top|count[6]~37\ = CARRY((\U_Ranger_Top|count\(6) & !\U_Ranger_Top|count[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(6),
	datad => VCC,
	cin => \U_Ranger_Top|count[5]~35\,
	combout => \U_Ranger_Top|count[6]~36_combout\,
	cout => \U_Ranger_Top|count[6]~37\);

-- Location: LCCOMB_X17_Y8_N12
\U_Ranger_Top|count[18]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[18]~60_combout\ = (\U_Ranger_Top|count\(18) & (\U_Ranger_Top|count[17]~59\ $ (GND))) # (!\U_Ranger_Top|count\(18) & (!\U_Ranger_Top|count[17]~59\ & VCC))
-- \U_Ranger_Top|count[18]~61\ = CARRY((\U_Ranger_Top|count\(18) & !\U_Ranger_Top|count[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(18),
	datad => VCC,
	cin => \U_Ranger_Top|count[17]~59\,
	combout => \U_Ranger_Top|count[18]~60_combout\,
	cout => \U_Ranger_Top|count[18]~61\);

-- Location: LCCOMB_X17_Y8_N16
\U_Ranger_Top|count[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[20]~64_combout\ = (\U_Ranger_Top|count\(20) & (\U_Ranger_Top|count[19]~63\ $ (GND))) # (!\U_Ranger_Top|count\(20) & (!\U_Ranger_Top|count[19]~63\ & VCC))
-- \U_Ranger_Top|count[20]~65\ = CARRY((\U_Ranger_Top|count\(20) & !\U_Ranger_Top|count[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(20),
	datad => VCC,
	cin => \U_Ranger_Top|count[19]~63\,
	combout => \U_Ranger_Top|count[20]~64_combout\,
	cout => \U_Ranger_Top|count[20]~65\);

-- Location: LCCOMB_X6_Y16_N18
\Motor_1|pulsecount[10]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[10]~29_combout\ = (\Motor_1|pulsecount\(10) & (!\Motor_1|pulsecount[9]~28\)) # (!\Motor_1|pulsecount\(10) & ((\Motor_1|pulsecount[9]~28\) # (GND)))
-- \Motor_1|pulsecount[10]~30\ = CARRY((!\Motor_1|pulsecount[9]~28\) # (!\Motor_1|pulsecount\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(10),
	datad => VCC,
	cin => \Motor_1|pulsecount[9]~28\,
	combout => \Motor_1|pulsecount[10]~29_combout\,
	cout => \Motor_1|pulsecount[10]~30\);

-- Location: LCCOMB_X6_Y16_N20
\Motor_1|pulsecount[11]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[11]~31_combout\ = \Motor_1|pulsecount\(11) $ (!\Motor_1|pulsecount[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(11),
	cin => \Motor_1|pulsecount[10]~30\,
	combout => \Motor_1|pulsecount[11]~31_combout\);

-- Location: LCCOMB_X32_Y4_N0
\U_1HzClkDivider|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~22_combout\ = (\U_1HzClkDivider|cnt\(11) & (!\U_1HzClkDivider|Add0~21\)) # (!\U_1HzClkDivider|cnt\(11) & ((\U_1HzClkDivider|Add0~21\) # (GND)))
-- \U_1HzClkDivider|Add0~23\ = CARRY((!\U_1HzClkDivider|Add0~21\) # (!\U_1HzClkDivider|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(11),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~21\,
	combout => \U_1HzClkDivider|Add0~22_combout\,
	cout => \U_1HzClkDivider|Add0~23\);

-- Location: LCCOMB_X32_Y4_N6
\U_1HzClkDivider|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~28_combout\ = (\U_1HzClkDivider|cnt\(14) & (\U_1HzClkDivider|Add0~27\ $ (GND))) # (!\U_1HzClkDivider|cnt\(14) & (!\U_1HzClkDivider|Add0~27\ & VCC))
-- \U_1HzClkDivider|Add0~29\ = CARRY((\U_1HzClkDivider|cnt\(14) & !\U_1HzClkDivider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(14),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~27\,
	combout => \U_1HzClkDivider|Add0~28_combout\,
	cout => \U_1HzClkDivider|Add0~29\);

-- Location: LCCOMB_X32_Y4_N12
\U_1HzClkDivider|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~34_combout\ = (\U_1HzClkDivider|cnt\(17) & (!\U_1HzClkDivider|Add0~33\)) # (!\U_1HzClkDivider|cnt\(17) & ((\U_1HzClkDivider|Add0~33\) # (GND)))
-- \U_1HzClkDivider|Add0~35\ = CARRY((!\U_1HzClkDivider|Add0~33\) # (!\U_1HzClkDivider|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(17),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~33\,
	combout => \U_1HzClkDivider|Add0~34_combout\,
	cout => \U_1HzClkDivider|Add0~35\);

-- Location: LCFF_X4_Y16_N17
\U_PICSPI_Slave|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[6]~17_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(6));

-- Location: LCFF_X4_Y16_N13
\U_PICSPI_Slave|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[4]~13_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(4));

-- Location: LCFF_X4_Y16_N11
\U_PICSPI_Slave|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[3]~11_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(3));

-- Location: LCFF_X4_Y16_N7
\U_PICSPI_Slave|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[1]~7_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(1));

-- Location: LCCOMB_X4_Y16_N6
\U_PICSPI_Slave|cnt[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[1]~7_combout\ = (\U_PICSPI_Slave|cnt\(1) & (\U_PICSPI_Slave|cnt\(0) $ (VCC))) # (!\U_PICSPI_Slave|cnt\(1) & (\U_PICSPI_Slave|cnt\(0) & VCC))
-- \U_PICSPI_Slave|cnt[1]~8\ = CARRY((\U_PICSPI_Slave|cnt\(1) & \U_PICSPI_Slave|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(1),
	datab => \U_PICSPI_Slave|cnt\(0),
	datad => VCC,
	combout => \U_PICSPI_Slave|cnt[1]~7_combout\,
	cout => \U_PICSPI_Slave|cnt[1]~8\);

-- Location: LCCOMB_X4_Y16_N10
\U_PICSPI_Slave|cnt[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[3]~11_combout\ = (\U_PICSPI_Slave|cnt\(3) & (\U_PICSPI_Slave|cnt[2]~10\ $ (GND))) # (!\U_PICSPI_Slave|cnt\(3) & (!\U_PICSPI_Slave|cnt[2]~10\ & VCC))
-- \U_PICSPI_Slave|cnt[3]~12\ = CARRY((\U_PICSPI_Slave|cnt\(3) & !\U_PICSPI_Slave|cnt[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(3),
	datad => VCC,
	cin => \U_PICSPI_Slave|cnt[2]~10\,
	combout => \U_PICSPI_Slave|cnt[3]~11_combout\,
	cout => \U_PICSPI_Slave|cnt[3]~12\);

-- Location: LCCOMB_X4_Y16_N12
\U_PICSPI_Slave|cnt[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[4]~13_combout\ = (\U_PICSPI_Slave|cnt\(4) & (!\U_PICSPI_Slave|cnt[3]~12\)) # (!\U_PICSPI_Slave|cnt\(4) & ((\U_PICSPI_Slave|cnt[3]~12\) # (GND)))
-- \U_PICSPI_Slave|cnt[4]~14\ = CARRY((!\U_PICSPI_Slave|cnt[3]~12\) # (!\U_PICSPI_Slave|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(4),
	datad => VCC,
	cin => \U_PICSPI_Slave|cnt[3]~12\,
	combout => \U_PICSPI_Slave|cnt[4]~13_combout\,
	cout => \U_PICSPI_Slave|cnt[4]~14\);

-- Location: LCCOMB_X4_Y16_N16
\U_PICSPI_Slave|cnt[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[6]~17_combout\ = (\U_PICSPI_Slave|cnt\(6) & (!\U_PICSPI_Slave|cnt[5]~16\)) # (!\U_PICSPI_Slave|cnt\(6) & ((\U_PICSPI_Slave|cnt[5]~16\) # (GND)))
-- \U_PICSPI_Slave|cnt[6]~18\ = CARRY((!\U_PICSPI_Slave|cnt[5]~16\) # (!\U_PICSPI_Slave|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(6),
	datad => VCC,
	cin => \U_PICSPI_Slave|cnt[5]~16\,
	combout => \U_PICSPI_Slave|cnt[6]~17_combout\,
	cout => \U_PICSPI_Slave|cnt[6]~18\);

-- Location: LCFF_X10_Y16_N21
\Motor_1|clockcount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[1]~9_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(1));

-- Location: LCCOMB_X10_Y16_N20
\Motor_1|clockcount[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[1]~9_combout\ = (\Motor_1|clockcount\(1) & (!\Motor_1|clockcount[0]~8\)) # (!\Motor_1|clockcount\(1) & ((\Motor_1|clockcount[0]~8\) # (GND)))
-- \Motor_1|clockcount[1]~10\ = CARRY((!\Motor_1|clockcount[0]~8\) # (!\Motor_1|clockcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|clockcount\(1),
	datad => VCC,
	cin => \Motor_1|clockcount[0]~8\,
	combout => \Motor_1|clockcount[1]~9_combout\,
	cout => \Motor_1|clockcount[1]~10\);

-- Location: LCFF_X19_Y10_N25
\U_Ranger_Top|edgebegin[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(20),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(20));

-- Location: LCFF_X19_Y10_N21
\U_Ranger_Top|edgebegin[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(18),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(18));

-- Location: LCFF_X19_Y10_N17
\U_Ranger_Top|edgebegin[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(16),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(16));

-- Location: LCFF_X19_Y10_N13
\U_Ranger_Top|edgebegin[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(14),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(14));

-- Location: LCFF_X19_Y10_N11
\U_Ranger_Top|edgebegin[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(13),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(13));

-- Location: LCFF_X19_Y10_N7
\U_Ranger_Top|edgebegin[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(11),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(11));

-- Location: LCCOMB_X17_Y7_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~0_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & (\U_Ranger_Top|Add1~30_combout\)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~30_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~18_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~0_combout\);

-- Location: LCCOMB_X21_Y10_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & (\U_Ranger_Top|Add1~26_combout\)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Add1~26_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~14_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~2_combout\);

-- Location: LCCOMB_X18_Y10_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~5_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & (\U_Ranger_Top|Add1~20_combout\)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~20_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~8_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~5_combout\);

-- Location: LCCOMB_X17_Y7_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~0_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~20_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[300]~0_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~10_combout\);

-- Location: LCCOMB_X21_Y7_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~15_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~5_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~10_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[295]~5_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~15_combout\);

-- Location: LCCOMB_X17_Y7_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~21_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~10_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[325]~10_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~22_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~21_combout\);

-- Location: LCCOMB_X21_Y7_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~29_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~18_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~6_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~18_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~29_combout\);

-- Location: LCCOMB_X21_Y7_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~41_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~29_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[342]~29_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~41_combout\);

-- Location: LCCOMB_X17_Y7_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~43_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~31_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~31_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~43_combout\);

-- Location: LCCOMB_X21_Y7_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~49_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~37_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~37_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~18_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~49_combout\);

-- Location: LCCOMB_X21_Y7_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~50_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~38_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~38_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[11]~16_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~50_combout\);

-- Location: LCCOMB_X21_Y7_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~51_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~39_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~39_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[10]~14_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~51_combout\);

-- Location: LCCOMB_X16_Y6_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~56_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~44_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~44_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~4_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~56_combout\);

-- Location: LCCOMB_X16_Y6_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~69_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~56_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~6_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[389]~56_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~69_combout\);

-- Location: LCCOMB_X16_Y6_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~71_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ $ (!\U_Ranger_Top|Add1~4_combout\)))) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[4]~2_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	datac => \U_Ranger_Top|Add1~4_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~71_combout\);

-- Location: LCCOMB_X17_Y7_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~72_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~58_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~58_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~30_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~72_combout\);

-- Location: LCCOMB_X15_Y5_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~79_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~65_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~16_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~65_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~79_combout\);

-- Location: LCCOMB_X15_Y6_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~83_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~69_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[414]~69_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~8_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~83_combout\);

-- Location: LCCOMB_X14_Y5_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~94_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~79_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[443]~79_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~18_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~94_combout\);

-- Location: LCFF_X14_Y6_N15
\U_Ranger_Top|edgebegin[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(6),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(6));

-- Location: LCCOMB_X17_Y7_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~103_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~87_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~34_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~87_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~103_combout\);

-- Location: LCCOMB_X13_Y8_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~119_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ $ ((!\U_Ranger_Top|edgebegin\(7))))) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & (((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datab => \U_Ranger_Top|edgebegin\(7),
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[4]~2_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~119_combout\);

-- Location: LCCOMB_X14_Y7_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~126_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~109_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~109_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~24_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~126_combout\);

-- Location: LCCOMB_X14_Y8_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~137_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & ((\U_Ranger_Top|edgebegin\(6) $ 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\)))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~2_combout\,
	datab => \U_Ranger_Top|edgebegin\(6),
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~137_combout\);

-- Location: LCFF_X14_Y8_N13
\U_Ranger_Top|edgebegin[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(4),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(4));

-- Location: LCCOMB_X15_Y8_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~139_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~131_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~16_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~131_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~139_combout\);

-- Location: LCCOMB_X14_Y9_N24
\U_Ranger_Top|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~0_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~24_combout\) # 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~20_combout\) # ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~22_combout\) # 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[15]~24_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[13]~20_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[14]~22_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[16]~26_combout\,
	combout => \U_Ranger_Top|LessThan2~0_combout\);

-- Location: LCFF_X15_Y8_N3
\U_Ranger_Top|edgebegin[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(2),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(2));

-- Location: LCFF_X15_Y8_N13
\U_Ranger_Top|edgebegin[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(1),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(1));

-- Location: LCFF_X15_Y8_N7
\U_Ranger_Top|edgebegin[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(0),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(0));

-- Location: LCCOMB_X15_Y8_N2
\U_Ranger_Top|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~4_combout\ = (\U_Ranger_Top|edgebegin\(1)) # ((\U_Ranger_Top|edgebegin\(0)) # ((\U_Ranger_Top|edgebegin\(2)) # (!\U_Ranger_Top|edgebegin\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(1),
	datab => \U_Ranger_Top|edgebegin\(0),
	datac => \U_Ranger_Top|edgebegin\(2),
	datad => \U_Ranger_Top|edgebegin\(3),
	combout => \U_Ranger_Top|LessThan2~4_combout\);

-- Location: LCCOMB_X15_Y8_N30
\U_Ranger_Top|LessThan2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~12_combout\ = (\U_Ranger_Top|edgebegin\(1)) # ((\U_Ranger_Top|edgebegin\(0)) # ((\U_Ranger_Top|edgebegin\(3)) # (\U_Ranger_Top|edgebegin\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(1),
	datab => \U_Ranger_Top|edgebegin\(0),
	datac => \U_Ranger_Top|edgebegin\(3),
	datad => \U_Ranger_Top|edgebegin\(2),
	combout => \U_Ranger_Top|LessThan2~12_combout\);

-- Location: LCCOMB_X15_Y8_N16
\U_Ranger_Top|LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~13_combout\ = (\U_Ranger_Top|LessThan2~12_combout\) # (\U_Ranger_Top|edgebegin\(4) $ (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|LessThan2~12_combout\,
	datac => \U_Ranger_Top|edgebegin\(4),
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|LessThan2~13_combout\);

-- Location: LCCOMB_X17_Y8_N26
\U_Ranger_Top|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan1~3_combout\ = (\U_Ranger_Top|count\(18)) # ((\U_Ranger_Top|count\(20)) # ((\U_Ranger_Top|count\(19)) # (\U_Ranger_Top|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(18),
	datab => \U_Ranger_Top|count\(20),
	datac => \U_Ranger_Top|count\(19),
	datad => \U_Ranger_Top|count\(17),
	combout => \U_Ranger_Top|LessThan1~3_combout\);

-- Location: LCCOMB_X9_Y16_N10
\pwm1[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[6]~1_combout\ = (\Switch_1~combout\(0) & counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(0),
	datad => counter(6),
	combout => \pwm1[6]~1_combout\);

-- Location: LCCOMB_X9_Y16_N6
\pwm1[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[0]~7_combout\ = (\Switch_1~combout\(0) & \current_State~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(0),
	datad => \current_State~regout\,
	combout => \pwm1[0]~7_combout\);

-- Location: LCCOMB_X8_Y15_N6
\pwm2[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[4]~3_combout\ = (\Switch_1~combout\(1) & counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(1),
	datad => counter(4),
	combout => \pwm2[4]~3_combout\);

-- Location: LCCOMB_X8_Y15_N10
\pwm2[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[2]~5_combout\ = (\Switch_1~combout\(1) & counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(1),
	datac => counter(2),
	combout => \pwm2[2]~5_combout\);

-- Location: LCCOMB_X8_Y15_N12
\pwm2[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[1]~6_combout\ = (\Switch_1~combout\(1) & counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(1),
	datac => counter(1),
	combout => \pwm2[1]~6_combout\);

-- Location: LCCOMB_X7_Y16_N10
\pwm3[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[6]~1_combout\ = (\Switch_1~combout\(2) & counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(2),
	datac => counter(6),
	combout => \pwm3[6]~1_combout\);

-- Location: LCCOMB_X7_Y16_N12
\pwm3[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[5]~2_combout\ = (\Switch_1~combout\(2) & counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(2),
	datac => counter(5),
	combout => \pwm3[5]~2_combout\);

-- Location: LCCOMB_X7_Y16_N6
\pwm3[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[0]~7_combout\ = (\Switch_1~combout\(2) & \current_State~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(2),
	datad => \current_State~regout\,
	combout => \pwm3[0]~7_combout\);

-- Location: LCCOMB_X5_Y16_N26
\pwm4[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm4[6]~1_combout\ = (\Switch_1~combout\(3) & counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(3),
	datad => counter(6),
	combout => \pwm4[6]~1_combout\);

-- Location: LCCOMB_X5_Y16_N6
\pwm4[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm4[0]~7_combout\ = (\Switch_1~combout\(3) & \current_State~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(3),
	datad => \current_State~regout\,
	combout => \pwm4[0]~7_combout\);

-- Location: LCFF_X33_Y5_N17
\U_1HzClkDivider|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(11));

-- Location: LCCOMB_X32_Y5_N6
\U_1HzClkDivider|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~2_combout\ = (!\U_1HzClkDivider|cnt\(8) & (!\U_1HzClkDivider|cnt\(9) & (\U_1HzClkDivider|cnt\(11) & !\U_1HzClkDivider|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(8),
	datab => \U_1HzClkDivider|cnt\(9),
	datac => \U_1HzClkDivider|cnt\(11),
	datad => \U_1HzClkDivider|cnt\(10),
	combout => \U_1HzClkDivider|Equal0~2_combout\);

-- Location: LCFF_X32_Y4_N7
\U_1HzClkDivider|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(14));

-- Location: LCFF_X32_Y4_N13
\U_1HzClkDivider|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(17));

-- Location: LCFF_X4_Y16_N29
\U_PICSPI_Slave|MOSIr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_PICSPI_Slave|MOSIr\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|MOSIr\(1));

-- Location: LCFF_X3_Y16_N15
\U_PICSPI_Slave|byte_data_sent[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~3_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(6));

-- Location: LCFF_X29_Y18_N17
\Registers|RegYD|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[0]~0\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(0));

-- Location: LCFF_X30_Y17_N1
\Registers|RegZM|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZM|tmp[0]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(0));

-- Location: LCFF_X31_Y18_N7
\Registers|RegXM|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[1]~1\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(1));

-- Location: LCFF_X31_Y17_N13
\Registers|RegYM|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegYM|tmp[1]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(1));

-- Location: LCFF_X29_Y18_N9
\Registers|RegYD|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegYD|tmp[2]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(2));

-- Location: LCFF_X30_Y17_N9
\Registers|RegZM|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[2]~2\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(2));

-- Location: LCFF_X29_Y18_N21
\Registers|RegYD|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~3\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(3));

-- Location: LCFF_X30_Y17_N13
\Registers|RegZM|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~3\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(3));

-- Location: LCFF_X29_Y18_N1
\Registers|RegYD|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~4\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(4));

-- Location: LCFF_X30_Y17_N3
\Registers|RegAD|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~4\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(4));

-- Location: LCFF_X29_Y18_N31
\Registers|RegZD|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~5\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(5));

-- Location: LCFF_X30_Y17_N31
\Registers|RegAD|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegAD|tmp[5]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(5));

-- Location: LCFF_X29_Y18_N11
\Registers|RegZD|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~6\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(6));

-- Location: LCFF_X30_Y17_N25
\Registers|RegZM|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZM|tmp[6]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(6));

-- Location: LCFF_X29_Y18_N5
\Registers|RegYD|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegYD|tmp[7]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(7));

-- Location: LCFF_X31_Y17_N31
\Registers|RegAM|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~7\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(7));

-- Location: LCCOMB_X33_Y5_N16
\U_1HzClkDivider|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~11_combout\ = (\U_1HzClkDivider|Add0~22_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)) # (!\U_1HzClkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~5_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~22_combout\,
	combout => \U_1HzClkDivider|cnt~11_combout\);

-- Location: LCFF_X4_Y16_N25
\U_PICSPI_Slave|MOSIr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_SPI_MOSI~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|MOSIr\(0));

-- Location: LCFF_X3_Y16_N9
\U_PICSPI_Slave|byte_data_sent[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~4_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(5));

-- Location: LCCOMB_X3_Y16_N14
\U_PICSPI_Slave|byte_data_sent~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~3_combout\ = (\U_PICSPI_Slave|cnt\(6) & ((\U_PICSPI_Slave|Equal2~0_combout\) # ((\U_PICSPI_Slave|byte_data_sent\(5) & !\U_PICSPI_Slave|byte_data_sent~0_combout\)))) # (!\U_PICSPI_Slave|cnt\(6) & 
-- (\U_PICSPI_Slave|byte_data_sent\(5) & ((!\U_PICSPI_Slave|byte_data_sent~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(6),
	datab => \U_PICSPI_Slave|byte_data_sent\(5),
	datac => \U_PICSPI_Slave|Equal2~0_combout\,
	datad => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~3_combout\);

-- Location: LCFF_X3_Y16_N27
\U_PICSPI_Slave|byte_data_sent[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~5_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(4));

-- Location: LCCOMB_X3_Y16_N8
\U_PICSPI_Slave|byte_data_sent~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~4_combout\ = (\U_PICSPI_Slave|Equal2~0_combout\ & ((\U_PICSPI_Slave|cnt\(5)) # ((\U_PICSPI_Slave|byte_data_sent\(4) & !\U_PICSPI_Slave|byte_data_sent~0_combout\)))) # (!\U_PICSPI_Slave|Equal2~0_combout\ & 
-- (\U_PICSPI_Slave|byte_data_sent\(4) & ((!\U_PICSPI_Slave|byte_data_sent~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|Equal2~0_combout\,
	datab => \U_PICSPI_Slave|byte_data_sent\(4),
	datac => \U_PICSPI_Slave|cnt\(5),
	datad => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~4_combout\);

-- Location: LCFF_X3_Y16_N7
\U_PICSPI_Slave|byte_data_sent[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~6_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(3));

-- Location: LCCOMB_X3_Y16_N26
\U_PICSPI_Slave|byte_data_sent~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~5_combout\ = (\U_PICSPI_Slave|byte_data_sent\(3) & (((\U_PICSPI_Slave|cnt\(4) & \U_PICSPI_Slave|Equal2~0_combout\)) # (!\U_PICSPI_Slave|byte_data_sent~0_combout\))) # (!\U_PICSPI_Slave|byte_data_sent\(3) & 
-- (\U_PICSPI_Slave|cnt\(4) & (\U_PICSPI_Slave|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|byte_data_sent\(3),
	datab => \U_PICSPI_Slave|cnt\(4),
	datac => \U_PICSPI_Slave|Equal2~0_combout\,
	datad => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~5_combout\);

-- Location: LCFF_X3_Y16_N21
\U_PICSPI_Slave|byte_data_sent[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~7_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(2));

-- Location: LCCOMB_X3_Y16_N6
\U_PICSPI_Slave|byte_data_sent~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~6_combout\ = (\U_PICSPI_Slave|Equal2~0_combout\ & ((\U_PICSPI_Slave|cnt\(3)) # ((\U_PICSPI_Slave|byte_data_sent\(2) & !\U_PICSPI_Slave|byte_data_sent~0_combout\)))) # (!\U_PICSPI_Slave|Equal2~0_combout\ & 
-- (((\U_PICSPI_Slave|byte_data_sent\(2) & !\U_PICSPI_Slave|byte_data_sent~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|Equal2~0_combout\,
	datab => \U_PICSPI_Slave|cnt\(3),
	datac => \U_PICSPI_Slave|byte_data_sent\(2),
	datad => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~6_combout\);

-- Location: LCFF_X3_Y16_N5
\U_PICSPI_Slave|byte_data_sent[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~8_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(1));

-- Location: LCCOMB_X3_Y16_N20
\U_PICSPI_Slave|byte_data_sent~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~7_combout\ = (\U_PICSPI_Slave|byte_data_sent\(1) & (((\U_PICSPI_Slave|Equal2~0_combout\ & \U_PICSPI_Slave|cnt\(2))) # (!\U_PICSPI_Slave|byte_data_sent~0_combout\))) # (!\U_PICSPI_Slave|byte_data_sent\(1) & 
-- (\U_PICSPI_Slave|Equal2~0_combout\ & (\U_PICSPI_Slave|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|byte_data_sent\(1),
	datab => \U_PICSPI_Slave|Equal2~0_combout\,
	datac => \U_PICSPI_Slave|cnt\(2),
	datad => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~7_combout\);

-- Location: LCFF_X3_Y16_N29
\U_PICSPI_Slave|byte_data_sent[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(0));

-- Location: LCCOMB_X3_Y16_N4
\U_PICSPI_Slave|byte_data_sent~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~8_combout\ = (\U_PICSPI_Slave|cnt\(1) & ((\U_PICSPI_Slave|Equal2~0_combout\) # ((\U_PICSPI_Slave|byte_data_sent\(0) & !\U_PICSPI_Slave|byte_data_sent~0_combout\)))) # (!\U_PICSPI_Slave|cnt\(1) & 
-- (\U_PICSPI_Slave|byte_data_sent\(0) & ((!\U_PICSPI_Slave|byte_data_sent~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(1),
	datab => \U_PICSPI_Slave|byte_data_sent\(0),
	datac => \U_PICSPI_Slave|Equal2~0_combout\,
	datad => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~8_combout\);

-- Location: LCCOMB_X3_Y16_N16
\U_PICSPI_Slave|byte_data_sent[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent[0]~9_combout\ = (!\U_PICSPI_Slave|SSELr\(1) & \U_PICSPI_Slave|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|SSELr\(1),
	datad => \U_PICSPI_Slave|cnt\(0),
	combout => \U_PICSPI_Slave|byte_data_sent[0]~9_combout\);

-- Location: LCCOMB_X3_Y16_N28
\U_PICSPI_Slave|byte_data_sent[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent[0]~10_combout\ = (\U_PICSPI_Slave|Equal2~0_combout\ & ((\U_PICSPI_Slave|byte_data_sent[0]~9_combout\) # ((\U_PICSPI_Slave|byte_data_sent\(0) & !\U_PICSPI_Slave|byte_data_sent[0]~2_combout\)))) # 
-- (!\U_PICSPI_Slave|Equal2~0_combout\ & (((\U_PICSPI_Slave|byte_data_sent\(0) & !\U_PICSPI_Slave|byte_data_sent[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|Equal2~0_combout\,
	datab => \U_PICSPI_Slave|byte_data_sent[0]~9_combout\,
	datac => \U_PICSPI_Slave|byte_data_sent\(0),
	datad => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent[0]~10_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_SPI_MOSI~I\ : cycloneii_io
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
	padio => ww_PIC_SPI_MOSI,
	combout => \PIC_SPI_MOSI~combout\);

-- Location: LCCOMB_X30_Y17_N0
\Registers|RegZM|tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZM|tmp[0]~feeder_combout\ = \PIC_PBUS_Data[0]~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[0]~0\,
	combout => \Registers|RegZM|tmp[0]~feeder_combout\);

-- Location: LCCOMB_X31_Y17_N12
\Registers|RegYM|tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegYM|tmp[1]~feeder_combout\ = \PIC_PBUS_Data[1]~1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[1]~1\,
	combout => \Registers|RegYM|tmp[1]~feeder_combout\);

-- Location: LCCOMB_X29_Y18_N8
\Registers|RegYD|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegYD|tmp[2]~feeder_combout\ = \PIC_PBUS_Data[2]~2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[2]~2\,
	combout => \Registers|RegYD|tmp[2]~feeder_combout\);

-- Location: LCCOMB_X30_Y17_N30
\Registers|RegAD|tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegAD|tmp[5]~feeder_combout\ = \PIC_PBUS_Data[5]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[5]~5\,
	combout => \Registers|RegAD|tmp[5]~feeder_combout\);

-- Location: LCCOMB_X30_Y17_N24
\Registers|RegZM|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZM|tmp[6]~feeder_combout\ = \PIC_PBUS_Data[6]~6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[6]~6\,
	combout => \Registers|RegZM|tmp[6]~feeder_combout\);

-- Location: LCCOMB_X29_Y18_N4
\Registers|RegYD|tmp[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegYD|tmp[7]~feeder_combout\ = \PIC_PBUS_Data[7]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[7]~7\,
	combout => \Registers|RegYD|tmp[7]~feeder_combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PIC_PBUS_Data[0]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registers|MuxOut|tmp1[0]~0_combout\,
	oe => \Registers|RegCont|tbo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PIC_PBUS_Data(0),
	combout => \PIC_PBUS_Data[0]~0\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PIC_PBUS_Data[1]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registers|MuxOut|tmp1[1]~1_combout\,
	oe => \Registers|RegCont|tbo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PIC_PBUS_Data(1),
	combout => \PIC_PBUS_Data[1]~1\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PIC_PBUS_Data[2]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registers|MuxOut|tmp1[2]~2_combout\,
	oe => \Registers|RegCont|tbo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PIC_PBUS_Data(2),
	combout => \PIC_PBUS_Data[2]~2\);

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PIC_PBUS_Data[3]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registers|MuxOut|tmp1[3]~3_combout\,
	oe => \Registers|RegCont|tbo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PIC_PBUS_Data(3),
	combout => \PIC_PBUS_Data[3]~3\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PIC_PBUS_Data[4]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registers|MuxOut|tmp1[4]~4_combout\,
	oe => \Registers|RegCont|tbo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PIC_PBUS_Data(4),
	combout => \PIC_PBUS_Data[4]~4\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PIC_PBUS_Data[5]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registers|MuxOut|tmp1[5]~5_combout\,
	oe => \Registers|RegCont|tbo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PIC_PBUS_Data(5),
	combout => \PIC_PBUS_Data[5]~5\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PIC_PBUS_Data[6]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registers|MuxOut|tmp1[6]~6_combout\,
	oe => \Registers|RegCont|tbo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PIC_PBUS_Data(6),
	combout => \PIC_PBUS_Data[6]~6\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PIC_PBUS_Data[7]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registers|MuxOut|tmp1[7]~7_combout\,
	oe => \Registers|RegCont|tbo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PIC_PBUS_Data(7),
	combout => \PIC_PBUS_Data[7]~7\);

-- Location: LCCOMB_X30_Y17_N10
\Registers|RegAD|tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegAD|tmp[0]~feeder_combout\ = \PIC_PBUS_Data[0]~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[0]~0\,
	combout => \Registers|RegAD|tmp[0]~feeder_combout\);

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
	padio => ww_Switch_2,
	combout => \Switch_2~combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_PBUS_R_W~I\ : cycloneii_io
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
	padio => ww_PIC_PBUS_R_W,
	combout => \PIC_PBUS_R_W~combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_PBUS_OK_IN~I\ : cycloneii_io
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
	padio => ww_PIC_PBUS_OK_IN,
	combout => \PIC_PBUS_OK_IN~combout\);

-- Location: LCFF_X32_Y18_N9
\Registers|RegCont|state.wa2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registers|RegCont|state.wa1~regout\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.wa2~regout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_PBUS_A_D~I\ : cycloneii_io
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
	padio => ww_PIC_PBUS_A_D,
	combout => \PIC_PBUS_A_D~combout\);

-- Location: LCCOMB_X30_Y18_N24
\Registers|RegCont|nextstate.wd1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|nextstate.wd1~0_combout\ = (!\Registers|RegCont|state.fetch~regout\ & (\PIC_PBUS_OK_IN~combout\ & (!\PIC_PBUS_R_W~combout\ & !\PIC_PBUS_A_D~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegCont|state.fetch~regout\,
	datab => \PIC_PBUS_OK_IN~combout\,
	datac => \PIC_PBUS_R_W~combout\,
	datad => \PIC_PBUS_A_D~combout\,
	combout => \Registers|RegCont|nextstate.wd1~0_combout\);

-- Location: LCFF_X30_Y18_N25
\Registers|RegCont|state.wd1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|nextstate.wd1~0_combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.wd1~regout\);

-- Location: LCFF_X32_Y18_N11
\Registers|RegCont|state.wd2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Registers|RegCont|state.wd1~regout\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.wd2~regout\);

-- Location: LCCOMB_X32_Y18_N8
\Registers|RegCont|ok_in\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|ok_in~combout\ = (\Registers|RegCont|state.wa2~regout\) # (\Registers|RegCont|state.wd2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Registers|RegCont|state.wa2~regout\,
	datad => \Registers|RegCont|state.wd2~regout\,
	combout => \Registers|RegCont|ok_in~combout\);

-- Location: LCCOMB_X32_Y18_N16
\Registers|RegCont|nextstate.rd1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|nextstate.rd1~0_combout\ = (!\PIC_PBUS_A_D~combout\ & (\PIC_PBUS_R_W~combout\ & (\PIC_PBUS_OK_IN~combout\ & !\Registers|RegCont|state.fetch~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIC_PBUS_A_D~combout\,
	datab => \PIC_PBUS_R_W~combout\,
	datac => \PIC_PBUS_OK_IN~combout\,
	datad => \Registers|RegCont|state.fetch~regout\,
	combout => \Registers|RegCont|nextstate.rd1~0_combout\);

-- Location: LCFF_X32_Y18_N17
\Registers|RegCont|state.rd1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|nextstate.rd1~0_combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.rd1~regout\);

-- Location: LCCOMB_X32_Y18_N18
\Registers|RegCont|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|Selector2~0_combout\ = (\Registers|RegCont|state.rd1~regout\) # ((!\PIC_PBUS_OK_IN~combout\ & \Registers|RegCont|state.rd2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIC_PBUS_OK_IN~combout\,
	datac => \Registers|RegCont|state.rd2~regout\,
	datad => \Registers|RegCont|state.rd1~regout\,
	combout => \Registers|RegCont|Selector2~0_combout\);

-- Location: LCFF_X32_Y18_N19
\Registers|RegCont|state.rd2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|Selector2~0_combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.rd2~regout\);

-- Location: LCCOMB_X32_Y18_N30
\Registers|RegCont|state.ra1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|state.ra1~0_combout\ = (\PIC_PBUS_A_D~combout\ & (\PIC_PBUS_R_W~combout\ & (\PIC_PBUS_OK_IN~combout\ & !\Registers|RegCont|state.fetch~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIC_PBUS_A_D~combout\,
	datab => \PIC_PBUS_R_W~combout\,
	datac => \PIC_PBUS_OK_IN~combout\,
	datad => \Registers|RegCont|state.fetch~regout\,
	combout => \Registers|RegCont|state.ra1~0_combout\);

-- Location: LCCOMB_X32_Y18_N24
\Registers|RegCont|state.ra1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|state.ra1~1_combout\ = (\Registers|RegCont|state.ra1~0_combout\) # ((!\PIC_PBUS_OK_IN~combout\ & \Registers|RegCont|state.ra1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIC_PBUS_OK_IN~combout\,
	datac => \Registers|RegCont|state.ra1~regout\,
	datad => \Registers|RegCont|state.ra1~0_combout\,
	combout => \Registers|RegCont|state.ra1~1_combout\);

-- Location: LCFF_X32_Y18_N25
\Registers|RegCont|state.ra1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|state.ra1~1_combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.ra1~regout\);

-- Location: LCCOMB_X32_Y18_N12
\Registers|RegCont|tbo\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|tbo~combout\ = (\Registers|RegCont|state.rd2~regout\) # (\Registers|RegCont|state.ra1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegCont|state.rd2~regout\,
	datac => \Registers|RegCont|state.ra1~regout\,
	combout => \Registers|RegCont|tbo~combout\);

-- Location: LCCOMB_X32_Y18_N6
\Registers|RegCont|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|Selector0~0_combout\ = (!\Registers|RegCont|ok_in~combout\ & ((\PIC_PBUS_OK_IN~combout\ & ((!\Registers|RegCont|tbo~combout\))) # (!\PIC_PBUS_OK_IN~combout\ & (\Registers|RegCont|state.fetch~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIC_PBUS_OK_IN~combout\,
	datab => \Registers|RegCont|ok_in~combout\,
	datac => \Registers|RegCont|state.fetch~regout\,
	datad => \Registers|RegCont|tbo~combout\,
	combout => \Registers|RegCont|Selector0~0_combout\);

-- Location: LCFF_X32_Y18_N7
\Registers|RegCont|state.fetch\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|Selector0~0_combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.fetch~regout\);

-- Location: LCCOMB_X32_Y18_N20
\Registers|RegCont|nextstate.wa1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|nextstate.wa1~0_combout\ = (\PIC_PBUS_A_D~combout\ & (!\PIC_PBUS_R_W~combout\ & (\PIC_PBUS_OK_IN~combout\ & !\Registers|RegCont|state.fetch~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIC_PBUS_A_D~combout\,
	datab => \PIC_PBUS_R_W~combout\,
	datac => \PIC_PBUS_OK_IN~combout\,
	datad => \Registers|RegCont|state.fetch~regout\,
	combout => \Registers|RegCont|nextstate.wa1~0_combout\);

-- Location: LCFF_X32_Y18_N21
\Registers|RegCont|state.wa1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|nextstate.wa1~0_combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.wa1~regout\);

-- Location: LCFF_X30_Y18_N29
\Registers|RegAdd|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[1]~1\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(1));

-- Location: LCFF_X30_Y18_N27
\Registers|RegAdd|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[0]~0\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(0));

-- Location: LCFF_X30_Y18_N9
\Registers|RegAdd|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~3\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(3));

-- Location: LCFF_X30_Y18_N31
\Registers|RegAdd|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[2]~2\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(2));

-- Location: LCFF_X30_Y18_N3
\Registers|RegAdd|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~4\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(4));

-- Location: LCFF_X30_Y18_N15
\Registers|RegAdd|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~6\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(6));

-- Location: LCFF_X30_Y18_N1
\Registers|RegAdd|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~7\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(7));

-- Location: LCCOMB_X30_Y18_N10
\Registers|RegCont|regi07~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi07~0_combout\ = (!\Registers|RegAdd|tmp\(5) & (!\Registers|RegAdd|tmp\(4) & (!\Registers|RegAdd|tmp\(6) & !\Registers|RegAdd|tmp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAdd|tmp\(5),
	datab => \Registers|RegAdd|tmp\(4),
	datac => \Registers|RegAdd|tmp\(6),
	datad => \Registers|RegAdd|tmp\(7),
	combout => \Registers|RegCont|regi07~0_combout\);

-- Location: LCCOMB_X30_Y18_N30
\Registers|RegCont|regi06~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi06~0_combout\ = (\Registers|RegCont|state.wd1~regout\ & (!\Registers|RegAdd|tmp\(3) & (\Registers|RegAdd|tmp\(2) & \Registers|RegCont|regi07~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegCont|state.wd1~regout\,
	datab => \Registers|RegAdd|tmp\(3),
	datac => \Registers|RegAdd|tmp\(2),
	datad => \Registers|RegCont|regi07~0_combout\,
	combout => \Registers|RegCont|regi06~0_combout\);

-- Location: LCCOMB_X30_Y18_N12
\Registers|RegCont|regi06~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi06~1_combout\ = (\Registers|RegAdd|tmp\(1) & (!\Registers|RegAdd|tmp\(0) & \Registers|RegCont|regi06~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegAdd|tmp\(1),
	datac => \Registers|RegAdd|tmp\(0),
	datad => \Registers|RegCont|regi06~0_combout\,
	combout => \Registers|RegCont|regi06~1_combout\);

-- Location: LCFF_X30_Y17_N11
\Registers|RegAD|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegAD|tmp[0]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(0));

-- Location: LCCOMB_X30_Y18_N16
\Registers|RegCont|regi04~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi04~0_combout\ = (!\Registers|RegAdd|tmp\(1) & (!\Registers|RegAdd|tmp\(0) & \Registers|RegCont|regi06~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegAdd|tmp\(1),
	datac => \Registers|RegAdd|tmp\(0),
	datad => \Registers|RegCont|regi06~0_combout\,
	combout => \Registers|RegCont|regi04~0_combout\);

-- Location: LCFF_X31_Y17_N9
\Registers|RegYM|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[0]~0\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(0));

-- Location: LCCOMB_X30_Y18_N6
\Registers|RegCont|regi07~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi07~1_combout\ = (\Registers|RegAdd|tmp\(1) & (\Registers|RegAdd|tmp\(0) & \Registers|RegCont|regi06~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegAdd|tmp\(1),
	datac => \Registers|RegAdd|tmp\(0),
	datad => \Registers|RegCont|regi06~0_combout\,
	combout => \Registers|RegCont|regi07~1_combout\);

-- Location: LCFF_X31_Y17_N19
\Registers|RegAM|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[0]~0\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(0));

-- Location: LCCOMB_X31_Y17_N8
\Registers|databus[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[0]~1_combout\ = (\Registers|RegZM|tmp\(0)) # ((\Registers|RegAD|tmp\(0)) # ((\Registers|RegYM|tmp\(0)) # (\Registers|RegAM|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegZM|tmp\(0),
	datab => \Registers|RegAD|tmp\(0),
	datac => \Registers|RegYM|tmp\(0),
	datad => \Registers|RegAM|tmp\(0),
	combout => \Registers|databus[0]~1_combout\);

-- Location: LCCOMB_X30_Y18_N22
\Registers|RegCont|regi02~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi02~0_combout\ = (\Registers|RegCont|regi03~0_combout\ & (!\Registers|RegAdd|tmp\(0) & \Registers|RegAdd|tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegCont|regi03~0_combout\,
	datab => \Registers|RegAdd|tmp\(0),
	datad => \Registers|RegAdd|tmp\(1),
	combout => \Registers|RegCont|regi02~0_combout\);

-- Location: LCFF_X29_Y18_N3
\Registers|RegZD|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[0]~0\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(0));

-- Location: LCCOMB_X30_Y18_N8
\Registers|RegCont|regi03~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi03~0_combout\ = (\Registers|RegCont|state.wd1~regout\ & (!\Registers|RegAdd|tmp\(2) & (!\Registers|RegAdd|tmp\(3) & \Registers|RegCont|regi07~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegCont|state.wd1~regout\,
	datab => \Registers|RegAdd|tmp\(2),
	datac => \Registers|RegAdd|tmp\(3),
	datad => \Registers|RegCont|regi07~0_combout\,
	combout => \Registers|RegCont|regi03~0_combout\);

-- Location: LCCOMB_X30_Y18_N14
\Registers|RegCont|regi00~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi00~0_combout\ = (!\Registers|RegAdd|tmp\(0) & (!\Registers|RegAdd|tmp\(1) & \Registers|RegCont|regi03~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAdd|tmp\(0),
	datab => \Registers|RegAdd|tmp\(1),
	datad => \Registers|RegCont|regi03~0_combout\,
	combout => \Registers|RegCont|regi00~0_combout\);

-- Location: LCFF_X31_Y18_N25
\Registers|RegXD|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[0]~0\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(0));

-- Location: LCCOMB_X31_Y18_N18
\Registers|RegXM|tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegXM|tmp[0]~feeder_combout\ = \PIC_PBUS_Data[0]~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[0]~0\,
	combout => \Registers|RegXM|tmp[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y18_N28
\Registers|RegCont|regi03~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi03~1_combout\ = (\Registers|RegCont|regi03~0_combout\ & (\Registers|RegAdd|tmp\(1) & \Registers|RegAdd|tmp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegCont|regi03~0_combout\,
	datac => \Registers|RegAdd|tmp\(1),
	datad => \Registers|RegAdd|tmp\(0),
	combout => \Registers|RegCont|regi03~1_combout\);

-- Location: LCFF_X31_Y18_N19
\Registers|RegXM|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegXM|tmp[0]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(0));

-- Location: LCCOMB_X31_Y18_N24
\Registers|databus[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[0]~0_combout\ = (\Registers|RegYD|tmp\(0)) # ((\Registers|RegZD|tmp\(0)) # ((\Registers|RegXD|tmp\(0)) # (\Registers|RegXM|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegYD|tmp\(0),
	datab => \Registers|RegZD|tmp\(0),
	datac => \Registers|RegXD|tmp\(0),
	datad => \Registers|RegXM|tmp\(0),
	combout => \Registers|databus[0]~0_combout\);

-- Location: LCCOMB_X30_Y18_N26
\Registers|MuxOut|tmp1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[0]~0_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(0))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[0]~1_combout\) # ((\Registers|databus[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[0]~1_combout\,
	datab => \Registers|databus[0]~0_combout\,
	datac => \Registers|RegAdd|tmp\(0),
	datad => \Registers|RegCont|state.ra1~regout\,
	combout => \Registers|MuxOut|tmp1[0]~0_combout\);

-- Location: LCCOMB_X29_Y18_N28
\Registers|RegYD|tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegYD|tmp[1]~feeder_combout\ = \PIC_PBUS_Data[1]~1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[1]~1\,
	combout => \Registers|RegYD|tmp[1]~feeder_combout\);

-- Location: LCCOMB_X30_Y18_N4
\Registers|RegCont|regi01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi01~0_combout\ = (\Registers|RegAdd|tmp\(0) & (!\Registers|RegAdd|tmp\(1) & \Registers|RegCont|regi03~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegAdd|tmp\(0),
	datac => \Registers|RegAdd|tmp\(1),
	datad => \Registers|RegCont|regi03~0_combout\,
	combout => \Registers|RegCont|regi01~0_combout\);

-- Location: LCFF_X29_Y18_N29
\Registers|RegYD|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegYD|tmp[1]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(1));

-- Location: LCFF_X31_Y18_N13
\Registers|RegXD|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[1]~1\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(1));

-- Location: LCCOMB_X29_Y18_N22
\Registers|RegZD|tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZD|tmp[1]~feeder_combout\ = \PIC_PBUS_Data[1]~1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[1]~1\,
	combout => \Registers|RegZD|tmp[1]~feeder_combout\);

-- Location: LCFF_X29_Y18_N23
\Registers|RegZD|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZD|tmp[1]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(1));

-- Location: LCCOMB_X31_Y18_N12
\Registers|databus[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[1]~2_combout\ = (\Registers|RegXM|tmp\(1)) # ((\Registers|RegYD|tmp\(1)) # ((\Registers|RegXD|tmp\(1)) # (\Registers|RegZD|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegXM|tmp\(1),
	datab => \Registers|RegYD|tmp\(1),
	datac => \Registers|RegXD|tmp\(1),
	datad => \Registers|RegZD|tmp\(1),
	combout => \Registers|databus[1]~2_combout\);

-- Location: LCFF_X30_Y17_N7
\Registers|RegAD|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[1]~1\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(1));

-- Location: LCFF_X31_Y17_N23
\Registers|RegAM|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[1]~1\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(1));

-- Location: LCCOMB_X30_Y18_N18
\Registers|RegCont|regi05~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi05~0_combout\ = (\Registers|RegAdd|tmp\(0) & (!\Registers|RegAdd|tmp\(1) & \Registers|RegCont|regi06~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegAdd|tmp\(0),
	datac => \Registers|RegAdd|tmp\(1),
	datad => \Registers|RegCont|regi06~0_combout\,
	combout => \Registers|RegCont|regi05~0_combout\);

-- Location: LCFF_X30_Y17_N29
\Registers|RegZM|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[1]~1\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(1));

-- Location: LCCOMB_X31_Y17_N22
\Registers|databus[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[1]~3_combout\ = (\Registers|RegYM|tmp\(1)) # ((\Registers|RegAD|tmp\(1)) # ((\Registers|RegAM|tmp\(1)) # (\Registers|RegZM|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegYM|tmp\(1),
	datab => \Registers|RegAD|tmp\(1),
	datac => \Registers|RegAM|tmp\(1),
	datad => \Registers|RegZM|tmp\(1),
	combout => \Registers|databus[1]~3_combout\);

-- Location: LCCOMB_X32_Y18_N22
\Registers|MuxOut|tmp1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[1]~1_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(1))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[1]~2_combout\) # ((\Registers|databus[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[1]~2_combout\,
	datab => \Registers|RegAdd|tmp\(1),
	datac => \Registers|databus[1]~3_combout\,
	datad => \Registers|RegCont|state.ra1~regout\,
	combout => \Registers|MuxOut|tmp1[1]~1_combout\);

-- Location: LCFF_X30_Y17_N27
\Registers|RegAD|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[2]~2\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(2));

-- Location: LCFF_X31_Y17_N1
\Registers|RegYM|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[2]~2\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(2));

-- Location: LCFF_X31_Y17_N3
\Registers|RegAM|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[2]~2\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(2));

-- Location: LCCOMB_X31_Y17_N0
\Registers|databus[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[2]~5_combout\ = (\Registers|RegZM|tmp\(2)) # ((\Registers|RegAD|tmp\(2)) # ((\Registers|RegYM|tmp\(2)) # (\Registers|RegAM|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegZM|tmp\(2),
	datab => \Registers|RegAD|tmp\(2),
	datac => \Registers|RegYM|tmp\(2),
	datad => \Registers|RegAM|tmp\(2),
	combout => \Registers|databus[2]~5_combout\);

-- Location: LCCOMB_X29_Y18_N18
\Registers|RegZD|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZD|tmp[2]~feeder_combout\ = \PIC_PBUS_Data[2]~2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[2]~2\,
	combout => \Registers|RegZD|tmp[2]~feeder_combout\);

-- Location: LCFF_X29_Y18_N19
\Registers|RegZD|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZD|tmp[2]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(2));

-- Location: LCFF_X31_Y18_N17
\Registers|RegXD|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[2]~2\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(2));

-- Location: LCCOMB_X31_Y18_N2
\Registers|RegXM|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegXM|tmp[2]~feeder_combout\ = \PIC_PBUS_Data[2]~2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[2]~2\,
	combout => \Registers|RegXM|tmp[2]~feeder_combout\);

-- Location: LCFF_X31_Y18_N3
\Registers|RegXM|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegXM|tmp[2]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(2));

-- Location: LCCOMB_X31_Y18_N16
\Registers|databus[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[2]~4_combout\ = (\Registers|RegYD|tmp\(2)) # ((\Registers|RegZD|tmp\(2)) # ((\Registers|RegXD|tmp\(2)) # (\Registers|RegXM|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegYD|tmp\(2),
	datab => \Registers|RegZD|tmp\(2),
	datac => \Registers|RegXD|tmp\(2),
	datad => \Registers|RegXM|tmp\(2),
	combout => \Registers|databus[2]~4_combout\);

-- Location: LCCOMB_X32_Y18_N0
\Registers|MuxOut|tmp1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[2]~2_combout\ = (\Registers|RegCont|state.ra1~regout\ & (\Registers|RegAdd|tmp\(2))) # (!\Registers|RegCont|state.ra1~regout\ & (((\Registers|databus[2]~5_combout\) # (\Registers|databus[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAdd|tmp\(2),
	datab => \Registers|databus[2]~5_combout\,
	datac => \Registers|databus[2]~4_combout\,
	datad => \Registers|RegCont|state.ra1~regout\,
	combout => \Registers|MuxOut|tmp1[2]~2_combout\);

-- Location: LCFF_X30_Y17_N15
\Registers|RegAD|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~3\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(3));

-- Location: LCFF_X31_Y17_N5
\Registers|RegYM|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~3\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(3));

-- Location: LCFF_X31_Y17_N7
\Registers|RegAM|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~3\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(3));

-- Location: LCCOMB_X31_Y17_N4
\Registers|databus[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[3]~7_combout\ = (\Registers|RegZM|tmp\(3)) # ((\Registers|RegAD|tmp\(3)) # ((\Registers|RegYM|tmp\(3)) # (\Registers|RegAM|tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegZM|tmp\(3),
	datab => \Registers|RegAD|tmp\(3),
	datac => \Registers|RegYM|tmp\(3),
	datad => \Registers|RegAM|tmp\(3),
	combout => \Registers|databus[3]~7_combout\);

-- Location: LCCOMB_X31_Y18_N14
\Registers|RegXM|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegXM|tmp[3]~feeder_combout\ = \PIC_PBUS_Data[3]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[3]~3\,
	combout => \Registers|RegXM|tmp[3]~feeder_combout\);

-- Location: LCFF_X31_Y18_N15
\Registers|RegXM|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegXM|tmp[3]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(3));

-- Location: LCFF_X31_Y18_N29
\Registers|RegXD|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~3\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(3));

-- Location: LCFF_X29_Y18_N7
\Registers|RegZD|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~3\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(3));

-- Location: LCCOMB_X31_Y18_N28
\Registers|databus[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[3]~6_combout\ = (\Registers|RegYD|tmp\(3)) # ((\Registers|RegXM|tmp\(3)) # ((\Registers|RegXD|tmp\(3)) # (\Registers|RegZD|tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegYD|tmp\(3),
	datab => \Registers|RegXM|tmp\(3),
	datac => \Registers|RegXD|tmp\(3),
	datad => \Registers|RegZD|tmp\(3),
	combout => \Registers|databus[3]~6_combout\);

-- Location: LCCOMB_X32_Y18_N26
\Registers|MuxOut|tmp1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[3]~3_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(3))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[3]~7_combout\) # ((\Registers|databus[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[3]~7_combout\,
	datab => \Registers|databus[3]~6_combout\,
	datac => \Registers|RegAdd|tmp\(3),
	datad => \Registers|RegCont|state.ra1~regout\,
	combout => \Registers|MuxOut|tmp1[3]~3_combout\);

-- Location: LCFF_X29_Y18_N27
\Registers|RegZD|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~4\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(4));

-- Location: LCFF_X31_Y18_N1
\Registers|RegXD|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~4\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(4));

-- Location: LCFF_X31_Y18_N11
\Registers|RegXM|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~4\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(4));

-- Location: LCCOMB_X31_Y18_N0
\Registers|databus[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[4]~8_combout\ = (\Registers|RegYD|tmp\(4)) # ((\Registers|RegZD|tmp\(4)) # ((\Registers|RegXD|tmp\(4)) # (\Registers|RegXM|tmp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegYD|tmp\(4),
	datab => \Registers|RegZD|tmp\(4),
	datac => \Registers|RegXD|tmp\(4),
	datad => \Registers|RegXM|tmp\(4),
	combout => \Registers|databus[4]~8_combout\);

-- Location: LCFF_X30_Y17_N17
\Registers|RegZM|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~4\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(4));

-- Location: LCFF_X31_Y17_N25
\Registers|RegYM|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~4\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(4));

-- Location: LCFF_X31_Y17_N11
\Registers|RegAM|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~4\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(4));

-- Location: LCCOMB_X31_Y17_N24
\Registers|databus[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[4]~9_combout\ = (\Registers|RegAD|tmp\(4)) # ((\Registers|RegZM|tmp\(4)) # ((\Registers|RegYM|tmp\(4)) # (\Registers|RegAM|tmp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAD|tmp\(4),
	datab => \Registers|RegZM|tmp\(4),
	datac => \Registers|RegYM|tmp\(4),
	datad => \Registers|RegAM|tmp\(4),
	combout => \Registers|databus[4]~9_combout\);

-- Location: LCCOMB_X30_Y18_N2
\Registers|MuxOut|tmp1[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[4]~4_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(4))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[4]~8_combout\) # ((\Registers|databus[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[4]~8_combout\,
	datab => \Registers|databus[4]~9_combout\,
	datac => \Registers|RegAdd|tmp\(4),
	datad => \Registers|RegCont|state.ra1~regout\,
	combout => \Registers|MuxOut|tmp1[4]~4_combout\);

-- Location: LCFF_X29_Y18_N13
\Registers|RegYD|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~5\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(5));

-- Location: LCFF_X31_Y18_N5
\Registers|RegXD|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~5\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(5));

-- Location: LCFF_X31_Y18_N31
\Registers|RegXM|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~5\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(5));

-- Location: LCCOMB_X31_Y18_N4
\Registers|databus[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[5]~10_combout\ = (\Registers|RegZD|tmp\(5)) # ((\Registers|RegYD|tmp\(5)) # ((\Registers|RegXD|tmp\(5)) # (\Registers|RegXM|tmp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegZD|tmp\(5),
	datab => \Registers|RegYD|tmp\(5),
	datac => \Registers|RegXD|tmp\(5),
	datad => \Registers|RegXM|tmp\(5),
	combout => \Registers|databus[5]~10_combout\);

-- Location: LCFF_X31_Y17_N15
\Registers|RegAM|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~5\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(5));

-- Location: LCFF_X31_Y17_N21
\Registers|RegYM|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~5\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(5));

-- Location: LCCOMB_X30_Y17_N20
\Registers|RegZM|tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZM|tmp[5]~feeder_combout\ = \PIC_PBUS_Data[5]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[5]~5\,
	combout => \Registers|RegZM|tmp[5]~feeder_combout\);

-- Location: LCFF_X30_Y17_N21
\Registers|RegZM|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZM|tmp[5]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(5));

-- Location: LCCOMB_X31_Y17_N20
\Registers|databus[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[5]~11_combout\ = (\Registers|RegAD|tmp\(5)) # ((\Registers|RegAM|tmp\(5)) # ((\Registers|RegYM|tmp\(5)) # (\Registers|RegZM|tmp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAD|tmp\(5),
	datab => \Registers|RegAM|tmp\(5),
	datac => \Registers|RegYM|tmp\(5),
	datad => \Registers|RegZM|tmp\(5),
	combout => \Registers|databus[5]~11_combout\);

-- Location: LCFF_X30_Y18_N21
\Registers|RegAdd|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~5\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(5));

-- Location: LCCOMB_X30_Y18_N20
\Registers|MuxOut|tmp1[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[5]~5_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(5))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[5]~10_combout\) # ((\Registers|databus[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[5]~10_combout\,
	datab => \Registers|databus[5]~11_combout\,
	datac => \Registers|RegAdd|tmp\(5),
	datad => \Registers|RegCont|state.ra1~regout\,
	combout => \Registers|MuxOut|tmp1[5]~5_combout\);

-- Location: LCCOMB_X30_Y17_N18
\Registers|RegAD|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegAD|tmp[6]~feeder_combout\ = \PIC_PBUS_Data[6]~6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[6]~6\,
	combout => \Registers|RegAD|tmp[6]~feeder_combout\);

-- Location: LCFF_X30_Y17_N19
\Registers|RegAD|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegAD|tmp[6]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(6));

-- Location: LCFF_X31_Y17_N17
\Registers|RegYM|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~6\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(6));

-- Location: LCFF_X31_Y17_N27
\Registers|RegAM|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~6\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(6));

-- Location: LCCOMB_X31_Y17_N16
\Registers|databus[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[6]~13_combout\ = (\Registers|RegZM|tmp\(6)) # ((\Registers|RegAD|tmp\(6)) # ((\Registers|RegYM|tmp\(6)) # (\Registers|RegAM|tmp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegZM|tmp\(6),
	datab => \Registers|RegAD|tmp\(6),
	datac => \Registers|RegYM|tmp\(6),
	datad => \Registers|RegAM|tmp\(6),
	combout => \Registers|databus[6]~13_combout\);

-- Location: LCFF_X29_Y18_N25
\Registers|RegYD|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~6\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(6));

-- Location: LCFF_X31_Y18_N9
\Registers|RegXD|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~6\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(6));

-- Location: LCCOMB_X31_Y18_N26
\Registers|RegXM|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegXM|tmp[6]~feeder_combout\ = \PIC_PBUS_Data[6]~6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[6]~6\,
	combout => \Registers|RegXM|tmp[6]~feeder_combout\);

-- Location: LCFF_X31_Y18_N27
\Registers|RegXM|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegXM|tmp[6]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(6));

-- Location: LCCOMB_X31_Y18_N8
\Registers|databus[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[6]~12_combout\ = (\Registers|RegZD|tmp\(6)) # ((\Registers|RegYD|tmp\(6)) # ((\Registers|RegXD|tmp\(6)) # (\Registers|RegXM|tmp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegZD|tmp\(6),
	datab => \Registers|RegYD|tmp\(6),
	datac => \Registers|RegXD|tmp\(6),
	datad => \Registers|RegXM|tmp\(6),
	combout => \Registers|databus[6]~12_combout\);

-- Location: LCCOMB_X32_Y18_N4
\Registers|MuxOut|tmp1[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[6]~6_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(6))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[6]~13_combout\) # ((\Registers|databus[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[6]~13_combout\,
	datab => \Registers|RegCont|state.ra1~regout\,
	datac => \Registers|RegAdd|tmp\(6),
	datad => \Registers|databus[6]~12_combout\,
	combout => \Registers|MuxOut|tmp1[6]~6_combout\);

-- Location: LCCOMB_X30_Y17_N4
\Registers|RegZM|tmp[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZM|tmp[7]~feeder_combout\ = \PIC_PBUS_Data[7]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[7]~7\,
	combout => \Registers|RegZM|tmp[7]~feeder_combout\);

-- Location: LCFF_X30_Y17_N5
\Registers|RegZM|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZM|tmp[7]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(7));

-- Location: LCFF_X31_Y17_N29
\Registers|RegYM|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~7\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(7));

-- Location: LCCOMB_X30_Y17_N22
\Registers|RegAD|tmp[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegAD|tmp[7]~feeder_combout\ = \PIC_PBUS_Data[7]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[7]~7\,
	combout => \Registers|RegAD|tmp[7]~feeder_combout\);

-- Location: LCFF_X30_Y17_N23
\Registers|RegAD|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegAD|tmp[7]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(7));

-- Location: LCCOMB_X31_Y17_N28
\Registers|databus[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[7]~15_combout\ = (\Registers|RegAM|tmp\(7)) # ((\Registers|RegZM|tmp\(7)) # ((\Registers|RegYM|tmp\(7)) # (\Registers|RegAD|tmp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAM|tmp\(7),
	datab => \Registers|RegZM|tmp\(7),
	datac => \Registers|RegYM|tmp\(7),
	datad => \Registers|RegAD|tmp\(7),
	combout => \Registers|databus[7]~15_combout\);

-- Location: LCCOMB_X29_Y18_N14
\Registers|RegZD|tmp[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZD|tmp[7]~feeder_combout\ = \PIC_PBUS_Data[7]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[7]~7\,
	combout => \Registers|RegZD|tmp[7]~feeder_combout\);

-- Location: LCFF_X29_Y18_N15
\Registers|RegZD|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZD|tmp[7]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(7));

-- Location: LCFF_X31_Y18_N21
\Registers|RegXD|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~7\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(7));

-- Location: LCCOMB_X31_Y18_N22
\Registers|RegXM|tmp[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegXM|tmp[7]~feeder_combout\ = \PIC_PBUS_Data[7]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[7]~7\,
	combout => \Registers|RegXM|tmp[7]~feeder_combout\);

-- Location: LCFF_X31_Y18_N23
\Registers|RegXM|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegXM|tmp[7]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(7));

-- Location: LCCOMB_X31_Y18_N20
\Registers|databus[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[7]~14_combout\ = (\Registers|RegYD|tmp\(7)) # ((\Registers|RegZD|tmp\(7)) # ((\Registers|RegXD|tmp\(7)) # (\Registers|RegXM|tmp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegYD|tmp\(7),
	datab => \Registers|RegZD|tmp\(7),
	datac => \Registers|RegXD|tmp\(7),
	datad => \Registers|RegXM|tmp\(7),
	combout => \Registers|databus[7]~14_combout\);

-- Location: LCCOMB_X30_Y18_N0
\Registers|MuxOut|tmp1[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[7]~7_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(7))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[7]~15_combout\) # ((\Registers|databus[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[7]~15_combout\,
	datab => \Registers|databus[7]~14_combout\,
	datac => \Registers|RegAdd|tmp\(7),
	datad => \Registers|RegCont|state.ra1~regout\,
	combout => \Registers|MuxOut|tmp1[7]~7_combout\);

-- Location: LCCOMB_X32_Y5_N10
\U_1HzClkDivider|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~0_combout\ = \U_1HzClkDivider|cnt\(0) $ (VCC)
-- \U_1HzClkDivider|Add0~1\ = CARRY(\U_1HzClkDivider|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(0),
	datad => VCC,
	combout => \U_1HzClkDivider|Add0~0_combout\,
	cout => \U_1HzClkDivider|Add0~1\);

-- Location: LCCOMB_X32_Y5_N2
\U_1HzClkDivider|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~10_combout\ = (\U_1HzClkDivider|Add0~0_combout\ & (((!\U_1HzClkDivider|Equal0~6_combout\) # (!\U_1HzClkDivider|Equal0~4_combout\)) # (!\U_1HzClkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~5_combout\,
	datab => \U_1HzClkDivider|Equal0~4_combout\,
	datac => \U_1HzClkDivider|Equal0~6_combout\,
	datad => \U_1HzClkDivider|Add0~0_combout\,
	combout => \U_1HzClkDivider|cnt~10_combout\);

-- Location: LCFF_X32_Y5_N3
\U_1HzClkDivider|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(0));

-- Location: LCCOMB_X32_Y5_N12
\U_1HzClkDivider|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~2_combout\ = (\U_1HzClkDivider|cnt\(1) & (!\U_1HzClkDivider|Add0~1\)) # (!\U_1HzClkDivider|cnt\(1) & ((\U_1HzClkDivider|Add0~1\) # (GND)))
-- \U_1HzClkDivider|Add0~3\ = CARRY((!\U_1HzClkDivider|Add0~1\) # (!\U_1HzClkDivider|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(1),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~1\,
	combout => \U_1HzClkDivider|Add0~2_combout\,
	cout => \U_1HzClkDivider|Add0~3\);

-- Location: LCCOMB_X33_Y5_N14
\U_1HzClkDivider|cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~9_combout\ = (\U_1HzClkDivider|Add0~2_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)) # (!\U_1HzClkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~5_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~2_combout\,
	combout => \U_1HzClkDivider|cnt~9_combout\);

-- Location: LCFF_X33_Y5_N15
\U_1HzClkDivider|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(1));

-- Location: LCCOMB_X32_Y5_N14
\U_1HzClkDivider|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~4_combout\ = (\U_1HzClkDivider|cnt\(2) & (\U_1HzClkDivider|Add0~3\ $ (GND))) # (!\U_1HzClkDivider|cnt\(2) & (!\U_1HzClkDivider|Add0~3\ & VCC))
-- \U_1HzClkDivider|Add0~5\ = CARRY((\U_1HzClkDivider|cnt\(2) & !\U_1HzClkDivider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(2),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~3\,
	combout => \U_1HzClkDivider|Add0~4_combout\,
	cout => \U_1HzClkDivider|Add0~5\);

-- Location: LCCOMB_X33_Y5_N22
\U_1HzClkDivider|cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~8_combout\ = (\U_1HzClkDivider|Add0~4_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)) # (!\U_1HzClkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~5_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~4_combout\,
	combout => \U_1HzClkDivider|cnt~8_combout\);

-- Location: LCFF_X33_Y5_N23
\U_1HzClkDivider|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(2));

-- Location: LCCOMB_X32_Y5_N16
\U_1HzClkDivider|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~6_combout\ = (\U_1HzClkDivider|cnt\(3) & (!\U_1HzClkDivider|Add0~5\)) # (!\U_1HzClkDivider|cnt\(3) & ((\U_1HzClkDivider|Add0~5\) # (GND)))
-- \U_1HzClkDivider|Add0~7\ = CARRY((!\U_1HzClkDivider|Add0~5\) # (!\U_1HzClkDivider|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(3),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~5\,
	combout => \U_1HzClkDivider|Add0~6_combout\,
	cout => \U_1HzClkDivider|Add0~7\);

-- Location: LCFF_X32_Y5_N17
\U_1HzClkDivider|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(3));

-- Location: LCCOMB_X32_Y5_N4
\U_1HzClkDivider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~1_combout\ = (\U_1HzClkDivider|cnt\(2) & (\U_1HzClkDivider|cnt\(1) & (!\U_1HzClkDivider|cnt\(3) & !\U_1HzClkDivider|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(2),
	datab => \U_1HzClkDivider|cnt\(1),
	datac => \U_1HzClkDivider|cnt\(3),
	datad => \U_1HzClkDivider|cnt\(0),
	combout => \U_1HzClkDivider|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y5_N18
\U_1HzClkDivider|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~8_combout\ = (\U_1HzClkDivider|cnt\(4) & (\U_1HzClkDivider|Add0~7\ $ (GND))) # (!\U_1HzClkDivider|cnt\(4) & (!\U_1HzClkDivider|Add0~7\ & VCC))
-- \U_1HzClkDivider|Add0~9\ = CARRY((\U_1HzClkDivider|cnt\(4) & !\U_1HzClkDivider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(4),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~7\,
	combout => \U_1HzClkDivider|Add0~8_combout\,
	cout => \U_1HzClkDivider|Add0~9\);

-- Location: LCCOMB_X33_Y5_N30
\U_1HzClkDivider|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~7_combout\ = (\U_1HzClkDivider|Add0~8_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)) # (!\U_1HzClkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~5_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~8_combout\,
	combout => \U_1HzClkDivider|cnt~7_combout\);

-- Location: LCFF_X33_Y5_N31
\U_1HzClkDivider|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(4));

-- Location: LCCOMB_X32_Y5_N20
\U_1HzClkDivider|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~10_combout\ = (\U_1HzClkDivider|cnt\(5) & (!\U_1HzClkDivider|Add0~9\)) # (!\U_1HzClkDivider|cnt\(5) & ((\U_1HzClkDivider|Add0~9\) # (GND)))
-- \U_1HzClkDivider|Add0~11\ = CARRY((!\U_1HzClkDivider|Add0~9\) # (!\U_1HzClkDivider|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(5),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~9\,
	combout => \U_1HzClkDivider|Add0~10_combout\,
	cout => \U_1HzClkDivider|Add0~11\);

-- Location: LCCOMB_X32_Y4_N16
\U_1HzClkDivider|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~38_combout\ = (\U_1HzClkDivider|cnt\(19) & (!\U_1HzClkDivider|Add0~37\)) # (!\U_1HzClkDivider|cnt\(19) & ((\U_1HzClkDivider|Add0~37\) # (GND)))
-- \U_1HzClkDivider|Add0~39\ = CARRY((!\U_1HzClkDivider|Add0~37\) # (!\U_1HzClkDivider|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(19),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~37\,
	combout => \U_1HzClkDivider|Add0~38_combout\,
	cout => \U_1HzClkDivider|Add0~39\);

-- Location: LCFF_X32_Y4_N17
\U_1HzClkDivider|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(19));

-- Location: LCCOMB_X32_Y4_N26
\U_1HzClkDivider|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~5_combout\ = (!\U_1HzClkDivider|cnt\(17) & (!\U_1HzClkDivider|cnt\(18) & (!\U_1HzClkDivider|cnt\(16) & !\U_1HzClkDivider|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(17),
	datab => \U_1HzClkDivider|cnt\(18),
	datac => \U_1HzClkDivider|cnt\(16),
	datad => \U_1HzClkDivider|cnt\(19),
	combout => \U_1HzClkDivider|Equal0~5_combout\);

-- Location: LCCOMB_X33_Y5_N24
\U_1HzClkDivider|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~6_combout\ = (\U_1HzClkDivider|Add0~10_combout\ & (((!\U_1HzClkDivider|Equal0~5_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)) # (!\U_1HzClkDivider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~4_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Add0~10_combout\,
	datad => \U_1HzClkDivider|Equal0~5_combout\,
	combout => \U_1HzClkDivider|cnt~6_combout\);

-- Location: LCFF_X33_Y5_N25
\U_1HzClkDivider|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(5));

-- Location: LCCOMB_X32_Y5_N22
\U_1HzClkDivider|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~12_combout\ = (\U_1HzClkDivider|cnt\(6) & (\U_1HzClkDivider|Add0~11\ $ (GND))) # (!\U_1HzClkDivider|cnt\(6) & (!\U_1HzClkDivider|Add0~11\ & VCC))
-- \U_1HzClkDivider|Add0~13\ = CARRY((\U_1HzClkDivider|cnt\(6) & !\U_1HzClkDivider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(6),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~11\,
	combout => \U_1HzClkDivider|Add0~12_combout\,
	cout => \U_1HzClkDivider|Add0~13\);

-- Location: LCCOMB_X33_Y5_N26
\U_1HzClkDivider|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~5_combout\ = (\U_1HzClkDivider|Add0~12_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)) # (!\U_1HzClkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~5_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~12_combout\,
	combout => \U_1HzClkDivider|cnt~5_combout\);

-- Location: LCFF_X33_Y5_N27
\U_1HzClkDivider|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(6));

-- Location: LCCOMB_X32_Y5_N8
\U_1HzClkDivider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~0_combout\ = (\U_1HzClkDivider|cnt\(4) & (\U_1HzClkDivider|cnt\(5) & (\U_1HzClkDivider|cnt\(6) & \U_1HzClkDivider|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(4),
	datab => \U_1HzClkDivider|cnt\(5),
	datac => \U_1HzClkDivider|cnt\(6),
	datad => \U_1HzClkDivider|cnt\(7),
	combout => \U_1HzClkDivider|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y4_N24
\U_1HzClkDivider|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~3_combout\ = (!\U_1HzClkDivider|cnt\(14) & (!\U_1HzClkDivider|cnt\(15) & (!\U_1HzClkDivider|cnt\(13) & !\U_1HzClkDivider|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(14),
	datab => \U_1HzClkDivider|cnt\(15),
	datac => \U_1HzClkDivider|cnt\(13),
	datad => \U_1HzClkDivider|cnt\(12),
	combout => \U_1HzClkDivider|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y5_N0
\U_1HzClkDivider|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~4_combout\ = (\U_1HzClkDivider|Equal0~2_combout\ & (\U_1HzClkDivider|Equal0~1_combout\ & (\U_1HzClkDivider|Equal0~0_combout\ & \U_1HzClkDivider|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~2_combout\,
	datab => \U_1HzClkDivider|Equal0~1_combout\,
	datac => \U_1HzClkDivider|Equal0~0_combout\,
	datad => \U_1HzClkDivider|Equal0~3_combout\,
	combout => \U_1HzClkDivider|Equal0~4_combout\);

-- Location: LCCOMB_X32_Y5_N24
\U_1HzClkDivider|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~14_combout\ = (\U_1HzClkDivider|cnt\(7) & (!\U_1HzClkDivider|Add0~13\)) # (!\U_1HzClkDivider|cnt\(7) & ((\U_1HzClkDivider|Add0~13\) # (GND)))
-- \U_1HzClkDivider|Add0~15\ = CARRY((!\U_1HzClkDivider|Add0~13\) # (!\U_1HzClkDivider|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(7),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~13\,
	combout => \U_1HzClkDivider|Add0~14_combout\,
	cout => \U_1HzClkDivider|Add0~15\);

-- Location: LCCOMB_X33_Y5_N8
\U_1HzClkDivider|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~4_combout\ = (\U_1HzClkDivider|Add0~14_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)) # (!\U_1HzClkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~5_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~14_combout\,
	combout => \U_1HzClkDivider|cnt~4_combout\);

-- Location: LCFF_X33_Y5_N9
\U_1HzClkDivider|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(7));

-- Location: LCCOMB_X32_Y5_N26
\U_1HzClkDivider|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~16_combout\ = (\U_1HzClkDivider|cnt\(8) & (\U_1HzClkDivider|Add0~15\ $ (GND))) # (!\U_1HzClkDivider|cnt\(8) & (!\U_1HzClkDivider|Add0~15\ & VCC))
-- \U_1HzClkDivider|Add0~17\ = CARRY((\U_1HzClkDivider|cnt\(8) & !\U_1HzClkDivider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(8),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~15\,
	combout => \U_1HzClkDivider|Add0~16_combout\,
	cout => \U_1HzClkDivider|Add0~17\);

-- Location: LCFF_X32_Y5_N27
\U_1HzClkDivider|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(8));

-- Location: LCCOMB_X32_Y5_N28
\U_1HzClkDivider|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~18_combout\ = (\U_1HzClkDivider|cnt\(9) & (!\U_1HzClkDivider|Add0~17\)) # (!\U_1HzClkDivider|cnt\(9) & ((\U_1HzClkDivider|Add0~17\) # (GND)))
-- \U_1HzClkDivider|Add0~19\ = CARRY((!\U_1HzClkDivider|Add0~17\) # (!\U_1HzClkDivider|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(9),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~17\,
	combout => \U_1HzClkDivider|Add0~18_combout\,
	cout => \U_1HzClkDivider|Add0~19\);

-- Location: LCFF_X32_Y5_N29
\U_1HzClkDivider|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(9));

-- Location: LCCOMB_X32_Y5_N30
\U_1HzClkDivider|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~20_combout\ = (\U_1HzClkDivider|cnt\(10) & (\U_1HzClkDivider|Add0~19\ $ (GND))) # (!\U_1HzClkDivider|cnt\(10) & (!\U_1HzClkDivider|Add0~19\ & VCC))
-- \U_1HzClkDivider|Add0~21\ = CARRY((\U_1HzClkDivider|cnt\(10) & !\U_1HzClkDivider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(10),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~19\,
	combout => \U_1HzClkDivider|Add0~20_combout\,
	cout => \U_1HzClkDivider|Add0~21\);

-- Location: LCFF_X32_Y5_N31
\U_1HzClkDivider|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(10));

-- Location: LCCOMB_X32_Y4_N2
\U_1HzClkDivider|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~24_combout\ = (\U_1HzClkDivider|cnt\(12) & (\U_1HzClkDivider|Add0~23\ $ (GND))) # (!\U_1HzClkDivider|cnt\(12) & (!\U_1HzClkDivider|Add0~23\ & VCC))
-- \U_1HzClkDivider|Add0~25\ = CARRY((\U_1HzClkDivider|cnt\(12) & !\U_1HzClkDivider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(12),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~23\,
	combout => \U_1HzClkDivider|Add0~24_combout\,
	cout => \U_1HzClkDivider|Add0~25\);

-- Location: LCFF_X32_Y4_N3
\U_1HzClkDivider|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(12));

-- Location: LCCOMB_X32_Y4_N4
\U_1HzClkDivider|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~26_combout\ = (\U_1HzClkDivider|cnt\(13) & (!\U_1HzClkDivider|Add0~25\)) # (!\U_1HzClkDivider|cnt\(13) & ((\U_1HzClkDivider|Add0~25\) # (GND)))
-- \U_1HzClkDivider|Add0~27\ = CARRY((!\U_1HzClkDivider|Add0~25\) # (!\U_1HzClkDivider|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(13),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~25\,
	combout => \U_1HzClkDivider|Add0~26_combout\,
	cout => \U_1HzClkDivider|Add0~27\);

-- Location: LCFF_X32_Y4_N5
\U_1HzClkDivider|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(13));

-- Location: LCCOMB_X32_Y4_N8
\U_1HzClkDivider|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~30_combout\ = (\U_1HzClkDivider|cnt\(15) & (!\U_1HzClkDivider|Add0~29\)) # (!\U_1HzClkDivider|cnt\(15) & ((\U_1HzClkDivider|Add0~29\) # (GND)))
-- \U_1HzClkDivider|Add0~31\ = CARRY((!\U_1HzClkDivider|Add0~29\) # (!\U_1HzClkDivider|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(15),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~29\,
	combout => \U_1HzClkDivider|Add0~30_combout\,
	cout => \U_1HzClkDivider|Add0~31\);

-- Location: LCFF_X32_Y4_N9
\U_1HzClkDivider|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(15));

-- Location: LCCOMB_X32_Y4_N10
\U_1HzClkDivider|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~32_combout\ = (\U_1HzClkDivider|cnt\(16) & (\U_1HzClkDivider|Add0~31\ $ (GND))) # (!\U_1HzClkDivider|cnt\(16) & (!\U_1HzClkDivider|Add0~31\ & VCC))
-- \U_1HzClkDivider|Add0~33\ = CARRY((\U_1HzClkDivider|cnt\(16) & !\U_1HzClkDivider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(16),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~31\,
	combout => \U_1HzClkDivider|Add0~32_combout\,
	cout => \U_1HzClkDivider|Add0~33\);

-- Location: LCFF_X32_Y4_N11
\U_1HzClkDivider|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(16));

-- Location: LCCOMB_X32_Y4_N14
\U_1HzClkDivider|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~36_combout\ = (\U_1HzClkDivider|cnt\(18) & (\U_1HzClkDivider|Add0~35\ $ (GND))) # (!\U_1HzClkDivider|cnt\(18) & (!\U_1HzClkDivider|Add0~35\ & VCC))
-- \U_1HzClkDivider|Add0~37\ = CARRY((\U_1HzClkDivider|cnt\(18) & !\U_1HzClkDivider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(18),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~35\,
	combout => \U_1HzClkDivider|Add0~36_combout\,
	cout => \U_1HzClkDivider|Add0~37\);

-- Location: LCFF_X32_Y4_N15
\U_1HzClkDivider|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(18));

-- Location: LCCOMB_X32_Y4_N18
\U_1HzClkDivider|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~40_combout\ = (\U_1HzClkDivider|cnt\(20) & (\U_1HzClkDivider|Add0~39\ $ (GND))) # (!\U_1HzClkDivider|cnt\(20) & (!\U_1HzClkDivider|Add0~39\ & VCC))
-- \U_1HzClkDivider|Add0~41\ = CARRY((\U_1HzClkDivider|cnt\(20) & !\U_1HzClkDivider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(20),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~39\,
	combout => \U_1HzClkDivider|Add0~40_combout\,
	cout => \U_1HzClkDivider|Add0~41\);

-- Location: LCFF_X32_Y4_N19
\U_1HzClkDivider|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(20));

-- Location: LCCOMB_X32_Y4_N20
\U_1HzClkDivider|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~42_combout\ = (\U_1HzClkDivider|cnt\(21) & (!\U_1HzClkDivider|Add0~41\)) # (!\U_1HzClkDivider|cnt\(21) & ((\U_1HzClkDivider|Add0~41\) # (GND)))
-- \U_1HzClkDivider|Add0~43\ = CARRY((!\U_1HzClkDivider|Add0~41\) # (!\U_1HzClkDivider|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(21),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~41\,
	combout => \U_1HzClkDivider|Add0~42_combout\,
	cout => \U_1HzClkDivider|Add0~43\);

-- Location: LCCOMB_X33_Y5_N10
\U_1HzClkDivider|cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~12_combout\ = (\U_1HzClkDivider|Add0~42_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)) # (!\U_1HzClkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~5_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~42_combout\,
	combout => \U_1HzClkDivider|cnt~12_combout\);

-- Location: LCFF_X33_Y5_N11
\U_1HzClkDivider|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(21));

-- Location: LCCOMB_X32_Y4_N22
\U_1HzClkDivider|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~44_combout\ = \U_1HzClkDivider|Add0~43\ $ (!\U_1HzClkDivider|cnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_1HzClkDivider|cnt\(22),
	cin => \U_1HzClkDivider|Add0~43\,
	combout => \U_1HzClkDivider|Add0~44_combout\);

-- Location: LCCOMB_X32_Y4_N28
\U_1HzClkDivider|cnt~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~13_combout\ = (\U_1HzClkDivider|Add0~44_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)) # (!\U_1HzClkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~5_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~44_combout\,
	combout => \U_1HzClkDivider|cnt~13_combout\);

-- Location: LCFF_X32_Y4_N29
\U_1HzClkDivider|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(22));

-- Location: LCCOMB_X32_Y4_N30
\U_1HzClkDivider|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~6_combout\ = (!\U_1HzClkDivider|cnt\(20) & (\U_1HzClkDivider|cnt\(21) & \U_1HzClkDivider|cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(20),
	datac => \U_1HzClkDivider|cnt\(21),
	datad => \U_1HzClkDivider|cnt\(22),
	combout => \U_1HzClkDivider|Equal0~6_combout\);

-- Location: LCCOMB_X33_Y5_N0
\U_1HzClkDivider|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~7_combout\ = (\U_1HzClkDivider|Equal0~6_combout\ & (\U_1HzClkDivider|Equal0~4_combout\ & \U_1HzClkDivider|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Equal0~5_combout\,
	combout => \U_1HzClkDivider|Equal0~7_combout\);

-- Location: LCFF_X33_Y5_N1
\U_1HzClkDivider|clk_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|clk_out~regout\);

-- Location: CLKCTRL_G5
\U_1HzClkDivider|clk_out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_1HzClkDivider|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_1HzClkDivider|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X8_Y16_N18
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

-- Location: LCFF_X8_Y16_N19
current_State : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \current_State~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_State~regout\);

-- Location: LCCOMB_X8_Y16_N24
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

-- Location: LCFF_X8_Y16_N25
\TLED_Orange_1~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
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

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_SPI_SCLK~I\ : cycloneii_io
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
	padio => ww_PIC_SPI_SCLK,
	combout => \PIC_SPI_SCLK~combout\);

-- Location: LCCOMB_X6_Y15_N0
\U_PICSPI_Slave|SCKr[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|SCKr[0]~feeder_combout\ = \PIC_SPI_SCLK~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_SPI_SCLK~combout\,
	combout => \U_PICSPI_Slave|SCKr[0]~feeder_combout\);

-- Location: LCFF_X6_Y15_N1
\U_PICSPI_Slave|SCKr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|SCKr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SCKr\(0));

-- Location: LCFF_X3_Y16_N13
\U_PICSPI_Slave|SCKr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_PICSPI_Slave|SCKr\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SCKr\(1));

-- Location: LCFF_X3_Y16_N19
\U_PICSPI_Slave|SCKr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_PICSPI_Slave|SCKr\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SCKr\(2));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PIC_SPI_Select~I\ : cycloneii_io
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
	padio => ww_PIC_SPI_Select,
	combout => \PIC_SPI_Select~combout\);

-- Location: LCFF_X4_Y16_N3
\U_PICSPI_Slave|SSELr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_SPI_Select~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SSELr\(0));

-- Location: LCCOMB_X4_Y16_N20
\U_PICSPI_Slave|SSELr[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|SSELr[1]~feeder_combout\ = \U_PICSPI_Slave|SSELr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_PICSPI_Slave|SSELr\(0),
	combout => \U_PICSPI_Slave|SSELr[1]~feeder_combout\);

-- Location: LCFF_X4_Y16_N21
\U_PICSPI_Slave|SSELr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|SSELr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SSELr\(1));

-- Location: LCCOMB_X3_Y16_N2
\U_PICSPI_Slave|bitcnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|bitcnt~0_combout\ = (!\U_PICSPI_Slave|SSELr\(1) & (\U_PICSPI_Slave|bitcnt\(0) $ (((\U_PICSPI_Slave|SCKr\(1) & !\U_PICSPI_Slave|SCKr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|SCKr\(1),
	datab => \U_PICSPI_Slave|SCKr\(2),
	datac => \U_PICSPI_Slave|bitcnt\(0),
	datad => \U_PICSPI_Slave|SSELr\(1),
	combout => \U_PICSPI_Slave|bitcnt~0_combout\);

-- Location: LCFF_X3_Y16_N3
\U_PICSPI_Slave|bitcnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|bitcnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|bitcnt\(0));

-- Location: LCCOMB_X3_Y16_N12
\U_PICSPI_Slave|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|Add1~0_combout\ = (!\U_PICSPI_Slave|SCKr\(2) & (\U_PICSPI_Slave|SCKr\(1) & \U_PICSPI_Slave|bitcnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|SCKr\(2),
	datac => \U_PICSPI_Slave|SCKr\(1),
	datad => \U_PICSPI_Slave|bitcnt\(0),
	combout => \U_PICSPI_Slave|Add1~0_combout\);

-- Location: LCCOMB_X4_Y16_N30
\U_PICSPI_Slave|bitcnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|bitcnt~1_combout\ = (!\U_PICSPI_Slave|SSELr\(1) & (\U_PICSPI_Slave|Add1~0_combout\ $ (\U_PICSPI_Slave|bitcnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|SSELr\(1),
	datab => \U_PICSPI_Slave|Add1~0_combout\,
	datac => \U_PICSPI_Slave|bitcnt\(1),
	combout => \U_PICSPI_Slave|bitcnt~1_combout\);

-- Location: LCFF_X4_Y16_N31
\U_PICSPI_Slave|bitcnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|bitcnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|bitcnt\(1));

-- Location: LCCOMB_X3_Y16_N24
\U_PICSPI_Slave|bitcnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|bitcnt~2_combout\ = (!\U_PICSPI_Slave|SSELr\(1) & (\U_PICSPI_Slave|bitcnt\(2) $ (((\U_PICSPI_Slave|Add1~0_combout\ & \U_PICSPI_Slave|bitcnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|SSELr\(1),
	datab => \U_PICSPI_Slave|Add1~0_combout\,
	datac => \U_PICSPI_Slave|bitcnt\(2),
	datad => \U_PICSPI_Slave|bitcnt\(1),
	combout => \U_PICSPI_Slave|bitcnt~2_combout\);

-- Location: LCFF_X3_Y16_N25
\U_PICSPI_Slave|bitcnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|bitcnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|bitcnt\(2));

-- Location: LCCOMB_X4_Y16_N28
\U_PICSPI_Slave|byte_received~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_received~0_combout\ = (!\U_PICSPI_Slave|SSELr\(1) & (!\U_PICSPI_Slave|SCKr\(2) & \U_PICSPI_Slave|SCKr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|SSELr\(1),
	datab => \U_PICSPI_Slave|SCKr\(2),
	datad => \U_PICSPI_Slave|SCKr\(1),
	combout => \U_PICSPI_Slave|byte_received~0_combout\);

-- Location: LCCOMB_X3_Y16_N22
\U_PICSPI_Slave|byte_received~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_received~1_combout\ = (\U_PICSPI_Slave|bitcnt\(0) & (\U_PICSPI_Slave|bitcnt\(1) & (\U_PICSPI_Slave|bitcnt\(2) & \U_PICSPI_Slave|byte_received~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|bitcnt\(0),
	datab => \U_PICSPI_Slave|bitcnt\(1),
	datac => \U_PICSPI_Slave|bitcnt\(2),
	datad => \U_PICSPI_Slave|byte_received~0_combout\,
	combout => \U_PICSPI_Slave|byte_received~1_combout\);

-- Location: LCFF_X3_Y16_N23
\U_PICSPI_Slave|byte_received\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_received~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_received~regout\);

-- Location: LCCOMB_X4_Y16_N26
\U_PICSPI_Slave|byte_data_received[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_received[0]~0_combout\ = (\U_PICSPI_Slave|byte_received~0_combout\ & (\U_PICSPI_Slave|MOSIr\(1))) # (!\U_PICSPI_Slave|byte_received~0_combout\ & ((\U_PICSPI_Slave|byte_data_received\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|MOSIr\(1),
	datac => \U_PICSPI_Slave|byte_data_received\(0),
	datad => \U_PICSPI_Slave|byte_received~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_received[0]~0_combout\);

-- Location: LCFF_X4_Y16_N27
\U_PICSPI_Slave|byte_data_received[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_received[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_received\(0));

-- Location: LCCOMB_X4_Y16_N0
\U_PICSPI_Slave|LED~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|LED~0_combout\ = (\U_PICSPI_Slave|byte_received~regout\ & ((\U_PICSPI_Slave|byte_data_received\(0)))) # (!\U_PICSPI_Slave|byte_received~regout\ & (\U_PICSPI_Slave|LED~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|byte_received~regout\,
	datac => \U_PICSPI_Slave|LED~regout\,
	datad => \U_PICSPI_Slave|byte_data_received\(0),
	combout => \U_PICSPI_Slave|LED~0_combout\);

-- Location: LCFF_X4_Y16_N1
\U_PICSPI_Slave|LED\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|LED~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|LED~regout\);

-- Location: LCCOMB_X17_Y9_N8
\U_Ranger_Top|count[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[0]~24_combout\ = \U_Ranger_Top|count\(0) $ (VCC)
-- \U_Ranger_Top|count[0]~25\ = CARRY(\U_Ranger_Top|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(0),
	datad => VCC,
	combout => \U_Ranger_Top|count[0]~24_combout\,
	cout => \U_Ranger_Top|count[0]~25\);

-- Location: LCCOMB_X17_Y8_N28
\U_Ranger_Top|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan0~0_combout\ = (!\U_Ranger_Top|count\(19)) # (!\U_Ranger_Top|count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(20),
	datac => \U_Ranger_Top|count\(19),
	combout => \U_Ranger_Top|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y8_N20
\U_Ranger_Top|count[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[22]~68_combout\ = (\U_Ranger_Top|count\(22) & (\U_Ranger_Top|count[21]~67\ $ (GND))) # (!\U_Ranger_Top|count\(22) & (!\U_Ranger_Top|count[21]~67\ & VCC))
-- \U_Ranger_Top|count[22]~69\ = CARRY((\U_Ranger_Top|count\(22) & !\U_Ranger_Top|count[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(22),
	datad => VCC,
	cin => \U_Ranger_Top|count[21]~67\,
	combout => \U_Ranger_Top|count[22]~68_combout\,
	cout => \U_Ranger_Top|count[22]~69\);

-- Location: LCCOMB_X17_Y8_N22
\U_Ranger_Top|count[23]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[23]~70_combout\ = \U_Ranger_Top|count[22]~69\ $ (\U_Ranger_Top|count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_Ranger_Top|count\(23),
	cin => \U_Ranger_Top|count[22]~69\,
	combout => \U_Ranger_Top|count[23]~70_combout\);

-- Location: LCFF_X17_Y8_N23
\U_Ranger_Top|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[23]~70_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(23));

-- Location: LCCOMB_X17_Y9_N6
\U_Ranger_Top|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan0~1_combout\ = (\U_Ranger_Top|count\(22)) # (((\U_Ranger_Top|count\(23)) # (\U_Ranger_Top|count\(21))) # (!\U_Ranger_Top|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(22),
	datab => \U_Ranger_Top|LessThan0~0_combout\,
	datac => \U_Ranger_Top|count\(23),
	datad => \U_Ranger_Top|count\(21),
	combout => \U_Ranger_Top|LessThan0~1_combout\);

-- Location: LCFF_X17_Y9_N9
\U_Ranger_Top|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[0]~24_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(0));

-- Location: LCCOMB_X17_Y9_N14
\U_Ranger_Top|count[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[3]~30_combout\ = (\U_Ranger_Top|count\(3) & (!\U_Ranger_Top|count[2]~29\)) # (!\U_Ranger_Top|count\(3) & ((\U_Ranger_Top|count[2]~29\) # (GND)))
-- \U_Ranger_Top|count[3]~31\ = CARRY((!\U_Ranger_Top|count[2]~29\) # (!\U_Ranger_Top|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(3),
	datad => VCC,
	cin => \U_Ranger_Top|count[2]~29\,
	combout => \U_Ranger_Top|count[3]~30_combout\,
	cout => \U_Ranger_Top|count[3]~31\);

-- Location: LCFF_X17_Y9_N15
\U_Ranger_Top|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[3]~30_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(3));

-- Location: LCCOMB_X17_Y9_N18
\U_Ranger_Top|count[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[5]~34_combout\ = (\U_Ranger_Top|count\(5) & (!\U_Ranger_Top|count[4]~33\)) # (!\U_Ranger_Top|count\(5) & ((\U_Ranger_Top|count[4]~33\) # (GND)))
-- \U_Ranger_Top|count[5]~35\ = CARRY((!\U_Ranger_Top|count[4]~33\) # (!\U_Ranger_Top|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(5),
	datad => VCC,
	cin => \U_Ranger_Top|count[4]~33\,
	combout => \U_Ranger_Top|count[5]~34_combout\,
	cout => \U_Ranger_Top|count[5]~35\);

-- Location: LCFF_X17_Y9_N19
\U_Ranger_Top|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[5]~34_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(5));

-- Location: LCCOMB_X17_Y9_N22
\U_Ranger_Top|count[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[7]~38_combout\ = (\U_Ranger_Top|count\(7) & (!\U_Ranger_Top|count[6]~37\)) # (!\U_Ranger_Top|count\(7) & ((\U_Ranger_Top|count[6]~37\) # (GND)))
-- \U_Ranger_Top|count[7]~39\ = CARRY((!\U_Ranger_Top|count[6]~37\) # (!\U_Ranger_Top|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(7),
	datad => VCC,
	cin => \U_Ranger_Top|count[6]~37\,
	combout => \U_Ranger_Top|count[7]~38_combout\,
	cout => \U_Ranger_Top|count[7]~39\);

-- Location: LCFF_X17_Y9_N23
\U_Ranger_Top|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[7]~38_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(7));

-- Location: LCCOMB_X17_Y9_N24
\U_Ranger_Top|count[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[8]~40_combout\ = (\U_Ranger_Top|count\(8) & (\U_Ranger_Top|count[7]~39\ $ (GND))) # (!\U_Ranger_Top|count\(8) & (!\U_Ranger_Top|count[7]~39\ & VCC))
-- \U_Ranger_Top|count[8]~41\ = CARRY((\U_Ranger_Top|count\(8) & !\U_Ranger_Top|count[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(8),
	datad => VCC,
	cin => \U_Ranger_Top|count[7]~39\,
	combout => \U_Ranger_Top|count[8]~40_combout\,
	cout => \U_Ranger_Top|count[8]~41\);

-- Location: LCCOMB_X17_Y9_N26
\U_Ranger_Top|count[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[9]~42_combout\ = (\U_Ranger_Top|count\(9) & (!\U_Ranger_Top|count[8]~41\)) # (!\U_Ranger_Top|count\(9) & ((\U_Ranger_Top|count[8]~41\) # (GND)))
-- \U_Ranger_Top|count[9]~43\ = CARRY((!\U_Ranger_Top|count[8]~41\) # (!\U_Ranger_Top|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(9),
	datad => VCC,
	cin => \U_Ranger_Top|count[8]~41\,
	combout => \U_Ranger_Top|count[9]~42_combout\,
	cout => \U_Ranger_Top|count[9]~43\);

-- Location: LCFF_X17_Y9_N27
\U_Ranger_Top|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[9]~42_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(9));

-- Location: LCCOMB_X17_Y9_N28
\U_Ranger_Top|count[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[10]~44_combout\ = (\U_Ranger_Top|count\(10) & (\U_Ranger_Top|count[9]~43\ $ (GND))) # (!\U_Ranger_Top|count\(10) & (!\U_Ranger_Top|count[9]~43\ & VCC))
-- \U_Ranger_Top|count[10]~45\ = CARRY((\U_Ranger_Top|count\(10) & !\U_Ranger_Top|count[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(10),
	datad => VCC,
	cin => \U_Ranger_Top|count[9]~43\,
	combout => \U_Ranger_Top|count[10]~44_combout\,
	cout => \U_Ranger_Top|count[10]~45\);

-- Location: LCFF_X17_Y9_N29
\U_Ranger_Top|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[10]~44_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(10));

-- Location: LCCOMB_X17_Y9_N30
\U_Ranger_Top|count[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[11]~46_combout\ = (\U_Ranger_Top|count\(11) & (!\U_Ranger_Top|count[10]~45\)) # (!\U_Ranger_Top|count\(11) & ((\U_Ranger_Top|count[10]~45\) # (GND)))
-- \U_Ranger_Top|count[11]~47\ = CARRY((!\U_Ranger_Top|count[10]~45\) # (!\U_Ranger_Top|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(11),
	datad => VCC,
	cin => \U_Ranger_Top|count[10]~45\,
	combout => \U_Ranger_Top|count[11]~46_combout\,
	cout => \U_Ranger_Top|count[11]~47\);

-- Location: LCFF_X17_Y9_N31
\U_Ranger_Top|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[11]~46_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(11));

-- Location: LCCOMB_X17_Y8_N0
\U_Ranger_Top|count[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[12]~48_combout\ = (\U_Ranger_Top|count\(12) & (\U_Ranger_Top|count[11]~47\ $ (GND))) # (!\U_Ranger_Top|count\(12) & (!\U_Ranger_Top|count[11]~47\ & VCC))
-- \U_Ranger_Top|count[12]~49\ = CARRY((\U_Ranger_Top|count\(12) & !\U_Ranger_Top|count[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(12),
	datad => VCC,
	cin => \U_Ranger_Top|count[11]~47\,
	combout => \U_Ranger_Top|count[12]~48_combout\,
	cout => \U_Ranger_Top|count[12]~49\);

-- Location: LCFF_X17_Y8_N1
\U_Ranger_Top|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[12]~48_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(12));

-- Location: LCCOMB_X17_Y8_N2
\U_Ranger_Top|count[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[13]~50_combout\ = (\U_Ranger_Top|count\(13) & (!\U_Ranger_Top|count[12]~49\)) # (!\U_Ranger_Top|count\(13) & ((\U_Ranger_Top|count[12]~49\) # (GND)))
-- \U_Ranger_Top|count[13]~51\ = CARRY((!\U_Ranger_Top|count[12]~49\) # (!\U_Ranger_Top|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(13),
	datad => VCC,
	cin => \U_Ranger_Top|count[12]~49\,
	combout => \U_Ranger_Top|count[13]~50_combout\,
	cout => \U_Ranger_Top|count[13]~51\);

-- Location: LCFF_X17_Y8_N3
\U_Ranger_Top|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[13]~50_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(13));

-- Location: LCCOMB_X17_Y8_N4
\U_Ranger_Top|count[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[14]~52_combout\ = (\U_Ranger_Top|count\(14) & (\U_Ranger_Top|count[13]~51\ $ (GND))) # (!\U_Ranger_Top|count\(14) & (!\U_Ranger_Top|count[13]~51\ & VCC))
-- \U_Ranger_Top|count[14]~53\ = CARRY((\U_Ranger_Top|count\(14) & !\U_Ranger_Top|count[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(14),
	datad => VCC,
	cin => \U_Ranger_Top|count[13]~51\,
	combout => \U_Ranger_Top|count[14]~52_combout\,
	cout => \U_Ranger_Top|count[14]~53\);

-- Location: LCFF_X17_Y8_N5
\U_Ranger_Top|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[14]~52_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(14));

-- Location: LCCOMB_X17_Y8_N6
\U_Ranger_Top|count[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[15]~54_combout\ = (\U_Ranger_Top|count\(15) & (!\U_Ranger_Top|count[14]~53\)) # (!\U_Ranger_Top|count\(15) & ((\U_Ranger_Top|count[14]~53\) # (GND)))
-- \U_Ranger_Top|count[15]~55\ = CARRY((!\U_Ranger_Top|count[14]~53\) # (!\U_Ranger_Top|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(15),
	datad => VCC,
	cin => \U_Ranger_Top|count[14]~53\,
	combout => \U_Ranger_Top|count[15]~54_combout\,
	cout => \U_Ranger_Top|count[15]~55\);

-- Location: LCCOMB_X17_Y8_N8
\U_Ranger_Top|count[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[16]~56_combout\ = (\U_Ranger_Top|count\(16) & (\U_Ranger_Top|count[15]~55\ $ (GND))) # (!\U_Ranger_Top|count\(16) & (!\U_Ranger_Top|count[15]~55\ & VCC))
-- \U_Ranger_Top|count[16]~57\ = CARRY((\U_Ranger_Top|count\(16) & !\U_Ranger_Top|count[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(16),
	datad => VCC,
	cin => \U_Ranger_Top|count[15]~55\,
	combout => \U_Ranger_Top|count[16]~56_combout\,
	cout => \U_Ranger_Top|count[16]~57\);

-- Location: LCFF_X17_Y8_N9
\U_Ranger_Top|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[16]~56_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(16));

-- Location: LCCOMB_X17_Y8_N10
\U_Ranger_Top|count[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[17]~58_combout\ = (\U_Ranger_Top|count\(17) & (!\U_Ranger_Top|count[16]~57\)) # (!\U_Ranger_Top|count\(17) & ((\U_Ranger_Top|count[16]~57\) # (GND)))
-- \U_Ranger_Top|count[17]~59\ = CARRY((!\U_Ranger_Top|count[16]~57\) # (!\U_Ranger_Top|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(17),
	datad => VCC,
	cin => \U_Ranger_Top|count[16]~57\,
	combout => \U_Ranger_Top|count[17]~58_combout\,
	cout => \U_Ranger_Top|count[17]~59\);

-- Location: LCCOMB_X17_Y8_N14
\U_Ranger_Top|count[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[19]~62_combout\ = (\U_Ranger_Top|count\(19) & (!\U_Ranger_Top|count[18]~61\)) # (!\U_Ranger_Top|count\(19) & ((\U_Ranger_Top|count[18]~61\) # (GND)))
-- \U_Ranger_Top|count[19]~63\ = CARRY((!\U_Ranger_Top|count[18]~61\) # (!\U_Ranger_Top|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(19),
	datad => VCC,
	cin => \U_Ranger_Top|count[18]~61\,
	combout => \U_Ranger_Top|count[19]~62_combout\,
	cout => \U_Ranger_Top|count[19]~63\);

-- Location: LCFF_X17_Y8_N15
\U_Ranger_Top|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[19]~62_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(19));

-- Location: LCCOMB_X17_Y8_N18
\U_Ranger_Top|count[21]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|count[21]~66_combout\ = (\U_Ranger_Top|count\(21) & (!\U_Ranger_Top|count[20]~65\)) # (!\U_Ranger_Top|count\(21) & ((\U_Ranger_Top|count[20]~65\) # (GND)))
-- \U_Ranger_Top|count[21]~67\ = CARRY((!\U_Ranger_Top|count[20]~65\) # (!\U_Ranger_Top|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|count\(21),
	datad => VCC,
	cin => \U_Ranger_Top|count[20]~65\,
	combout => \U_Ranger_Top|count[21]~66_combout\,
	cout => \U_Ranger_Top|count[21]~67\);

-- Location: LCFF_X17_Y8_N19
\U_Ranger_Top|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[21]~66_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(21));

-- Location: LCFF_X17_Y8_N21
\U_Ranger_Top|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[22]~68_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(22));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Ultra_T_Edge~I\ : cycloneii_io
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
	padio => ww_Ultra_T_Edge,
	combout => \Ultra_T_Edge~combout\);

-- Location: LCFF_X16_Y7_N17
\U_Ranger_Top|edgeYet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Ultra_T_Edge~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgeYet~regout\);

-- Location: LCCOMB_X16_Y7_N16
\U_Ranger_Top|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|process_0~0_combout\ = (\Ultra_T_Edge~combout\ & !\U_Ranger_Top|edgeYet~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ultra_T_Edge~combout\,
	datac => \U_Ranger_Top|edgeYet~regout\,
	combout => \U_Ranger_Top|process_0~0_combout\);

-- Location: LCFF_X19_Y10_N29
\U_Ranger_Top|edgebegin[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(22),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(22));

-- Location: LCFF_X19_Y10_N27
\U_Ranger_Top|edgebegin[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(21),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(21));

-- Location: LCFF_X19_Y10_N23
\U_Ranger_Top|edgebegin[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(19),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(19));

-- Location: LCFF_X17_Y8_N11
\U_Ranger_Top|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[17]~58_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(17));

-- Location: LCFF_X19_Y10_N19
\U_Ranger_Top|edgebegin[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(17),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(17));

-- Location: LCFF_X17_Y8_N7
\U_Ranger_Top|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[15]~54_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(15));

-- Location: LCFF_X19_Y10_N15
\U_Ranger_Top|edgebegin[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(15),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(15));

-- Location: LCFF_X19_Y10_N9
\U_Ranger_Top|edgebegin[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(12),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(12));

-- Location: LCFF_X19_Y10_N5
\U_Ranger_Top|edgebegin[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(10),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(10));

-- Location: LCFF_X19_Y10_N3
\U_Ranger_Top|edgebegin[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(9),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(9));

-- Location: LCFF_X17_Y9_N25
\U_Ranger_Top|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|count[8]~40_combout\,
	sclr => \U_Ranger_Top|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|count\(8));

-- Location: LCFF_X19_Y10_N1
\U_Ranger_Top|edgebegin[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(8),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(8));

-- Location: LCCOMB_X19_Y10_N0
\U_Ranger_Top|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~1_cout\ = CARRY(\U_Ranger_Top|edgebegin\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|edgebegin\(8),
	datad => VCC,
	cout => \U_Ranger_Top|Add1~1_cout\);

-- Location: LCCOMB_X19_Y10_N2
\U_Ranger_Top|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~2_combout\ = (\U_Ranger_Top|edgebegin\(9) & (\U_Ranger_Top|Add1~1_cout\ & VCC)) # (!\U_Ranger_Top|edgebegin\(9) & (!\U_Ranger_Top|Add1~1_cout\))
-- \U_Ranger_Top|Add1~3\ = CARRY((!\U_Ranger_Top|edgebegin\(9) & !\U_Ranger_Top|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|edgebegin\(9),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~1_cout\,
	combout => \U_Ranger_Top|Add1~2_combout\,
	cout => \U_Ranger_Top|Add1~3\);

-- Location: LCCOMB_X19_Y10_N4
\U_Ranger_Top|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~4_combout\ = (\U_Ranger_Top|edgebegin\(10) & ((GND) # (!\U_Ranger_Top|Add1~3\))) # (!\U_Ranger_Top|edgebegin\(10) & (\U_Ranger_Top|Add1~3\ $ (GND)))
-- \U_Ranger_Top|Add1~5\ = CARRY((\U_Ranger_Top|edgebegin\(10)) # (!\U_Ranger_Top|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|edgebegin\(10),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~3\,
	combout => \U_Ranger_Top|Add1~4_combout\,
	cout => \U_Ranger_Top|Add1~5\);

-- Location: LCCOMB_X19_Y10_N8
\U_Ranger_Top|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~8_combout\ = (\U_Ranger_Top|edgebegin\(12) & ((GND) # (!\U_Ranger_Top|Add1~7\))) # (!\U_Ranger_Top|edgebegin\(12) & (\U_Ranger_Top|Add1~7\ $ (GND)))
-- \U_Ranger_Top|Add1~9\ = CARRY((\U_Ranger_Top|edgebegin\(12)) # (!\U_Ranger_Top|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|edgebegin\(12),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~7\,
	combout => \U_Ranger_Top|Add1~8_combout\,
	cout => \U_Ranger_Top|Add1~9\);

-- Location: LCCOMB_X19_Y10_N12
\U_Ranger_Top|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~12_combout\ = (\U_Ranger_Top|edgebegin\(14) & ((GND) # (!\U_Ranger_Top|Add1~11\))) # (!\U_Ranger_Top|edgebegin\(14) & (\U_Ranger_Top|Add1~11\ $ (GND)))
-- \U_Ranger_Top|Add1~13\ = CARRY((\U_Ranger_Top|edgebegin\(14)) # (!\U_Ranger_Top|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(14),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~11\,
	combout => \U_Ranger_Top|Add1~12_combout\,
	cout => \U_Ranger_Top|Add1~13\);

-- Location: LCCOMB_X19_Y10_N14
\U_Ranger_Top|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~14_combout\ = (\U_Ranger_Top|edgebegin\(15) & (\U_Ranger_Top|Add1~13\ & VCC)) # (!\U_Ranger_Top|edgebegin\(15) & (!\U_Ranger_Top|Add1~13\))
-- \U_Ranger_Top|Add1~15\ = CARRY((!\U_Ranger_Top|edgebegin\(15) & !\U_Ranger_Top|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|edgebegin\(15),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~13\,
	combout => \U_Ranger_Top|Add1~14_combout\,
	cout => \U_Ranger_Top|Add1~15\);

-- Location: LCCOMB_X19_Y10_N16
\U_Ranger_Top|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~16_combout\ = (\U_Ranger_Top|edgebegin\(16) & ((GND) # (!\U_Ranger_Top|Add1~15\))) # (!\U_Ranger_Top|edgebegin\(16) & (\U_Ranger_Top|Add1~15\ $ (GND)))
-- \U_Ranger_Top|Add1~17\ = CARRY((\U_Ranger_Top|edgebegin\(16)) # (!\U_Ranger_Top|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(16),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~15\,
	combout => \U_Ranger_Top|Add1~16_combout\,
	cout => \U_Ranger_Top|Add1~17\);

-- Location: LCCOMB_X19_Y10_N18
\U_Ranger_Top|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~18_combout\ = (\U_Ranger_Top|edgebegin\(17) & (\U_Ranger_Top|Add1~17\ & VCC)) # (!\U_Ranger_Top|edgebegin\(17) & (!\U_Ranger_Top|Add1~17\))
-- \U_Ranger_Top|Add1~19\ = CARRY((!\U_Ranger_Top|edgebegin\(17) & !\U_Ranger_Top|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|edgebegin\(17),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~17\,
	combout => \U_Ranger_Top|Add1~18_combout\,
	cout => \U_Ranger_Top|Add1~19\);

-- Location: LCCOMB_X19_Y10_N20
\U_Ranger_Top|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~20_combout\ = (\U_Ranger_Top|edgebegin\(18) & ((GND) # (!\U_Ranger_Top|Add1~19\))) # (!\U_Ranger_Top|edgebegin\(18) & (\U_Ranger_Top|Add1~19\ $ (GND)))
-- \U_Ranger_Top|Add1~21\ = CARRY((\U_Ranger_Top|edgebegin\(18)) # (!\U_Ranger_Top|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(18),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~19\,
	combout => \U_Ranger_Top|Add1~20_combout\,
	cout => \U_Ranger_Top|Add1~21\);

-- Location: LCCOMB_X19_Y10_N22
\U_Ranger_Top|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~22_combout\ = (\U_Ranger_Top|edgebegin\(19) & (\U_Ranger_Top|Add1~21\ & VCC)) # (!\U_Ranger_Top|edgebegin\(19) & (!\U_Ranger_Top|Add1~21\))
-- \U_Ranger_Top|Add1~23\ = CARRY((!\U_Ranger_Top|edgebegin\(19) & !\U_Ranger_Top|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|edgebegin\(19),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~21\,
	combout => \U_Ranger_Top|Add1~22_combout\,
	cout => \U_Ranger_Top|Add1~23\);

-- Location: LCCOMB_X19_Y10_N24
\U_Ranger_Top|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~24_combout\ = (\U_Ranger_Top|edgebegin\(20) & ((GND) # (!\U_Ranger_Top|Add1~23\))) # (!\U_Ranger_Top|edgebegin\(20) & (\U_Ranger_Top|Add1~23\ $ (GND)))
-- \U_Ranger_Top|Add1~25\ = CARRY((\U_Ranger_Top|edgebegin\(20)) # (!\U_Ranger_Top|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(20),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~23\,
	combout => \U_Ranger_Top|Add1~24_combout\,
	cout => \U_Ranger_Top|Add1~25\);

-- Location: LCCOMB_X19_Y10_N28
\U_Ranger_Top|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~28_combout\ = (\U_Ranger_Top|edgebegin\(22) & ((GND) # (!\U_Ranger_Top|Add1~27\))) # (!\U_Ranger_Top|edgebegin\(22) & (\U_Ranger_Top|Add1~27\ $ (GND)))
-- \U_Ranger_Top|Add1~29\ = CARRY((\U_Ranger_Top|edgebegin\(22)) # (!\U_Ranger_Top|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|edgebegin\(22),
	datad => VCC,
	cin => \U_Ranger_Top|Add1~27\,
	combout => \U_Ranger_Top|Add1~28_combout\,
	cout => \U_Ranger_Top|Add1~29\);

-- Location: LCFF_X19_Y10_N31
\U_Ranger_Top|edgebegin[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(23),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(23));

-- Location: LCCOMB_X19_Y10_N30
\U_Ranger_Top|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Add1~30_combout\ = \U_Ranger_Top|Add1~29\ $ (!\U_Ranger_Top|edgebegin\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_Ranger_Top|edgebegin\(23),
	cin => \U_Ranger_Top|Add1~29\,
	combout => \U_Ranger_Top|Add1~30_combout\);

-- Location: LCCOMB_X18_Y10_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~0_combout\ = \U_Ranger_Top|Add1~12_combout\ $ (VCC)
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~1\ = CARRY(\U_Ranger_Top|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~12_combout\,
	datad => VCC,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~0_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~1\);

-- Location: LCCOMB_X18_Y10_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~6_combout\ = (\U_Ranger_Top|Add1~18_combout\ & (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~5\)) # 
-- (!\U_Ranger_Top|Add1~18_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~5\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~7\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~5\) # (!\U_Ranger_Top|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~18_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~5\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~6_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~7\);

-- Location: LCCOMB_X18_Y10_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~10_combout\ = (\U_Ranger_Top|Add1~22_combout\ & (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~9\ & VCC)) # 
-- (!\U_Ranger_Top|Add1~22_combout\ & (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~9\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~11\ = CARRY((!\U_Ranger_Top|Add1~22_combout\ & !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~22_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[7]~9\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~10_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~11\);

-- Location: LCCOMB_X18_Y10_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~12_combout\ = (\U_Ranger_Top|Add1~24_combout\ & ((GND) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~11\))) 
-- # (!\U_Ranger_Top|Add1~24_combout\ & (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~11\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~13\ = CARRY((\U_Ranger_Top|Add1~24_combout\) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~24_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~11\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~12_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~13\);

-- Location: LCCOMB_X18_Y10_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~16_combout\ = (\U_Ranger_Top|Add1~28_combout\ & (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~15\ $ (GND))) 
-- # (!\U_Ranger_Top|Add1~28_combout\ & (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~15\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~17\ = CARRY((\U_Ranger_Top|Add1~28_combout\ & !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~28_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[10]~15\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~16_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~17\);

-- Location: LCCOMB_X18_Y10_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ = \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[12]~19\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\);

-- Location: LCCOMB_X22_Y6_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~1_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & (\U_Ranger_Top|Add1~28_combout\)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~28_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[11]~16_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~1_combout\);

-- Location: LCCOMB_X21_Y10_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~3_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & (\U_Ranger_Top|Add1~24_combout\)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~24_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[9]~12_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~3_combout\);

-- Location: LCCOMB_X21_Y10_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & (\U_Ranger_Top|Add1~22_combout\)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~22_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[8]~10_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~4_combout\);

-- Location: LCCOMB_X18_Y10_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & (\U_Ranger_Top|Add1~18_combout\)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~18_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[6]~6_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~6_combout\);

-- Location: LCCOMB_X18_Y10_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~7_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & ((\U_Ranger_Top|Add1~16_combout\))) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[5]~4_combout\,
	datac => \U_Ranger_Top|Add1~16_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~7_combout\);

-- Location: LCCOMB_X18_Y10_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & ((\U_Ranger_Top|Add1~14_combout\))) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[4]~2_combout\,
	datac => \U_Ranger_Top|Add1~14_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~8_combout\);

-- Location: LCCOMB_X18_Y10_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~9_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & (\U_Ranger_Top|Add1~12_combout\)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~12_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[3]~0_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_12_result_int[13]~20_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~9_combout\);

-- Location: LCCOMB_X21_Y10_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~0_combout\ = \U_Ranger_Top|Add1~10_combout\ $ (VCC)
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~1\ = CARRY(\U_Ranger_Top|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Add1~10_combout\,
	datad => VCC,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~0_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~1\);

-- Location: LCCOMB_X21_Y10_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~9_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~1\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~9_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~1\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~3\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~9_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~9_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~1\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~2_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~3\);

-- Location: LCCOMB_X21_Y10_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~8_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~3\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~8_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~3\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~5\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~8_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~8_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~3\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~4_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~5\);

-- Location: LCCOMB_X21_Y10_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~7_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~5\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~7_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~5\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~7\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~5\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~7_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~5\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~6_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~7\);

-- Location: LCCOMB_X21_Y10_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~12_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~4_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~11\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~4_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~11\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~13\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~4_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~4_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[8]~11\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~12_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~13\);

-- Location: LCCOMB_X21_Y10_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~14_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~3_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~13\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~3_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~13\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~15\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~13\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~3_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~13\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~14_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~15\);

-- Location: LCCOMB_X21_Y10_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~2_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~15\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~2_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~15\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~17\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~2_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~2_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~15\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~16_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~17\);

-- Location: LCCOMB_X21_Y10_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~18_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~1_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~17\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~1_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~17\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~19\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~17\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~1_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~17\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~18_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~19\);

-- Location: LCCOMB_X21_Y10_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ = !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[13]~21\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\);

-- Location: LCCOMB_X22_Y6_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~11_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~1_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[299]~1_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[12]~18_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~11_combout\);

-- Location: LCCOMB_X22_Y6_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~12_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~2_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[298]~2_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[11]~16_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~12_combout\);

-- Location: LCCOMB_X22_Y6_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~13_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~3_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[297]~3_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[10]~14_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~13_combout\);

-- Location: LCCOMB_X21_Y7_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~14_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~4_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[296]~4_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[9]~12_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~14_combout\);

-- Location: LCCOMB_X21_Y7_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~6_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[7]~8_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[294]~6_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~16_combout\);

-- Location: LCCOMB_X21_Y8_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~17_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~7_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[293]~7_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[6]~6_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~17_combout\);

-- Location: LCCOMB_X21_Y8_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~18_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~8_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[292]~8_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[5]~4_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[317]~18_combout\);

-- Location: LCCOMB_X21_Y8_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~19_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~9_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[4]~2_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[291]~9_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~19_combout\);

-- Location: LCCOMB_X21_Y8_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~0_combout\ = \U_Ranger_Top|Add1~8_combout\ $ (VCC)
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~1\ = CARRY(\U_Ranger_Top|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~8_combout\,
	datad => VCC,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~0_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~1\);

-- Location: LCCOMB_X21_Y8_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~20_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~1\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~20_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~1\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~3\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~20_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~20_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~1\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~2_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~3\);

-- Location: LCCOMB_X21_Y8_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~19_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~3\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~19_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~3\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~5\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~19_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~19_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~3\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~4_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~5\);

-- Location: LCCOMB_X21_Y8_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~17_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~7\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~17_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~7\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~9\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~17_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~17_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[6]~7\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~8_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~9\);

-- Location: LCCOMB_X21_Y8_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~16_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~9\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~16_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~9\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~11\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~16_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~16_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~9\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~10_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~11\);

-- Location: LCCOMB_X21_Y8_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~12_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~15_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~11\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~15_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~11\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~13\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~15_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~15_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~11\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~12_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~13\);

-- Location: LCCOMB_X21_Y8_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~14_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~14_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~13\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~14_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~13\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~15\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~13\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~14_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~13\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~14_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~15\);

-- Location: LCCOMB_X21_Y8_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~13_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~15\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~13_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~15\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~17\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~13_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~13_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~15\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~16_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~17\);

-- Location: LCCOMB_X21_Y8_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~18_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~12_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~17\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~12_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~17\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~19\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~17\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~12_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~17\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~18_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~19\);

-- Location: LCCOMB_X21_Y8_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~20_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~11_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~19\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~11_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~19\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~21\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~11_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~11_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~19\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~20_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~21\);

-- Location: LCCOMB_X21_Y8_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ = \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[14]~23\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\);

-- Location: LCCOMB_X22_Y6_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~22_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~11_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[324]~11_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[13]~20_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~22_combout\);

-- Location: LCCOMB_X22_Y6_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~23_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~12_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[323]~12_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[12]~18_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~23_combout\);

-- Location: LCCOMB_X22_Y6_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~24_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~13_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[11]~16_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[322]~13_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~24_combout\);

-- Location: LCCOMB_X21_Y7_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~26_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~15_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[320]~15_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[9]~12_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~26_combout\);

-- Location: LCCOMB_X21_Y7_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~27_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~16_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[8]~10_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[319]~16_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~27_combout\);

-- Location: LCCOMB_X21_Y7_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~28_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~17_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[318]~17_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[7]~8_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~28_combout\);

-- Location: LCCOMB_X22_Y6_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~30_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~19_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[5]~4_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[316]~19_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~30_combout\);

-- Location: LCCOMB_X21_Y10_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~20_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & (\U_Ranger_Top|Add1~10_combout\)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Add1~10_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[3]~0_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_13_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~20_combout\);

-- Location: LCCOMB_X22_Y7_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~31_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~20_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[315]~20_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[4]~2_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[340]~31_combout\);

-- Location: LCCOMB_X22_Y7_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~32_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & (\U_Ranger_Top|Add1~8_combout\)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~8_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[3]~0_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~32_combout\);

-- Location: LCCOMB_X22_Y7_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\U_Ranger_Top|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Add1~6_combout\,
	datad => VCC,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X22_Y7_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~30_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~30_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X22_Y7_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~28_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~28_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~28_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X22_Y7_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~27_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~27_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~13\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~27_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~27_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~11\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X22_Y7_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~14_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~26_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~13\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~13\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~13\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~26_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~13\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~14_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15\);

-- Location: LCCOMB_X22_Y7_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~25_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~25_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~17\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~25_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~25_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~15\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~17\);

-- Location: LCCOMB_X22_Y7_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~18_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~24_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~17\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~24_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~17\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~19\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~17\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~24_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~17\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~18_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~19\);

-- Location: LCCOMB_X22_Y7_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~20_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~23_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~19\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~23_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~19\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~21\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~23_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~23_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~19\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~20_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~21\);

-- Location: LCCOMB_X22_Y7_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~22_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~22_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~21\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~22_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~21\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~23\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~22_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~22_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~21\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~22_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~23\);

-- Location: LCCOMB_X22_Y7_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~24_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~21_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~23\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~21_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~23\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~25\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~21_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~21_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~23\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~24_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~25\);

-- Location: LCCOMB_X22_Y7_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ = !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~25\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\);

-- Location: LCCOMB_X22_Y6_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~34_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~22_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[349]~22_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~22_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~34_combout\);

-- Location: LCCOMB_X17_Y7_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~33_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~21_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[350]~21_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~24_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~33_combout\);

-- Location: LCCOMB_X22_Y6_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~35_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~23_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[348]~23_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~20_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~35_combout\);

-- Location: LCCOMB_X22_Y6_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~36_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~24_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[347]~24_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~18_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~36_combout\);

-- Location: LCCOMB_X21_Y7_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~25_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~14_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[321]~14_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[10]~14_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_14_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~25_combout\);

-- Location: LCCOMB_X21_Y7_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~37_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~25_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~16_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[346]~25_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[371]~37_combout\);

-- Location: LCCOMB_X21_Y7_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~38_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~26_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[345]~26_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~14_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[370]~38_combout\);

-- Location: LCCOMB_X21_Y7_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~39_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~27_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[344]~27_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~12_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[369]~39_combout\);

-- Location: LCCOMB_X18_Y6_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~40_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~28_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[343]~28_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~40_combout\);

-- Location: LCCOMB_X22_Y6_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~42_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~30_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[341]~30_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~42_combout\);

-- Location: LCCOMB_X21_Y6_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~44_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~32_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[339]~32_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[364]~44_combout\);

-- Location: LCCOMB_X21_Y6_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~1_cout\ = CARRY(\U_Ranger_Top|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Add1~4_combout\,
	datad => VCC,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~1_cout\);

-- Location: LCCOMB_X21_Y6_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~1_cout\ & ((\U_Ranger_Top|Add1~6_combout\ $ 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\)))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~1_cout\ & (\U_Ranger_Top|Add1~6_combout\ $ 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\))))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~3\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~1_cout\ & (\U_Ranger_Top|Add1~6_combout\ $ 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Add1~6_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[3]~1_cout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~2_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~3\);

-- Location: LCCOMB_X21_Y6_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~43_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~5\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~43_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~5\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~7\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~5\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~43_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[5]~5\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~6_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~7\);

-- Location: LCCOMB_X21_Y6_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~42_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~7\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~42_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~7\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~9\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~42_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~42_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~7\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~8_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~9\);

-- Location: LCCOMB_X21_Y6_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~41_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~9\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~41_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~9\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~11\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~41_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~41_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~9\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~10_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~11\);

-- Location: LCCOMB_X21_Y6_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~12_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~40_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~11\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~11\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~13\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~40_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~40_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~11\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~12_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~13\);

-- Location: LCCOMB_X21_Y6_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~20_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~36_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~19\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~19\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~21\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~36_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~36_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[12]~19\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~20_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~21\);

-- Location: LCCOMB_X21_Y6_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~22_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~35_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~21\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~35_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~21\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~23\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~35_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~35_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~21\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~22_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~23\);

-- Location: LCCOMB_X21_Y6_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~24_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~34_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~23\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~23\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~25\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~34_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~34_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~23\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~24_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~25\);

-- Location: LCCOMB_X21_Y6_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~26_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~33_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~25\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~33_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~25\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~27\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~33_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~33_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~25\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~26_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~27\);

-- Location: LCCOMB_X21_Y6_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ = \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~27\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\);

-- Location: LCCOMB_X22_Y6_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~46_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~34_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[374]~34_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~46_combout\);

-- Location: LCCOMB_X17_Y7_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~45_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~33_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[375]~33_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[16]~26_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~45_combout\);

-- Location: LCCOMB_X22_Y6_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~47_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~35_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[373]~35_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~47_combout\);

-- Location: LCCOMB_X18_Y6_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~52_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~40_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[368]~40_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[9]~12_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~52_combout\);

-- Location: LCCOMB_X21_Y7_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~53_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~41_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[367]~41_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[8]~10_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~53_combout\);

-- Location: LCCOMB_X22_Y6_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~54_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~42_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[366]~42_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[7]~8_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~54_combout\);

-- Location: LCCOMB_X17_Y7_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~55_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~43_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[365]~43_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[6]~6_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~55_combout\);

-- Location: LCCOMB_X17_Y6_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1_cout\ = CARRY(\U_Ranger_Top|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Add1~2_combout\,
	datad => VCC,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[3]~1_cout\);

-- Location: LCCOMB_X17_Y6_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~55_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~55_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~55_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~55_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[6]~7\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~8_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9\);

-- Location: LCCOMB_X17_Y6_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~54_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~54_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~54_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~54_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~9\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~10_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11\);

-- Location: LCCOMB_X17_Y6_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~12_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~53_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~53_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~53_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~53_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~11\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~12_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13\);

-- Location: LCCOMB_X17_Y6_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~14_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~52_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~52_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~52_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~13\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~14_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15\);

-- Location: LCCOMB_X17_Y6_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~51_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~51_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~17\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~51_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~51_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~15\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~16_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~17\);

-- Location: LCCOMB_X17_Y6_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~18_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~50_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~17\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~50_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~17\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~19\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~17\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~50_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~17\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~18_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~19\);

-- Location: LCCOMB_X17_Y6_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~20_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~49_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~19\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~49_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~19\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~21\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~49_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~49_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~19\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~20_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~21\);

-- Location: LCCOMB_X17_Y6_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~24_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~47_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~23\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~47_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~23\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~25\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~47_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~47_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~23\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~24_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~25\);

-- Location: LCCOMB_X17_Y6_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~26_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~46_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~25\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~46_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~25\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~27\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~46_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~46_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~25\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~26_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~27\);

-- Location: LCCOMB_X17_Y6_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~28_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~45_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~27\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~45_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~27\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~29\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~45_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~45_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~27\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~28_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~29\);

-- Location: LCCOMB_X17_Y6_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ = !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~29\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\);

-- Location: LCCOMB_X16_Y5_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~59_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~46_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[399]~46_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[16]~26_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~59_combout\);

-- Location: LCCOMB_X16_Y5_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~60_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~47_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[398]~47_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~60_combout\);

-- Location: LCCOMB_X22_Y6_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~48_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~36_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[372]~36_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[13]~20_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~48_combout\);

-- Location: LCCOMB_X16_Y5_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~61_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~48_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[14]~22_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[397]~48_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~61_combout\);

-- Location: LCCOMB_X16_Y5_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~63_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~50_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[395]~50_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[12]~18_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~63_combout\);

-- Location: LCCOMB_X16_Y5_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~65_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~52_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[393]~52_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[10]~14_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[418]~65_combout\);

-- Location: LCCOMB_X16_Y6_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~67_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~54_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[391]~54_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[8]~10_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~67_combout\);

-- Location: LCCOMB_X16_Y6_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~68_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~55_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[390]~55_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[7]~8_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~68_combout\);

-- Location: LCCOMB_X16_Y6_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~57_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & (\U_Ranger_Top|Add1~6_combout\ $ 
-- ((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\)))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\ & 
-- (((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Add1~6_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~26_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[4]~2_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~57_combout\);

-- Location: LCCOMB_X16_Y6_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~70_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~57_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[5]~4_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[388]~57_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~70_combout\);

-- Location: LCCOMB_X16_Y6_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~1_cout\ = CARRY(!\U_Ranger_Top|edgebegin\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|edgebegin\(8),
	datad => VCC,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~1_cout\);

-- Location: LCCOMB_X16_Y6_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~1_cout\ & ((\U_Ranger_Top|Add1~2_combout\ $ 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\)))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~1_cout\ & (\U_Ranger_Top|Add1~2_combout\ $ 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\))))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~3\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~1_cout\ & (\U_Ranger_Top|Add1~2_combout\ $ 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Add1~2_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[3]~1_cout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~2_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~3\);

-- Location: LCCOMB_X16_Y6_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~71_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~3\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~71_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~3\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~5\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~71_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~71_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~3\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~4_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~5\);

-- Location: LCCOMB_X16_Y6_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~70_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~5\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~70_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~5\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~7\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~5\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~70_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~5\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~6_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~7\);

-- Location: LCCOMB_X16_Y6_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~68_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~9\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~68_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~9\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~11\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~68_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~68_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[7]~9\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~10_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~11\);

-- Location: LCCOMB_X16_Y6_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~12_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~67_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~11\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~67_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~11\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~13\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~67_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~67_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~11\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~12_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~13\);

-- Location: LCCOMB_X16_Y6_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~14_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~66_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~13\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~66_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~13\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~15\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~13\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~66_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~13\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~14_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~15\);

-- Location: LCCOMB_X16_Y5_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~18_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~64_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~17\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~64_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~17\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~19\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~17\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~64_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[11]~17\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~18_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~19\);

-- Location: LCCOMB_X16_Y5_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~20_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~63_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~19\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~63_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~19\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~21\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~63_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~63_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~19\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~20_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~21\);

-- Location: LCCOMB_X16_Y5_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~22_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~62_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~21\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~62_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~21\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~23\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~62_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~62_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~21\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~22_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~23\);

-- Location: LCCOMB_X16_Y5_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~24_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~61_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~23\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~61_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~23\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~25\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~61_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~61_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~23\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~24_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~25\);

-- Location: LCCOMB_X16_Y5_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~26_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~60_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~25\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~60_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~25\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~27\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~60_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~60_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~25\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~26_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~27\);

-- Location: LCCOMB_X16_Y5_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~28_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~59_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~27\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~59_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~27\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~29\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~59_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~59_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~27\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~28_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~29\);

-- Location: LCCOMB_X17_Y7_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~58_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~45_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[400]~45_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[17]~28_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[425]~58_combout\);

-- Location: LCCOMB_X16_Y5_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ = \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[18]~31\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\);

-- Location: LCCOMB_X15_Y7_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~73_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~59_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[424]~59_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[17]~28_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~73_combout\);

-- Location: LCCOMB_X15_Y5_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~74_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~60_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[16]~26_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[423]~60_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~74_combout\);

-- Location: LCCOMB_X15_Y5_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~75_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~61_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[15]~24_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[422]~61_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~75_combout\);

-- Location: LCCOMB_X16_Y5_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~62_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~49_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[396]~49_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[13]~20_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~62_combout\);

-- Location: LCCOMB_X15_Y5_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~76_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~62_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[421]~62_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~76_combout\);

-- Location: LCCOMB_X16_Y5_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~64_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~51_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[394]~51_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[11]~16_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~64_combout\);

-- Location: LCCOMB_X15_Y5_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~78_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~64_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[419]~64_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[12]~18_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~78_combout\);

-- Location: LCCOMB_X16_Y6_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~66_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~53_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[392]~53_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[9]~12_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~66_combout\);

-- Location: LCCOMB_X15_Y6_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~80_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~66_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[417]~66_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[10]~14_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~80_combout\);

-- Location: LCCOMB_X15_Y6_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~81_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~67_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[416]~67_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[9]~12_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~81_combout\);

-- Location: LCCOMB_X15_Y6_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~84_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~70_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[6]~6_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[413]~70_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~84_combout\);

-- Location: LCCOMB_X15_Y6_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~86_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ $ ((!\U_Ranger_Top|Add1~2_combout\)))) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & (((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	datab => \U_Ranger_Top|Add1~2_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[4]~2_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~86_combout\);

-- Location: LCFF_X15_Y6_N15
\U_Ranger_Top|edgebegin[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(7),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(7));

-- Location: LCCOMB_X15_Y6_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~1_cout\ = CARRY(\U_Ranger_Top|edgebegin\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|edgebegin\(7),
	datad => VCC,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~1_cout\);

-- Location: LCCOMB_X15_Y6_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~1_cout\ & ((\U_Ranger_Top|edgebegin\(8) $ 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\)))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~1_cout\ & (\U_Ranger_Top|edgebegin\(8) $ 
-- ((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\))))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~3\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~1_cout\ & (\U_Ranger_Top|edgebegin\(8) $ 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(8),
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[3]~1_cout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~2_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~3\);

-- Location: LCCOMB_X15_Y6_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~86_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~3\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~86_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~3\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~5\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~86_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~86_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~3\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~4_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~5\);

-- Location: LCCOMB_X15_Y6_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~85_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~5\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~85_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~5\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~7\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~5\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~85_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~5\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~6_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~7\);

-- Location: LCCOMB_X15_Y6_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~84_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~7\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~84_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~7\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~9\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~84_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~84_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~7\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~8_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~9\);

-- Location: LCCOMB_X15_Y6_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~83_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~9\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~83_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~9\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~11\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~83_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~83_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~9\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~10_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~11\);

-- Location: LCCOMB_X15_Y6_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~12_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~82_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~11\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~82_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~11\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~13\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~82_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~82_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~11\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~12_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~13\);

-- Location: LCCOMB_X15_Y6_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~14_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~81_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~13\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~81_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~13\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~15\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~13\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~81_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~13\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~14_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~15\);

-- Location: LCCOMB_X15_Y6_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~80_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~15\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~80_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~15\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~17\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~80_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~80_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~15\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~16_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~17\);

-- Location: LCCOMB_X15_Y5_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~20_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~78_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~19\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~78_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~19\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~21\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~78_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~78_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[12]~19\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~20_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~21\);

-- Location: LCCOMB_X15_Y5_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~22_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~77_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~21\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~77_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~21\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~23\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~77_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~77_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~21\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~22_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~23\);

-- Location: LCCOMB_X15_Y5_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~24_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~76_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~23\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~76_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~23\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~25\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~76_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~76_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~23\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~24_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~25\);

-- Location: LCCOMB_X15_Y5_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~26_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~75_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~25\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~75_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~25\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~27\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~75_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~75_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~25\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~26_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~27\);

-- Location: LCCOMB_X15_Y5_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~28_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~74_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~27\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~74_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~27\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~29\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~74_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~74_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~27\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~28_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~29\);

-- Location: LCCOMB_X15_Y5_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~30_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~73_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~29\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~73_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~29\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~31\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~73_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~73_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~29\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~30_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~31\);

-- Location: LCCOMB_X15_Y5_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~32_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~72_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~31\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~72_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~31\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~33\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~72_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~72_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~31\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~32_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~33\);

-- Location: LCCOMB_X15_Y5_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ = !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~33\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~33\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\);

-- Location: LCCOMB_X15_Y7_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~88_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~73_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[449]~73_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[18]~30_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~88_combout\);

-- Location: LCCOMB_X14_Y5_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~90_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~75_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[16]~26_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[447]~75_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~90_combout\);

-- Location: LCCOMB_X14_Y5_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~91_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~76_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[446]~76_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[15]~24_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~91_combout\);

-- Location: LCCOMB_X14_Y5_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~93_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~78_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[444]~78_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[13]~20_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~93_combout\);

-- Location: LCCOMB_X14_Y5_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~95_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~80_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[442]~80_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[11]~16_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~95_combout\);

-- Location: LCCOMB_X14_Y6_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~96_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~81_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[441]~81_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[10]~14_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~96_combout\);

-- Location: LCCOMB_X14_Y6_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~98_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~83_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[439]~83_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[8]~10_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~98_combout\);

-- Location: LCCOMB_X15_Y6_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~85_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~71_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[412]~71_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[5]~4_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~85_combout\);

-- Location: LCCOMB_X14_Y6_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~100_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~85_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[437]~85_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[6]~6_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~100_combout\);

-- Location: LCCOMB_X14_Y6_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~101_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~86_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[436]~86_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[5]~4_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~101_combout\);

-- Location: LCCOMB_X14_Y6_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~1_cout\ = CARRY(\U_Ranger_Top|edgebegin\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(6),
	datad => VCC,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[3]~1_cout\);

-- Location: LCCOMB_X14_Y6_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~101_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~5\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~101_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~5\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~7\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~5\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~101_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~5\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~6_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~7\);

-- Location: LCCOMB_X14_Y6_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~100_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~7\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~100_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~7\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~9\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~100_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~100_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~7\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~8_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~9\);

-- Location: LCCOMB_X14_Y6_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~99_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~9\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~99_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~9\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~11\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~99_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~99_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~9\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~10_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~11\);

-- Location: LCCOMB_X14_Y6_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~96_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~15\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~96_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~15\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~17\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~96_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~96_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~15\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~16_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~17\);

-- Location: LCCOMB_X14_Y5_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~18_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~95_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~17\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~95_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~17\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~19\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~17\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~95_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~17\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~18_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~19\);

-- Location: LCCOMB_X14_Y5_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~20_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~94_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~19\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~94_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~19\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~21\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~94_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~94_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~19\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~20_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~21\);

-- Location: LCCOMB_X14_Y5_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~22_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~93_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~21\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~93_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~21\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~23\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~93_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~93_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~21\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~22_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~23\);

-- Location: LCCOMB_X14_Y5_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~24_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~92_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~23\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~92_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~23\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~25\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~92_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~92_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~23\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~24_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~25\);

-- Location: LCCOMB_X14_Y5_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~26_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~91_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~25\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~91_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~25\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~27\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~91_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~91_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~25\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~26_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~27\);

-- Location: LCCOMB_X14_Y5_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~28_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~90_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~27\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~90_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~27\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~29\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~90_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~90_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~27\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~28_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~29\);

-- Location: LCCOMB_X14_Y5_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~30_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~89_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~29\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~89_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~29\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~31\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~89_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~89_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~29\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~30_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~31\);

-- Location: LCCOMB_X14_Y5_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~32_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~88_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~31\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~88_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~31\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~33\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~88_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~88_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~31\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~32_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~33\);

-- Location: LCCOMB_X17_Y7_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~87_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~72_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[450]~72_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[475]~87_combout\);

-- Location: LCCOMB_X14_Y5_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ = \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~35\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[20]~35\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\);

-- Location: LCCOMB_X15_Y7_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~104_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~88_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[474]~88_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~104_combout\);

-- Location: LCCOMB_X15_Y7_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~89_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~74_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[448]~74_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[17]~28_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~89_combout\);

-- Location: LCCOMB_X15_Y7_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~105_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~89_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[473]~89_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[18]~30_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~105_combout\);

-- Location: LCCOMB_X13_Y7_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~106_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~90_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[472]~90_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[17]~28_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~106_combout\);

-- Location: LCCOMB_X13_Y7_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~107_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~91_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[471]~91_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[16]~26_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~107_combout\);

-- Location: LCCOMB_X13_Y7_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~109_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~93_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[469]~93_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[14]~22_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[494]~109_combout\);

-- Location: LCCOMB_X13_Y7_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~111_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~95_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[12]~18_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[467]~95_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~111_combout\);

-- Location: LCCOMB_X14_Y6_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~112_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~96_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[466]~96_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[11]~16_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~112_combout\);

-- Location: LCCOMB_X15_Y6_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~82_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~68_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[415]~68_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[8]~10_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~82_combout\);

-- Location: LCCOMB_X14_Y6_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~97_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~82_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[440]~82_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[9]~12_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~97_combout\);

-- Location: LCCOMB_X15_Y8_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~113_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~97_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[10]~14_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[465]~97_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~113_combout\);

-- Location: LCCOMB_X13_Y8_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~114_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~98_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[9]~12_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[464]~98_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~114_combout\);

-- Location: LCCOMB_X14_Y6_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~99_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~84_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[438]~84_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[7]~8_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~99_combout\);

-- Location: LCCOMB_X13_Y8_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~115_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~99_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[463]~99_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[8]~10_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~115_combout\);

-- Location: LCCOMB_X13_Y8_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~116_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~100_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[462]~100_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[7]~8_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~116_combout\);

-- Location: LCCOMB_X15_Y5_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~102_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ $ ((\U_Ranger_Top|edgebegin\(8))))) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & (((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datab => \U_Ranger_Top|edgebegin\(8),
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[4]~2_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~102_combout\);

-- Location: LCCOMB_X13_Y8_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~118_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~102_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[5]~4_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[460]~102_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~118_combout\);

-- Location: LCCOMB_X13_Y8_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~1_cout\ = CARRY(\U_Ranger_Top|edgebegin\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(5),
	datad => VCC,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[3]~1_cout\);

-- Location: LCCOMB_X13_Y8_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~119_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~3\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~119_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~3\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~5\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~119_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~119_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[4]~3\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~4_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~5\);

-- Location: LCCOMB_X13_Y8_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~118_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~5\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~118_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~5\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~7\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~5\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~118_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~5\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~6_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~7\);

-- Location: LCCOMB_X13_Y8_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~117_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~7\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~117_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~7\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~9\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~117_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~117_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~7\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~8_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~9\);

-- Location: LCCOMB_X13_Y8_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~116_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~9\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~116_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~9\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~11\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~116_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~116_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~9\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~10_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~11\);

-- Location: LCCOMB_X13_Y8_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~12_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~115_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~11\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~115_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~11\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~13\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~115_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~115_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~11\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~12_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~13\);

-- Location: LCCOMB_X13_Y8_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~14_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~114_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~13\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~114_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~13\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~15\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~13\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~114_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~13\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~14_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~15\);

-- Location: LCCOMB_X13_Y8_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~113_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~15\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~113_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~15\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~17\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~113_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~113_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~15\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~16_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~17\);

-- Location: LCCOMB_X13_Y8_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~18_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~112_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~17\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~112_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~17\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~19\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~17\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~112_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~17\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~18_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~19\);

-- Location: LCCOMB_X13_Y7_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~20_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~111_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~19\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~111_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~19\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~21\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~111_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~111_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~19\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~20_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~21\);

-- Location: LCCOMB_X13_Y7_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~22_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~110_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~21\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~110_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~21\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~23\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~110_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~110_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~21\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~22_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~23\);

-- Location: LCCOMB_X13_Y7_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~26_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~108_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~25\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~108_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~25\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~27\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~108_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~108_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[15]~25\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~26_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~27\);

-- Location: LCCOMB_X13_Y7_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~28_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~107_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~27\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~107_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~27\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~29\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~107_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~107_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~27\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~28_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~29\);

-- Location: LCCOMB_X13_Y7_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~30_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~106_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~29\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~106_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~29\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~31\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~106_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~106_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~29\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~30_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~31\);

-- Location: LCCOMB_X13_Y7_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~32_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~105_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~31\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~105_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~31\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~33\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~105_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~105_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~31\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~32_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~33\);

-- Location: LCCOMB_X13_Y7_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~34_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~104_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~33\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~104_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~33\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~35\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~104_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~104_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~33\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~34_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~35\);

-- Location: LCCOMB_X13_Y7_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~36_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~103_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~35\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~103_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~35\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~37\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~103_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~103_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~35\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~36_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~37\);

-- Location: LCCOMB_X13_Y7_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ = !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~37\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~37\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\);

-- Location: LCCOMB_X17_Y7_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~120_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~103_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[500]~103_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~120_combout\);

-- Location: LCCOMB_X15_Y7_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~121_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~104_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[499]~104_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[20]~34_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~121_combout\);

-- Location: LCCOMB_X15_Y7_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~122_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~105_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[498]~105_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[19]~32_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~122_combout\);

-- Location: LCCOMB_X15_Y7_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~123_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~106_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[18]~30_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[497]~106_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~123_combout\);

-- Location: LCCOMB_X15_Y7_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~124_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~107_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[496]~107_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[17]~28_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~124_combout\);

-- Location: LCCOMB_X15_Y5_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~77_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~63_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[420]~63_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[13]~20_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~77_combout\);

-- Location: LCCOMB_X14_Y5_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~92_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~77_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[445]~77_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~92_combout\);

-- Location: LCCOMB_X13_Y7_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~108_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~92_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[470]~92_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[15]~24_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~108_combout\);

-- Location: LCCOMB_X14_Y7_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~125_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~108_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[495]~108_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[16]~26_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~125_combout\);

-- Location: LCCOMB_X13_Y7_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~110_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~94_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[468]~94_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[13]~20_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~110_combout\);

-- Location: LCCOMB_X14_Y7_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~127_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~110_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[493]~110_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[14]~22_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~127_combout\);

-- Location: LCCOMB_X14_Y7_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~128_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~111_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[492]~111_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[13]~20_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~128_combout\);

-- Location: LCCOMB_X14_Y7_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~129_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~112_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[491]~112_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[12]~18_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~129_combout\);

-- Location: LCCOMB_X15_Y8_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~130_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~113_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[490]~113_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[11]~16_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~130_combout\);

-- Location: LCCOMB_X15_Y8_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~131_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~114_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[489]~114_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[10]~14_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[514]~131_combout\);

-- Location: LCCOMB_X14_Y8_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~132_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~115_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[488]~115_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[9]~12_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~132_combout\);

-- Location: LCCOMB_X14_Y8_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~133_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~116_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[8]~10_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[487]~116_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~133_combout\);

-- Location: LCCOMB_X13_Y8_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~117_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~101_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[461]~101_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[6]~6_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~117_combout\);

-- Location: LCCOMB_X14_Y8_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~134_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~117_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[486]~117_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[7]~8_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~134_combout\);

-- Location: LCCOMB_X14_Y8_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~136_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~119_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[484]~119_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[5]~4_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~136_combout\);

-- Location: LCFF_X13_Y8_N13
\U_Ranger_Top|edgebegin[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(5),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(5));

-- Location: LCCOMB_X14_Y8_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~1_cout\ = CARRY(\U_Ranger_Top|edgebegin\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|edgebegin\(4),
	datad => VCC,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~1_cout\);

-- Location: LCCOMB_X14_Y8_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~1_cout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ $ (!\U_Ranger_Top|edgebegin\(5))))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~1_cout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ $ ((\U_Ranger_Top|edgebegin\(5)))))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~3\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~1_cout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ $ (\U_Ranger_Top|edgebegin\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	datab => \U_Ranger_Top|edgebegin\(5),
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[3]~1_cout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~2_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~3\);

-- Location: LCCOMB_X14_Y8_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~137_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~3\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~137_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~3\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~5\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~137_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~137_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~3\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~4_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~5\);

-- Location: LCCOMB_X14_Y8_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~136_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~5\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~136_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~5\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~7\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~5\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~136_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~5\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~6_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~7\);

-- Location: LCCOMB_X14_Y8_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~135_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~7\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~135_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~7\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~9\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~135_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~135_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~7\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~8_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~9\);

-- Location: LCCOMB_X14_Y8_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~134_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~9\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~134_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~9\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~11\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~134_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~134_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~9\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~10_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~11\);

-- Location: LCCOMB_X14_Y8_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~12_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~133_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~11\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~133_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~11\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~13\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~133_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~133_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~11\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~12_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~13\);

-- Location: LCCOMB_X14_Y8_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~14_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~132_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~13\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~132_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~13\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~15\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~13\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~132_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~13\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~14_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~15\);

-- Location: LCCOMB_X14_Y8_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~18_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~130_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~17\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~130_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~17\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~19\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~17\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~130_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[11]~17\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~18_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~19\);

-- Location: LCCOMB_X14_Y7_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~20_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~129_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~19\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~129_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~19\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~21\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~129_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~129_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~19\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~20_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~21\);

-- Location: LCCOMB_X14_Y7_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~22_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~128_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~21\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~128_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~21\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~23\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~128_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~128_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~21\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~22_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~23\);

-- Location: LCCOMB_X14_Y7_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~26_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~126_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~25\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~126_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~25\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~27\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~126_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~126_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~25\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~26_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~27\);

-- Location: LCCOMB_X14_Y7_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~28_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~125_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~27\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~125_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~27\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~29\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~125_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~125_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~27\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~28_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~29\);

-- Location: LCCOMB_X14_Y7_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~30_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~124_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~29\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~124_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~29\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~31\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~124_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~124_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~29\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~30_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~31\);

-- Location: LCCOMB_X14_Y7_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~32_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~123_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~31\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~123_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~31\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~33\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~123_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~123_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~31\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~32_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~33\);

-- Location: LCCOMB_X14_Y7_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~34_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~122_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~33\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~122_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~33\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~35\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~122_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~122_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~33\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~34_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~35\);

-- Location: LCCOMB_X14_Y7_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~36_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~121_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~35\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~121_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~35\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~37\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~121_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~121_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~35\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~36_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~37\);

-- Location: LCCOMB_X14_Y7_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~38_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~120_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~37\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~120_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~37\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~39\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~120_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~120_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~37\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~38_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~39\);

-- Location: LCCOMB_X14_Y7_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ = \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~39\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~39\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\);

-- Location: LCCOMB_X15_Y9_N24
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~148_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~128_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[14]~22_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[517]~128_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~148_combout\);

-- Location: LCCOMB_X15_Y8_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~138_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~130_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[515]~130_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[12]~18_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~138_combout\);

-- Location: LCCOMB_X15_Y8_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~140_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~132_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[10]~14_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[513]~132_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~140_combout\);

-- Location: LCCOMB_X15_Y8_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~141_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~133_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[512]~133_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[9]~12_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~141_combout\);

-- Location: LCCOMB_X14_Y8_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~135_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~118_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[6]~6_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[485]~118_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~135_combout\);

-- Location: LCCOMB_X15_Y10_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~143_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~135_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[510]~135_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[7]~8_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~143_combout\);

-- Location: LCCOMB_X15_Y10_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~146_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ $ ((!\U_Ranger_Top|edgebegin\(5))))) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & (((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	datab => \U_Ranger_Top|edgebegin\(5),
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[4]~2_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~146_combout\);

-- Location: LCCOMB_X15_Y10_N6
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~145_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~137_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[508]~137_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[5]~4_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~145_combout\);

-- Location: LCCOMB_X15_Y10_N4
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~144_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~136_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[509]~136_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[6]~6_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~144_combout\);

-- Location: LCCOMB_X15_Y8_N18
\U_Ranger_Top|LessThan2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~14_combout\ = (\U_Ranger_Top|LessThan2~13_combout\) # ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~146_combout\) # 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~145_combout\) # (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|LessThan2~13_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~146_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~145_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~144_combout\,
	combout => \U_Ranger_Top|LessThan2~14_combout\);

-- Location: LCCOMB_X15_Y8_N28
\U_Ranger_Top|LessThan2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~15_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~142_combout\) # ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~141_combout\) # 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~143_combout\) # (\U_Ranger_Top|LessThan2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~142_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[537]~141_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~143_combout\,
	datad => \U_Ranger_Top|LessThan2~14_combout\,
	combout => \U_Ranger_Top|LessThan2~15_combout\);

-- Location: LCCOMB_X15_Y8_N14
\U_Ranger_Top|LessThan2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~138_combout\) # ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~139_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~140_combout\) # (\U_Ranger_Top|LessThan2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~139_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[540]~138_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~140_combout\,
	datad => \U_Ranger_Top|LessThan2~15_combout\,
	combout => \U_Ranger_Top|LessThan2~16_combout\);

-- Location: LCCOMB_X15_Y9_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~149_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~127_combout\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[15]~24_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[518]~127_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~149_combout\);

-- Location: LCCOMB_X15_Y8_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~152_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~124_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[521]~124_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[18]~30_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~152_combout\);

-- Location: LCCOMB_X15_Y9_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~150_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~126_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[519]~126_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[16]~26_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~150_combout\);

-- Location: LCCOMB_X16_Y9_N8
\U_Ranger_Top|LessThan2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~151_combout\) # ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~149_combout\) # 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~152_combout\) # (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~151_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[543]~149_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~152_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[544]~150_combout\,
	combout => \U_Ranger_Top|LessThan2~10_combout\);

-- Location: LCCOMB_X17_Y7_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~156_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~120_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[525]~120_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[22]~38_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~156_combout\);

-- Location: LCCOMB_X15_Y7_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~154_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~122_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[523]~122_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[20]~34_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~154_combout\);

-- Location: LCCOMB_X15_Y7_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~155_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~121_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[524]~121_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[21]~36_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~155_combout\);

-- Location: LCCOMB_X17_Y7_N2
\U_Ranger_Top|LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~9_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~153_combout\) # ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~156_combout\) # 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~154_combout\) # (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~153_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~156_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~154_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~155_combout\,
	combout => \U_Ranger_Top|LessThan2~9_combout\);

-- Location: LCCOMB_X17_Y7_N28
\U_Ranger_Top|LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~11_combout\ = (\U_Ranger_Top|LessThan2~10_combout\) # (\U_Ranger_Top|LessThan2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Ranger_Top|LessThan2~10_combout\,
	datad => \U_Ranger_Top|LessThan2~9_combout\,
	combout => \U_Ranger_Top|LessThan2~11_combout\);

-- Location: LCCOMB_X14_Y9_N28
\U_Ranger_Top|LessThan2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~17_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~147_combout\) # ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~148_combout\) # 
-- ((\U_Ranger_Top|LessThan2~16_combout\) # (\U_Ranger_Top|LessThan2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~147_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[542]~148_combout\,
	datac => \U_Ranger_Top|LessThan2~16_combout\,
	datad => \U_Ranger_Top|LessThan2~11_combout\,
	combout => \U_Ranger_Top|LessThan2~17_combout\);

-- Location: LCCOMB_X15_Y7_N2
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~153_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~123_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[522]~123_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[19]~32_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~153_combout\);

-- Location: LCCOMB_X15_Y9_N30
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~151_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~125_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[520]~125_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[17]~28_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~151_combout\);

-- Location: LCCOMB_X15_Y9_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~147_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~129_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[516]~129_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[13]~20_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[541]~147_combout\);

-- Location: LCCOMB_X15_Y10_N0
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~142_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~134_combout\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[511]~134_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[8]~10_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~142_combout\);

-- Location: LCFF_X15_Y8_N31
\U_Ranger_Top|edgebegin[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_Ranger_Top|count\(3),
	sload => VCC,
	ena => \U_Ranger_Top|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|edgebegin\(3));

-- Location: LCCOMB_X15_Y10_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~1_cout\ = CARRY(\U_Ranger_Top|edgebegin\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|edgebegin\(3),
	datad => VCC,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[3]~1_cout\);

-- Location: LCCOMB_X15_Y10_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~146_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~3\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~146_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~3\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~5\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~146_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[532]~146_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~3\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~4_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~5\);

-- Location: LCCOMB_X15_Y10_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~145_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~5\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~145_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~5\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~7\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~5\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[533]~145_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~5\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~6_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~7\);

-- Location: LCCOMB_X15_Y10_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~144_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~7\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~144_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~7\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~9\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~144_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[534]~144_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~7\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~8_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~9\);

-- Location: LCCOMB_X15_Y10_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~143_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~9\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~143_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~9\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~11\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~143_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[535]~143_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~9\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~10_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~11\);

-- Location: LCCOMB_X15_Y10_N22
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~12_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~142_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~11\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~142_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~11\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~13\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~142_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[536]~142_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~11\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~12_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~13\);

-- Location: LCCOMB_X15_Y10_N26
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~16_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~140_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~15\ $ (GND))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~140_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~15\ & VCC))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~17\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~140_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[538]~140_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~15\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~16_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~17\);

-- Location: LCCOMB_X15_Y10_N28
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~18_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~139_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~17\)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~139_combout\ & 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~17\) # (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~19\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~17\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[539]~139_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~17\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~18_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~19\);

-- Location: LCCOMB_X15_Y9_N8
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~30_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~151_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~29\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~151_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~29\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~31\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~151_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[545]~151_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~29\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~30_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~31\);

-- Location: LCCOMB_X15_Y9_N10
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~32_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~152_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~31\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~152_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~31\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~33\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~152_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[546]~152_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~31\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~32_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~33\);

-- Location: LCCOMB_X15_Y9_N12
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~34_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~153_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~33\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~153_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~33\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~35\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~153_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[547]~153_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~33\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~34_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~35\);

-- Location: LCCOMB_X15_Y9_N14
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~36_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~154_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~35\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~154_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~35\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~37\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~154_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[548]~154_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~35\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~36_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~37\);

-- Location: LCCOMB_X15_Y9_N16
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~38_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~155_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~37\ & VCC)) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~155_combout\ & 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~37\))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~39\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~155_combout\ & 
-- !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[549]~155_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~37\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~38_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~39\);

-- Location: LCCOMB_X15_Y9_N18
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~40_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~156_combout\ & ((GND) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~39\))) # (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~156_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~39\ $ (GND)))
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~41\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~156_combout\) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[550]~156_combout\,
	datad => VCC,
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~39\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~40_combout\,
	cout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~41\);

-- Location: LCCOMB_X15_Y9_N20
\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\ = !\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~41\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~41\,
	combout => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\);

-- Location: LCCOMB_X14_Y9_N20
\U_Ranger_Top|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~2_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~36_combout\) # 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~38_combout\) # (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[21]~36_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[22]~38_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[23]~40_combout\,
	combout => \U_Ranger_Top|LessThan2~2_combout\);

-- Location: LCCOMB_X14_Y9_N26
\U_Ranger_Top|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~1_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~28_combout\) # 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~30_combout\) # ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~34_combout\) # 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[17]~28_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[18]~30_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[20]~34_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[19]~32_combout\,
	combout => \U_Ranger_Top|LessThan2~1_combout\);

-- Location: LCCOMB_X14_Y9_N30
\U_Ranger_Top|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~3_combout\ = (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\ & ((\U_Ranger_Top|LessThan2~0_combout\) # ((\U_Ranger_Top|LessThan2~2_combout\) # 
-- (\U_Ranger_Top|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|LessThan2~0_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\,
	datac => \U_Ranger_Top|LessThan2~2_combout\,
	datad => \U_Ranger_Top|LessThan2~1_combout\,
	combout => \U_Ranger_Top|LessThan2~3_combout\);

-- Location: LCCOMB_X14_Y10_N16
\U_Ranger_Top|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~5_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~2_combout\) # ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~4_combout\) 
-- # ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~6_combout\) # (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[4]~2_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[5]~4_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[6]~6_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[7]~8_combout\,
	combout => \U_Ranger_Top|LessThan2~5_combout\);

-- Location: LCCOMB_X16_Y10_N8
\U_Ranger_Top|LessThan2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~10_combout\) # 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[8]~10_combout\,
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[9]~12_combout\,
	combout => \U_Ranger_Top|LessThan2~6_combout\);

-- Location: LCCOMB_X14_Y9_N0
\U_Ranger_Top|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~7_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~14_combout\) # ((\U_Ranger_Top|LessThan2~5_combout\) # 
-- ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~16_combout\) # (\U_Ranger_Top|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[10]~14_combout\,
	datab => \U_Ranger_Top|LessThan2~5_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[11]~16_combout\,
	datad => \U_Ranger_Top|LessThan2~6_combout\,
	combout => \U_Ranger_Top|LessThan2~7_combout\);

-- Location: LCCOMB_X14_Y9_N2
\U_Ranger_Top|LessThan2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~8_combout\ = (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\ & 
-- (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~18_combout\ & ((\U_Ranger_Top|LessThan2~4_combout\) # (\U_Ranger_Top|LessThan2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|LessThan2~4_combout\,
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\,
	datac => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[12]~18_combout\,
	datad => \U_Ranger_Top|LessThan2~7_combout\,
	combout => \U_Ranger_Top|LessThan2~8_combout\);

-- Location: LCCOMB_X14_Y9_N22
\U_Ranger_Top|LessThan2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan2~18_combout\ = (\U_Ranger_Top|LessThan2~3_combout\) # ((\U_Ranger_Top|LessThan2~8_combout\) # ((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\ & 
-- \U_Ranger_Top|LessThan2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\,
	datab => \U_Ranger_Top|LessThan2~17_combout\,
	datac => \U_Ranger_Top|LessThan2~3_combout\,
	datad => \U_Ranger_Top|LessThan2~8_combout\,
	combout => \U_Ranger_Top|LessThan2~18_combout\);

-- Location: LCCOMB_X14_Y9_N4
\BLED_Orange[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Orange[0]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\ & (\U_Ranger_Top|LessThan2~18_combout\ & VCC)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\ & (\U_Ranger_Top|LessThan2~18_combout\ $ (VCC)))
-- \BLED_Orange[0]~5\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\ & \U_Ranger_Top|LessThan2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_23_result_int[24]~42_combout\,
	datab => \U_Ranger_Top|LessThan2~18_combout\,
	datad => VCC,
	combout => \BLED_Orange[0]~4_combout\,
	cout => \BLED_Orange[0]~5\);

-- Location: LCCOMB_X14_Y9_N6
\BLED_Orange[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Orange[1]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & ((\BLED_Orange[0]~5\) # (GND))) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\ & (!\BLED_Orange[0]~5\))
-- \BLED_Orange[1]~7\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\) # (!\BLED_Orange[0]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_22_result_int[23]~40_combout\,
	datad => VCC,
	cin => \BLED_Orange[0]~5\,
	combout => \BLED_Orange[1]~6_combout\,
	cout => \BLED_Orange[1]~7\);

-- Location: LCCOMB_X14_Y9_N8
\BLED_Orange[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Orange[2]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & (!\BLED_Orange[1]~7\ & VCC)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & (\BLED_Orange[1]~7\ $ (GND)))
-- \BLED_Orange[2]~9\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\ & !\BLED_Orange[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_21_result_int[22]~38_combout\,
	datad => VCC,
	cin => \BLED_Orange[1]~7\,
	combout => \BLED_Orange[2]~8_combout\,
	cout => \BLED_Orange[2]~9\);

-- Location: LCCOMB_X14_Y9_N10
\BLED_Orange[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Orange[3]~10_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & ((\BLED_Orange[2]~9\) # (GND))) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\ & (!\BLED_Orange[2]~9\))
-- \BLED_Orange[3]~11\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\) # (!\BLED_Orange[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_20_result_int[21]~36_combout\,
	datad => VCC,
	cin => \BLED_Orange[2]~9\,
	combout => \BLED_Orange[3]~10_combout\,
	cout => \BLED_Orange[3]~11\);

-- Location: LCCOMB_X14_Y9_N12
\BLED_Blue[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Blue[0]~4_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & (!\BLED_Orange[3]~11\ & VCC)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & (\BLED_Orange[3]~11\ $ (GND)))
-- \BLED_Blue[0]~5\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\ & !\BLED_Orange[3]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_19_result_int[20]~34_combout\,
	datad => VCC,
	cin => \BLED_Orange[3]~11\,
	combout => \BLED_Blue[0]~4_combout\,
	cout => \BLED_Blue[0]~5\);

-- Location: LCFF_X14_Y9_N13
\BLED_Blue[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Blue[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Blue[0]~reg0_regout\);

-- Location: LCCOMB_X14_Y9_N14
\BLED_Blue[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Blue[1]~6_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & ((\BLED_Blue[0]~5\) # (GND))) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\ & (!\BLED_Blue[0]~5\))
-- \BLED_Blue[1]~7\ = CARRY((\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\) # (!\BLED_Blue[0]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_18_result_int[19]~32_combout\,
	datad => VCC,
	cin => \BLED_Blue[0]~5\,
	combout => \BLED_Blue[1]~6_combout\,
	cout => \BLED_Blue[1]~7\);

-- Location: LCFF_X14_Y9_N15
\BLED_Blue[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Blue[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Blue[1]~reg0_regout\);

-- Location: LCCOMB_X14_Y9_N16
\BLED_Blue[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Blue[2]~8_combout\ = (\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & (!\BLED_Blue[1]~7\ & VCC)) # 
-- (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & (\BLED_Blue[1]~7\ $ (GND)))
-- \BLED_Blue[2]~9\ = CARRY((!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\ & !\BLED_Blue[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_17_result_int[18]~30_combout\,
	datad => VCC,
	cin => \BLED_Blue[1]~7\,
	combout => \BLED_Blue[2]~8_combout\,
	cout => \BLED_Blue[2]~9\);

-- Location: LCFF_X14_Y9_N17
\BLED_Blue[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Blue[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Blue[2]~reg0_regout\);

-- Location: LCCOMB_X14_Y9_N18
\BLED_Blue[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Blue[3]~10_combout\ = \BLED_Blue[2]~9\ $ (!\U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_Ranger_Top|Div|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_16_result_int[17]~28_combout\,
	cin => \BLED_Blue[2]~9\,
	combout => \BLED_Blue[3]~10_combout\);

-- Location: LCFF_X14_Y9_N19
\BLED_Blue[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Blue[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Blue[3]~reg0_regout\);

-- Location: LCFF_X14_Y9_N5
\BLED_Orange[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Orange[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Orange[0]~reg0_regout\);

-- Location: LCFF_X14_Y9_N7
\BLED_Orange[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Orange[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Orange[1]~reg0_regout\);

-- Location: LCFF_X14_Y9_N9
\BLED_Orange[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Orange[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Orange[2]~reg0_regout\);

-- Location: LCFF_X14_Y9_N11
\BLED_Orange[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Orange[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Orange[3]~reg0_regout\);

-- Location: LCFF_X3_Y16_N17
\U_PICSPI_Slave|SSELr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_PICSPI_Slave|SSELr\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SSELr\(2));

-- Location: LCCOMB_X4_Y16_N4
\U_PICSPI_Slave|cnt[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[0]~21_combout\ = \U_PICSPI_Slave|cnt\(0) $ (((!\U_PICSPI_Slave|SSELr\(1) & \U_PICSPI_Slave|SSELr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|SSELr\(1),
	datac => \U_PICSPI_Slave|cnt\(0),
	datad => \U_PICSPI_Slave|SSELr\(2),
	combout => \U_PICSPI_Slave|cnt[0]~21_combout\);

-- Location: LCFF_X4_Y16_N5
\U_PICSPI_Slave|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(0));

-- Location: LCCOMB_X4_Y16_N8
\U_PICSPI_Slave|cnt[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[2]~9_combout\ = (\U_PICSPI_Slave|cnt\(2) & (!\U_PICSPI_Slave|cnt[1]~8\)) # (!\U_PICSPI_Slave|cnt\(2) & ((\U_PICSPI_Slave|cnt[1]~8\) # (GND)))
-- \U_PICSPI_Slave|cnt[2]~10\ = CARRY((!\U_PICSPI_Slave|cnt[1]~8\) # (!\U_PICSPI_Slave|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|cnt\(2),
	datad => VCC,
	cin => \U_PICSPI_Slave|cnt[1]~8\,
	combout => \U_PICSPI_Slave|cnt[2]~9_combout\,
	cout => \U_PICSPI_Slave|cnt[2]~10\);

-- Location: LCCOMB_X3_Y16_N30
\U_PICSPI_Slave|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|Equal2~0_combout\ = (\U_PICSPI_Slave|SSELr\(2) & !\U_PICSPI_Slave|SSELr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_PICSPI_Slave|SSELr\(2),
	datad => \U_PICSPI_Slave|SSELr\(1),
	combout => \U_PICSPI_Slave|Equal2~0_combout\);

-- Location: LCFF_X4_Y16_N9
\U_PICSPI_Slave|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[2]~9_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(2));

-- Location: LCCOMB_X4_Y16_N14
\U_PICSPI_Slave|cnt[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[5]~15_combout\ = (\U_PICSPI_Slave|cnt\(5) & (\U_PICSPI_Slave|cnt[4]~14\ $ (GND))) # (!\U_PICSPI_Slave|cnt\(5) & (!\U_PICSPI_Slave|cnt[4]~14\ & VCC))
-- \U_PICSPI_Slave|cnt[5]~16\ = CARRY((\U_PICSPI_Slave|cnt\(5) & !\U_PICSPI_Slave|cnt[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|cnt\(5),
	datad => VCC,
	cin => \U_PICSPI_Slave|cnt[4]~14\,
	combout => \U_PICSPI_Slave|cnt[5]~15_combout\,
	cout => \U_PICSPI_Slave|cnt[5]~16\);

-- Location: LCFF_X4_Y16_N15
\U_PICSPI_Slave|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[5]~15_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(5));

-- Location: LCCOMB_X4_Y16_N18
\U_PICSPI_Slave|cnt[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[7]~19_combout\ = \U_PICSPI_Slave|cnt[6]~18\ $ (!\U_PICSPI_Slave|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_PICSPI_Slave|cnt\(7),
	cin => \U_PICSPI_Slave|cnt[6]~18\,
	combout => \U_PICSPI_Slave|cnt[7]~19_combout\);

-- Location: LCFF_X4_Y16_N19
\U_PICSPI_Slave|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[7]~19_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(7));

-- Location: LCCOMB_X3_Y16_N10
\U_PICSPI_Slave|byte_data_sent~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~0_combout\ = (\U_PICSPI_Slave|Equal2~0_combout\) # ((!\U_PICSPI_Slave|bitcnt\(0) & (!\U_PICSPI_Slave|bitcnt\(1) & !\U_PICSPI_Slave|bitcnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|bitcnt\(0),
	datab => \U_PICSPI_Slave|bitcnt\(1),
	datac => \U_PICSPI_Slave|bitcnt\(2),
	datad => \U_PICSPI_Slave|Equal2~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~0_combout\);

-- Location: LCCOMB_X3_Y16_N0
\U_PICSPI_Slave|byte_data_sent~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~1_combout\ = (\U_PICSPI_Slave|byte_data_sent\(6) & (((\U_PICSPI_Slave|cnt\(7) & \U_PICSPI_Slave|Equal2~0_combout\)) # (!\U_PICSPI_Slave|byte_data_sent~0_combout\))) # (!\U_PICSPI_Slave|byte_data_sent\(6) & 
-- (\U_PICSPI_Slave|cnt\(7) & (\U_PICSPI_Slave|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|byte_data_sent\(6),
	datab => \U_PICSPI_Slave|cnt\(7),
	datac => \U_PICSPI_Slave|Equal2~0_combout\,
	datad => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~1_combout\);

-- Location: LCCOMB_X3_Y16_N18
\U_PICSPI_Slave|byte_data_sent[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent[0]~2_combout\ = (!\U_PICSPI_Slave|SSELr\(1) & ((\U_PICSPI_Slave|SSELr\(2)) # ((\U_PICSPI_Slave|SCKr\(2) & !\U_PICSPI_Slave|SCKr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|SSELr\(2),
	datab => \U_PICSPI_Slave|SSELr\(1),
	datac => \U_PICSPI_Slave|SCKr\(2),
	datad => \U_PICSPI_Slave|SCKr\(1),
	combout => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\);

-- Location: LCFF_X3_Y16_N1
\U_PICSPI_Slave|byte_data_sent[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~1_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(7));

-- Location: LCCOMB_X8_Y17_N24
\U_PICSPI_Slave|MISO~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|MISO~feeder_combout\ = \U_PICSPI_Slave|byte_data_sent\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_PICSPI_Slave|byte_data_sent\(7),
	combout => \U_PICSPI_Slave|MISO~feeder_combout\);

-- Location: LCFF_X8_Y17_N25
\U_PICSPI_Slave|MISO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|MISO~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|MISO~regout\);

-- Location: LCCOMB_X17_Y9_N2
\U_Ranger_Top|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan1~0_combout\ = (\U_Ranger_Top|count\(22)) # ((\U_Ranger_Top|count\(23)) # ((\U_Ranger_Top|count\(8)) # (\U_Ranger_Top|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(22),
	datab => \U_Ranger_Top|count\(23),
	datac => \U_Ranger_Top|count\(8),
	datad => \U_Ranger_Top|count\(21),
	combout => \U_Ranger_Top|LessThan1~0_combout\);

-- Location: LCCOMB_X17_Y9_N4
\U_Ranger_Top|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan1~1_combout\ = (\U_Ranger_Top|count\(9)) # ((\U_Ranger_Top|count\(11)) # ((\U_Ranger_Top|count\(12)) # (\U_Ranger_Top|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(9),
	datab => \U_Ranger_Top|count\(11),
	datac => \U_Ranger_Top|count\(12),
	datad => \U_Ranger_Top|count\(10),
	combout => \U_Ranger_Top|LessThan1~1_combout\);

-- Location: LCCOMB_X17_Y8_N24
\U_Ranger_Top|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan1~2_combout\ = (\U_Ranger_Top|count\(15)) # ((\U_Ranger_Top|count\(16)) # ((\U_Ranger_Top|count\(14)) # (\U_Ranger_Top|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|count\(15),
	datab => \U_Ranger_Top|count\(16),
	datac => \U_Ranger_Top|count\(14),
	datad => \U_Ranger_Top|count\(13),
	combout => \U_Ranger_Top|LessThan1~2_combout\);

-- Location: LCCOMB_X17_Y9_N0
\U_Ranger_Top|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_Ranger_Top|LessThan1~4_combout\ = (!\U_Ranger_Top|LessThan1~3_combout\ & (!\U_Ranger_Top|LessThan1~0_combout\ & (!\U_Ranger_Top|LessThan1~1_combout\ & !\U_Ranger_Top|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ranger_Top|LessThan1~3_combout\,
	datab => \U_Ranger_Top|LessThan1~0_combout\,
	datac => \U_Ranger_Top|LessThan1~1_combout\,
	datad => \U_Ranger_Top|LessThan1~2_combout\,
	combout => \U_Ranger_Top|LessThan1~4_combout\);

-- Location: LCFF_X17_Y9_N1
\U_Ranger_Top|trigger\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_Ranger_Top|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_Ranger_Top|trigger~regout\);

-- Location: LCCOMB_X6_Y16_N0
\Motor_1|pulsecount[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[1]~11_combout\ = (\Motor_1|pulsecount\(0) & (\Motor_1|pulsecount\(1) $ (VCC))) # (!\Motor_1|pulsecount\(0) & (\Motor_1|pulsecount\(1) & VCC))
-- \Motor_1|pulsecount[1]~12\ = CARRY((\Motor_1|pulsecount\(0) & \Motor_1|pulsecount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(0),
	datab => \Motor_1|pulsecount\(1),
	datad => VCC,
	combout => \Motor_1|pulsecount[1]~11_combout\,
	cout => \Motor_1|pulsecount[1]~12\);

-- Location: LCCOMB_X10_Y16_N18
\Motor_1|clockcount[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[0]~7_combout\ = \Motor_1|clockcount\(0) $ (VCC)
-- \Motor_1|clockcount[0]~8\ = CARRY(\Motor_1|clockcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|clockcount\(0),
	datad => VCC,
	combout => \Motor_1|clockcount[0]~7_combout\,
	cout => \Motor_1|clockcount[0]~8\);

-- Location: LCFF_X10_Y16_N19
\Motor_1|clockcount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[0]~7_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(0));

-- Location: LCCOMB_X10_Y16_N22
\Motor_1|clockcount[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[2]~11_combout\ = (\Motor_1|clockcount\(2) & (\Motor_1|clockcount[1]~10\ $ (GND))) # (!\Motor_1|clockcount\(2) & (!\Motor_1|clockcount[1]~10\ & VCC))
-- \Motor_1|clockcount[2]~12\ = CARRY((\Motor_1|clockcount\(2) & !\Motor_1|clockcount[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|clockcount\(2),
	datad => VCC,
	cin => \Motor_1|clockcount[1]~10\,
	combout => \Motor_1|clockcount[2]~11_combout\,
	cout => \Motor_1|clockcount[2]~12\);

-- Location: LCFF_X10_Y16_N23
\Motor_1|clockcount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[2]~11_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(2));

-- Location: LCCOMB_X10_Y16_N24
\Motor_1|clockcount[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[3]~13_combout\ = (\Motor_1|clockcount\(3) & (!\Motor_1|clockcount[2]~12\)) # (!\Motor_1|clockcount\(3) & ((\Motor_1|clockcount[2]~12\) # (GND)))
-- \Motor_1|clockcount[3]~14\ = CARRY((!\Motor_1|clockcount[2]~12\) # (!\Motor_1|clockcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|clockcount\(3),
	datad => VCC,
	cin => \Motor_1|clockcount[2]~12\,
	combout => \Motor_1|clockcount[3]~13_combout\,
	cout => \Motor_1|clockcount[3]~14\);

-- Location: LCCOMB_X10_Y16_N26
\Motor_1|clockcount[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[4]~15_combout\ = (\Motor_1|clockcount\(4) & (\Motor_1|clockcount[3]~14\ $ (GND))) # (!\Motor_1|clockcount\(4) & (!\Motor_1|clockcount[3]~14\ & VCC))
-- \Motor_1|clockcount[4]~16\ = CARRY((\Motor_1|clockcount\(4) & !\Motor_1|clockcount[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|clockcount\(4),
	datad => VCC,
	cin => \Motor_1|clockcount[3]~14\,
	combout => \Motor_1|clockcount[4]~15_combout\,
	cout => \Motor_1|clockcount[4]~16\);

-- Location: LCFF_X10_Y16_N27
\Motor_1|clockcount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[4]~15_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(4));

-- Location: LCCOMB_X10_Y16_N28
\Motor_1|clockcount[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[5]~17_combout\ = (\Motor_1|clockcount\(5) & (!\Motor_1|clockcount[4]~16\)) # (!\Motor_1|clockcount\(5) & ((\Motor_1|clockcount[4]~16\) # (GND)))
-- \Motor_1|clockcount[5]~18\ = CARRY((!\Motor_1|clockcount[4]~16\) # (!\Motor_1|clockcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|clockcount\(5),
	datad => VCC,
	cin => \Motor_1|clockcount[4]~16\,
	combout => \Motor_1|clockcount[5]~17_combout\,
	cout => \Motor_1|clockcount[5]~18\);

-- Location: LCFF_X10_Y16_N29
\Motor_1|clockcount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[5]~17_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(5));

-- Location: LCCOMB_X10_Y16_N30
\Motor_1|clockcount[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[6]~19_combout\ = \Motor_1|clockcount[5]~18\ $ (!\Motor_1|clockcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Motor_1|clockcount\(6),
	cin => \Motor_1|clockcount[5]~18\,
	combout => \Motor_1|clockcount[6]~19_combout\);

-- Location: LCFF_X10_Y16_N31
\Motor_1|clockcount[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[6]~19_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(6));

-- Location: LCFF_X10_Y16_N25
\Motor_1|clockcount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[3]~13_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(3));

-- Location: LCCOMB_X10_Y16_N8
\Motor_1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|Equal0~0_combout\ = (!\Motor_1|clockcount\(1) & (!\Motor_1|clockcount\(0) & (!\Motor_1|clockcount\(3) & !\Motor_1|clockcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|clockcount\(1),
	datab => \Motor_1|clockcount\(0),
	datac => \Motor_1|clockcount\(3),
	datad => \Motor_1|clockcount\(2),
	combout => \Motor_1|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y16_N30
\Motor_1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|Equal0~1_combout\ = (\Motor_1|clockcount\(5) & (\Motor_1|clockcount\(6) & (!\Motor_1|clockcount\(4) & \Motor_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|clockcount\(5),
	datab => \Motor_1|clockcount\(6),
	datac => \Motor_1|clockcount\(4),
	datad => \Motor_1|Equal0~0_combout\,
	combout => \Motor_1|Equal0~1_combout\);

-- Location: LCFF_X6_Y16_N31
\Motor_1|clocktick\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clocktick~regout\);

-- Location: LCFF_X6_Y16_N1
\Motor_1|pulsecount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[1]~11_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(1));

-- Location: LCCOMB_X6_Y16_N2
\Motor_1|pulsecount[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[2]~13_combout\ = (\Motor_1|pulsecount\(2) & (!\Motor_1|pulsecount[1]~12\)) # (!\Motor_1|pulsecount\(2) & ((\Motor_1|pulsecount[1]~12\) # (GND)))
-- \Motor_1|pulsecount[2]~14\ = CARRY((!\Motor_1|pulsecount[1]~12\) # (!\Motor_1|pulsecount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(2),
	datad => VCC,
	cin => \Motor_1|pulsecount[1]~12\,
	combout => \Motor_1|pulsecount[2]~13_combout\,
	cout => \Motor_1|pulsecount[2]~14\);

-- Location: LCFF_X6_Y16_N3
\Motor_1|pulsecount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[2]~13_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(2));

-- Location: LCCOMB_X6_Y16_N4
\Motor_1|pulsecount[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[3]~15_combout\ = (\Motor_1|pulsecount\(3) & (\Motor_1|pulsecount[2]~14\ $ (GND))) # (!\Motor_1|pulsecount\(3) & (!\Motor_1|pulsecount[2]~14\ & VCC))
-- \Motor_1|pulsecount[3]~16\ = CARRY((\Motor_1|pulsecount\(3) & !\Motor_1|pulsecount[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(3),
	datad => VCC,
	cin => \Motor_1|pulsecount[2]~14\,
	combout => \Motor_1|pulsecount[3]~15_combout\,
	cout => \Motor_1|pulsecount[3]~16\);

-- Location: LCFF_X6_Y16_N5
\Motor_1|pulsecount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[3]~15_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(3));

-- Location: LCCOMB_X6_Y16_N6
\Motor_1|pulsecount[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[4]~17_combout\ = (\Motor_1|pulsecount\(4) & (!\Motor_1|pulsecount[3]~16\)) # (!\Motor_1|pulsecount\(4) & ((\Motor_1|pulsecount[3]~16\) # (GND)))
-- \Motor_1|pulsecount[4]~18\ = CARRY((!\Motor_1|pulsecount[3]~16\) # (!\Motor_1|pulsecount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(4),
	datad => VCC,
	cin => \Motor_1|pulsecount[3]~16\,
	combout => \Motor_1|pulsecount[4]~17_combout\,
	cout => \Motor_1|pulsecount[4]~18\);

-- Location: LCCOMB_X6_Y16_N8
\Motor_1|pulsecount[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[5]~19_combout\ = (\Motor_1|pulsecount\(5) & (\Motor_1|pulsecount[4]~18\ $ (GND))) # (!\Motor_1|pulsecount\(5) & (!\Motor_1|pulsecount[4]~18\ & VCC))
-- \Motor_1|pulsecount[5]~20\ = CARRY((\Motor_1|pulsecount\(5) & !\Motor_1|pulsecount[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(5),
	datad => VCC,
	cin => \Motor_1|pulsecount[4]~18\,
	combout => \Motor_1|pulsecount[5]~19_combout\,
	cout => \Motor_1|pulsecount[5]~20\);

-- Location: LCFF_X6_Y16_N9
\Motor_1|pulsecount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[5]~19_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(5));

-- Location: LCCOMB_X6_Y16_N10
\Motor_1|pulsecount[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[6]~21_combout\ = (\Motor_1|pulsecount\(6) & (!\Motor_1|pulsecount[5]~20\)) # (!\Motor_1|pulsecount\(6) & ((\Motor_1|pulsecount[5]~20\) # (GND)))
-- \Motor_1|pulsecount[6]~22\ = CARRY((!\Motor_1|pulsecount[5]~20\) # (!\Motor_1|pulsecount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(6),
	datad => VCC,
	cin => \Motor_1|pulsecount[5]~20\,
	combout => \Motor_1|pulsecount[6]~21_combout\,
	cout => \Motor_1|pulsecount[6]~22\);

-- Location: LCFF_X6_Y16_N11
\Motor_1|pulsecount[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[6]~21_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(6));

-- Location: LCCOMB_X6_Y16_N12
\Motor_1|pulsecount[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[7]~23_combout\ = (\Motor_1|pulsecount\(7) & (\Motor_1|pulsecount[6]~22\ $ (GND))) # (!\Motor_1|pulsecount\(7) & (!\Motor_1|pulsecount[6]~22\ & VCC))
-- \Motor_1|pulsecount[7]~24\ = CARRY((\Motor_1|pulsecount\(7) & !\Motor_1|pulsecount[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(7),
	datad => VCC,
	cin => \Motor_1|pulsecount[6]~22\,
	combout => \Motor_1|pulsecount[7]~23_combout\,
	cout => \Motor_1|pulsecount[7]~24\);

-- Location: LCCOMB_X6_Y16_N14
\Motor_1|pulsecount[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[8]~25_combout\ = (\Motor_1|pulsecount\(8) & (!\Motor_1|pulsecount[7]~24\)) # (!\Motor_1|pulsecount\(8) & ((\Motor_1|pulsecount[7]~24\) # (GND)))
-- \Motor_1|pulsecount[8]~26\ = CARRY((!\Motor_1|pulsecount[7]~24\) # (!\Motor_1|pulsecount\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(8),
	datad => VCC,
	cin => \Motor_1|pulsecount[7]~24\,
	combout => \Motor_1|pulsecount[8]~25_combout\,
	cout => \Motor_1|pulsecount[8]~26\);

-- Location: LCFF_X6_Y16_N15
\Motor_1|pulsecount[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[8]~25_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(8));

-- Location: LCCOMB_X6_Y16_N16
\Motor_1|pulsecount[9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[9]~27_combout\ = (\Motor_1|pulsecount\(9) & (\Motor_1|pulsecount[8]~26\ $ (GND))) # (!\Motor_1|pulsecount\(9) & (!\Motor_1|pulsecount[8]~26\ & VCC))
-- \Motor_1|pulsecount[9]~28\ = CARRY((\Motor_1|pulsecount\(9) & !\Motor_1|pulsecount[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(9),
	datad => VCC,
	cin => \Motor_1|pulsecount[8]~26\,
	combout => \Motor_1|pulsecount[9]~27_combout\,
	cout => \Motor_1|pulsecount[9]~28\);

-- Location: LCFF_X6_Y16_N17
\Motor_1|pulsecount[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[9]~27_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(9));

-- Location: LCFF_X6_Y16_N19
\Motor_1|pulsecount[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[10]~29_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(10));

-- Location: LCCOMB_X6_Y16_N26
\Motor_1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~0_combout\ = (!\Motor_1|pulsecount\(11) & (!\Motor_1|pulsecount\(9) & !\Motor_1|pulsecount\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(11),
	datac => \Motor_1|pulsecount\(9),
	datad => \Motor_1|pulsecount\(10),
	combout => \Motor_1|LessThan0~0_combout\);

-- Location: LCFF_X6_Y16_N13
\Motor_1|pulsecount[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[7]~23_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(7));

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
	padio => ww_Switch_1(0),
	combout => \Switch_1~combout\(0));

-- Location: LCCOMB_X8_Y16_N4
\counter[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~7_combout\ = (\current_State~regout\ & (counter(1) $ (VCC))) # (!\current_State~regout\ & (counter(1) & VCC))
-- \counter[1]~8\ = CARRY((\current_State~regout\ & counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_State~regout\,
	datab => counter(1),
	datad => VCC,
	combout => \counter[1]~7_combout\,
	cout => \counter[1]~8\);

-- Location: LCFF_X8_Y16_N5
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X8_Y16_N6
\counter[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~9_combout\ = (counter(2) & (!\counter[1]~8\)) # (!counter(2) & ((\counter[1]~8\) # (GND)))
-- \counter[2]~10\ = CARRY((!\counter[1]~8\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~8\,
	combout => \counter[2]~9_combout\,
	cout => \counter[2]~10\);

-- Location: LCCOMB_X8_Y16_N8
\counter[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~11_combout\ = (counter(3) & (\counter[2]~10\ $ (GND))) # (!counter(3) & (!\counter[2]~10\ & VCC))
-- \counter[3]~12\ = CARRY((counter(3) & !\counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~10\,
	combout => \counter[3]~11_combout\,
	cout => \counter[3]~12\);

-- Location: LCFF_X8_Y16_N9
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X8_Y16_N10
\counter[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~13_combout\ = (counter(4) & (!\counter[3]~12\)) # (!counter(4) & ((\counter[3]~12\) # (GND)))
-- \counter[4]~14\ = CARRY((!\counter[3]~12\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~12\,
	combout => \counter[4]~13_combout\,
	cout => \counter[4]~14\);

-- Location: LCFF_X8_Y16_N11
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X8_Y16_N12
\counter[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~15_combout\ = (counter(5) & (\counter[4]~14\ $ (GND))) # (!counter(5) & (!\counter[4]~14\ & VCC))
-- \counter[5]~16\ = CARRY((counter(5) & !\counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~14\,
	combout => \counter[5]~15_combout\,
	cout => \counter[5]~16\);

-- Location: LCCOMB_X8_Y16_N14
\counter[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~17_combout\ = (counter(6) & (!\counter[5]~16\)) # (!counter(6) & ((\counter[5]~16\) # (GND)))
-- \counter[6]~18\ = CARRY((!\counter[5]~16\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~16\,
	combout => \counter[6]~17_combout\,
	cout => \counter[6]~18\);

-- Location: LCFF_X8_Y16_N15
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X8_Y16_N16
\counter[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~19_combout\ = counter(7) $ (!\counter[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	cin => \counter[6]~18\,
	combout => \counter[7]~19_combout\);

-- Location: LCFF_X8_Y16_N17
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X9_Y16_N0
\pwm1[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[7]~0_combout\ = (\Switch_1~combout\(0) & counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(0),
	datad => counter(7),
	combout => \pwm1[7]~0_combout\);

-- Location: LCFF_X8_Y16_N13
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X9_Y16_N28
\pwm1[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[5]~2_combout\ = (\Switch_1~combout\(0) & counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(0),
	datad => counter(5),
	combout => \pwm1[5]~2_combout\);

-- Location: LCCOMB_X9_Y16_N30
\pwm1[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[4]~3_combout\ = (\Switch_1~combout\(0) & counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(0),
	datad => counter(4),
	combout => \pwm1[4]~3_combout\);

-- Location: LCCOMB_X9_Y16_N8
\pwm1[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[3]~4_combout\ = (counter(3)) # (!\Switch_1~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(0),
	datad => counter(3),
	combout => \pwm1[3]~4_combout\);

-- Location: LCFF_X8_Y16_N7
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X9_Y16_N2
\pwm1[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[2]~5_combout\ = (\Switch_1~combout\(0) & counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_1~combout\(0),
	datac => counter(2),
	combout => \pwm1[2]~5_combout\);

-- Location: LCCOMB_X9_Y16_N4
\pwm1[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[1]~6_combout\ = (\Switch_1~combout\(0) & counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_1~combout\(0),
	datac => counter(1),
	combout => \pwm1[1]~6_combout\);

-- Location: LCCOMB_X6_Y16_N28
\Motor_1|pulsecount[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[0]~33_combout\ = \Motor_1|pulsecount\(0) $ (\Motor_1|clocktick~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Motor_1|pulsecount\(0),
	datad => \Motor_1|clocktick~regout\,
	combout => \Motor_1|pulsecount[0]~33_combout\);

-- Location: LCFF_X6_Y16_N29
\Motor_1|pulsecount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(0));

-- Location: LCCOMB_X9_Y16_N12
\Motor_1|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~2_cout\ = CARRY((\pwm1[0]~7_combout\ & !\Motor_1|pulsecount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1[0]~7_combout\,
	datab => \Motor_1|pulsecount\(0),
	datad => VCC,
	cout => \Motor_1|LessThan0~2_cout\);

-- Location: LCCOMB_X9_Y16_N14
\Motor_1|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~4_cout\ = CARRY((\Motor_1|pulsecount\(1) & ((!\Motor_1|LessThan0~2_cout\) # (!\pwm1[1]~6_combout\))) # (!\Motor_1|pulsecount\(1) & (!\pwm1[1]~6_combout\ & !\Motor_1|LessThan0~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(1),
	datab => \pwm1[1]~6_combout\,
	datad => VCC,
	cin => \Motor_1|LessThan0~2_cout\,
	cout => \Motor_1|LessThan0~4_cout\);

-- Location: LCCOMB_X9_Y16_N16
\Motor_1|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~6_cout\ = CARRY((\Motor_1|pulsecount\(2) & (\pwm1[2]~5_combout\ & !\Motor_1|LessThan0~4_cout\)) # (!\Motor_1|pulsecount\(2) & ((\pwm1[2]~5_combout\) # (!\Motor_1|LessThan0~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(2),
	datab => \pwm1[2]~5_combout\,
	datad => VCC,
	cin => \Motor_1|LessThan0~4_cout\,
	cout => \Motor_1|LessThan0~6_cout\);

-- Location: LCCOMB_X9_Y16_N18
\Motor_1|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~8_cout\ = CARRY((\Motor_1|pulsecount\(3) & ((!\Motor_1|LessThan0~6_cout\) # (!\pwm1[3]~4_combout\))) # (!\Motor_1|pulsecount\(3) & (!\pwm1[3]~4_combout\ & !\Motor_1|LessThan0~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(3),
	datab => \pwm1[3]~4_combout\,
	datad => VCC,
	cin => \Motor_1|LessThan0~6_cout\,
	cout => \Motor_1|LessThan0~8_cout\);

-- Location: LCCOMB_X9_Y16_N20
\Motor_1|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~10_cout\ = CARRY((\Motor_1|pulsecount\(4) & (\pwm1[4]~3_combout\ & !\Motor_1|LessThan0~8_cout\)) # (!\Motor_1|pulsecount\(4) & ((\pwm1[4]~3_combout\) # (!\Motor_1|LessThan0~8_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(4),
	datab => \pwm1[4]~3_combout\,
	datad => VCC,
	cin => \Motor_1|LessThan0~8_cout\,
	cout => \Motor_1|LessThan0~10_cout\);

-- Location: LCCOMB_X9_Y16_N22
\Motor_1|LessThan0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~12_cout\ = CARRY((\Motor_1|pulsecount\(5) & ((!\Motor_1|LessThan0~10_cout\) # (!\pwm1[5]~2_combout\))) # (!\Motor_1|pulsecount\(5) & (!\pwm1[5]~2_combout\ & !\Motor_1|LessThan0~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(5),
	datab => \pwm1[5]~2_combout\,
	datad => VCC,
	cin => \Motor_1|LessThan0~10_cout\,
	cout => \Motor_1|LessThan0~12_cout\);

-- Location: LCCOMB_X9_Y16_N24
\Motor_1|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~14_cout\ = CARRY((\pwm1[6]~1_combout\ & ((!\Motor_1|LessThan0~12_cout\) # (!\Motor_1|pulsecount\(6)))) # (!\pwm1[6]~1_combout\ & (!\Motor_1|pulsecount\(6) & !\Motor_1|LessThan0~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1[6]~1_combout\,
	datab => \Motor_1|pulsecount\(6),
	datad => VCC,
	cin => \Motor_1|LessThan0~12_cout\,
	cout => \Motor_1|LessThan0~14_cout\);

-- Location: LCCOMB_X9_Y16_N26
\Motor_1|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~15_combout\ = (\Motor_1|pulsecount\(7) & (\Motor_1|LessThan0~14_cout\ & \pwm1[7]~0_combout\)) # (!\Motor_1|pulsecount\(7) & ((\Motor_1|LessThan0~14_cout\) # (\pwm1[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(7),
	datad => \pwm1[7]~0_combout\,
	cin => \Motor_1|LessThan0~14_cout\,
	combout => \Motor_1|LessThan0~15_combout\);

-- Location: LCCOMB_X6_Y16_N22
\Motor_1|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~17_combout\ = (\Motor_1|LessThan0~0_combout\ & ((\Motor_1|LessThan0~15_combout\) # (!\Motor_1|pulsecount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|LessThan0~0_combout\,
	datac => \Motor_1|pulsecount\(8),
	datad => \Motor_1|LessThan0~15_combout\,
	combout => \Motor_1|LessThan0~17_combout\);

-- Location: LCFF_X6_Y16_N23
\Motor_1|pwm\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|LessThan0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pwm~regout\);

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
	padio => ww_Switch_1(1),
	combout => \Switch_1~combout\(1));

-- Location: LCCOMB_X8_Y16_N26
\pwm2[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[7]~0_combout\ = (counter(7) & \Switch_1~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(7),
	datad => \Switch_1~combout\(1),
	combout => \pwm2[7]~0_combout\);

-- Location: LCCOMB_X8_Y15_N2
\pwm2[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[6]~1_combout\ = (\Switch_1~combout\(1) & counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(1),
	datad => counter(6),
	combout => \pwm2[6]~1_combout\);

-- Location: LCCOMB_X8_Y15_N4
\pwm2[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[5]~2_combout\ = (\Switch_1~combout\(1) & counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(1),
	datad => counter(5),
	combout => \pwm2[5]~2_combout\);

-- Location: LCFF_X6_Y16_N7
\Motor_1|pulsecount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[4]~17_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(4));

-- Location: LCCOMB_X8_Y15_N0
\pwm2[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[3]~4_combout\ = (counter(3)) # (!\Switch_1~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(1),
	datad => counter(3),
	combout => \pwm2[3]~4_combout\);

-- Location: LCCOMB_X8_Y15_N14
\pwm2[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[0]~7_combout\ = (\Switch_1~combout\(1) & \current_State~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(1),
	datad => \current_State~regout\,
	combout => \pwm2[0]~7_combout\);

-- Location: LCCOMB_X8_Y15_N16
\Motor_2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~1_cout\ = CARRY((!\Motor_1|pulsecount\(0) & \pwm2[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(0),
	datab => \pwm2[0]~7_combout\,
	datad => VCC,
	cout => \Motor_2|LessThan0~1_cout\);

-- Location: LCCOMB_X8_Y15_N18
\Motor_2|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~3_cout\ = CARRY((\pwm2[1]~6_combout\ & (\Motor_1|pulsecount\(1) & !\Motor_2|LessThan0~1_cout\)) # (!\pwm2[1]~6_combout\ & ((\Motor_1|pulsecount\(1)) # (!\Motor_2|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm2[1]~6_combout\,
	datab => \Motor_1|pulsecount\(1),
	datad => VCC,
	cin => \Motor_2|LessThan0~1_cout\,
	cout => \Motor_2|LessThan0~3_cout\);

-- Location: LCCOMB_X8_Y15_N20
\Motor_2|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~5_cout\ = CARRY((\pwm2[2]~5_combout\ & ((!\Motor_2|LessThan0~3_cout\) # (!\Motor_1|pulsecount\(2)))) # (!\pwm2[2]~5_combout\ & (!\Motor_1|pulsecount\(2) & !\Motor_2|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm2[2]~5_combout\,
	datab => \Motor_1|pulsecount\(2),
	datad => VCC,
	cin => \Motor_2|LessThan0~3_cout\,
	cout => \Motor_2|LessThan0~5_cout\);

-- Location: LCCOMB_X8_Y15_N22
\Motor_2|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~7_cout\ = CARRY((\Motor_1|pulsecount\(3) & ((!\Motor_2|LessThan0~5_cout\) # (!\pwm2[3]~4_combout\))) # (!\Motor_1|pulsecount\(3) & (!\pwm2[3]~4_combout\ & !\Motor_2|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(3),
	datab => \pwm2[3]~4_combout\,
	datad => VCC,
	cin => \Motor_2|LessThan0~5_cout\,
	cout => \Motor_2|LessThan0~7_cout\);

-- Location: LCCOMB_X8_Y15_N24
\Motor_2|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~9_cout\ = CARRY((\pwm2[4]~3_combout\ & ((!\Motor_2|LessThan0~7_cout\) # (!\Motor_1|pulsecount\(4)))) # (!\pwm2[4]~3_combout\ & (!\Motor_1|pulsecount\(4) & !\Motor_2|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm2[4]~3_combout\,
	datab => \Motor_1|pulsecount\(4),
	datad => VCC,
	cin => \Motor_2|LessThan0~7_cout\,
	cout => \Motor_2|LessThan0~9_cout\);

-- Location: LCCOMB_X8_Y15_N26
\Motor_2|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~11_cout\ = CARRY((\Motor_1|pulsecount\(5) & ((!\Motor_2|LessThan0~9_cout\) # (!\pwm2[5]~2_combout\))) # (!\Motor_1|pulsecount\(5) & (!\pwm2[5]~2_combout\ & !\Motor_2|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(5),
	datab => \pwm2[5]~2_combout\,
	datad => VCC,
	cin => \Motor_2|LessThan0~9_cout\,
	cout => \Motor_2|LessThan0~11_cout\);

-- Location: LCCOMB_X8_Y15_N28
\Motor_2|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~13_cout\ = CARRY((\Motor_1|pulsecount\(6) & (\pwm2[6]~1_combout\ & !\Motor_2|LessThan0~11_cout\)) # (!\Motor_1|pulsecount\(6) & ((\pwm2[6]~1_combout\) # (!\Motor_2|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(6),
	datab => \pwm2[6]~1_combout\,
	datad => VCC,
	cin => \Motor_2|LessThan0~11_cout\,
	cout => \Motor_2|LessThan0~13_cout\);

-- Location: LCCOMB_X8_Y15_N30
\Motor_2|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~14_combout\ = (\Motor_1|pulsecount\(7) & (\Motor_2|LessThan0~13_cout\ & \pwm2[7]~0_combout\)) # (!\Motor_1|pulsecount\(7) & ((\Motor_2|LessThan0~13_cout\) # (\pwm2[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(7),
	datad => \pwm2[7]~0_combout\,
	cin => \Motor_2|LessThan0~13_cout\,
	combout => \Motor_2|LessThan0~14_combout\);

-- Location: LCCOMB_X8_Y15_N8
\Motor_2|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~16_combout\ = (\Motor_1|LessThan0~0_combout\ & ((\Motor_2|LessThan0~14_combout\) # (!\Motor_1|pulsecount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(8),
	datac => \Motor_1|LessThan0~0_combout\,
	datad => \Motor_2|LessThan0~14_combout\,
	combout => \Motor_2|LessThan0~16_combout\);

-- Location: LCFF_X8_Y15_N9
\Motor_2|pwm\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_2|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_2|pwm~regout\);

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
	padio => ww_Switch_1(2),
	combout => \Switch_1~combout\(2));

-- Location: LCCOMB_X7_Y16_N0
\pwm3[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[7]~0_combout\ = (\Switch_1~combout\(2) & counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(2),
	datac => counter(7),
	combout => \pwm3[7]~0_combout\);

-- Location: LCCOMB_X7_Y16_N30
\pwm3[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[4]~3_combout\ = (\Switch_1~combout\(2) & counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(2),
	datac => counter(4),
	combout => \pwm3[4]~3_combout\);

-- Location: LCCOMB_X7_Y16_N8
\pwm3[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[3]~4_combout\ = (counter(3)) # (!\Switch_1~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(2),
	datad => counter(3),
	combout => \pwm3[3]~4_combout\);

-- Location: LCCOMB_X7_Y16_N2
\pwm3[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[2]~5_combout\ = (\Switch_1~combout\(2) & counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(2),
	datad => counter(2),
	combout => \pwm3[2]~5_combout\);

-- Location: LCCOMB_X7_Y16_N4
\pwm3[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[1]~6_combout\ = (\Switch_1~combout\(2) & counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(2),
	datad => counter(1),
	combout => \pwm3[1]~6_combout\);

-- Location: LCCOMB_X7_Y16_N14
\Motor_3|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~1_cout\ = CARRY((\pwm3[0]~7_combout\ & !\Motor_1|pulsecount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm3[0]~7_combout\,
	datab => \Motor_1|pulsecount\(0),
	datad => VCC,
	cout => \Motor_3|LessThan0~1_cout\);

-- Location: LCCOMB_X7_Y16_N16
\Motor_3|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~3_cout\ = CARRY((\Motor_1|pulsecount\(1) & ((!\Motor_3|LessThan0~1_cout\) # (!\pwm3[1]~6_combout\))) # (!\Motor_1|pulsecount\(1) & (!\pwm3[1]~6_combout\ & !\Motor_3|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(1),
	datab => \pwm3[1]~6_combout\,
	datad => VCC,
	cin => \Motor_3|LessThan0~1_cout\,
	cout => \Motor_3|LessThan0~3_cout\);

-- Location: LCCOMB_X7_Y16_N18
\Motor_3|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~5_cout\ = CARRY((\Motor_1|pulsecount\(2) & (\pwm3[2]~5_combout\ & !\Motor_3|LessThan0~3_cout\)) # (!\Motor_1|pulsecount\(2) & ((\pwm3[2]~5_combout\) # (!\Motor_3|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(2),
	datab => \pwm3[2]~5_combout\,
	datad => VCC,
	cin => \Motor_3|LessThan0~3_cout\,
	cout => \Motor_3|LessThan0~5_cout\);

-- Location: LCCOMB_X7_Y16_N20
\Motor_3|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~7_cout\ = CARRY((\Motor_1|pulsecount\(3) & ((!\Motor_3|LessThan0~5_cout\) # (!\pwm3[3]~4_combout\))) # (!\Motor_1|pulsecount\(3) & (!\pwm3[3]~4_combout\ & !\Motor_3|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(3),
	datab => \pwm3[3]~4_combout\,
	datad => VCC,
	cin => \Motor_3|LessThan0~5_cout\,
	cout => \Motor_3|LessThan0~7_cout\);

-- Location: LCCOMB_X7_Y16_N22
\Motor_3|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~9_cout\ = CARRY((\Motor_1|pulsecount\(4) & (\pwm3[4]~3_combout\ & !\Motor_3|LessThan0~7_cout\)) # (!\Motor_1|pulsecount\(4) & ((\pwm3[4]~3_combout\) # (!\Motor_3|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(4),
	datab => \pwm3[4]~3_combout\,
	datad => VCC,
	cin => \Motor_3|LessThan0~7_cout\,
	cout => \Motor_3|LessThan0~9_cout\);

-- Location: LCCOMB_X7_Y16_N24
\Motor_3|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~11_cout\ = CARRY((\pwm3[5]~2_combout\ & (\Motor_1|pulsecount\(5) & !\Motor_3|LessThan0~9_cout\)) # (!\pwm3[5]~2_combout\ & ((\Motor_1|pulsecount\(5)) # (!\Motor_3|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm3[5]~2_combout\,
	datab => \Motor_1|pulsecount\(5),
	datad => VCC,
	cin => \Motor_3|LessThan0~9_cout\,
	cout => \Motor_3|LessThan0~11_cout\);

-- Location: LCCOMB_X7_Y16_N26
\Motor_3|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~13_cout\ = CARRY((\pwm3[6]~1_combout\ & ((!\Motor_3|LessThan0~11_cout\) # (!\Motor_1|pulsecount\(6)))) # (!\pwm3[6]~1_combout\ & (!\Motor_1|pulsecount\(6) & !\Motor_3|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm3[6]~1_combout\,
	datab => \Motor_1|pulsecount\(6),
	datad => VCC,
	cin => \Motor_3|LessThan0~11_cout\,
	cout => \Motor_3|LessThan0~13_cout\);

-- Location: LCCOMB_X7_Y16_N28
\Motor_3|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~14_combout\ = (\Motor_1|pulsecount\(7) & (\Motor_3|LessThan0~13_cout\ & \pwm3[7]~0_combout\)) # (!\Motor_1|pulsecount\(7) & ((\Motor_3|LessThan0~13_cout\) # (\pwm3[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(7),
	datad => \pwm3[7]~0_combout\,
	cin => \Motor_3|LessThan0~13_cout\,
	combout => \Motor_3|LessThan0~14_combout\);

-- Location: LCCOMB_X6_Y16_N24
\Motor_3|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~16_combout\ = (\Motor_1|LessThan0~0_combout\ & ((\Motor_3|LessThan0~14_combout\) # (!\Motor_1|pulsecount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|LessThan0~0_combout\,
	datac => \Motor_1|pulsecount\(8),
	datad => \Motor_3|LessThan0~14_combout\,
	combout => \Motor_3|LessThan0~16_combout\);

-- Location: LCFF_X6_Y16_N25
\Motor_3|pwm\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_3|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_3|pwm~regout\);

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
	padio => ww_Switch_1(3),
	combout => \Switch_1~combout\(3));

-- Location: LCCOMB_X8_Y16_N28
\pwm4[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm4[7]~0_combout\ = (counter(7) & \Switch_1~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(7),
	datad => \Switch_1~combout\(3),
	combout => \pwm4[7]~0_combout\);

-- Location: LCCOMB_X5_Y16_N28
\pwm4[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm4[5]~2_combout\ = (\Switch_1~combout\(3) & counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(3),
	datad => counter(5),
	combout => \pwm4[5]~2_combout\);

-- Location: LCCOMB_X5_Y16_N30
\pwm4[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm4[4]~3_combout\ = (\Switch_1~combout\(3) & counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(3),
	datad => counter(4),
	combout => \pwm4[4]~3_combout\);

-- Location: LCCOMB_X5_Y16_N8
\pwm4[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm4[3]~4_combout\ = (counter(3)) # (!\Switch_1~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(3),
	datad => counter(3),
	combout => \pwm4[3]~4_combout\);

-- Location: LCCOMB_X5_Y16_N2
\pwm4[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm4[2]~5_combout\ = (\Switch_1~combout\(3) & counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(3),
	datad => counter(2),
	combout => \pwm4[2]~5_combout\);

-- Location: LCCOMB_X5_Y16_N4
\pwm4[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm4[1]~6_combout\ = (\Switch_1~combout\(3) & counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(3),
	datad => counter(1),
	combout => \pwm4[1]~6_combout\);

-- Location: LCCOMB_X5_Y16_N10
\Motor_4|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_4|LessThan0~1_cout\ = CARRY((\pwm4[0]~7_combout\ & !\Motor_1|pulsecount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm4[0]~7_combout\,
	datab => \Motor_1|pulsecount\(0),
	datad => VCC,
	cout => \Motor_4|LessThan0~1_cout\);

-- Location: LCCOMB_X5_Y16_N12
\Motor_4|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_4|LessThan0~3_cout\ = CARRY((\Motor_1|pulsecount\(1) & ((!\Motor_4|LessThan0~1_cout\) # (!\pwm4[1]~6_combout\))) # (!\Motor_1|pulsecount\(1) & (!\pwm4[1]~6_combout\ & !\Motor_4|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(1),
	datab => \pwm4[1]~6_combout\,
	datad => VCC,
	cin => \Motor_4|LessThan0~1_cout\,
	cout => \Motor_4|LessThan0~3_cout\);

-- Location: LCCOMB_X5_Y16_N14
\Motor_4|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_4|LessThan0~5_cout\ = CARRY((\Motor_1|pulsecount\(2) & (\pwm4[2]~5_combout\ & !\Motor_4|LessThan0~3_cout\)) # (!\Motor_1|pulsecount\(2) & ((\pwm4[2]~5_combout\) # (!\Motor_4|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(2),
	datab => \pwm4[2]~5_combout\,
	datad => VCC,
	cin => \Motor_4|LessThan0~3_cout\,
	cout => \Motor_4|LessThan0~5_cout\);

-- Location: LCCOMB_X5_Y16_N16
\Motor_4|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_4|LessThan0~7_cout\ = CARRY((\Motor_1|pulsecount\(3) & ((!\Motor_4|LessThan0~5_cout\) # (!\pwm4[3]~4_combout\))) # (!\Motor_1|pulsecount\(3) & (!\pwm4[3]~4_combout\ & !\Motor_4|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(3),
	datab => \pwm4[3]~4_combout\,
	datad => VCC,
	cin => \Motor_4|LessThan0~5_cout\,
	cout => \Motor_4|LessThan0~7_cout\);

-- Location: LCCOMB_X5_Y16_N18
\Motor_4|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_4|LessThan0~9_cout\ = CARRY((\Motor_1|pulsecount\(4) & (\pwm4[4]~3_combout\ & !\Motor_4|LessThan0~7_cout\)) # (!\Motor_1|pulsecount\(4) & ((\pwm4[4]~3_combout\) # (!\Motor_4|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(4),
	datab => \pwm4[4]~3_combout\,
	datad => VCC,
	cin => \Motor_4|LessThan0~7_cout\,
	cout => \Motor_4|LessThan0~9_cout\);

-- Location: LCCOMB_X5_Y16_N20
\Motor_4|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_4|LessThan0~11_cout\ = CARRY((\Motor_1|pulsecount\(5) & ((!\Motor_4|LessThan0~9_cout\) # (!\pwm4[5]~2_combout\))) # (!\Motor_1|pulsecount\(5) & (!\pwm4[5]~2_combout\ & !\Motor_4|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(5),
	datab => \pwm4[5]~2_combout\,
	datad => VCC,
	cin => \Motor_4|LessThan0~9_cout\,
	cout => \Motor_4|LessThan0~11_cout\);

-- Location: LCCOMB_X5_Y16_N22
\Motor_4|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_4|LessThan0~13_cout\ = CARRY((\pwm4[6]~1_combout\ & ((!\Motor_4|LessThan0~11_cout\) # (!\Motor_1|pulsecount\(6)))) # (!\pwm4[6]~1_combout\ & (!\Motor_1|pulsecount\(6) & !\Motor_4|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm4[6]~1_combout\,
	datab => \Motor_1|pulsecount\(6),
	datad => VCC,
	cin => \Motor_4|LessThan0~11_cout\,
	cout => \Motor_4|LessThan0~13_cout\);

-- Location: LCCOMB_X5_Y16_N24
\Motor_4|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_4|LessThan0~14_combout\ = (\Motor_1|pulsecount\(7) & (\Motor_4|LessThan0~13_cout\ & \pwm4[7]~0_combout\)) # (!\Motor_1|pulsecount\(7) & ((\Motor_4|LessThan0~13_cout\) # (\pwm4[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(7),
	datad => \pwm4[7]~0_combout\,
	cin => \Motor_4|LessThan0~13_cout\,
	combout => \Motor_4|LessThan0~14_combout\);

-- Location: LCCOMB_X5_Y16_N0
\Motor_4|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_4|LessThan0~16_combout\ = (\Motor_1|LessThan0~0_combout\ & ((\Motor_4|LessThan0~14_combout\) # (!\Motor_1|pulsecount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|LessThan0~0_combout\,
	datab => \Motor_1|pulsecount\(8),
	datac => \Motor_4|LessThan0~14_combout\,
	combout => \Motor_4|LessThan0~16_combout\);

-- Location: LCFF_X5_Y16_N1
\Motor_4|pwm\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_4|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_4|pwm~regout\);

-- Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Camera_SDA~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => Camera_SDA);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FPGA_I2C_Data~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FPGA_I2C_Data);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_DS1085Z_0~I\ : cycloneii_io
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
	padio => ww_clk_DS1085Z_0);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_DS1085Z_1~I\ : cycloneii_io
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
	padio => ww_clk_DS1085Z_1);

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
	datain => \U_PICSPI_Slave|LED~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TLED_Orange_2);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BLED_Blue[0]~I\ : cycloneii_io
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
	datain => \BLED_Blue[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BLED_Blue(0));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BLED_Blue[1]~I\ : cycloneii_io
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
	datain => \BLED_Blue[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BLED_Blue(1));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BLED_Blue[2]~I\ : cycloneii_io
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
	datain => \BLED_Blue[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BLED_Blue(2));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BLED_Blue[3]~I\ : cycloneii_io
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
	datain => \BLED_Blue[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BLED_Blue(3));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BLED_Orange[0]~I\ : cycloneii_io
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
	datain => \BLED_Orange[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BLED_Orange(0));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BLED_Orange[1]~I\ : cycloneii_io
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
	datain => \BLED_Orange[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BLED_Orange(1));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BLED_Orange[2]~I\ : cycloneii_io
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
	datain => \BLED_Orange[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BLED_Orange(2));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BLED_Orange[3]~I\ : cycloneii_io
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
	datain => \BLED_Orange[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BLED_Orange(3));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PIC_PBUS_OK_OUT~I\ : cycloneii_io
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
	datain => \Registers|RegCont|ok_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PIC_PBUS_OK_OUT);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PIC_SPI_MISO~I\ : cycloneii_io
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
	datain => \U_PICSPI_Slave|MISO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PIC_SPI_MISO);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Ultra_T_Trigger~I\ : cycloneii_io
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
	datain => \U_Ranger_Top|trigger~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Ultra_T_Trigger);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Ultra_B_Trigger~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Ultra_B_Trigger);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Ultra_B_Edge~I\ : cycloneii_io
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
	padio => ww_Ultra_B_Edge);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Motor_North~I\ : cycloneii_io
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
	datain => \Motor_1|pwm~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Motor_North);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Motor_East~I\ : cycloneii_io
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
	datain => \Motor_2|pwm~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Motor_East);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Motor_South~I\ : cycloneii_io
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
	datain => \Motor_3|pwm~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Motor_South);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Motor_West~I\ : cycloneii_io
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
	datain => \Motor_4|pwm~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Motor_West);

-- Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Camera_SCL~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Camera_SCL);

-- Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Camera_RESET~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Camera_RESET);

-- Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Camera_EXTCLK~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Camera_EXTCLK);

-- Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Camera_HD~I\ : cycloneii_io
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
	padio => ww_Camera_HD);

-- Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Camera_VD~I\ : cycloneii_io
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
	padio => ww_Camera_VD);

-- Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Camera_DCLK~I\ : cycloneii_io
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
	padio => ww_Camera_DCLK);

-- Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Camera_DOUT[0]~I\ : cycloneii_io
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
	padio => ww_Camera_DOUT(0));

-- Location: PIN_94,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Camera_DOUT[1]~I\ : cycloneii_io
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
	padio => ww_Camera_DOUT(1));

-- Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Camera_DOUT[2]~I\ : cycloneii_io
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
	padio => ww_Camera_DOUT(2));

-- Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Camera_DOUT[3]~I\ : cycloneii_io
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
	padio => ww_Camera_DOUT(3));

-- Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Camera_DOUT[4]~I\ : cycloneii_io
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
	padio => ww_Camera_DOUT(4));

-- Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Camera_DOUT[5]~I\ : cycloneii_io
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
	padio => ww_Camera_DOUT(5));

-- Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Camera_DOUT[6]~I\ : cycloneii_io
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
	padio => ww_Camera_DOUT(6));

-- Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
\Camera_DOUT[7]~I\ : cycloneii_io
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
	padio => ww_Camera_DOUT(7));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FPGA_SPI_Clock~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FPGA_SPI_Clock);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FPGA_SPI_MISO~I\ : cycloneii_io
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
	padio => ww_FPGA_SPI_MISO);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FPGA_SPI_MOSI~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FPGA_SPI_MOSI);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FPGA_I2C_Clock~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FPGA_I2C_Clock);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Gyro_ChipSelect~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Gyro_ChipSelect);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Gyro_DataReady~I\ : cycloneii_io
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
	padio => ww_Gyro_DataReady);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Gyro_Interrupt~I\ : cycloneii_io
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
	padio => ww_Gyro_Interrupt);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ChipSelect~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ChipSelect);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_WriteProtect~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_WriteProtect);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Accel_Interrupt1~I\ : cycloneii_io
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
	padio => ww_Accel_Interrupt1);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Accel_Interrupt2~I\ : cycloneii_io
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
	padio => ww_Accel_Interrupt2);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Accel_SelAddr0~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Accel_SelAddr0);
END structure;


