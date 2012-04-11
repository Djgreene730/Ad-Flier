-- Copyright (C) 1991-2010 Altera Corporation
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
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "04/11/2012 00:15:31"

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
	clk : IN std_logic;
	clk_DS1085Z_0 : IN std_logic;
	clk_DS1085Z_1 : IN std_logic;
	Switch_1 : IN std_logic_vector(3 DOWNTO 0);
	Switch_2 : IN std_logic;
	Switch_3 : IN std_logic;
	Switch_4 : IN std_logic;
	TLED_Orange_1 : OUT std_logic;
	TLED_Orange_2 : OUT std_logic;
	BLED_Blue : OUT std_logic_vector(3 DOWNTO 0);
	BLED_Orange : OUT std_logic_vector(3 DOWNTO 0);
	PIC_PBUS_Data : INOUT std_logic_vector(7 DOWNTO 0);
	PIC_PBUS_A_D : IN std_logic;
	PIC_PBUS_R_W : IN std_logic;
	PIC_PBUS_OK_IN : IN std_logic;
	PIC_PBUS_OK_OUT : OUT std_logic;
	PIC_SPI_SCLK : IN std_logic;
	PIC_SPI_MOSI : IN std_logic;
	PIC_SPI_MISO : OUT std_logic;
	PIC_SPI_Select : IN std_logic;
	Ultra_T_Trigger : OUT std_logic;
	Ultra_T_Edge : IN std_logic;
	Ultra_B_Trigger : OUT std_logic;
	Ultra_B_Edge : IN std_logic;
	Motor_North : OUT std_logic;
	Motor_East : OUT std_logic;
	Motor_South : OUT std_logic;
	Motor_West : OUT std_logic;
	Camera_SCL : OUT std_logic;
	Camera_SDA : INOUT std_logic;
	Camera_RESET : OUT std_logic;
	Camera_EXTCLK : OUT std_logic;
	Camera_HD : IN std_logic;
	Camera_VD : IN std_logic;
	Camera_DCLK : IN std_logic;
	Camera_DOUT : IN std_logic_vector(7 DOWNTO 0);
	FPGA_SPI_Clock : OUT std_logic;
	FPGA_SPI_MISO : IN std_logic;
	FPGA_SPI_MOSI : OUT std_logic;
	FPGA_I2C_Clock : OUT std_logic;
	FPGA_I2C_Data : INOUT std_logic;
	Gyro_ChipSelect : OUT std_logic;
	Gyro_DataReady : IN std_logic;
	Gyro_Interrupt : IN std_logic;
	SRAM_ChipSelect : OUT std_logic;
	SRAM_WriteProtect : OUT std_logic;
	Accel_Interrupt1 : IN std_logic;
	Accel_Interrupt2 : IN std_logic;
	Accel_SelAddr0 : OUT std_logic
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
-- Switch_1[0]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[2]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[3]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_2	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- PIC_PBUS_A_D	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_PBUS_R_W	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_PBUS_OK_IN	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_PBUS_OK_OUT	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PIC_SPI_MISO	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Ultra_T_Trigger	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Ultra_T_Edge	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_clk_DS1085Z_0 : std_logic;
SIGNAL ww_clk_DS1085Z_1 : std_logic;
SIGNAL ww_Switch_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Switch_2 : std_logic;
SIGNAL ww_Switch_3 : std_logic;
SIGNAL ww_Switch_4 : std_logic;
SIGNAL ww_TLED_Orange_1 : std_logic;
SIGNAL ww_TLED_Orange_2 : std_logic;
SIGNAL ww_BLED_Blue : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BLED_Orange : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PIC_PBUS_A_D : std_logic;
SIGNAL ww_PIC_PBUS_R_W : std_logic;
SIGNAL ww_PIC_PBUS_OK_IN : std_logic;
SIGNAL ww_PIC_PBUS_OK_OUT : std_logic;
SIGNAL ww_PIC_SPI_SCLK : std_logic;
SIGNAL ww_PIC_SPI_MOSI : std_logic;
SIGNAL ww_PIC_SPI_MISO : std_logic;
SIGNAL ww_PIC_SPI_Select : std_logic;
SIGNAL ww_Ultra_T_Trigger : std_logic;
SIGNAL ww_Ultra_T_Edge : std_logic;
SIGNAL ww_Ultra_B_Trigger : std_logic;
SIGNAL ww_Ultra_B_Edge : std_logic;
SIGNAL ww_Motor_North : std_logic;
SIGNAL ww_Motor_East : std_logic;
SIGNAL ww_Motor_South : std_logic;
SIGNAL ww_Motor_West : std_logic;
SIGNAL ww_Camera_SCL : std_logic;
SIGNAL ww_Camera_RESET : std_logic;
SIGNAL ww_Camera_EXTCLK : std_logic;
SIGNAL ww_Camera_HD : std_logic;
SIGNAL ww_Camera_VD : std_logic;
SIGNAL ww_Camera_DCLK : std_logic;
SIGNAL ww_Camera_DOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_FPGA_SPI_Clock : std_logic;
SIGNAL ww_FPGA_SPI_MISO : std_logic;
SIGNAL ww_FPGA_SPI_MOSI : std_logic;
SIGNAL ww_FPGA_I2C_Clock : std_logic;
SIGNAL ww_Gyro_ChipSelect : std_logic;
SIGNAL ww_Gyro_DataReady : std_logic;
SIGNAL ww_Gyro_Interrupt : std_logic;
SIGNAL ww_SRAM_ChipSelect : std_logic;
SIGNAL ww_SRAM_WriteProtect : std_logic;
SIGNAL ww_Accel_Interrupt1 : std_logic;
SIGNAL ww_Accel_Interrupt2 : std_logic;
SIGNAL ww_Accel_SelAddr0 : std_logic;
SIGNAL \U_1HzClkDivider|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_1HzClkDivider|Add0~0_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~2_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~4_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~6_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~8_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~10_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~30_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~34_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~45\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~46_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[1]~7_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[3]~11_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[4]~13_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[6]~17_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~0_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~6_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~3_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~4_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~5_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~6_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~7_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~8_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent[0]~9_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent[0]~10_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~13_combout\ : std_logic;
SIGNAL \PIC_PBUS_Data[0]~8\ : std_logic;
SIGNAL \PIC_PBUS_Data[1]~9\ : std_logic;
SIGNAL \PIC_PBUS_Data[2]~10\ : std_logic;
SIGNAL \PIC_PBUS_Data[3]~11\ : std_logic;
SIGNAL \PIC_PBUS_Data[4]~12\ : std_logic;
SIGNAL \PIC_PBUS_Data[5]~13\ : std_logic;
SIGNAL \PIC_PBUS_Data[6]~14\ : std_logic;
SIGNAL \PIC_PBUS_Data[7]~15\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~37\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~38_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~39\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~41\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~42_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~43\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~44_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~24_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~11_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~3_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~2_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~9_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~8_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~1_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~4_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~12_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~40_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~6_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~7_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~1\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~3\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~5\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~7\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~9\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~11\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~12_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~5_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~13\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~14_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~4_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~15\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~16_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~10_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~17\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~18_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~19\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~20_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~21\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~22_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~23\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~25\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~26_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~27\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~28_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~29\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~31\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~32_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~33\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~35\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~36_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~5_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~7_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|clk_out~regout\ : std_logic;
SIGNAL \U_1HzClkDivider|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \current_State~0_combout\ : std_logic;
SIGNAL \current_State~regout\ : std_logic;
SIGNAL \TLED_Orange_1~0_combout\ : std_logic;
SIGNAL \TLED_Orange_1~reg0_regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \PIC_SPI_MOSI~combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|MOSIr[1]~feeder_combout\ : std_logic;
SIGNAL \PIC_SPI_SCLK~combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|SCKr[0]~feeder_combout\ : std_logic;
SIGNAL \PIC_SPI_Select~combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|SSELr[0]~feeder_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_received~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_received[0]~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|bitcnt~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|Add1~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|bitcnt~1_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_received~1_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_received~regout\ : std_logic;
SIGNAL \U_PICSPI_Slave|LED~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|LED~regout\ : std_logic;
SIGNAL \BLED_Blue[0]~reg0feeder_combout\ : std_logic;
SIGNAL \BLED_Blue[0]~reg0_regout\ : std_logic;
SIGNAL \BLED_Blue[1]~reg0_regout\ : std_logic;
SIGNAL \BLED_Blue[2]~reg0feeder_combout\ : std_logic;
SIGNAL \BLED_Blue[2]~reg0_regout\ : std_logic;
SIGNAL \BLED_Blue[3]~reg0_regout\ : std_logic;
SIGNAL \BLED_Orange[0]~reg0feeder_combout\ : std_logic;
SIGNAL \BLED_Orange[0]~reg0_regout\ : std_logic;
SIGNAL \BLED_Orange[1]~reg0feeder_combout\ : std_logic;
SIGNAL \BLED_Orange[1]~reg0_regout\ : std_logic;
SIGNAL \BLED_Orange[2]~reg0feeder_combout\ : std_logic;
SIGNAL \BLED_Orange[2]~reg0_regout\ : std_logic;
SIGNAL \BLED_Orange[3]~reg0feeder_combout\ : std_logic;
SIGNAL \BLED_Orange[3]~reg0_regout\ : std_logic;
SIGNAL \U_PICSPI_Slave|Equal2~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|bitcnt~2_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[0]~21_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[1]~8\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[2]~9_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[2]~10\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[3]~12\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[4]~14\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[5]~15_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[5]~16\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[6]~18\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[7]~19_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~1_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent[0]~2_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|MISO~feeder_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|MISO~regout\ : std_logic;
SIGNAL \U_PICSPI_Slave|MOSIr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|SCKr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|SSELr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|bitcnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|byte_data_received\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|byte_data_sent\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_PICSPI_Slave|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_1HzClkDivider|cnt\ : std_logic_vector(23 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_clk_DS1085Z_0 <= clk_DS1085Z_0;
ww_clk_DS1085Z_1 <= clk_DS1085Z_1;
ww_Switch_1 <= Switch_1;
ww_Switch_2 <= Switch_2;
ww_Switch_3 <= Switch_3;
ww_Switch_4 <= Switch_4;
TLED_Orange_1 <= ww_TLED_Orange_1;
TLED_Orange_2 <= ww_TLED_Orange_2;
BLED_Blue <= ww_BLED_Blue;
BLED_Orange <= ww_BLED_Orange;
ww_PIC_PBUS_A_D <= PIC_PBUS_A_D;
ww_PIC_PBUS_R_W <= PIC_PBUS_R_W;
ww_PIC_PBUS_OK_IN <= PIC_PBUS_OK_IN;
PIC_PBUS_OK_OUT <= ww_PIC_PBUS_OK_OUT;
ww_PIC_SPI_SCLK <= PIC_SPI_SCLK;
ww_PIC_SPI_MOSI <= PIC_SPI_MOSI;
PIC_SPI_MISO <= ww_PIC_SPI_MISO;
ww_PIC_SPI_Select <= PIC_SPI_Select;
Ultra_T_Trigger <= ww_Ultra_T_Trigger;
ww_Ultra_T_Edge <= Ultra_T_Edge;
Ultra_B_Trigger <= ww_Ultra_B_Trigger;
ww_Ultra_B_Edge <= Ultra_B_Edge;
Motor_North <= ww_Motor_North;
Motor_East <= ww_Motor_East;
Motor_South <= ww_Motor_South;
Motor_West <= ww_Motor_West;
Camera_SCL <= ww_Camera_SCL;
Camera_RESET <= ww_Camera_RESET;
Camera_EXTCLK <= ww_Camera_EXTCLK;
ww_Camera_HD <= Camera_HD;
ww_Camera_VD <= Camera_VD;
ww_Camera_DCLK <= Camera_DCLK;
ww_Camera_DOUT <= Camera_DOUT;
FPGA_SPI_Clock <= ww_FPGA_SPI_Clock;
ww_FPGA_SPI_MISO <= FPGA_SPI_MISO;
FPGA_SPI_MOSI <= ww_FPGA_SPI_MOSI;
FPGA_I2C_Clock <= ww_FPGA_I2C_Clock;
Gyro_ChipSelect <= ww_Gyro_ChipSelect;
ww_Gyro_DataReady <= Gyro_DataReady;
ww_Gyro_Interrupt <= Gyro_Interrupt;
SRAM_ChipSelect <= ww_SRAM_ChipSelect;
SRAM_WriteProtect <= ww_SRAM_WriteProtect;
ww_Accel_Interrupt1 <= Accel_Interrupt1;
ww_Accel_Interrupt2 <= Accel_Interrupt2;
Accel_SelAddr0 <= ww_Accel_SelAddr0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_1HzClkDivider|clk_out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \U_1HzClkDivider|clk_out~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X12_Y11_N8
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

-- Location: LCCOMB_X12_Y11_N10
\U_1HzClkDivider|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~2_combout\ = (\U_1HzClkDivider|cnt\(1) & (!\U_1HzClkDivider|Add0~1\)) # (!\U_1HzClkDivider|cnt\(1) & ((\U_1HzClkDivider|Add0~1\) # (GND)))
-- \U_1HzClkDivider|Add0~3\ = CARRY((!\U_1HzClkDivider|Add0~1\) # (!\U_1HzClkDivider|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(1),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~1\,
	combout => \U_1HzClkDivider|Add0~2_combout\,
	cout => \U_1HzClkDivider|Add0~3\);

-- Location: LCCOMB_X12_Y11_N12
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

-- Location: LCCOMB_X12_Y11_N14
\U_1HzClkDivider|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~6_combout\ = (\U_1HzClkDivider|cnt\(3) & (!\U_1HzClkDivider|Add0~5\)) # (!\U_1HzClkDivider|cnt\(3) & ((\U_1HzClkDivider|Add0~5\) # (GND)))
-- \U_1HzClkDivider|Add0~7\ = CARRY((!\U_1HzClkDivider|Add0~5\) # (!\U_1HzClkDivider|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(3),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~5\,
	combout => \U_1HzClkDivider|Add0~6_combout\,
	cout => \U_1HzClkDivider|Add0~7\);

-- Location: LCCOMB_X12_Y11_N16
\U_1HzClkDivider|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~8_combout\ = (\U_1HzClkDivider|cnt\(4) & (\U_1HzClkDivider|Add0~7\ $ (GND))) # (!\U_1HzClkDivider|cnt\(4) & (!\U_1HzClkDivider|Add0~7\ & VCC))
-- \U_1HzClkDivider|Add0~9\ = CARRY((\U_1HzClkDivider|cnt\(4) & !\U_1HzClkDivider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(4),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~7\,
	combout => \U_1HzClkDivider|Add0~8_combout\,
	cout => \U_1HzClkDivider|Add0~9\);

-- Location: LCCOMB_X12_Y11_N18
\U_1HzClkDivider|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~10_combout\ = (\U_1HzClkDivider|cnt\(5) & (!\U_1HzClkDivider|Add0~9\)) # (!\U_1HzClkDivider|cnt\(5) & ((\U_1HzClkDivider|Add0~9\) # (GND)))
-- \U_1HzClkDivider|Add0~11\ = CARRY((!\U_1HzClkDivider|Add0~9\) # (!\U_1HzClkDivider|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(5),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~9\,
	combout => \U_1HzClkDivider|Add0~10_combout\,
	cout => \U_1HzClkDivider|Add0~11\);

-- Location: LCCOMB_X12_Y10_N6
\U_1HzClkDivider|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~30_combout\ = (\U_1HzClkDivider|cnt\(15) & (!\U_1HzClkDivider|Add0~29\)) # (!\U_1HzClkDivider|cnt\(15) & ((\U_1HzClkDivider|Add0~29\) # (GND)))
-- \U_1HzClkDivider|Add0~31\ = CARRY((!\U_1HzClkDivider|Add0~29\) # (!\U_1HzClkDivider|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(15),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~29\,
	combout => \U_1HzClkDivider|Add0~30_combout\,
	cout => \U_1HzClkDivider|Add0~31\);

-- Location: LCCOMB_X12_Y10_N10
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

-- Location: LCCOMB_X12_Y10_N20
\U_1HzClkDivider|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~44_combout\ = (\U_1HzClkDivider|cnt\(22) & (\U_1HzClkDivider|Add0~43\ $ (GND))) # (!\U_1HzClkDivider|cnt\(22) & (!\U_1HzClkDivider|Add0~43\ & VCC))
-- \U_1HzClkDivider|Add0~45\ = CARRY((\U_1HzClkDivider|cnt\(22) & !\U_1HzClkDivider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(22),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~43\,
	combout => \U_1HzClkDivider|Add0~44_combout\,
	cout => \U_1HzClkDivider|Add0~45\);

-- Location: LCCOMB_X12_Y10_N22
\U_1HzClkDivider|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~46_combout\ = \U_1HzClkDivider|Add0~45\ $ (\U_1HzClkDivider|cnt\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_1HzClkDivider|cnt\(23),
	cin => \U_1HzClkDivider|Add0~45\,
	combout => \U_1HzClkDivider|Add0~46_combout\);

-- Location: LCFF_X12_Y13_N17
\U_PICSPI_Slave|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[6]~17_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(6));

-- Location: LCFF_X12_Y13_N13
\U_PICSPI_Slave|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[4]~13_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(4));

-- Location: LCFF_X12_Y13_N11
\U_PICSPI_Slave|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[3]~11_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(3));

-- Location: LCFF_X12_Y13_N7
\U_PICSPI_Slave|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[1]~7_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(1));

-- Location: LCCOMB_X12_Y13_N6
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

-- Location: LCCOMB_X12_Y13_N10
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

-- Location: LCCOMB_X12_Y13_N12
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

-- Location: LCCOMB_X12_Y13_N16
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

-- Location: LCFF_X13_Y10_N1
\U_1HzClkDivider|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(5));

-- Location: LCFF_X12_Y11_N17
\U_1HzClkDivider|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(4));

-- Location: LCCOMB_X13_Y10_N6
\U_1HzClkDivider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~0_combout\ = (\U_1HzClkDivider|cnt\(7) & (\U_1HzClkDivider|cnt\(6) & (!\U_1HzClkDivider|cnt\(4) & \U_1HzClkDivider|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(7),
	datab => \U_1HzClkDivider|cnt\(6),
	datac => \U_1HzClkDivider|cnt\(4),
	datad => \U_1HzClkDivider|cnt\(5),
	combout => \U_1HzClkDivider|Equal0~0_combout\);

-- Location: LCFF_X12_Y11_N11
\U_1HzClkDivider|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(1));

-- Location: LCFF_X12_Y10_N7
\U_1HzClkDivider|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(15));

-- Location: LCFF_X12_Y10_N11
\U_1HzClkDivider|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(17));

-- Location: LCFF_X12_Y10_N31
\U_1HzClkDivider|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(23));

-- Location: LCFF_X10_Y13_N9
\U_PICSPI_Slave|byte_data_sent[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~3_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(6));

-- Location: LCCOMB_X13_Y10_N0
\U_1HzClkDivider|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~6_combout\ = (\U_1HzClkDivider|Add0~10_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)) # (!\U_1HzClkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Add0~10_combout\,
	datab => \U_1HzClkDivider|Equal0~5_combout\,
	datac => \U_1HzClkDivider|Equal0~6_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~6_combout\);

-- Location: LCFF_X10_Y13_N23
\U_PICSPI_Slave|byte_data_sent[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~4_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(5));

-- Location: LCCOMB_X10_Y13_N8
\U_PICSPI_Slave|byte_data_sent~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~3_combout\ = (\U_PICSPI_Slave|cnt\(6) & ((\U_PICSPI_Slave|Equal2~0_combout\) # ((\U_PICSPI_Slave|byte_data_sent\(5) & !\U_PICSPI_Slave|byte_data_sent~0_combout\)))) # (!\U_PICSPI_Slave|cnt\(6) & 
-- (\U_PICSPI_Slave|byte_data_sent\(5) & (!\U_PICSPI_Slave|byte_data_sent~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(6),
	datab => \U_PICSPI_Slave|byte_data_sent\(5),
	datac => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	datad => \U_PICSPI_Slave|Equal2~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~3_combout\);

-- Location: LCFF_X10_Y13_N1
\U_PICSPI_Slave|byte_data_sent[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~5_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(4));

-- Location: LCCOMB_X10_Y13_N22
\U_PICSPI_Slave|byte_data_sent~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~4_combout\ = (\U_PICSPI_Slave|cnt\(5) & ((\U_PICSPI_Slave|Equal2~0_combout\) # ((\U_PICSPI_Slave|byte_data_sent\(4) & !\U_PICSPI_Slave|byte_data_sent~0_combout\)))) # (!\U_PICSPI_Slave|cnt\(5) & 
-- (\U_PICSPI_Slave|byte_data_sent\(4) & (!\U_PICSPI_Slave|byte_data_sent~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(5),
	datab => \U_PICSPI_Slave|byte_data_sent\(4),
	datac => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	datad => \U_PICSPI_Slave|Equal2~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~4_combout\);

-- Location: LCFF_X10_Y13_N19
\U_PICSPI_Slave|byte_data_sent[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~6_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(3));

-- Location: LCCOMB_X10_Y13_N0
\U_PICSPI_Slave|byte_data_sent~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~5_combout\ = (\U_PICSPI_Slave|cnt\(4) & ((\U_PICSPI_Slave|Equal2~0_combout\) # ((\U_PICSPI_Slave|byte_data_sent\(3) & !\U_PICSPI_Slave|byte_data_sent~0_combout\)))) # (!\U_PICSPI_Slave|cnt\(4) & 
-- (\U_PICSPI_Slave|byte_data_sent\(3) & (!\U_PICSPI_Slave|byte_data_sent~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(4),
	datab => \U_PICSPI_Slave|byte_data_sent\(3),
	datac => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	datad => \U_PICSPI_Slave|Equal2~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~5_combout\);

-- Location: LCFF_X10_Y13_N15
\U_PICSPI_Slave|byte_data_sent[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~7_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(2));

-- Location: LCCOMB_X10_Y13_N18
\U_PICSPI_Slave|byte_data_sent~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~6_combout\ = (\U_PICSPI_Slave|cnt\(3) & ((\U_PICSPI_Slave|Equal2~0_combout\) # ((\U_PICSPI_Slave|byte_data_sent\(2) & !\U_PICSPI_Slave|byte_data_sent~0_combout\)))) # (!\U_PICSPI_Slave|cnt\(3) & 
-- (\U_PICSPI_Slave|byte_data_sent\(2) & (!\U_PICSPI_Slave|byte_data_sent~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(3),
	datab => \U_PICSPI_Slave|byte_data_sent\(2),
	datac => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	datad => \U_PICSPI_Slave|Equal2~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~6_combout\);

-- Location: LCFF_X10_Y13_N3
\U_PICSPI_Slave|byte_data_sent[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~8_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(1));

-- Location: LCCOMB_X10_Y13_N14
\U_PICSPI_Slave|byte_data_sent~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~7_combout\ = (\U_PICSPI_Slave|cnt\(2) & ((\U_PICSPI_Slave|Equal2~0_combout\) # ((\U_PICSPI_Slave|byte_data_sent\(1) & !\U_PICSPI_Slave|byte_data_sent~0_combout\)))) # (!\U_PICSPI_Slave|cnt\(2) & 
-- (\U_PICSPI_Slave|byte_data_sent\(1) & (!\U_PICSPI_Slave|byte_data_sent~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(2),
	datab => \U_PICSPI_Slave|byte_data_sent\(1),
	datac => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	datad => \U_PICSPI_Slave|Equal2~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~7_combout\);

-- Location: LCFF_X12_Y13_N3
\U_PICSPI_Slave|byte_data_sent[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(0));

-- Location: LCCOMB_X10_Y13_N2
\U_PICSPI_Slave|byte_data_sent~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~8_combout\ = (\U_PICSPI_Slave|byte_data_sent\(0) & (((\U_PICSPI_Slave|cnt\(1) & \U_PICSPI_Slave|Equal2~0_combout\)) # (!\U_PICSPI_Slave|byte_data_sent~0_combout\))) # (!\U_PICSPI_Slave|byte_data_sent\(0) & 
-- (\U_PICSPI_Slave|cnt\(1) & ((\U_PICSPI_Slave|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|byte_data_sent\(0),
	datab => \U_PICSPI_Slave|cnt\(1),
	datac => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	datad => \U_PICSPI_Slave|Equal2~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~8_combout\);

-- Location: LCCOMB_X12_Y13_N28
\U_PICSPI_Slave|byte_data_sent[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent[0]~9_combout\ = (\U_PICSPI_Slave|cnt\(0) & (\U_PICSPI_Slave|SSELr\(2) & !\U_PICSPI_Slave|SSELr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|cnt\(0),
	datac => \U_PICSPI_Slave|SSELr\(2),
	datad => \U_PICSPI_Slave|SSELr\(1),
	combout => \U_PICSPI_Slave|byte_data_sent[0]~9_combout\);

-- Location: LCCOMB_X12_Y13_N2
\U_PICSPI_Slave|byte_data_sent[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent[0]~10_combout\ = (\U_PICSPI_Slave|byte_data_sent[0]~9_combout\) # ((\U_PICSPI_Slave|byte_data_sent\(0) & !\U_PICSPI_Slave|byte_data_sent[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|byte_data_sent[0]~9_combout\,
	datac => \U_PICSPI_Slave|byte_data_sent\(0),
	datad => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent[0]~10_combout\);

-- Location: LCCOMB_X12_Y10_N30
\U_1HzClkDivider|cnt~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~13_combout\ = (\U_1HzClkDivider|Add0~46_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~5_combout\)) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~6_combout\,
	datab => \U_1HzClkDivider|Add0~46_combout\,
	datac => \U_1HzClkDivider|Equal0~5_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~13_combout\);

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
	padio => PIC_PBUS_Data(0),
	combout => \PIC_PBUS_Data[0]~8\);

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
	padio => PIC_PBUS_Data(1),
	combout => \PIC_PBUS_Data[1]~9\);

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
	padio => PIC_PBUS_Data(2),
	combout => \PIC_PBUS_Data[2]~10\);

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
	padio => PIC_PBUS_Data(3),
	combout => \PIC_PBUS_Data[3]~11\);

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
	padio => PIC_PBUS_Data(4),
	combout => \PIC_PBUS_Data[4]~12\);

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
	padio => PIC_PBUS_Data(5),
	combout => \PIC_PBUS_Data[5]~13\);

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
	padio => PIC_PBUS_Data(6),
	combout => \PIC_PBUS_Data[6]~14\);

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
	padio => PIC_PBUS_Data(7),
	combout => \PIC_PBUS_Data[7]~15\);

-- Location: LCCOMB_X12_Y10_N12
\U_1HzClkDivider|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~36_combout\ = (\U_1HzClkDivider|cnt\(18) & (\U_1HzClkDivider|Add0~35\ $ (GND))) # (!\U_1HzClkDivider|cnt\(18) & (!\U_1HzClkDivider|Add0~35\ & VCC))
-- \U_1HzClkDivider|Add0~37\ = CARRY((\U_1HzClkDivider|cnt\(18) & !\U_1HzClkDivider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(18),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~35\,
	combout => \U_1HzClkDivider|Add0~36_combout\,
	cout => \U_1HzClkDivider|Add0~37\);

-- Location: LCCOMB_X12_Y10_N14
\U_1HzClkDivider|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~38_combout\ = (\U_1HzClkDivider|cnt\(19) & (!\U_1HzClkDivider|Add0~37\)) # (!\U_1HzClkDivider|cnt\(19) & ((\U_1HzClkDivider|Add0~37\) # (GND)))
-- \U_1HzClkDivider|Add0~39\ = CARRY((!\U_1HzClkDivider|Add0~37\) # (!\U_1HzClkDivider|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(19),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~37\,
	combout => \U_1HzClkDivider|Add0~38_combout\,
	cout => \U_1HzClkDivider|Add0~39\);

-- Location: LCFF_X12_Y10_N15
\U_1HzClkDivider|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(19));

-- Location: LCCOMB_X12_Y10_N16
\U_1HzClkDivider|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~40_combout\ = (\U_1HzClkDivider|cnt\(20) & (\U_1HzClkDivider|Add0~39\ $ (GND))) # (!\U_1HzClkDivider|cnt\(20) & (!\U_1HzClkDivider|Add0~39\ & VCC))
-- \U_1HzClkDivider|Add0~41\ = CARRY((\U_1HzClkDivider|cnt\(20) & !\U_1HzClkDivider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(20),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~39\,
	combout => \U_1HzClkDivider|Add0~40_combout\,
	cout => \U_1HzClkDivider|Add0~41\);

-- Location: LCCOMB_X12_Y10_N18
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

-- Location: LCFF_X12_Y10_N19
\U_1HzClkDivider|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(21));

-- Location: LCCOMB_X12_Y10_N0
\U_1HzClkDivider|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~24_combout\ = (\U_1HzClkDivider|cnt\(12) & (\U_1HzClkDivider|Add0~23\ $ (GND))) # (!\U_1HzClkDivider|cnt\(12) & (!\U_1HzClkDivider|Add0~23\ & VCC))
-- \U_1HzClkDivider|Add0~25\ = CARRY((\U_1HzClkDivider|cnt\(12) & !\U_1HzClkDivider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(12),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~23\,
	combout => \U_1HzClkDivider|Add0~24_combout\,
	cout => \U_1HzClkDivider|Add0~25\);

-- Location: LCCOMB_X12_Y10_N24
\U_1HzClkDivider|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~11_combout\ = (\U_1HzClkDivider|Add0~24_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)) # (!\U_1HzClkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~5_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Add0~24_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~11_combout\);

-- Location: LCFF_X12_Y10_N25
\U_1HzClkDivider|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(12));

-- Location: LCCOMB_X12_Y10_N26
\U_1HzClkDivider|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~3_combout\ = (!\U_1HzClkDivider|cnt\(15) & (!\U_1HzClkDivider|cnt\(14) & (\U_1HzClkDivider|cnt\(12) & !\U_1HzClkDivider|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(15),
	datab => \U_1HzClkDivider|cnt\(14),
	datac => \U_1HzClkDivider|cnt\(12),
	datad => \U_1HzClkDivider|cnt\(13),
	combout => \U_1HzClkDivider|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y10_N22
\U_1HzClkDivider|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~2_combout\ = (!\U_1HzClkDivider|cnt\(11) & (\U_1HzClkDivider|cnt\(8) & (!\U_1HzClkDivider|cnt\(10) & !\U_1HzClkDivider|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(11),
	datab => \U_1HzClkDivider|cnt\(8),
	datac => \U_1HzClkDivider|cnt\(10),
	datad => \U_1HzClkDivider|cnt\(9),
	combout => \U_1HzClkDivider|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y11_N4
\U_1HzClkDivider|cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~9_combout\ = (\U_1HzClkDivider|Add0~0_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~5_combout\)) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Add0~0_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~5_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~9_combout\);

-- Location: LCFF_X12_Y11_N5
\U_1HzClkDivider|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(0));

-- Location: LCCOMB_X12_Y11_N2
\U_1HzClkDivider|cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~8_combout\ = (\U_1HzClkDivider|Add0~4_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~5_combout\)) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Add0~4_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~5_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~8_combout\);

-- Location: LCFF_X12_Y11_N3
\U_1HzClkDivider|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(2));

-- Location: LCCOMB_X12_Y1_N0
\U_1HzClkDivider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~1_combout\ = (!\U_1HzClkDivider|cnt\(1) & (!\U_1HzClkDivider|cnt\(0) & (\U_1HzClkDivider|cnt\(2) & \U_1HzClkDivider|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(1),
	datab => \U_1HzClkDivider|cnt\(0),
	datac => \U_1HzClkDivider|cnt\(2),
	datad => \U_1HzClkDivider|cnt\(3),
	combout => \U_1HzClkDivider|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y11_N6
\U_1HzClkDivider|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~4_combout\ = (\U_1HzClkDivider|Equal0~0_combout\ & (\U_1HzClkDivider|Equal0~3_combout\ & (\U_1HzClkDivider|Equal0~2_combout\ & \U_1HzClkDivider|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~0_combout\,
	datab => \U_1HzClkDivider|Equal0~3_combout\,
	datac => \U_1HzClkDivider|Equal0~2_combout\,
	datad => \U_1HzClkDivider|Equal0~1_combout\,
	combout => \U_1HzClkDivider|Equal0~4_combout\);

-- Location: LCCOMB_X12_Y10_N28
\U_1HzClkDivider|cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~12_combout\ = (\U_1HzClkDivider|Add0~44_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)) # (!\U_1HzClkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~5_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Add0~44_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~12_combout\);

-- Location: LCFF_X12_Y10_N29
\U_1HzClkDivider|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(22));

-- Location: LCFF_X12_Y10_N17
\U_1HzClkDivider|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(20));

-- Location: LCCOMB_X13_Y10_N18
\U_1HzClkDivider|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~6_combout\ = (\U_1HzClkDivider|cnt\(23) & (\U_1HzClkDivider|cnt\(22) & (!\U_1HzClkDivider|cnt\(21) & !\U_1HzClkDivider|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(23),
	datab => \U_1HzClkDivider|cnt\(22),
	datac => \U_1HzClkDivider|cnt\(21),
	datad => \U_1HzClkDivider|cnt\(20),
	combout => \U_1HzClkDivider|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y11_N0
\U_1HzClkDivider|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~7_combout\ = (\U_1HzClkDivider|Add0~6_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~5_combout\)) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Add0~6_combout\,
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~5_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~7_combout\);

-- Location: LCFF_X12_Y11_N1
\U_1HzClkDivider|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(3));

-- Location: LCCOMB_X12_Y11_N20
\U_1HzClkDivider|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~12_combout\ = (\U_1HzClkDivider|cnt\(6) & (\U_1HzClkDivider|Add0~11\ $ (GND))) # (!\U_1HzClkDivider|cnt\(6) & (!\U_1HzClkDivider|Add0~11\ & VCC))
-- \U_1HzClkDivider|Add0~13\ = CARRY((\U_1HzClkDivider|cnt\(6) & !\U_1HzClkDivider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(6),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~11\,
	combout => \U_1HzClkDivider|Add0~12_combout\,
	cout => \U_1HzClkDivider|Add0~13\);

-- Location: LCCOMB_X13_Y10_N26
\U_1HzClkDivider|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~5_combout\ = (\U_1HzClkDivider|Add0~12_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~5_combout\)) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~6_combout\,
	datab => \U_1HzClkDivider|Equal0~5_combout\,
	datac => \U_1HzClkDivider|Add0~12_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~5_combout\);

-- Location: LCFF_X13_Y10_N27
\U_1HzClkDivider|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(6));

-- Location: LCCOMB_X12_Y11_N22
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

-- Location: LCCOMB_X13_Y10_N12
\U_1HzClkDivider|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~4_combout\ = (\U_1HzClkDivider|Add0~14_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~5_combout\)) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~6_combout\,
	datab => \U_1HzClkDivider|Equal0~5_combout\,
	datac => \U_1HzClkDivider|Add0~14_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~4_combout\);

-- Location: LCFF_X13_Y10_N13
\U_1HzClkDivider|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(7));

-- Location: LCCOMB_X12_Y11_N24
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

-- Location: LCCOMB_X13_Y10_N2
\U_1HzClkDivider|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~10_combout\ = (\U_1HzClkDivider|Add0~16_combout\ & (((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~5_combout\)) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~6_combout\,
	datab => \U_1HzClkDivider|Equal0~5_combout\,
	datac => \U_1HzClkDivider|Add0~16_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~10_combout\);

-- Location: LCFF_X13_Y10_N3
\U_1HzClkDivider|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(8));

-- Location: LCCOMB_X12_Y11_N26
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

-- Location: LCFF_X12_Y11_N27
\U_1HzClkDivider|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(9));

-- Location: LCCOMB_X12_Y11_N28
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

-- Location: LCFF_X12_Y11_N29
\U_1HzClkDivider|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(10));

-- Location: LCCOMB_X12_Y11_N30
\U_1HzClkDivider|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~22_combout\ = (\U_1HzClkDivider|cnt\(11) & (!\U_1HzClkDivider|Add0~21\)) # (!\U_1HzClkDivider|cnt\(11) & ((\U_1HzClkDivider|Add0~21\) # (GND)))
-- \U_1HzClkDivider|Add0~23\ = CARRY((!\U_1HzClkDivider|Add0~21\) # (!\U_1HzClkDivider|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(11),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~21\,
	combout => \U_1HzClkDivider|Add0~22_combout\,
	cout => \U_1HzClkDivider|Add0~23\);

-- Location: LCFF_X12_Y11_N31
\U_1HzClkDivider|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(11));

-- Location: LCCOMB_X12_Y10_N2
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

-- Location: LCFF_X12_Y10_N3
\U_1HzClkDivider|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(13));

-- Location: LCCOMB_X12_Y10_N4
\U_1HzClkDivider|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~28_combout\ = (\U_1HzClkDivider|cnt\(14) & (\U_1HzClkDivider|Add0~27\ $ (GND))) # (!\U_1HzClkDivider|cnt\(14) & (!\U_1HzClkDivider|Add0~27\ & VCC))
-- \U_1HzClkDivider|Add0~29\ = CARRY((\U_1HzClkDivider|cnt\(14) & !\U_1HzClkDivider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|cnt\(14),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~27\,
	combout => \U_1HzClkDivider|Add0~28_combout\,
	cout => \U_1HzClkDivider|Add0~29\);

-- Location: LCFF_X12_Y10_N5
\U_1HzClkDivider|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(14));

-- Location: LCCOMB_X12_Y10_N8
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

-- Location: LCFF_X12_Y10_N9
\U_1HzClkDivider|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(16));

-- Location: LCFF_X12_Y10_N13
\U_1HzClkDivider|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(18));

-- Location: LCCOMB_X13_Y10_N30
\U_1HzClkDivider|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~5_combout\ = (!\U_1HzClkDivider|cnt\(17) & (!\U_1HzClkDivider|cnt\(18) & (!\U_1HzClkDivider|cnt\(19) & !\U_1HzClkDivider|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(17),
	datab => \U_1HzClkDivider|cnt\(18),
	datac => \U_1HzClkDivider|cnt\(19),
	datad => \U_1HzClkDivider|cnt\(16),
	combout => \U_1HzClkDivider|Equal0~5_combout\);

-- Location: LCCOMB_X13_Y10_N14
\U_1HzClkDivider|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~7_combout\ = (\U_1HzClkDivider|Equal0~5_combout\ & (\U_1HzClkDivider|Equal0~6_combout\ & \U_1HzClkDivider|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Equal0~5_combout\,
	datac => \U_1HzClkDivider|Equal0~6_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|Equal0~7_combout\);

-- Location: LCFF_X13_Y10_N15
\U_1HzClkDivider|clk_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \U_1HzClkDivider|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|clk_out~regout\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X3_Y8_N26
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

-- Location: LCFF_X3_Y8_N27
current_State : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \current_State~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_State~regout\);

-- Location: LCCOMB_X3_Y8_N24
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

-- Location: LCFF_X3_Y8_N25
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

-- Location: LCFF_X9_Y13_N31
\U_PICSPI_Slave|MOSIr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_SPI_MOSI~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|MOSIr\(0));

-- Location: LCCOMB_X9_Y13_N28
\U_PICSPI_Slave|MOSIr[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|MOSIr[1]~feeder_combout\ = \U_PICSPI_Slave|MOSIr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_PICSPI_Slave|MOSIr\(0),
	combout => \U_PICSPI_Slave|MOSIr[1]~feeder_combout\);

-- Location: LCFF_X9_Y13_N29
\U_PICSPI_Slave|MOSIr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|MOSIr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|MOSIr\(1));

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

-- Location: LCCOMB_X9_Y18_N16
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

-- Location: LCFF_X9_Y18_N17
\U_PICSPI_Slave|SCKr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|SCKr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SCKr\(0));

-- Location: LCFF_X10_Y13_N31
\U_PICSPI_Slave|SCKr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_PICSPI_Slave|SCKr\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SCKr\(1));

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

-- Location: LCCOMB_X9_Y18_N18
\U_PICSPI_Slave|SSELr[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|SSELr[0]~feeder_combout\ = \PIC_SPI_Select~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_SPI_Select~combout\,
	combout => \U_PICSPI_Slave|SSELr[0]~feeder_combout\);

-- Location: LCFF_X9_Y18_N19
\U_PICSPI_Slave|SSELr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|SSELr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SSELr\(0));

-- Location: LCFF_X10_Y13_N27
\U_PICSPI_Slave|SSELr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_PICSPI_Slave|SSELr\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SSELr\(1));

-- Location: LCFF_X10_Y13_N7
\U_PICSPI_Slave|SCKr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_PICSPI_Slave|SCKr\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SCKr\(2));

-- Location: LCCOMB_X10_Y13_N26
\U_PICSPI_Slave|byte_received~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_received~0_combout\ = (\U_PICSPI_Slave|SCKr\(1) & (!\U_PICSPI_Slave|SSELr\(1) & !\U_PICSPI_Slave|SCKr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|SCKr\(1),
	datac => \U_PICSPI_Slave|SSELr\(1),
	datad => \U_PICSPI_Slave|SCKr\(2),
	combout => \U_PICSPI_Slave|byte_received~0_combout\);

-- Location: LCCOMB_X9_Y13_N26
\U_PICSPI_Slave|byte_data_received[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_received[0]~0_combout\ = (\U_PICSPI_Slave|byte_received~0_combout\ & (\U_PICSPI_Slave|MOSIr\(1))) # (!\U_PICSPI_Slave|byte_received~0_combout\ & ((\U_PICSPI_Slave|byte_data_received\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|MOSIr\(1),
	datac => \U_PICSPI_Slave|byte_data_received\(0),
	datad => \U_PICSPI_Slave|byte_received~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_received[0]~0_combout\);

-- Location: LCFF_X9_Y13_N27
\U_PICSPI_Slave|byte_data_received[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_received[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_received\(0));

-- Location: LCCOMB_X10_Y13_N4
\U_PICSPI_Slave|bitcnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|bitcnt~0_combout\ = (!\U_PICSPI_Slave|SSELr\(1) & (\U_PICSPI_Slave|bitcnt\(0) $ (((!\U_PICSPI_Slave|SCKr\(2) & \U_PICSPI_Slave|SCKr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|SCKr\(2),
	datab => \U_PICSPI_Slave|SSELr\(1),
	datac => \U_PICSPI_Slave|bitcnt\(0),
	datad => \U_PICSPI_Slave|SCKr\(1),
	combout => \U_PICSPI_Slave|bitcnt~0_combout\);

-- Location: LCFF_X10_Y13_N5
\U_PICSPI_Slave|bitcnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|bitcnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|bitcnt\(0));

-- Location: LCCOMB_X10_Y13_N10
\U_PICSPI_Slave|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|Add1~0_combout\ = (!\U_PICSPI_Slave|SCKr\(2) & (\U_PICSPI_Slave|SCKr\(1) & \U_PICSPI_Slave|bitcnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|SCKr\(2),
	datab => \U_PICSPI_Slave|SCKr\(1),
	datad => \U_PICSPI_Slave|bitcnt\(0),
	combout => \U_PICSPI_Slave|Add1~0_combout\);

-- Location: LCCOMB_X10_Y13_N24
\U_PICSPI_Slave|bitcnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|bitcnt~1_combout\ = (!\U_PICSPI_Slave|SSELr\(1) & (\U_PICSPI_Slave|bitcnt\(1) $ (\U_PICSPI_Slave|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|SSELr\(1),
	datac => \U_PICSPI_Slave|bitcnt\(1),
	datad => \U_PICSPI_Slave|Add1~0_combout\,
	combout => \U_PICSPI_Slave|bitcnt~1_combout\);

-- Location: LCFF_X10_Y13_N25
\U_PICSPI_Slave|bitcnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|bitcnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|bitcnt\(1));

-- Location: LCCOMB_X10_Y13_N12
\U_PICSPI_Slave|byte_received~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_received~1_combout\ = (\U_PICSPI_Slave|bitcnt\(2) & (\U_PICSPI_Slave|bitcnt\(0) & (\U_PICSPI_Slave|bitcnt\(1) & \U_PICSPI_Slave|byte_received~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|bitcnt\(2),
	datab => \U_PICSPI_Slave|bitcnt\(0),
	datac => \U_PICSPI_Slave|bitcnt\(1),
	datad => \U_PICSPI_Slave|byte_received~0_combout\,
	combout => \U_PICSPI_Slave|byte_received~1_combout\);

-- Location: LCFF_X10_Y13_N13
\U_PICSPI_Slave|byte_received\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_received~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_received~regout\);

-- Location: LCCOMB_X9_Y13_N8
\U_PICSPI_Slave|LED~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|LED~0_combout\ = (\U_PICSPI_Slave|byte_received~regout\ & (\U_PICSPI_Slave|byte_data_received\(0))) # (!\U_PICSPI_Slave|byte_received~regout\ & ((\U_PICSPI_Slave|LED~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|byte_data_received\(0),
	datac => \U_PICSPI_Slave|LED~regout\,
	datad => \U_PICSPI_Slave|byte_received~regout\,
	combout => \U_PICSPI_Slave|LED~0_combout\);

-- Location: LCFF_X9_Y13_N9
\U_PICSPI_Slave|LED\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|LED~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|LED~regout\);

-- Location: LCCOMB_X32_Y1_N0
\BLED_Blue[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Blue[0]~reg0feeder_combout\ = \PIC_PBUS_Data[4]~12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[4]~12\,
	combout => \BLED_Blue[0]~reg0feeder_combout\);

-- Location: LCFF_X32_Y1_N1
\BLED_Blue[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Blue[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Blue[0]~reg0_regout\);

-- Location: LCFF_X29_Y4_N17
\BLED_Blue[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~13\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Blue[1]~reg0_regout\);

-- Location: LCCOMB_X32_Y11_N8
\BLED_Blue[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Blue[2]~reg0feeder_combout\ = \PIC_PBUS_Data[6]~14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[6]~14\,
	combout => \BLED_Blue[2]~reg0feeder_combout\);

-- Location: LCFF_X32_Y11_N9
\BLED_Blue[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Blue[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Blue[2]~reg0_regout\);

-- Location: LCFF_X32_Y6_N9
\BLED_Blue[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~15\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Blue[3]~reg0_regout\);

-- Location: LCCOMB_X29_Y2_N24
\BLED_Orange[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Orange[0]~reg0feeder_combout\ = \PIC_PBUS_Data[0]~8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[0]~8\,
	combout => \BLED_Orange[0]~reg0feeder_combout\);

-- Location: LCFF_X29_Y2_N25
\BLED_Orange[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Orange[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Orange[0]~reg0_regout\);

-- Location: LCCOMB_X30_Y12_N8
\BLED_Orange[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Orange[1]~reg0feeder_combout\ = \PIC_PBUS_Data[1]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[1]~9\,
	combout => \BLED_Orange[1]~reg0feeder_combout\);

-- Location: LCFF_X30_Y12_N9
\BLED_Orange[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Orange[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Orange[1]~reg0_regout\);

-- Location: LCCOMB_X32_Y3_N8
\BLED_Orange[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Orange[2]~reg0feeder_combout\ = \PIC_PBUS_Data[2]~10\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[2]~10\,
	combout => \BLED_Orange[2]~reg0feeder_combout\);

-- Location: LCFF_X32_Y3_N9
\BLED_Orange[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Orange[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Orange[2]~reg0_regout\);

-- Location: LCCOMB_X29_Y8_N0
\BLED_Orange[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Orange[3]~reg0feeder_combout\ = \PIC_PBUS_Data[3]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[3]~11\,
	combout => \BLED_Orange[3]~reg0feeder_combout\);

-- Location: LCFF_X29_Y8_N1
\BLED_Orange[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Orange[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Orange[3]~reg0_regout\);

-- Location: LCFF_X10_Y13_N11
\U_PICSPI_Slave|SSELr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_PICSPI_Slave|SSELr\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SSELr\(2));

-- Location: LCCOMB_X10_Y13_N30
\U_PICSPI_Slave|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|Equal2~0_combout\ = (!\U_PICSPI_Slave|SSELr\(1) & \U_PICSPI_Slave|SSELr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|SSELr\(1),
	datad => \U_PICSPI_Slave|SSELr\(2),
	combout => \U_PICSPI_Slave|Equal2~0_combout\);

-- Location: LCCOMB_X10_Y13_N16
\U_PICSPI_Slave|bitcnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|bitcnt~2_combout\ = (!\U_PICSPI_Slave|SSELr\(1) & (\U_PICSPI_Slave|bitcnt\(2) $ (((\U_PICSPI_Slave|bitcnt\(1) & \U_PICSPI_Slave|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|bitcnt\(1),
	datab => \U_PICSPI_Slave|SSELr\(1),
	datac => \U_PICSPI_Slave|bitcnt\(2),
	datad => \U_PICSPI_Slave|Add1~0_combout\,
	combout => \U_PICSPI_Slave|bitcnt~2_combout\);

-- Location: LCFF_X10_Y13_N17
\U_PICSPI_Slave|bitcnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|bitcnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|bitcnt\(2));

-- Location: LCCOMB_X10_Y13_N20
\U_PICSPI_Slave|byte_data_sent~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~0_combout\ = (\U_PICSPI_Slave|Equal2~0_combout\) # ((!\U_PICSPI_Slave|bitcnt\(1) & (!\U_PICSPI_Slave|bitcnt\(0) & !\U_PICSPI_Slave|bitcnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|bitcnt\(1),
	datab => \U_PICSPI_Slave|bitcnt\(0),
	datac => \U_PICSPI_Slave|bitcnt\(2),
	datad => \U_PICSPI_Slave|Equal2~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~0_combout\);

-- Location: LCCOMB_X12_Y13_N0
\U_PICSPI_Slave|cnt[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[0]~21_combout\ = \U_PICSPI_Slave|cnt\(0) $ (((\U_PICSPI_Slave|SSELr\(2) & !\U_PICSPI_Slave|SSELr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|SSELr\(2),
	datac => \U_PICSPI_Slave|cnt\(0),
	datad => \U_PICSPI_Slave|SSELr\(1),
	combout => \U_PICSPI_Slave|cnt[0]~21_combout\);

-- Location: LCFF_X12_Y13_N1
\U_PICSPI_Slave|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(0));

-- Location: LCCOMB_X12_Y13_N8
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

-- Location: LCFF_X12_Y13_N9
\U_PICSPI_Slave|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[2]~9_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(2));

-- Location: LCCOMB_X12_Y13_N14
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

-- Location: LCFF_X12_Y13_N15
\U_PICSPI_Slave|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[5]~15_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(5));

-- Location: LCCOMB_X12_Y13_N18
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

-- Location: LCFF_X12_Y13_N19
\U_PICSPI_Slave|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[7]~19_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(7));

-- Location: LCCOMB_X10_Y13_N28
\U_PICSPI_Slave|byte_data_sent~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~1_combout\ = (\U_PICSPI_Slave|byte_data_sent\(6) & (((\U_PICSPI_Slave|Equal2~0_combout\ & \U_PICSPI_Slave|cnt\(7))) # (!\U_PICSPI_Slave|byte_data_sent~0_combout\))) # (!\U_PICSPI_Slave|byte_data_sent\(6) & 
-- (\U_PICSPI_Slave|Equal2~0_combout\ & ((\U_PICSPI_Slave|cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|byte_data_sent\(6),
	datab => \U_PICSPI_Slave|Equal2~0_combout\,
	datac => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	datad => \U_PICSPI_Slave|cnt\(7),
	combout => \U_PICSPI_Slave|byte_data_sent~1_combout\);

-- Location: LCCOMB_X10_Y13_N6
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

-- Location: LCFF_X10_Y13_N29
\U_PICSPI_Slave|byte_data_sent[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~1_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(7));

-- Location: LCCOMB_X9_Y16_N0
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

-- Location: LCFF_X9_Y16_N1
\U_PICSPI_Slave|MISO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|MISO~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|MISO~regout\);

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
	padio => ww_PIC_PBUS_A_D);

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
	padio => ww_PIC_PBUS_R_W);

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
	padio => ww_PIC_PBUS_OK_IN);

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
	datain => GND,
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Ultra_T_Trigger);

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
	padio => ww_Ultra_T_Edge);

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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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


