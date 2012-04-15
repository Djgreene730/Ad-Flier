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

-- DATE "04/15/2012 19:08:06"

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
-- Switch_2	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[0]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[2]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_1[3]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_SPI_MOSI	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_SPI_SCLK	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_SPI_Select	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_PBUS_A_D	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_PBUS_OK_IN	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIC_PBUS_R_W	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \Registers|RegCont|state.wd2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_1HzClkDivider|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Motor_1|pulsecount[2]~13_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~2_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~12_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~22_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~34_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[2]~9_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[4]~13_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[6]~18\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[7]~19_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[0]~7_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[4]~15_combout\ : std_logic;
SIGNAL \pwm1[5]~2_combout\ : std_logic;
SIGNAL \pwm1[4]~3_combout\ : std_logic;
SIGNAL \pwm1[0]~7_combout\ : std_logic;
SIGNAL \pwm3[6]~1_combout\ : std_logic;
SIGNAL \pwm3[3]~4_combout\ : std_logic;
SIGNAL \pwm3[1]~6_combout\ : std_logic;
SIGNAL \pwm5[6]~1_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~2_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~5_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~9_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~11_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|bitcnt~2_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[0]~21_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~4_combout\ : std_logic;
SIGNAL \Registers|RegCont|state.rd1~regout\ : std_logic;
SIGNAL \Registers|RegCont|Selector6~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~5_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~6_combout\ : std_logic;
SIGNAL \Registers|RegCont|Selector4~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~7_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~8_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent[0]~9_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent[0]~10_combout\ : std_logic;
SIGNAL \Registers|RegCont|nextstate.rd1_429~combout\ : std_logic;
SIGNAL \PIC_PBUS_R_W~combout\ : std_logic;
SIGNAL \Registers|RegZM|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegZD|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegZM|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegXM|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegAM|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegZD|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegAM|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegZD|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegXM|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegXM|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegAM|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \PIC_PBUS_Data[0]~8\ : std_logic;
SIGNAL \PIC_PBUS_Data[1]~9\ : std_logic;
SIGNAL \PIC_PBUS_Data[2]~10\ : std_logic;
SIGNAL \PIC_PBUS_Data[3]~11\ : std_logic;
SIGNAL \PIC_PBUS_Data[4]~12\ : std_logic;
SIGNAL \PIC_PBUS_Data[5]~13\ : std_logic;
SIGNAL \PIC_PBUS_Data[6]~14\ : std_logic;
SIGNAL \PIC_PBUS_Data[7]~15\ : std_logic;
SIGNAL \Registers|RegAM|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \Switch_2~combout\ : std_logic;
SIGNAL \PIC_PBUS_OK_IN~combout\ : std_logic;
SIGNAL \PIC_PBUS_A_D~combout\ : std_logic;
SIGNAL \Registers|RegCont|Selector10~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|nextstate.wd1_385~combout\ : std_logic;
SIGNAL \Registers|RegCont|state.wd1~regout\ : std_logic;
SIGNAL \Registers|RegCont|nextstate.wd2_374~combout\ : std_logic;
SIGNAL \Registers|RegCont|state.wd2~regout\ : std_logic;
SIGNAL \Registers|RegCont|state.wd2~clkctrl_outclk\ : std_logic;
SIGNAL \Registers|RegCont|nextstate.wa2_396~combout\ : std_logic;
SIGNAL \Registers|RegCont|state.wa2~regout\ : std_logic;
SIGNAL \Registers|RegCont|Selector3~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|Selector3~1_combout\ : std_logic;
SIGNAL \Registers|RegCont|nextstate.ra1_440~combout\ : std_logic;
SIGNAL \Registers|RegCont|state.ra1~regout\ : std_logic;
SIGNAL \Registers|RegCont|nextstate.rd2_418~combout\ : std_logic;
SIGNAL \Registers|RegCont|state.rd2~regout\ : std_logic;
SIGNAL \Registers|RegCont|tbo~combout\ : std_logic;
SIGNAL \Registers|RegCont|Selector1~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|nextstate.fetch_451~combout\ : std_logic;
SIGNAL \Registers|RegCont|state.fetch~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|state.fetch~regout\ : std_logic;
SIGNAL \Registers|RegCont|Selector7~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|nextstate.wa1_407~combout\ : std_logic;
SIGNAL \Registers|RegCont|state.wa1~regout\ : std_logic;
SIGNAL \Registers|RegCont|regi07~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi06~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi07~1_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi04~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi06~1_combout\ : std_logic;
SIGNAL \Registers|databus[0]~1_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi03~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi01~0_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi00~0_combout\ : std_logic;
SIGNAL \Registers|RegXM|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi03~1_combout\ : std_logic;
SIGNAL \Registers|databus[0]~0_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[0]~0_combout\ : std_logic;
SIGNAL \Registers|RegAM|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[1]~3_combout\ : std_logic;
SIGNAL \Registers|RegZD|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi02~0_combout\ : std_logic;
SIGNAL \Registers|databus[1]~2_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[1]~1_combout\ : std_logic;
SIGNAL \Registers|RegZM|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \Registers|RegCont|regi05~0_combout\ : std_logic;
SIGNAL \Registers|databus[2]~5_combout\ : std_logic;
SIGNAL \Registers|RegXM|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[2]~4_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[2]~2_combout\ : std_logic;
SIGNAL \Registers|RegZM|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[3]~7_combout\ : std_logic;
SIGNAL \Registers|RegXM|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[3]~6_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[3]~3_combout\ : std_logic;
SIGNAL \Registers|databus[4]~9_combout\ : std_logic;
SIGNAL \Registers|RegZD|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[4]~8_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[4]~4_combout\ : std_logic;
SIGNAL \Registers|RegZD|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[5]~10_combout\ : std_logic;
SIGNAL \Registers|databus[5]~11_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[5]~5_combout\ : std_logic;
SIGNAL \Registers|RegZM|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \Registers|databus[6]~13_combout\ : std_logic;
SIGNAL \Registers|databus[6]~12_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[6]~6_combout\ : std_logic;
SIGNAL \Registers|databus[7]~15_combout\ : std_logic;
SIGNAL \Registers|databus[7]~14_combout\ : std_logic;
SIGNAL \Registers|MuxOut|tmp1[7]~7_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~0_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~10_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~1\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~3\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~4_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~8_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~5\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~6_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~1_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~28_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~3_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~7\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~8_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~7_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~9\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~10_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|cnt~6_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~0_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~4_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~11\ : std_logic;
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
SIGNAL \U_1HzClkDivider|Add0~33\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~35\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~36_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~37\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~39\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~40_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~38_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Add0~32_combout\ : std_logic;
SIGNAL \U_1HzClkDivider|Equal0~5_combout\ : std_logic;
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
SIGNAL \PIC_SPI_MOSI~combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|MOSIr[1]~feeder_combout\ : std_logic;
SIGNAL \PIC_SPI_SCLK~combout\ : std_logic;
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
SIGNAL \BLED_Blue[1]~reg0feeder_combout\ : std_logic;
SIGNAL \BLED_Blue[1]~reg0_regout\ : std_logic;
SIGNAL \BLED_Blue[2]~reg0_regout\ : std_logic;
SIGNAL \BLED_Blue[3]~reg0feeder_combout\ : std_logic;
SIGNAL \BLED_Blue[3]~reg0_regout\ : std_logic;
SIGNAL \BLED_Orange[0]~reg0feeder_combout\ : std_logic;
SIGNAL \BLED_Orange[0]~reg0_regout\ : std_logic;
SIGNAL \BLED_Orange[1]~reg0feeder_combout\ : std_logic;
SIGNAL \BLED_Orange[1]~reg0_regout\ : std_logic;
SIGNAL \BLED_Orange[2]~reg0feeder_combout\ : std_logic;
SIGNAL \BLED_Orange[2]~reg0_regout\ : std_logic;
SIGNAL \BLED_Orange[3]~reg0_regout\ : std_logic;
SIGNAL \Registers|RegCont|ok_in~combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[1]~7_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|Equal2~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[1]~8\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[2]~10\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[3]~11_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[3]~12\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[4]~14\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[5]~15_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[5]~16\ : std_logic;
SIGNAL \U_PICSPI_Slave|cnt[6]~17_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~0_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~3_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent[0]~2_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|byte_data_sent~1_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|MISO~feeder_combout\ : std_logic;
SIGNAL \U_PICSPI_Slave|MISO~regout\ : std_logic;
SIGNAL \Motor_1|pulsecount[0]~33_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[1]~12\ : std_logic;
SIGNAL \Motor_1|pulsecount[2]~14\ : std_logic;
SIGNAL \Motor_1|pulsecount[3]~15_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[0]~8\ : std_logic;
SIGNAL \Motor_1|clockcount[1]~9_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[1]~10\ : std_logic;
SIGNAL \Motor_1|clockcount[2]~12\ : std_logic;
SIGNAL \Motor_1|clockcount[3]~13_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[3]~14\ : std_logic;
SIGNAL \Motor_1|clockcount[4]~16\ : std_logic;
SIGNAL \Motor_1|clockcount[5]~17_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[5]~18\ : std_logic;
SIGNAL \Motor_1|clockcount[6]~19_combout\ : std_logic;
SIGNAL \Motor_1|clockcount[2]~11_combout\ : std_logic;
SIGNAL \Motor_1|Equal0~0_combout\ : std_logic;
SIGNAL \Motor_1|Equal0~1_combout\ : std_logic;
SIGNAL \Motor_1|clocktick~regout\ : std_logic;
SIGNAL \Motor_1|pulsecount[3]~16\ : std_logic;
SIGNAL \Motor_1|pulsecount[4]~18\ : std_logic;
SIGNAL \Motor_1|pulsecount[5]~19_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[5]~20\ : std_logic;
SIGNAL \Motor_1|pulsecount[6]~22\ : std_logic;
SIGNAL \Motor_1|pulsecount[7]~23_combout\ : std_logic;
SIGNAL \counter[1]~7_combout\ : std_logic;
SIGNAL \counter[1]~8\ : std_logic;
SIGNAL \counter[2]~9_combout\ : std_logic;
SIGNAL \counter[2]~10\ : std_logic;
SIGNAL \counter[3]~11_combout\ : std_logic;
SIGNAL \counter[3]~12\ : std_logic;
SIGNAL \counter[4]~14\ : std_logic;
SIGNAL \counter[5]~15_combout\ : std_logic;
SIGNAL \counter[5]~16\ : std_logic;
SIGNAL \counter[6]~17_combout\ : std_logic;
SIGNAL \counter[6]~18\ : std_logic;
SIGNAL \counter[7]~19_combout\ : std_logic;
SIGNAL \pwm1[7]~0_combout\ : std_logic;
SIGNAL \pwm1[6]~1_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[4]~17_combout\ : std_logic;
SIGNAL \pwm1[3]~4_combout\ : std_logic;
SIGNAL \pwm1[2]~5_combout\ : std_logic;
SIGNAL \pwm1[1]~6_combout\ : std_logic;
SIGNAL \Motor_1|LessThan0~2_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~4_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~6_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~8_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~10_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~12_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~14_cout\ : std_logic;
SIGNAL \Motor_1|LessThan0~15_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[7]~24\ : std_logic;
SIGNAL \Motor_1|pulsecount[8]~26\ : std_logic;
SIGNAL \Motor_1|pulsecount[9]~27_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[9]~28\ : std_logic;
SIGNAL \Motor_1|pulsecount[10]~29_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[10]~30\ : std_logic;
SIGNAL \Motor_1|pulsecount[11]~31_combout\ : std_logic;
SIGNAL \Motor_1|LessThan0~0_combout\ : std_logic;
SIGNAL \Motor_1|LessThan0~17_combout\ : std_logic;
SIGNAL \Motor_1|pwm~regout\ : std_logic;
SIGNAL \pwm2[7]~0_combout\ : std_logic;
SIGNAL \pwm2[6]~1_combout\ : std_logic;
SIGNAL \pwm2[5]~2_combout\ : std_logic;
SIGNAL \counter[4]~13_combout\ : std_logic;
SIGNAL \pwm2[4]~3_combout\ : std_logic;
SIGNAL \pwm2[3]~4_combout\ : std_logic;
SIGNAL \pwm2[2]~5_combout\ : std_logic;
SIGNAL \pwm2[1]~6_combout\ : std_logic;
SIGNAL \pwm2[0]~7_combout\ : std_logic;
SIGNAL \Motor_2|LessThan0~1_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~3_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~5_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~7_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~9_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~11_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~13_cout\ : std_logic;
SIGNAL \Motor_2|LessThan0~14_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[8]~25_combout\ : std_logic;
SIGNAL \Motor_2|LessThan0~16_combout\ : std_logic;
SIGNAL \Motor_2|pwm~regout\ : std_logic;
SIGNAL \pwm3[7]~0_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[6]~21_combout\ : std_logic;
SIGNAL \pwm3[5]~2_combout\ : std_logic;
SIGNAL \pwm3[4]~3_combout\ : std_logic;
SIGNAL \pwm3[2]~5_combout\ : std_logic;
SIGNAL \Motor_1|pulsecount[1]~11_combout\ : std_logic;
SIGNAL \pwm3[0]~7_combout\ : std_logic;
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
SIGNAL \pwm5[7]~0_combout\ : std_logic;
SIGNAL \pwm5[5]~2_combout\ : std_logic;
SIGNAL \pwm5[4]~3_combout\ : std_logic;
SIGNAL \pwm5[3]~4_combout\ : std_logic;
SIGNAL \pwm5[2]~5_combout\ : std_logic;
SIGNAL \pwm5[1]~6_combout\ : std_logic;
SIGNAL \pwm5[0]~7_combout\ : std_logic;
SIGNAL \Motor_5|LessThan0~1_cout\ : std_logic;
SIGNAL \Motor_5|LessThan0~3_cout\ : std_logic;
SIGNAL \Motor_5|LessThan0~5_cout\ : std_logic;
SIGNAL \Motor_5|LessThan0~7_cout\ : std_logic;
SIGNAL \Motor_5|LessThan0~9_cout\ : std_logic;
SIGNAL \Motor_5|LessThan0~11_cout\ : std_logic;
SIGNAL \Motor_5|LessThan0~13_cout\ : std_logic;
SIGNAL \Motor_5|LessThan0~14_combout\ : std_logic;
SIGNAL \Motor_5|LessThan0~16_combout\ : std_logic;
SIGNAL \Motor_5|pwm~regout\ : std_logic;
SIGNAL \Switch_1~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Registers|RegXD|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Registers|RegAdd|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Motor_1|clockcount\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Motor_1|pulsecount\ : std_logic_vector(11 DOWNTO 0);
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

\Registers|RegCont|state.wd2~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Registers|RegCont|state.wd2~regout\);

\U_1HzClkDivider|clk_out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \U_1HzClkDivider|clk_out~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X15_Y10_N13
\Motor_1|pulsecount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[2]~13_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(2));

-- Location: LCFF_X6_Y8_N31
\U_PICSPI_Slave|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[7]~19_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(7));

-- Location: LCCOMB_X15_Y10_N12
\Motor_1|pulsecount[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[2]~13_combout\ = (\Motor_1|pulsecount\(2) & (!\Motor_1|pulsecount[1]~12\)) # (!\Motor_1|pulsecount\(2) & ((\Motor_1|pulsecount[1]~12\) # (GND)))
-- \Motor_1|pulsecount[2]~14\ = CARRY((!\Motor_1|pulsecount[1]~12\) # (!\Motor_1|pulsecount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(2),
	datad => VCC,
	cin => \Motor_1|pulsecount[1]~12\,
	combout => \Motor_1|pulsecount[2]~13_combout\,
	cout => \Motor_1|pulsecount[2]~14\);

-- Location: LCCOMB_X13_Y8_N12
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

-- Location: LCCOMB_X13_Y8_N22
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

-- Location: LCCOMB_X13_Y7_N0
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

-- Location: LCCOMB_X13_Y7_N12
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

-- Location: LCFF_X6_Y8_N25
\U_PICSPI_Slave|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[4]~13_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(4));

-- Location: LCFF_X6_Y8_N21
\U_PICSPI_Slave|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[2]~9_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(2));

-- Location: LCCOMB_X6_Y8_N20
\U_PICSPI_Slave|cnt[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[2]~9_combout\ = (\U_PICSPI_Slave|cnt\(2) & (!\U_PICSPI_Slave|cnt[1]~8\)) # (!\U_PICSPI_Slave|cnt\(2) & ((\U_PICSPI_Slave|cnt[1]~8\) # (GND)))
-- \U_PICSPI_Slave|cnt[2]~10\ = CARRY((!\U_PICSPI_Slave|cnt[1]~8\) # (!\U_PICSPI_Slave|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(2),
	datad => VCC,
	cin => \U_PICSPI_Slave|cnt[1]~8\,
	combout => \U_PICSPI_Slave|cnt[2]~9_combout\,
	cout => \U_PICSPI_Slave|cnt[2]~10\);

-- Location: LCCOMB_X6_Y8_N24
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

-- Location: LCCOMB_X6_Y8_N28
\U_PICSPI_Slave|cnt[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[6]~17_combout\ = (\U_PICSPI_Slave|cnt\(6) & (!\U_PICSPI_Slave|cnt[5]~16\)) # (!\U_PICSPI_Slave|cnt\(6) & ((\U_PICSPI_Slave|cnt[5]~16\) # (GND)))
-- \U_PICSPI_Slave|cnt[6]~18\ = CARRY((!\U_PICSPI_Slave|cnt[5]~16\) # (!\U_PICSPI_Slave|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|cnt\(6),
	datad => VCC,
	cin => \U_PICSPI_Slave|cnt[5]~16\,
	combout => \U_PICSPI_Slave|cnt[6]~17_combout\,
	cout => \U_PICSPI_Slave|cnt[6]~18\);

-- Location: LCCOMB_X6_Y8_N30
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

-- Location: LCFF_X15_Y9_N13
\Motor_1|clockcount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[0]~7_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(0));

-- Location: LCFF_X15_Y9_N21
\Motor_1|clockcount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[4]~15_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(4));

-- Location: LCCOMB_X15_Y9_N12
\Motor_1|clockcount[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[0]~7_combout\ = \Motor_1|clockcount\(0) $ (VCC)
-- \Motor_1|clockcount[0]~8\ = CARRY(\Motor_1|clockcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|clockcount\(0),
	datad => VCC,
	combout => \Motor_1|clockcount[0]~7_combout\,
	cout => \Motor_1|clockcount[0]~8\);

-- Location: LCCOMB_X15_Y9_N20
\Motor_1|clockcount[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[4]~15_combout\ = (\Motor_1|clockcount\(4) & (\Motor_1|clockcount[3]~14\ $ (GND))) # (!\Motor_1|clockcount\(4) & (!\Motor_1|clockcount[3]~14\ & VCC))
-- \Motor_1|clockcount[4]~16\ = CARRY((\Motor_1|clockcount\(4) & !\Motor_1|clockcount[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|clockcount\(4),
	datad => VCC,
	cin => \Motor_1|clockcount[3]~14\,
	combout => \Motor_1|clockcount[4]~15_combout\,
	cout => \Motor_1|clockcount[4]~16\);

-- Location: LCCOMB_X16_Y10_N30
\pwm1[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[5]~2_combout\ = (\Switch_1~combout\(0) & counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_1~combout\(0),
	datad => counter(5),
	combout => \pwm1[5]~2_combout\);

-- Location: LCCOMB_X16_Y10_N24
\pwm1[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[4]~3_combout\ = (counter(4) & \Switch_1~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(4),
	datad => \Switch_1~combout\(0),
	combout => \pwm1[4]~3_combout\);

-- Location: LCCOMB_X13_Y10_N12
\pwm1[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[0]~7_combout\ = (\Switch_1~combout\(0) & \current_State~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_1~combout\(0),
	datad => \current_State~regout\,
	combout => \pwm1[0]~7_combout\);

-- Location: LCCOMB_X14_Y10_N2
\pwm3[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[6]~1_combout\ = (\Switch_1~combout\(2) & counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(2),
	datad => counter(6),
	combout => \pwm3[6]~1_combout\);

-- Location: LCCOMB_X14_Y10_N24
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

-- Location: LCCOMB_X13_Y10_N10
\pwm3[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[1]~6_combout\ = (counter(1) & \Switch_1~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(1),
	datad => \Switch_1~combout\(2),
	combout => \pwm3[1]~6_combout\);

-- Location: LCCOMB_X12_Y10_N6
\pwm5[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm5[6]~1_combout\ = (\Switch_1~combout\(3) & counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(3),
	datad => counter(6),
	combout => \pwm5[6]~1_combout\);

-- Location: LCFF_X12_Y8_N11
\U_1HzClkDivider|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(6));

-- Location: LCFF_X12_Y8_N15
\U_1HzClkDivider|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(1));

-- Location: LCFF_X12_Y8_N13
\U_1HzClkDivider|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(11));

-- Location: LCCOMB_X13_Y8_N6
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

-- Location: LCFF_X13_Y7_N13
\U_1HzClkDivider|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(17));

-- Location: LCFF_X6_Y8_N11
\U_PICSPI_Slave|bitcnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|bitcnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|bitcnt\(2));

-- Location: LCFF_X7_Y8_N25
\U_PICSPI_Slave|SSELr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_PICSPI_Slave|SSELr\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SSELr\(2));

-- Location: LCFF_X31_Y17_N1
\Registers|RegZD|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZD|tmp[0]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(0));

-- Location: LCFF_X28_Y17_N17
\Registers|RegZM|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZM|tmp[0]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(0));

-- Location: LCFF_X31_Y17_N15
\Registers|RegXM|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegXM|tmp[1]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(1));

-- Location: LCFF_X28_Y17_N13
\Registers|RegZM|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZM|tmp[1]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(1));

-- Location: LCFF_X31_Y17_N9
\Registers|RegZD|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZD|tmp[2]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(2));

-- Location: LCFF_X28_Y17_N3
\Registers|RegAM|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegAM|tmp[2]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(2));

-- Location: LCFF_X31_Y17_N21
\Registers|RegZD|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZD|tmp[3]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(3));

-- Location: LCFF_X28_Y17_N7
\Registers|RegAM|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegAM|tmp[3]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(3));

-- Location: LCFF_X31_Y17_N27
\Registers|RegXM|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegXM|tmp[4]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(4));

-- Location: LCFF_X29_Y17_N11
\Registers|RegAD|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~12\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(4));

-- Location: LCFF_X31_Y17_N31
\Registers|RegXM|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegXM|tmp[5]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(5));

-- Location: LCFF_X28_Y17_N15
\Registers|RegAM|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~13\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(5));

-- Location: LCFF_X31_Y17_N11
\Registers|RegXM|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~14\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(6));

-- Location: LCFF_X28_Y17_N11
\Registers|RegAM|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegAM|tmp[6]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(6));

-- Location: LCFF_X32_Y17_N31
\Registers|RegYD|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~15\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(7));

-- Location: LCFF_X28_Y17_N21
\Registers|RegZM|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~15\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(7));

-- Location: LCCOMB_X12_Y8_N10
\U_1HzClkDivider|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~5_combout\ = (\U_1HzClkDivider|Add0~12_combout\ & ((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~12_combout\,
	combout => \U_1HzClkDivider|cnt~5_combout\);

-- Location: LCCOMB_X12_Y8_N14
\U_1HzClkDivider|cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~9_combout\ = (\U_1HzClkDivider|Add0~2_combout\ & ((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Add0~2_combout\,
	datac => \U_1HzClkDivider|Equal0~6_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~9_combout\);

-- Location: LCCOMB_X12_Y8_N12
\U_1HzClkDivider|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~11_combout\ = (\U_1HzClkDivider|Add0~22_combout\ & ((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~22_combout\,
	combout => \U_1HzClkDivider|cnt~11_combout\);

-- Location: LCCOMB_X6_Y8_N10
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

-- Location: LCFF_X6_Y8_N13
\U_PICSPI_Slave|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(0));

-- Location: LCFF_X7_Y8_N23
\U_PICSPI_Slave|byte_data_sent[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~4_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(5));

-- Location: LCCOMB_X6_Y8_N12
\U_PICSPI_Slave|cnt[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[0]~21_combout\ = \U_PICSPI_Slave|cnt\(0) $ (((!\U_PICSPI_Slave|SSELr\(1) & \U_PICSPI_Slave|SSELr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|SSELr\(1),
	datac => \U_PICSPI_Slave|cnt\(0),
	datad => \U_PICSPI_Slave|SSELr\(2),
	combout => \U_PICSPI_Slave|cnt[0]~21_combout\);

-- Location: LCFF_X7_Y8_N21
\U_PICSPI_Slave|byte_data_sent[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~5_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(4));

-- Location: LCCOMB_X7_Y8_N22
\U_PICSPI_Slave|byte_data_sent~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~4_combout\ = (\U_PICSPI_Slave|byte_data_sent\(4) & (((\U_PICSPI_Slave|cnt\(5) & \U_PICSPI_Slave|Equal2~0_combout\)) # (!\U_PICSPI_Slave|byte_data_sent~0_combout\))) # (!\U_PICSPI_Slave|byte_data_sent\(4) & 
-- (\U_PICSPI_Slave|cnt\(5) & (\U_PICSPI_Slave|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|byte_data_sent\(4),
	datab => \U_PICSPI_Slave|cnt\(5),
	datac => \U_PICSPI_Slave|Equal2~0_combout\,
	datad => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~4_combout\);

-- Location: LCFF_X26_Y17_N31
\Registers|RegCont|state.rd1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|nextstate.rd1_429~combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.rd1~regout\);

-- Location: LCCOMB_X26_Y17_N16
\Registers|RegCont|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|Selector6~0_combout\ = (\Registers|RegCont|state.rd1~regout\) # ((!\PIC_PBUS_OK_IN~combout\ & \Registers|RegCont|state.rd2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIC_PBUS_OK_IN~combout\,
	datac => \Registers|RegCont|state.rd2~regout\,
	datad => \Registers|RegCont|state.rd1~regout\,
	combout => \Registers|RegCont|Selector6~0_combout\);

-- Location: LCFF_X7_Y8_N5
\U_PICSPI_Slave|byte_data_sent[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~6_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(3));

-- Location: LCCOMB_X7_Y8_N20
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

-- Location: LCFF_X7_Y8_N11
\U_PICSPI_Slave|byte_data_sent[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~7_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(2));

-- Location: LCCOMB_X7_Y8_N4
\U_PICSPI_Slave|byte_data_sent~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~6_combout\ = (\U_PICSPI_Slave|byte_data_sent\(2) & (((\U_PICSPI_Slave|cnt\(3) & \U_PICSPI_Slave|Equal2~0_combout\)) # (!\U_PICSPI_Slave|byte_data_sent~0_combout\))) # (!\U_PICSPI_Slave|byte_data_sent\(2) & 
-- (\U_PICSPI_Slave|cnt\(3) & (\U_PICSPI_Slave|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|byte_data_sent\(2),
	datab => \U_PICSPI_Slave|cnt\(3),
	datac => \U_PICSPI_Slave|Equal2~0_combout\,
	datad => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~6_combout\);

-- Location: LCCOMB_X26_Y17_N4
\Registers|RegCont|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|Selector4~0_combout\ = (((\PIC_PBUS_A_D~combout\) # (\Registers|RegCont|state.fetch~regout\)) # (!\PIC_PBUS_OK_IN~combout\)) # (!\PIC_PBUS_R_W~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIC_PBUS_R_W~combout\,
	datab => \PIC_PBUS_OK_IN~combout\,
	datac => \PIC_PBUS_A_D~combout\,
	datad => \Registers|RegCont|state.fetch~regout\,
	combout => \Registers|RegCont|Selector4~0_combout\);

-- Location: LCFF_X7_Y8_N17
\U_PICSPI_Slave|byte_data_sent[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~8_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(1));

-- Location: LCCOMB_X7_Y8_N10
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

-- Location: LCFF_X7_Y8_N9
\U_PICSPI_Slave|byte_data_sent[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(0));

-- Location: LCCOMB_X7_Y8_N16
\U_PICSPI_Slave|byte_data_sent~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~8_combout\ = (\U_PICSPI_Slave|byte_data_sent\(0) & (((\U_PICSPI_Slave|cnt\(1) & \U_PICSPI_Slave|Equal2~0_combout\)) # (!\U_PICSPI_Slave|byte_data_sent~0_combout\))) # (!\U_PICSPI_Slave|byte_data_sent\(0) & 
-- (\U_PICSPI_Slave|cnt\(1) & (\U_PICSPI_Slave|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|byte_data_sent\(0),
	datab => \U_PICSPI_Slave|cnt\(1),
	datac => \U_PICSPI_Slave|Equal2~0_combout\,
	datad => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~8_combout\);

-- Location: LCCOMB_X7_Y8_N28
\U_PICSPI_Slave|byte_data_sent[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent[0]~9_combout\ = (\U_PICSPI_Slave|cnt\(0) & !\U_PICSPI_Slave|SSELr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_PICSPI_Slave|cnt\(0),
	datad => \U_PICSPI_Slave|SSELr\(1),
	combout => \U_PICSPI_Slave|byte_data_sent[0]~9_combout\);

-- Location: LCCOMB_X7_Y8_N8
\U_PICSPI_Slave|byte_data_sent[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent[0]~10_combout\ = (\U_PICSPI_Slave|byte_data_sent[0]~2_combout\ & (\U_PICSPI_Slave|Equal2~0_combout\ & ((\U_PICSPI_Slave|byte_data_sent[0]~9_combout\)))) # (!\U_PICSPI_Slave|byte_data_sent[0]~2_combout\ & 
-- ((\U_PICSPI_Slave|byte_data_sent\(0)) # ((\U_PICSPI_Slave|Equal2~0_combout\ & \U_PICSPI_Slave|byte_data_sent[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	datab => \U_PICSPI_Slave|Equal2~0_combout\,
	datac => \U_PICSPI_Slave|byte_data_sent\(0),
	datad => \U_PICSPI_Slave|byte_data_sent[0]~9_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent[0]~10_combout\);

-- Location: LCCOMB_X26_Y17_N30
\Registers|RegCont|nextstate.rd1_429\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|nextstate.rd1_429~combout\ = (GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & ((\Registers|RegCont|nextstate.rd1_429~combout\))) # (!GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & 
-- (!\Registers|RegCont|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegCont|Selector4~0_combout\,
	datac => \Registers|RegCont|nextstate.rd1_429~combout\,
	datad => \Registers|RegCont|state.wd2~clkctrl_outclk\,
	combout => \Registers|RegCont|nextstate.rd1_429~combout\);

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

-- Location: LCCOMB_X28_Y17_N16
\Registers|RegZM|tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZM|tmp[0]~feeder_combout\ = \PIC_PBUS_Data[0]~8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[0]~8\,
	combout => \Registers|RegZM|tmp[0]~feeder_combout\);

-- Location: LCCOMB_X31_Y17_N0
\Registers|RegZD|tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZD|tmp[0]~feeder_combout\ = \PIC_PBUS_Data[0]~8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[0]~8\,
	combout => \Registers|RegZD|tmp[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N12
\Registers|RegZM|tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZM|tmp[1]~feeder_combout\ = \PIC_PBUS_Data[1]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[1]~9\,
	combout => \Registers|RegZM|tmp[1]~feeder_combout\);

-- Location: LCCOMB_X31_Y17_N14
\Registers|RegXM|tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegXM|tmp[1]~feeder_combout\ = \PIC_PBUS_Data[1]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[1]~9\,
	combout => \Registers|RegXM|tmp[1]~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N2
\Registers|RegAM|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegAM|tmp[2]~feeder_combout\ = \PIC_PBUS_Data[2]~10\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[2]~10\,
	combout => \Registers|RegAM|tmp[2]~feeder_combout\);

-- Location: LCCOMB_X31_Y17_N8
\Registers|RegZD|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZD|tmp[2]~feeder_combout\ = \PIC_PBUS_Data[2]~10\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[2]~10\,
	combout => \Registers|RegZD|tmp[2]~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N6
\Registers|RegAM|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegAM|tmp[3]~feeder_combout\ = \PIC_PBUS_Data[3]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[3]~11\,
	combout => \Registers|RegAM|tmp[3]~feeder_combout\);

-- Location: LCCOMB_X31_Y17_N20
\Registers|RegZD|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZD|tmp[3]~feeder_combout\ = \PIC_PBUS_Data[3]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[3]~11\,
	combout => \Registers|RegZD|tmp[3]~feeder_combout\);

-- Location: LCCOMB_X31_Y17_N26
\Registers|RegXM|tmp[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegXM|tmp[4]~feeder_combout\ = \PIC_PBUS_Data[4]~12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[4]~12\,
	combout => \Registers|RegXM|tmp[4]~feeder_combout\);

-- Location: LCCOMB_X31_Y17_N30
\Registers|RegXM|tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegXM|tmp[5]~feeder_combout\ = \PIC_PBUS_Data[5]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[5]~13\,
	combout => \Registers|RegXM|tmp[5]~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N10
\Registers|RegAM|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegAM|tmp[6]~feeder_combout\ = \PIC_PBUS_Data[6]~14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[6]~14\,
	combout => \Registers|RegAM|tmp[6]~feeder_combout\);

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
	combout => \PIC_PBUS_Data[7]~15\);

-- Location: LCCOMB_X28_Y17_N18
\Registers|RegAM|tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegAM|tmp[0]~feeder_combout\ = \PIC_PBUS_Data[0]~8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[0]~8\,
	combout => \Registers|RegAM|tmp[0]~feeder_combout\);

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

-- Location: LCCOMB_X26_Y17_N8
\Registers|RegCont|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|Selector10~0_combout\ = (\PIC_PBUS_R_W~combout\) # (((\PIC_PBUS_A_D~combout\) # (\Registers|RegCont|state.fetch~regout\)) # (!\PIC_PBUS_OK_IN~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIC_PBUS_R_W~combout\,
	datab => \PIC_PBUS_OK_IN~combout\,
	datac => \PIC_PBUS_A_D~combout\,
	datad => \Registers|RegCont|state.fetch~regout\,
	combout => \Registers|RegCont|Selector10~0_combout\);

-- Location: LCCOMB_X26_Y17_N20
\Registers|RegCont|nextstate.wd1_385\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|nextstate.wd1_385~combout\ = (GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & ((\Registers|RegCont|nextstate.wd1_385~combout\))) # (!GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & 
-- (!\Registers|RegCont|Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegCont|Selector10~0_combout\,
	datac => \Registers|RegCont|nextstate.wd1_385~combout\,
	datad => \Registers|RegCont|state.wd2~clkctrl_outclk\,
	combout => \Registers|RegCont|nextstate.wd1_385~combout\);

-- Location: LCFF_X26_Y17_N21
\Registers|RegCont|state.wd1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|nextstate.wd1_385~combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.wd1~regout\);

-- Location: LCCOMB_X30_Y17_N16
\Registers|RegCont|nextstate.wd2_374\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|nextstate.wd2_374~combout\ = (GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & (\Registers|RegCont|nextstate.wd2_374~combout\)) # (!GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & ((\Registers|RegCont|state.wd1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegCont|nextstate.wd2_374~combout\,
	datac => \Registers|RegCont|state.wd2~clkctrl_outclk\,
	datad => \Registers|RegCont|state.wd1~regout\,
	combout => \Registers|RegCont|nextstate.wd2_374~combout\);

-- Location: LCFF_X30_Y17_N17
\Registers|RegCont|state.wd2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|nextstate.wd2_374~combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.wd2~regout\);

-- Location: CLKCTRL_G7
\Registers|RegCont|state.wd2~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Registers|RegCont|state.wd2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Registers|RegCont|state.wd2~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y17_N24
\Registers|RegCont|nextstate.wa2_396\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|nextstate.wa2_396~combout\ = (GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & (\Registers|RegCont|nextstate.wa2_396~combout\)) # (!GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & ((\Registers|RegCont|state.wa1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegCont|nextstate.wa2_396~combout\,
	datac => \Registers|RegCont|state.wd2~clkctrl_outclk\,
	datad => \Registers|RegCont|state.wa1~regout\,
	combout => \Registers|RegCont|nextstate.wa2_396~combout\);

-- Location: LCFF_X26_Y17_N25
\Registers|RegCont|state.wa2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|nextstate.wa2_396~combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.wa2~regout\);

-- Location: LCCOMB_X26_Y17_N2
\Registers|RegCont|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|Selector3~0_combout\ = (\PIC_PBUS_R_W~combout\ & (\PIC_PBUS_OK_IN~combout\ & (\PIC_PBUS_A_D~combout\ & !\Registers|RegCont|state.fetch~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIC_PBUS_R_W~combout\,
	datab => \PIC_PBUS_OK_IN~combout\,
	datac => \PIC_PBUS_A_D~combout\,
	datad => \Registers|RegCont|state.fetch~regout\,
	combout => \Registers|RegCont|Selector3~0_combout\);

-- Location: LCCOMB_X26_Y17_N28
\Registers|RegCont|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|Selector3~1_combout\ = (\Registers|RegCont|Selector3~0_combout\) # ((!\PIC_PBUS_OK_IN~combout\ & \Registers|RegCont|state.ra1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PIC_PBUS_OK_IN~combout\,
	datac => \Registers|RegCont|state.ra1~regout\,
	datad => \Registers|RegCont|Selector3~0_combout\,
	combout => \Registers|RegCont|Selector3~1_combout\);

-- Location: LCCOMB_X26_Y17_N14
\Registers|RegCont|nextstate.ra1_440\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|nextstate.ra1_440~combout\ = (GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & (\Registers|RegCont|nextstate.ra1_440~combout\)) # (!GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & 
-- ((\Registers|RegCont|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegCont|nextstate.ra1_440~combout\,
	datac => \Registers|RegCont|state.wd2~clkctrl_outclk\,
	datad => \Registers|RegCont|Selector3~1_combout\,
	combout => \Registers|RegCont|nextstate.ra1_440~combout\);

-- Location: LCFF_X26_Y17_N15
\Registers|RegCont|state.ra1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|nextstate.ra1_440~combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.ra1~regout\);

-- Location: LCCOMB_X26_Y17_N0
\Registers|RegCont|nextstate.rd2_418\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|nextstate.rd2_418~combout\ = (GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & ((\Registers|RegCont|nextstate.rd2_418~combout\))) # (!GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & 
-- (\Registers|RegCont|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegCont|Selector6~0_combout\,
	datac => \Registers|RegCont|nextstate.rd2_418~combout\,
	datad => \Registers|RegCont|state.wd2~clkctrl_outclk\,
	combout => \Registers|RegCont|nextstate.rd2_418~combout\);

-- Location: LCFF_X26_Y17_N1
\Registers|RegCont|state.rd2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|nextstate.rd2_418~combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.rd2~regout\);

-- Location: LCCOMB_X26_Y17_N18
\Registers|RegCont|tbo\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|tbo~combout\ = (\Registers|RegCont|state.ra1~regout\) # (\Registers|RegCont|state.rd2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Registers|RegCont|state.ra1~regout\,
	datad => \Registers|RegCont|state.rd2~regout\,
	combout => \Registers|RegCont|tbo~combout\);

-- Location: LCCOMB_X26_Y17_N10
\Registers|RegCont|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|Selector1~0_combout\ = (\Registers|RegCont|state.wa2~regout\) # ((\PIC_PBUS_OK_IN~combout\ & ((\Registers|RegCont|tbo~combout\))) # (!\PIC_PBUS_OK_IN~combout\ & (!\Registers|RegCont|state.fetch~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegCont|state.fetch~regout\,
	datab => \PIC_PBUS_OK_IN~combout\,
	datac => \Registers|RegCont|state.wa2~regout\,
	datad => \Registers|RegCont|tbo~combout\,
	combout => \Registers|RegCont|Selector1~0_combout\);

-- Location: LCCOMB_X26_Y17_N6
\Registers|RegCont|nextstate.fetch_451\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|nextstate.fetch_451~combout\ = (GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & (\Registers|RegCont|nextstate.fetch_451~combout\)) # (!GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & 
-- ((\Registers|RegCont|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegCont|nextstate.fetch_451~combout\,
	datac => \Registers|RegCont|state.wd2~clkctrl_outclk\,
	datad => \Registers|RegCont|Selector1~0_combout\,
	combout => \Registers|RegCont|nextstate.fetch_451~combout\);

-- Location: LCCOMB_X26_Y17_N12
\Registers|RegCont|state.fetch~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|state.fetch~0_combout\ = !\Registers|RegCont|nextstate.fetch_451~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Registers|RegCont|nextstate.fetch_451~combout\,
	combout => \Registers|RegCont|state.fetch~0_combout\);

-- Location: LCFF_X26_Y17_N13
\Registers|RegCont|state.fetch\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|state.fetch~0_combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.fetch~regout\);

-- Location: LCCOMB_X26_Y17_N22
\Registers|RegCont|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|Selector7~0_combout\ = (!\PIC_PBUS_R_W~combout\ & (\PIC_PBUS_OK_IN~combout\ & (\PIC_PBUS_A_D~combout\ & !\Registers|RegCont|state.fetch~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PIC_PBUS_R_W~combout\,
	datab => \PIC_PBUS_OK_IN~combout\,
	datac => \PIC_PBUS_A_D~combout\,
	datad => \Registers|RegCont|state.fetch~regout\,
	combout => \Registers|RegCont|Selector7~0_combout\);

-- Location: LCCOMB_X26_Y17_N26
\Registers|RegCont|nextstate.wa1_407\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|nextstate.wa1_407~combout\ = (GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & (\Registers|RegCont|nextstate.wa1_407~combout\)) # (!GLOBAL(\Registers|RegCont|state.wd2~clkctrl_outclk\) & 
-- ((\Registers|RegCont|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegCont|nextstate.wa1_407~combout\,
	datab => \Registers|RegCont|Selector7~0_combout\,
	datad => \Registers|RegCont|state.wd2~clkctrl_outclk\,
	combout => \Registers|RegCont|nextstate.wa1_407~combout\);

-- Location: LCFF_X26_Y17_N27
\Registers|RegCont|state.wa1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegCont|nextstate.wa1_407~combout\,
	aclr => \Switch_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegCont|state.wa1~regout\);

-- Location: LCFF_X30_Y17_N3
\Registers|RegAdd|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[1]~9\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(1));

-- Location: LCFF_X30_Y17_N25
\Registers|RegAdd|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[0]~8\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(0));

-- Location: LCFF_X30_Y17_N1
\Registers|RegAdd|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~12\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(4));

-- Location: LCFF_X30_Y17_N9
\Registers|RegAdd|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~13\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(5));

-- Location: LCFF_X30_Y17_N13
\Registers|RegAdd|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~14\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(6));

-- Location: LCCOMB_X30_Y17_N22
\Registers|RegCont|regi07~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi07~0_combout\ = (!\Registers|RegAdd|tmp\(7) & (!\Registers|RegAdd|tmp\(4) & (!\Registers|RegAdd|tmp\(5) & !\Registers|RegAdd|tmp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAdd|tmp\(7),
	datab => \Registers|RegAdd|tmp\(4),
	datac => \Registers|RegAdd|tmp\(5),
	datad => \Registers|RegAdd|tmp\(6),
	combout => \Registers|RegCont|regi07~0_combout\);

-- Location: LCFF_X30_Y17_N11
\Registers|RegAdd|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~11\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(3));

-- Location: LCCOMB_X30_Y17_N10
\Registers|RegCont|regi06~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi06~0_combout\ = (\Registers|RegAdd|tmp\(2) & (\Registers|RegCont|regi07~0_combout\ & (!\Registers|RegAdd|tmp\(3) & \Registers|RegCont|state.wd1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAdd|tmp\(2),
	datab => \Registers|RegCont|regi07~0_combout\,
	datac => \Registers|RegAdd|tmp\(3),
	datad => \Registers|RegCont|state.wd1~regout\,
	combout => \Registers|RegCont|regi06~0_combout\);

-- Location: LCCOMB_X30_Y17_N6
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

-- Location: LCFF_X28_Y17_N19
\Registers|RegAM|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegAM|tmp[0]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(0));

-- Location: LCCOMB_X30_Y17_N12
\Registers|RegCont|regi04~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi04~0_combout\ = (!\Registers|RegAdd|tmp\(0) & (!\Registers|RegAdd|tmp\(1) & \Registers|RegCont|regi06~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAdd|tmp\(0),
	datab => \Registers|RegAdd|tmp\(1),
	datad => \Registers|RegCont|regi06~0_combout\,
	combout => \Registers|RegCont|regi04~0_combout\);

-- Location: LCFF_X29_Y17_N25
\Registers|RegYM|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[0]~8\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(0));

-- Location: LCCOMB_X30_Y17_N4
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

-- Location: LCFF_X29_Y17_N19
\Registers|RegAD|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[0]~8\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(0));

-- Location: LCCOMB_X29_Y17_N24
\Registers|databus[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[0]~1_combout\ = (\Registers|RegZM|tmp\(0)) # ((\Registers|RegAM|tmp\(0)) # ((\Registers|RegYM|tmp\(0)) # (\Registers|RegAD|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegZM|tmp\(0),
	datab => \Registers|RegAM|tmp\(0),
	datac => \Registers|RegYM|tmp\(0),
	datad => \Registers|RegAD|tmp\(0),
	combout => \Registers|databus[0]~1_combout\);

-- Location: LCFF_X30_Y17_N29
\Registers|RegAdd|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[2]~10\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(2));

-- Location: LCCOMB_X30_Y17_N28
\Registers|RegCont|regi03~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi03~0_combout\ = (!\Registers|RegAdd|tmp\(3) & (\Registers|RegCont|regi07~0_combout\ & (!\Registers|RegAdd|tmp\(2) & \Registers|RegCont|state.wd1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAdd|tmp\(3),
	datab => \Registers|RegCont|regi07~0_combout\,
	datac => \Registers|RegAdd|tmp\(2),
	datad => \Registers|RegCont|state.wd1~regout\,
	combout => \Registers|RegCont|regi03~0_combout\);

-- Location: LCCOMB_X30_Y17_N2
\Registers|RegCont|regi01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi01~0_combout\ = (\Registers|RegAdd|tmp\(0) & (!\Registers|RegAdd|tmp\(1) & \Registers|RegCont|regi03~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAdd|tmp\(0),
	datac => \Registers|RegAdd|tmp\(1),
	datad => \Registers|RegCont|regi03~0_combout\,
	combout => \Registers|RegCont|regi01~0_combout\);

-- Location: LCFF_X32_Y17_N19
\Registers|RegYD|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[0]~8\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(0));

-- Location: LCCOMB_X30_Y17_N18
\Registers|RegCont|regi00~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi00~0_combout\ = (!\Registers|RegAdd|tmp\(1) & (!\Registers|RegAdd|tmp\(0) & \Registers|RegCont|regi03~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegAdd|tmp\(1),
	datac => \Registers|RegAdd|tmp\(0),
	datad => \Registers|RegCont|regi03~0_combout\,
	combout => \Registers|RegCont|regi00~0_combout\);

-- Location: LCFF_X32_Y17_N1
\Registers|RegXD|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[0]~8\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(0));

-- Location: LCCOMB_X31_Y17_N2
\Registers|RegXM|tmp[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegXM|tmp[0]~feeder_combout\ = \PIC_PBUS_Data[0]~8\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[0]~8\,
	combout => \Registers|RegXM|tmp[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y17_N14
\Registers|RegCont|regi03~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi03~1_combout\ = (\Registers|RegAdd|tmp\(1) & (\Registers|RegAdd|tmp\(0) & \Registers|RegCont|regi03~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegAdd|tmp\(1),
	datac => \Registers|RegAdd|tmp\(0),
	datad => \Registers|RegCont|regi03~0_combout\,
	combout => \Registers|RegCont|regi03~1_combout\);

-- Location: LCFF_X31_Y17_N3
\Registers|RegXM|tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegXM|tmp[0]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(0));

-- Location: LCCOMB_X32_Y17_N0
\Registers|databus[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[0]~0_combout\ = (\Registers|RegZD|tmp\(0)) # ((\Registers|RegYD|tmp\(0)) # ((\Registers|RegXD|tmp\(0)) # (\Registers|RegXM|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegZD|tmp\(0),
	datab => \Registers|RegYD|tmp\(0),
	datac => \Registers|RegXD|tmp\(0),
	datad => \Registers|RegXM|tmp\(0),
	combout => \Registers|databus[0]~0_combout\);

-- Location: LCCOMB_X30_Y17_N24
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

-- Location: LCCOMB_X28_Y17_N30
\Registers|RegAM|tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegAM|tmp[1]~feeder_combout\ = \PIC_PBUS_Data[1]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[1]~9\,
	combout => \Registers|RegAM|tmp[1]~feeder_combout\);

-- Location: LCFF_X28_Y17_N31
\Registers|RegAM|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegAM|tmp[1]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(1));

-- Location: LCFF_X29_Y17_N5
\Registers|RegYM|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[1]~9\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(1));

-- Location: LCFF_X29_Y17_N7
\Registers|RegAD|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[1]~9\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(1));

-- Location: LCCOMB_X29_Y17_N4
\Registers|databus[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[1]~3_combout\ = (\Registers|RegZM|tmp\(1)) # ((\Registers|RegAM|tmp\(1)) # ((\Registers|RegYM|tmp\(1)) # (\Registers|RegAD|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegZM|tmp\(1),
	datab => \Registers|RegAM|tmp\(1),
	datac => \Registers|RegYM|tmp\(1),
	datad => \Registers|RegAD|tmp\(1),
	combout => \Registers|databus[1]~3_combout\);

-- Location: LCCOMB_X31_Y17_N12
\Registers|RegZD|tmp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZD|tmp[1]~feeder_combout\ = \PIC_PBUS_Data[1]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[1]~9\,
	combout => \Registers|RegZD|tmp[1]~feeder_combout\);

-- Location: LCCOMB_X30_Y17_N30
\Registers|RegCont|regi02~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi02~0_combout\ = (\Registers|RegAdd|tmp\(1) & (!\Registers|RegAdd|tmp\(0) & \Registers|RegCont|regi03~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegAdd|tmp\(1),
	datac => \Registers|RegAdd|tmp\(0),
	datad => \Registers|RegCont|regi03~0_combout\,
	combout => \Registers|RegCont|regi02~0_combout\);

-- Location: LCFF_X31_Y17_N13
\Registers|RegZD|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZD|tmp[1]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(1));

-- Location: LCFF_X32_Y17_N29
\Registers|RegXD|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[1]~9\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(1));

-- Location: LCFF_X32_Y17_N7
\Registers|RegYD|tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[1]~9\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(1));

-- Location: LCCOMB_X32_Y17_N28
\Registers|databus[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[1]~2_combout\ = (\Registers|RegXM|tmp\(1)) # ((\Registers|RegZD|tmp\(1)) # ((\Registers|RegXD|tmp\(1)) # (\Registers|RegYD|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegXM|tmp\(1),
	datab => \Registers|RegZD|tmp\(1),
	datac => \Registers|RegXD|tmp\(1),
	datad => \Registers|RegYD|tmp\(1),
	combout => \Registers|databus[1]~2_combout\);

-- Location: LCCOMB_X33_Y17_N24
\Registers|MuxOut|tmp1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[1]~1_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(1))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[1]~3_combout\) # ((\Registers|databus[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[1]~3_combout\,
	datab => \Registers|RegAdd|tmp\(1),
	datac => \Registers|RegCont|state.ra1~regout\,
	datad => \Registers|databus[1]~2_combout\,
	combout => \Registers|MuxOut|tmp1[1]~1_combout\);

-- Location: LCFF_X29_Y17_N3
\Registers|RegAD|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[2]~10\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(2));

-- Location: LCFF_X29_Y17_N17
\Registers|RegYM|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[2]~10\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(2));

-- Location: LCCOMB_X28_Y17_N8
\Registers|RegZM|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZM|tmp[2]~feeder_combout\ = \PIC_PBUS_Data[2]~10\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[2]~10\,
	combout => \Registers|RegZM|tmp[2]~feeder_combout\);

-- Location: LCCOMB_X30_Y17_N26
\Registers|RegCont|regi05~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|regi05~0_combout\ = (!\Registers|RegAdd|tmp\(1) & (\Registers|RegAdd|tmp\(0) & \Registers|RegCont|regi06~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegAdd|tmp\(1),
	datac => \Registers|RegAdd|tmp\(0),
	datad => \Registers|RegCont|regi06~0_combout\,
	combout => \Registers|RegCont|regi05~0_combout\);

-- Location: LCFF_X28_Y17_N9
\Registers|RegZM|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZM|tmp[2]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(2));

-- Location: LCCOMB_X29_Y17_N16
\Registers|databus[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[2]~5_combout\ = (\Registers|RegAM|tmp\(2)) # ((\Registers|RegAD|tmp\(2)) # ((\Registers|RegYM|tmp\(2)) # (\Registers|RegZM|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAM|tmp\(2),
	datab => \Registers|RegAD|tmp\(2),
	datac => \Registers|RegYM|tmp\(2),
	datad => \Registers|RegZM|tmp\(2),
	combout => \Registers|databus[2]~5_combout\);

-- Location: LCCOMB_X31_Y17_N18
\Registers|RegXM|tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegXM|tmp[2]~feeder_combout\ = \PIC_PBUS_Data[2]~10\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[2]~10\,
	combout => \Registers|RegXM|tmp[2]~feeder_combout\);

-- Location: LCFF_X31_Y17_N19
\Registers|RegXM|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegXM|tmp[2]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(2));

-- Location: LCFF_X32_Y17_N17
\Registers|RegXD|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[2]~10\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(2));

-- Location: LCFF_X32_Y17_N3
\Registers|RegYD|tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[2]~10\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(2));

-- Location: LCCOMB_X32_Y17_N16
\Registers|databus[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[2]~4_combout\ = (\Registers|RegZD|tmp\(2)) # ((\Registers|RegXM|tmp\(2)) # ((\Registers|RegXD|tmp\(2)) # (\Registers|RegYD|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegZD|tmp\(2),
	datab => \Registers|RegXM|tmp\(2),
	datac => \Registers|RegXD|tmp\(2),
	datad => \Registers|RegYD|tmp\(2),
	combout => \Registers|databus[2]~4_combout\);

-- Location: LCCOMB_X33_Y17_N10
\Registers|MuxOut|tmp1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[2]~2_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(2))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[2]~5_combout\) # ((\Registers|databus[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[2]~5_combout\,
	datab => \Registers|RegAdd|tmp\(2),
	datac => \Registers|RegCont|state.ra1~regout\,
	datad => \Registers|databus[2]~4_combout\,
	combout => \Registers|MuxOut|tmp1[2]~2_combout\);

-- Location: LCFF_X29_Y17_N15
\Registers|RegAD|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~11\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(3));

-- Location: LCFF_X29_Y17_N29
\Registers|RegYM|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~11\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(3));

-- Location: LCCOMB_X28_Y17_N28
\Registers|RegZM|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZM|tmp[3]~feeder_combout\ = \PIC_PBUS_Data[3]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[3]~11\,
	combout => \Registers|RegZM|tmp[3]~feeder_combout\);

-- Location: LCFF_X28_Y17_N29
\Registers|RegZM|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZM|tmp[3]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(3));

-- Location: LCCOMB_X29_Y17_N28
\Registers|databus[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[3]~7_combout\ = (\Registers|RegAM|tmp\(3)) # ((\Registers|RegAD|tmp\(3)) # ((\Registers|RegYM|tmp\(3)) # (\Registers|RegZM|tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAM|tmp\(3),
	datab => \Registers|RegAD|tmp\(3),
	datac => \Registers|RegYM|tmp\(3),
	datad => \Registers|RegZM|tmp\(3),
	combout => \Registers|databus[3]~7_combout\);

-- Location: LCFF_X32_Y17_N15
\Registers|RegYD|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~11\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(3));

-- Location: LCFF_X32_Y17_N13
\Registers|RegXD|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~11\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(3));

-- Location: LCCOMB_X31_Y17_N6
\Registers|RegXM|tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegXM|tmp[3]~feeder_combout\ = \PIC_PBUS_Data[3]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[3]~11\,
	combout => \Registers|RegXM|tmp[3]~feeder_combout\);

-- Location: LCFF_X31_Y17_N7
\Registers|RegXM|tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegXM|tmp[3]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(3));

-- Location: LCCOMB_X32_Y17_N12
\Registers|databus[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[3]~6_combout\ = (\Registers|RegZD|tmp\(3)) # ((\Registers|RegYD|tmp\(3)) # ((\Registers|RegXD|tmp\(3)) # (\Registers|RegXM|tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegZD|tmp\(3),
	datab => \Registers|RegYD|tmp\(3),
	datac => \Registers|RegXD|tmp\(3),
	datad => \Registers|RegXM|tmp\(3),
	combout => \Registers|databus[3]~6_combout\);

-- Location: LCCOMB_X33_Y17_N20
\Registers|MuxOut|tmp1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[3]~3_combout\ = (\Registers|RegCont|state.ra1~regout\ & (\Registers|RegAdd|tmp\(3))) # (!\Registers|RegCont|state.ra1~regout\ & (((\Registers|databus[3]~7_combout\) # (\Registers|databus[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAdd|tmp\(3),
	datab => \Registers|databus[3]~7_combout\,
	datac => \Registers|RegCont|state.ra1~regout\,
	datad => \Registers|databus[3]~6_combout\,
	combout => \Registers|MuxOut|tmp1[3]~3_combout\);

-- Location: LCFF_X28_Y17_N1
\Registers|RegZM|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~12\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(4));

-- Location: LCFF_X29_Y17_N9
\Registers|RegYM|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~12\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(4));

-- Location: LCFF_X28_Y17_N27
\Registers|RegAM|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~12\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(4));

-- Location: LCCOMB_X29_Y17_N8
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

-- Location: LCCOMB_X31_Y17_N24
\Registers|RegZD|tmp[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZD|tmp[4]~feeder_combout\ = \PIC_PBUS_Data[4]~12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[4]~12\,
	combout => \Registers|RegZD|tmp[4]~feeder_combout\);

-- Location: LCFF_X31_Y17_N25
\Registers|RegZD|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZD|tmp[4]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(4));

-- Location: LCFF_X32_Y17_N25
\Registers|RegXD|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~12\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(4));

-- Location: LCFF_X32_Y17_N11
\Registers|RegYD|tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[4]~12\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(4));

-- Location: LCCOMB_X32_Y17_N24
\Registers|databus[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[4]~8_combout\ = (\Registers|RegXM|tmp\(4)) # ((\Registers|RegZD|tmp\(4)) # ((\Registers|RegXD|tmp\(4)) # (\Registers|RegYD|tmp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegXM|tmp\(4),
	datab => \Registers|RegZD|tmp\(4),
	datac => \Registers|RegXD|tmp\(4),
	datad => \Registers|RegYD|tmp\(4),
	combout => \Registers|databus[4]~8_combout\);

-- Location: LCCOMB_X30_Y17_N0
\Registers|MuxOut|tmp1[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[4]~4_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(4))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[4]~9_combout\) # ((\Registers|databus[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[4]~9_combout\,
	datab => \Registers|RegCont|state.ra1~regout\,
	datac => \Registers|RegAdd|tmp\(4),
	datad => \Registers|databus[4]~8_combout\,
	combout => \Registers|MuxOut|tmp1[4]~4_combout\);

-- Location: LCCOMB_X31_Y17_N4
\Registers|RegZD|tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZD|tmp[5]~feeder_combout\ = \PIC_PBUS_Data[5]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[5]~13\,
	combout => \Registers|RegZD|tmp[5]~feeder_combout\);

-- Location: LCFF_X31_Y17_N5
\Registers|RegZD|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZD|tmp[5]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(5));

-- Location: LCFF_X32_Y17_N21
\Registers|RegXD|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~13\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(5));

-- Location: LCFF_X32_Y17_N23
\Registers|RegYD|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~13\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(5));

-- Location: LCCOMB_X32_Y17_N20
\Registers|databus[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[5]~10_combout\ = (\Registers|RegXM|tmp\(5)) # ((\Registers|RegZD|tmp\(5)) # ((\Registers|RegXD|tmp\(5)) # (\Registers|RegYD|tmp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegXM|tmp\(5),
	datab => \Registers|RegZD|tmp\(5),
	datac => \Registers|RegXD|tmp\(5),
	datad => \Registers|RegYD|tmp\(5),
	combout => \Registers|databus[5]~10_combout\);

-- Location: LCFF_X28_Y17_N5
\Registers|RegZM|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~13\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(5));

-- Location: LCFF_X29_Y17_N13
\Registers|RegYM|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~13\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(5));

-- Location: LCFF_X29_Y17_N31
\Registers|RegAD|tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[5]~13\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(5));

-- Location: LCCOMB_X29_Y17_N12
\Registers|databus[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[5]~11_combout\ = (\Registers|RegAM|tmp\(5)) # ((\Registers|RegZM|tmp\(5)) # ((\Registers|RegYM|tmp\(5)) # (\Registers|RegAD|tmp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAM|tmp\(5),
	datab => \Registers|RegZM|tmp\(5),
	datac => \Registers|RegYM|tmp\(5),
	datad => \Registers|RegAD|tmp\(5),
	combout => \Registers|databus[5]~11_combout\);

-- Location: LCCOMB_X30_Y17_N8
\Registers|MuxOut|tmp1[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[5]~5_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(5))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[5]~10_combout\) # ((\Registers|databus[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[5]~10_combout\,
	datab => \Registers|RegCont|state.ra1~regout\,
	datac => \Registers|RegAdd|tmp\(5),
	datad => \Registers|databus[5]~11_combout\,
	combout => \Registers|MuxOut|tmp1[5]~5_combout\);

-- Location: LCCOMB_X28_Y17_N24
\Registers|RegZM|tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegZM|tmp[6]~feeder_combout\ = \PIC_PBUS_Data[6]~14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[6]~14\,
	combout => \Registers|RegZM|tmp[6]~feeder_combout\);

-- Location: LCFF_X28_Y17_N25
\Registers|RegZM|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Registers|RegZM|tmp[6]~feeder_combout\,
	aclr => \Switch_2~combout\,
	ena => \Registers|RegCont|regi05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZM|tmp\(6));

-- Location: LCFF_X29_Y17_N1
\Registers|RegYM|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~14\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(6));

-- Location: LCFF_X29_Y17_N27
\Registers|RegAD|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~14\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(6));

-- Location: LCCOMB_X29_Y17_N0
\Registers|databus[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[6]~13_combout\ = (\Registers|RegAM|tmp\(6)) # ((\Registers|RegZM|tmp\(6)) # ((\Registers|RegYM|tmp\(6)) # (\Registers|RegAD|tmp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegAM|tmp\(6),
	datab => \Registers|RegZM|tmp\(6),
	datac => \Registers|RegYM|tmp\(6),
	datad => \Registers|RegAD|tmp\(6),
	combout => \Registers|databus[6]~13_combout\);

-- Location: LCFF_X31_Y17_N17
\Registers|RegZD|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~14\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(6));

-- Location: LCFF_X32_Y17_N9
\Registers|RegXD|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~14\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(6));

-- Location: LCFF_X32_Y17_N27
\Registers|RegYD|tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~14\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYD|tmp\(6));

-- Location: LCCOMB_X32_Y17_N8
\Registers|databus[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[6]~12_combout\ = (\Registers|RegXM|tmp\(6)) # ((\Registers|RegZD|tmp\(6)) # ((\Registers|RegXD|tmp\(6)) # (\Registers|RegYD|tmp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegXM|tmp\(6),
	datab => \Registers|RegZD|tmp\(6),
	datac => \Registers|RegXD|tmp\(6),
	datad => \Registers|RegYD|tmp\(6),
	combout => \Registers|databus[6]~12_combout\);

-- Location: LCCOMB_X33_Y17_N22
\Registers|MuxOut|tmp1[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[6]~6_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(6))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[6]~13_combout\) # ((\Registers|databus[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[6]~13_combout\,
	datab => \Registers|RegAdd|tmp\(6),
	datac => \Registers|RegCont|state.ra1~regout\,
	datad => \Registers|databus[6]~12_combout\,
	combout => \Registers|MuxOut|tmp1[6]~6_combout\);

-- Location: LCFF_X28_Y17_N23
\Registers|RegAM|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~15\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi07~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAM|tmp\(7));

-- Location: LCFF_X29_Y17_N21
\Registers|RegYM|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~15\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegYM|tmp\(7));

-- Location: LCFF_X29_Y17_N23
\Registers|RegAD|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~15\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi06~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAD|tmp\(7));

-- Location: LCCOMB_X29_Y17_N20
\Registers|databus[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|databus[7]~15_combout\ = (\Registers|RegZM|tmp\(7)) # ((\Registers|RegAM|tmp\(7)) # ((\Registers|RegYM|tmp\(7)) # (\Registers|RegAD|tmp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|RegZM|tmp\(7),
	datab => \Registers|RegAM|tmp\(7),
	datac => \Registers|RegYM|tmp\(7),
	datad => \Registers|RegAD|tmp\(7),
	combout => \Registers|databus[7]~15_combout\);

-- Location: LCFF_X30_Y17_N21
\Registers|RegAdd|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~15\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|state.wa1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegAdd|tmp\(7));

-- Location: LCFF_X31_Y17_N29
\Registers|RegZD|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~15\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegZD|tmp\(7));

-- Location: LCFF_X32_Y17_N5
\Registers|RegXD|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~15\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXD|tmp\(7));

-- Location: LCFF_X31_Y17_N23
\Registers|RegXM|tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[7]~15\,
	aclr => \Switch_2~combout\,
	sload => VCC,
	ena => \Registers|RegCont|regi03~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Registers|RegXM|tmp\(7));

-- Location: LCCOMB_X32_Y17_N4
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

-- Location: LCCOMB_X30_Y17_N20
\Registers|MuxOut|tmp1[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|MuxOut|tmp1[7]~7_combout\ = (\Registers|RegCont|state.ra1~regout\ & (((\Registers|RegAdd|tmp\(7))))) # (!\Registers|RegCont|state.ra1~regout\ & ((\Registers|databus[7]~15_combout\) # ((\Registers|databus[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registers|databus[7]~15_combout\,
	datab => \Registers|RegCont|state.ra1~regout\,
	datac => \Registers|RegAdd|tmp\(7),
	datad => \Registers|databus[7]~14_combout\,
	combout => \Registers|MuxOut|tmp1[7]~7_combout\);

-- Location: LCCOMB_X13_Y8_N10
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

-- Location: LCCOMB_X13_Y8_N2
\U_1HzClkDivider|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~10_combout\ = (\U_1HzClkDivider|Add0~0_combout\ & ((!\U_1HzClkDivider|Equal0~6_combout\) # (!\U_1HzClkDivider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Equal0~4_combout\,
	datac => \U_1HzClkDivider|Equal0~6_combout\,
	datad => \U_1HzClkDivider|Add0~0_combout\,
	combout => \U_1HzClkDivider|cnt~10_combout\);

-- Location: LCFF_X13_Y8_N3
\U_1HzClkDivider|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(0));

-- Location: LCCOMB_X13_Y8_N14
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

-- Location: LCCOMB_X12_Y8_N4
\U_1HzClkDivider|cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~8_combout\ = (\U_1HzClkDivider|Add0~4_combout\ & ((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Add0~4_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~8_combout\);

-- Location: LCFF_X12_Y8_N5
\U_1HzClkDivider|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(2));

-- Location: LCCOMB_X13_Y8_N16
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

-- Location: LCFF_X13_Y8_N17
\U_1HzClkDivider|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(3));

-- Location: LCCOMB_X13_Y8_N4
\U_1HzClkDivider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~1_combout\ = (\U_1HzClkDivider|cnt\(1) & (\U_1HzClkDivider|cnt\(2) & (!\U_1HzClkDivider|cnt\(3) & !\U_1HzClkDivider|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(1),
	datab => \U_1HzClkDivider|cnt\(2),
	datac => \U_1HzClkDivider|cnt\(3),
	datad => \U_1HzClkDivider|cnt\(0),
	combout => \U_1HzClkDivider|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y7_N6
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

-- Location: LCFF_X13_Y7_N7
\U_1HzClkDivider|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(14));

-- Location: LCCOMB_X12_Y7_N0
\U_1HzClkDivider|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~3_combout\ = (!\U_1HzClkDivider|cnt\(13) & (!\U_1HzClkDivider|cnt\(15) & (!\U_1HzClkDivider|cnt\(14) & !\U_1HzClkDivider|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(13),
	datab => \U_1HzClkDivider|cnt\(15),
	datac => \U_1HzClkDivider|cnt\(14),
	datad => \U_1HzClkDivider|cnt\(12),
	combout => \U_1HzClkDivider|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y8_N18
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

-- Location: LCCOMB_X12_Y8_N22
\U_1HzClkDivider|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~7_combout\ = (\U_1HzClkDivider|Add0~8_combout\ & ((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~8_combout\,
	combout => \U_1HzClkDivider|cnt~7_combout\);

-- Location: LCFF_X12_Y8_N23
\U_1HzClkDivider|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(4));

-- Location: LCCOMB_X13_Y8_N20
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

-- Location: LCCOMB_X12_Y8_N18
\U_1HzClkDivider|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~6_combout\ = (\U_1HzClkDivider|Add0~10_combout\ & ((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~10_combout\,
	combout => \U_1HzClkDivider|cnt~6_combout\);

-- Location: LCFF_X12_Y8_N19
\U_1HzClkDivider|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(5));

-- Location: LCCOMB_X13_Y8_N8
\U_1HzClkDivider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~0_combout\ = (\U_1HzClkDivider|cnt\(6) & (\U_1HzClkDivider|cnt\(4) & (\U_1HzClkDivider|cnt\(5) & \U_1HzClkDivider|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(6),
	datab => \U_1HzClkDivider|cnt\(4),
	datac => \U_1HzClkDivider|cnt\(5),
	datad => \U_1HzClkDivider|cnt\(7),
	combout => \U_1HzClkDivider|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y8_N0
\U_1HzClkDivider|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~4_combout\ = (\U_1HzClkDivider|Equal0~2_combout\ & (\U_1HzClkDivider|Equal0~1_combout\ & (\U_1HzClkDivider|Equal0~3_combout\ & \U_1HzClkDivider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|Equal0~2_combout\,
	datab => \U_1HzClkDivider|Equal0~1_combout\,
	datac => \U_1HzClkDivider|Equal0~3_combout\,
	datad => \U_1HzClkDivider|Equal0~0_combout\,
	combout => \U_1HzClkDivider|Equal0~4_combout\);

-- Location: LCCOMB_X13_Y8_N24
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

-- Location: LCCOMB_X12_Y8_N24
\U_1HzClkDivider|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~4_combout\ = (\U_1HzClkDivider|Add0~14_combout\ & ((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~14_combout\,
	combout => \U_1HzClkDivider|cnt~4_combout\);

-- Location: LCFF_X12_Y8_N25
\U_1HzClkDivider|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(7));

-- Location: LCCOMB_X13_Y8_N26
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

-- Location: LCFF_X13_Y8_N27
\U_1HzClkDivider|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(8));

-- Location: LCCOMB_X13_Y8_N28
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

-- Location: LCFF_X13_Y8_N29
\U_1HzClkDivider|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(9));

-- Location: LCCOMB_X13_Y8_N30
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

-- Location: LCFF_X13_Y8_N31
\U_1HzClkDivider|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(10));

-- Location: LCCOMB_X13_Y7_N2
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

-- Location: LCFF_X13_Y7_N3
\U_1HzClkDivider|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(12));

-- Location: LCCOMB_X13_Y7_N4
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

-- Location: LCFF_X13_Y7_N5
\U_1HzClkDivider|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(13));

-- Location: LCCOMB_X13_Y7_N8
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

-- Location: LCFF_X13_Y7_N9
\U_1HzClkDivider|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(15));

-- Location: LCCOMB_X13_Y7_N10
\U_1HzClkDivider|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Add0~32_combout\ = (\U_1HzClkDivider|cnt\(16) & (\U_1HzClkDivider|Add0~31\ $ (GND))) # (!\U_1HzClkDivider|cnt\(16) & (!\U_1HzClkDivider|Add0~31\ & VCC))
-- \U_1HzClkDivider|Add0~33\ = CARRY((\U_1HzClkDivider|cnt\(16) & !\U_1HzClkDivider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(16),
	datad => VCC,
	cin => \U_1HzClkDivider|Add0~31\,
	combout => \U_1HzClkDivider|Add0~32_combout\,
	cout => \U_1HzClkDivider|Add0~33\);

-- Location: LCCOMB_X13_Y7_N14
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

-- Location: LCFF_X13_Y7_N15
\U_1HzClkDivider|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(18));

-- Location: LCCOMB_X13_Y7_N16
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

-- Location: LCCOMB_X13_Y7_N18
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

-- Location: LCFF_X13_Y7_N19
\U_1HzClkDivider|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(20));

-- Location: LCFF_X13_Y7_N17
\U_1HzClkDivider|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(19));

-- Location: LCFF_X13_Y7_N11
\U_1HzClkDivider|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(16));

-- Location: LCCOMB_X13_Y7_N24
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

-- Location: LCCOMB_X13_Y7_N20
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

-- Location: LCCOMB_X13_Y7_N26
\U_1HzClkDivider|cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~12_combout\ = (\U_1HzClkDivider|Add0~42_combout\ & ((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Add0~42_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|cnt~12_combout\);

-- Location: LCFF_X13_Y7_N27
\U_1HzClkDivider|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(21));

-- Location: LCCOMB_X13_Y7_N22
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

-- Location: LCCOMB_X13_Y7_N28
\U_1HzClkDivider|cnt~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|cnt~13_combout\ = (\U_1HzClkDivider|Add0~44_combout\ & ((!\U_1HzClkDivider|Equal0~4_combout\) # (!\U_1HzClkDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datac => \U_1HzClkDivider|Equal0~4_combout\,
	datad => \U_1HzClkDivider|Add0~44_combout\,
	combout => \U_1HzClkDivider|cnt~13_combout\);

-- Location: LCFF_X13_Y7_N29
\U_1HzClkDivider|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|cnt~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|cnt\(22));

-- Location: LCCOMB_X13_Y7_N30
\U_1HzClkDivider|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~6_combout\ = (\U_1HzClkDivider|cnt\(21) & (!\U_1HzClkDivider|cnt\(20) & (\U_1HzClkDivider|Equal0~5_combout\ & \U_1HzClkDivider|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_1HzClkDivider|cnt\(21),
	datab => \U_1HzClkDivider|cnt\(20),
	datac => \U_1HzClkDivider|Equal0~5_combout\,
	datad => \U_1HzClkDivider|cnt\(22),
	combout => \U_1HzClkDivider|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y8_N0
\U_1HzClkDivider|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_1HzClkDivider|Equal0~7_combout\ = (\U_1HzClkDivider|Equal0~6_combout\ & \U_1HzClkDivider|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_1HzClkDivider|Equal0~6_combout\,
	datad => \U_1HzClkDivider|Equal0~4_combout\,
	combout => \U_1HzClkDivider|Equal0~7_combout\);

-- Location: LCFF_X12_Y8_N1
\U_1HzClkDivider|clk_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_1HzClkDivider|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_1HzClkDivider|clk_out~regout\);

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X13_Y10_N0
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

-- Location: LCFF_X13_Y10_N1
current_State : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \current_State~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_State~regout\);

-- Location: LCCOMB_X10_Y10_N0
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

-- Location: LCFF_X10_Y10_N1
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

-- Location: LCFF_X8_Y8_N31
\U_PICSPI_Slave|MOSIr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_SPI_MOSI~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|MOSIr\(0));

-- Location: LCCOMB_X8_Y8_N28
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

-- Location: LCFF_X8_Y8_N29
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

-- Location: LCFF_X7_Y10_N9
\U_PICSPI_Slave|SCKr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_SPI_SCLK~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SCKr\(0));

-- Location: LCFF_X7_Y8_N1
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

-- Location: LCCOMB_X7_Y10_N26
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

-- Location: LCFF_X7_Y10_N27
\U_PICSPI_Slave|SSELr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|SSELr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SSELr\(0));

-- Location: LCFF_X7_Y8_N13
\U_PICSPI_Slave|SSELr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_PICSPI_Slave|SSELr\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SSELr\(1));

-- Location: LCFF_X7_Y8_N19
\U_PICSPI_Slave|SCKr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U_PICSPI_Slave|SCKr\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|SCKr\(2));

-- Location: LCCOMB_X7_Y8_N12
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

-- Location: LCCOMB_X8_Y8_N26
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

-- Location: LCFF_X8_Y8_N27
\U_PICSPI_Slave|byte_data_received[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_received[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_received\(0));

-- Location: LCCOMB_X7_Y8_N30
\U_PICSPI_Slave|bitcnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|bitcnt~0_combout\ = (!\U_PICSPI_Slave|SSELr\(1) & (\U_PICSPI_Slave|bitcnt\(0) $ (((\U_PICSPI_Slave|SCKr\(1) & !\U_PICSPI_Slave|SCKr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|SCKr\(1),
	datab => \U_PICSPI_Slave|SSELr\(1),
	datac => \U_PICSPI_Slave|bitcnt\(0),
	datad => \U_PICSPI_Slave|SCKr\(2),
	combout => \U_PICSPI_Slave|bitcnt~0_combout\);

-- Location: LCFF_X7_Y8_N31
\U_PICSPI_Slave|bitcnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|bitcnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|bitcnt\(0));

-- Location: LCCOMB_X7_Y8_N24
\U_PICSPI_Slave|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|Add1~0_combout\ = (\U_PICSPI_Slave|bitcnt\(0) & (\U_PICSPI_Slave|SCKr\(1) & !\U_PICSPI_Slave|SCKr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|bitcnt\(0),
	datab => \U_PICSPI_Slave|SCKr\(1),
	datad => \U_PICSPI_Slave|SCKr\(2),
	combout => \U_PICSPI_Slave|Add1~0_combout\);

-- Location: LCCOMB_X6_Y8_N16
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

-- Location: LCFF_X6_Y8_N17
\U_PICSPI_Slave|bitcnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|bitcnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|bitcnt\(1));

-- Location: LCCOMB_X7_Y8_N14
\U_PICSPI_Slave|byte_received~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_received~1_combout\ = (\U_PICSPI_Slave|bitcnt\(2) & (\U_PICSPI_Slave|bitcnt\(0) & (\U_PICSPI_Slave|byte_received~0_combout\ & \U_PICSPI_Slave|bitcnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|bitcnt\(2),
	datab => \U_PICSPI_Slave|bitcnt\(0),
	datac => \U_PICSPI_Slave|byte_received~0_combout\,
	datad => \U_PICSPI_Slave|bitcnt\(1),
	combout => \U_PICSPI_Slave|byte_received~1_combout\);

-- Location: LCFF_X7_Y8_N15
\U_PICSPI_Slave|byte_received\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_received~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_received~regout\);

-- Location: LCCOMB_X8_Y8_N16
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

-- Location: LCFF_X8_Y8_N17
\U_PICSPI_Slave|LED\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|LED~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|LED~regout\);

-- Location: LCCOMB_X32_Y15_N16
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

-- Location: LCFF_X32_Y15_N17
\BLED_Blue[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Blue[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Blue[0]~reg0_regout\);

-- Location: LCCOMB_X32_Y14_N8
\BLED_Blue[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Blue[1]~reg0feeder_combout\ = \PIC_PBUS_Data[5]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[5]~13\,
	combout => \BLED_Blue[1]~reg0feeder_combout\);

-- Location: LCFF_X32_Y14_N9
\BLED_Blue[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Blue[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Blue[1]~reg0_regout\);

-- Location: LCFF_X31_Y18_N17
\BLED_Blue[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[6]~14\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Blue[2]~reg0_regout\);

-- Location: LCCOMB_X32_Y8_N16
\BLED_Blue[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BLED_Blue[3]~reg0feeder_combout\ = \PIC_PBUS_Data[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PIC_PBUS_Data[7]~15\,
	combout => \BLED_Blue[3]~reg0feeder_combout\);

-- Location: LCFF_X32_Y8_N17
\BLED_Blue[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Blue[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Blue[3]~reg0_regout\);

-- Location: LCCOMB_X28_Y8_N8
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

-- Location: LCFF_X28_Y8_N9
\BLED_Orange[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Orange[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Orange[0]~reg0_regout\);

-- Location: LCCOMB_X29_Y8_N24
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

-- Location: LCFF_X29_Y8_N25
\BLED_Orange[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Orange[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Orange[1]~reg0_regout\);

-- Location: LCCOMB_X30_Y14_N8
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

-- Location: LCFF_X30_Y14_N9
\BLED_Orange[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BLED_Orange[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Orange[2]~reg0_regout\);

-- Location: LCFF_X30_Y8_N17
\BLED_Orange[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \PIC_PBUS_Data[3]~11\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BLED_Orange[3]~reg0_regout\);

-- Location: LCCOMB_X30_Y16_N0
\Registers|RegCont|ok_in\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registers|RegCont|ok_in~combout\ = (\Registers|RegCont|state.wa2~regout\) # (\Registers|RegCont|state.wd2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registers|RegCont|state.wa2~regout\,
	datad => \Registers|RegCont|state.wd2~regout\,
	combout => \Registers|RegCont|ok_in~combout\);

-- Location: LCCOMB_X6_Y8_N18
\U_PICSPI_Slave|cnt[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[1]~7_combout\ = (\U_PICSPI_Slave|cnt\(0) & (\U_PICSPI_Slave|cnt\(1) $ (VCC))) # (!\U_PICSPI_Slave|cnt\(0) & (\U_PICSPI_Slave|cnt\(1) & VCC))
-- \U_PICSPI_Slave|cnt[1]~8\ = CARRY((\U_PICSPI_Slave|cnt\(0) & \U_PICSPI_Slave|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(0),
	datab => \U_PICSPI_Slave|cnt\(1),
	datad => VCC,
	combout => \U_PICSPI_Slave|cnt[1]~7_combout\,
	cout => \U_PICSPI_Slave|cnt[1]~8\);

-- Location: LCCOMB_X7_Y8_N0
\U_PICSPI_Slave|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|Equal2~0_combout\ = (\U_PICSPI_Slave|SSELr\(2) & !\U_PICSPI_Slave|SSELr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|SSELr\(2),
	datad => \U_PICSPI_Slave|SSELr\(1),
	combout => \U_PICSPI_Slave|Equal2~0_combout\);

-- Location: LCFF_X6_Y8_N19
\U_PICSPI_Slave|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[1]~7_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(1));

-- Location: LCCOMB_X6_Y8_N22
\U_PICSPI_Slave|cnt[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|cnt[3]~11_combout\ = (\U_PICSPI_Slave|cnt\(3) & (\U_PICSPI_Slave|cnt[2]~10\ $ (GND))) # (!\U_PICSPI_Slave|cnt\(3) & (!\U_PICSPI_Slave|cnt[2]~10\ & VCC))
-- \U_PICSPI_Slave|cnt[3]~12\ = CARRY((\U_PICSPI_Slave|cnt\(3) & !\U_PICSPI_Slave|cnt[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_PICSPI_Slave|cnt\(3),
	datad => VCC,
	cin => \U_PICSPI_Slave|cnt[2]~10\,
	combout => \U_PICSPI_Slave|cnt[3]~11_combout\,
	cout => \U_PICSPI_Slave|cnt[3]~12\);

-- Location: LCFF_X6_Y8_N23
\U_PICSPI_Slave|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[3]~11_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(3));

-- Location: LCCOMB_X6_Y8_N26
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

-- Location: LCFF_X6_Y8_N27
\U_PICSPI_Slave|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[5]~15_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(5));

-- Location: LCFF_X6_Y8_N29
\U_PICSPI_Slave|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|cnt[6]~17_combout\,
	ena => \U_PICSPI_Slave|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|cnt\(6));

-- Location: LCCOMB_X7_Y8_N2
\U_PICSPI_Slave|byte_data_sent~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~0_combout\ = (\U_PICSPI_Slave|Equal2~0_combout\) # ((!\U_PICSPI_Slave|bitcnt\(2) & (!\U_PICSPI_Slave|bitcnt\(0) & !\U_PICSPI_Slave|bitcnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|bitcnt\(2),
	datab => \U_PICSPI_Slave|bitcnt\(0),
	datac => \U_PICSPI_Slave|Equal2~0_combout\,
	datad => \U_PICSPI_Slave|bitcnt\(1),
	combout => \U_PICSPI_Slave|byte_data_sent~0_combout\);

-- Location: LCCOMB_X7_Y8_N26
\U_PICSPI_Slave|byte_data_sent~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~3_combout\ = (\U_PICSPI_Slave|byte_data_sent\(5) & (((\U_PICSPI_Slave|cnt\(6) & \U_PICSPI_Slave|Equal2~0_combout\)) # (!\U_PICSPI_Slave|byte_data_sent~0_combout\))) # (!\U_PICSPI_Slave|byte_data_sent\(5) & 
-- (\U_PICSPI_Slave|cnt\(6) & (\U_PICSPI_Slave|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|byte_data_sent\(5),
	datab => \U_PICSPI_Slave|cnt\(6),
	datac => \U_PICSPI_Slave|Equal2~0_combout\,
	datad => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~3_combout\);

-- Location: LCCOMB_X7_Y8_N18
\U_PICSPI_Slave|byte_data_sent[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent[0]~2_combout\ = (!\U_PICSPI_Slave|SSELr\(1) & ((\U_PICSPI_Slave|SSELr\(2)) # ((!\U_PICSPI_Slave|SCKr\(1) & \U_PICSPI_Slave|SCKr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|SSELr\(2),
	datab => \U_PICSPI_Slave|SCKr\(1),
	datac => \U_PICSPI_Slave|SCKr\(2),
	datad => \U_PICSPI_Slave|SSELr\(1),
	combout => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\);

-- Location: LCFF_X7_Y8_N27
\U_PICSPI_Slave|byte_data_sent[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~3_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(6));

-- Location: LCCOMB_X7_Y8_N6
\U_PICSPI_Slave|byte_data_sent~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U_PICSPI_Slave|byte_data_sent~1_combout\ = (\U_PICSPI_Slave|cnt\(7) & ((\U_PICSPI_Slave|Equal2~0_combout\) # ((\U_PICSPI_Slave|byte_data_sent\(6) & !\U_PICSPI_Slave|byte_data_sent~0_combout\)))) # (!\U_PICSPI_Slave|cnt\(7) & 
-- (\U_PICSPI_Slave|byte_data_sent\(6) & ((!\U_PICSPI_Slave|byte_data_sent~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_PICSPI_Slave|cnt\(7),
	datab => \U_PICSPI_Slave|byte_data_sent\(6),
	datac => \U_PICSPI_Slave|Equal2~0_combout\,
	datad => \U_PICSPI_Slave|byte_data_sent~0_combout\,
	combout => \U_PICSPI_Slave|byte_data_sent~1_combout\);

-- Location: LCFF_X7_Y8_N7
\U_PICSPI_Slave|byte_data_sent[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|byte_data_sent~1_combout\,
	ena => \U_PICSPI_Slave|byte_data_sent[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|byte_data_sent\(7));

-- Location: LCCOMB_X8_Y10_N0
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

-- Location: LCFF_X8_Y10_N1
\U_PICSPI_Slave|MISO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U_PICSPI_Slave|MISO~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U_PICSPI_Slave|MISO~regout\);

-- Location: LCCOMB_X16_Y10_N22
\Motor_1|pulsecount[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[0]~33_combout\ = \Motor_1|clocktick~regout\ $ (\Motor_1|pulsecount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|clocktick~regout\,
	datac => \Motor_1|pulsecount\(0),
	combout => \Motor_1|pulsecount[0]~33_combout\);

-- Location: LCFF_X16_Y10_N23
\Motor_1|pulsecount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(0));

-- Location: LCCOMB_X15_Y10_N10
\Motor_1|pulsecount[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[1]~11_combout\ = (\Motor_1|pulsecount\(1) & (\Motor_1|pulsecount\(0) $ (VCC))) # (!\Motor_1|pulsecount\(1) & (\Motor_1|pulsecount\(0) & VCC))
-- \Motor_1|pulsecount[1]~12\ = CARRY((\Motor_1|pulsecount\(1) & \Motor_1|pulsecount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(1),
	datab => \Motor_1|pulsecount\(0),
	datad => VCC,
	combout => \Motor_1|pulsecount[1]~11_combout\,
	cout => \Motor_1|pulsecount[1]~12\);

-- Location: LCCOMB_X15_Y10_N14
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

-- Location: LCCOMB_X15_Y9_N14
\Motor_1|clockcount[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[1]~9_combout\ = (\Motor_1|clockcount\(1) & (!\Motor_1|clockcount[0]~8\)) # (!\Motor_1|clockcount\(1) & ((\Motor_1|clockcount[0]~8\) # (GND)))
-- \Motor_1|clockcount[1]~10\ = CARRY((!\Motor_1|clockcount[0]~8\) # (!\Motor_1|clockcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|clockcount\(1),
	datad => VCC,
	cin => \Motor_1|clockcount[0]~8\,
	combout => \Motor_1|clockcount[1]~9_combout\,
	cout => \Motor_1|clockcount[1]~10\);

-- Location: LCFF_X15_Y9_N15
\Motor_1|clockcount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[1]~9_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(1));

-- Location: LCCOMB_X15_Y9_N16
\Motor_1|clockcount[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[2]~11_combout\ = (\Motor_1|clockcount\(2) & (\Motor_1|clockcount[1]~10\ $ (GND))) # (!\Motor_1|clockcount\(2) & (!\Motor_1|clockcount[1]~10\ & VCC))
-- \Motor_1|clockcount[2]~12\ = CARRY((\Motor_1|clockcount\(2) & !\Motor_1|clockcount[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|clockcount\(2),
	datad => VCC,
	cin => \Motor_1|clockcount[1]~10\,
	combout => \Motor_1|clockcount[2]~11_combout\,
	cout => \Motor_1|clockcount[2]~12\);

-- Location: LCCOMB_X15_Y9_N18
\Motor_1|clockcount[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[3]~13_combout\ = (\Motor_1|clockcount\(3) & (!\Motor_1|clockcount[2]~12\)) # (!\Motor_1|clockcount\(3) & ((\Motor_1|clockcount[2]~12\) # (GND)))
-- \Motor_1|clockcount[3]~14\ = CARRY((!\Motor_1|clockcount[2]~12\) # (!\Motor_1|clockcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|clockcount\(3),
	datad => VCC,
	cin => \Motor_1|clockcount[2]~12\,
	combout => \Motor_1|clockcount[3]~13_combout\,
	cout => \Motor_1|clockcount[3]~14\);

-- Location: LCFF_X15_Y9_N19
\Motor_1|clockcount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[3]~13_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(3));

-- Location: LCCOMB_X15_Y9_N22
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

-- Location: LCFF_X15_Y9_N23
\Motor_1|clockcount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[5]~17_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(5));

-- Location: LCCOMB_X15_Y9_N24
\Motor_1|clockcount[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|clockcount[6]~19_combout\ = \Motor_1|clockcount\(6) $ (!\Motor_1|clockcount[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|clockcount\(6),
	cin => \Motor_1|clockcount[5]~18\,
	combout => \Motor_1|clockcount[6]~19_combout\);

-- Location: LCFF_X15_Y9_N25
\Motor_1|clockcount[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[6]~19_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(6));

-- Location: LCFF_X15_Y9_N17
\Motor_1|clockcount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|clockcount[2]~11_combout\,
	sclr => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clockcount\(2));

-- Location: LCCOMB_X15_Y10_N2
\Motor_1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|Equal0~0_combout\ = (!\Motor_1|clockcount\(0) & (!\Motor_1|clockcount\(3) & (!\Motor_1|clockcount\(2) & !\Motor_1|clockcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|clockcount\(0),
	datab => \Motor_1|clockcount\(3),
	datac => \Motor_1|clockcount\(2),
	datad => \Motor_1|clockcount\(1),
	combout => \Motor_1|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y10_N0
\Motor_1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|Equal0~1_combout\ = (!\Motor_1|clockcount\(4) & (\Motor_1|clockcount\(5) & (\Motor_1|clockcount\(6) & \Motor_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|clockcount\(4),
	datab => \Motor_1|clockcount\(5),
	datac => \Motor_1|clockcount\(6),
	datad => \Motor_1|Equal0~0_combout\,
	combout => \Motor_1|Equal0~1_combout\);

-- Location: LCFF_X15_Y10_N1
\Motor_1|clocktick\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|clocktick~regout\);

-- Location: LCFF_X15_Y10_N15
\Motor_1|pulsecount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[3]~15_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(3));

-- Location: LCCOMB_X15_Y10_N16
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

-- Location: LCCOMB_X15_Y10_N18
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

-- Location: LCFF_X15_Y10_N19
\Motor_1|pulsecount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[5]~19_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(5));

-- Location: LCCOMB_X15_Y10_N20
\Motor_1|pulsecount[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[6]~21_combout\ = (\Motor_1|pulsecount\(6) & (!\Motor_1|pulsecount[5]~20\)) # (!\Motor_1|pulsecount\(6) & ((\Motor_1|pulsecount[5]~20\) # (GND)))
-- \Motor_1|pulsecount[6]~22\ = CARRY((!\Motor_1|pulsecount[5]~20\) # (!\Motor_1|pulsecount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(6),
	datad => VCC,
	cin => \Motor_1|pulsecount[5]~20\,
	combout => \Motor_1|pulsecount[6]~21_combout\,
	cout => \Motor_1|pulsecount[6]~22\);

-- Location: LCCOMB_X15_Y10_N22
\Motor_1|pulsecount[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[7]~23_combout\ = (\Motor_1|pulsecount\(7) & (\Motor_1|pulsecount[6]~22\ $ (GND))) # (!\Motor_1|pulsecount\(7) & (!\Motor_1|pulsecount[6]~22\ & VCC))
-- \Motor_1|pulsecount[7]~24\ = CARRY((\Motor_1|pulsecount\(7) & !\Motor_1|pulsecount[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(7),
	datad => VCC,
	cin => \Motor_1|pulsecount[6]~22\,
	combout => \Motor_1|pulsecount[7]~23_combout\,
	cout => \Motor_1|pulsecount[7]~24\);

-- Location: LCFF_X15_Y10_N23
\Motor_1|pulsecount[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[7]~23_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(7));

-- Location: LCCOMB_X13_Y10_N14
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

-- Location: LCFF_X13_Y10_N15
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X13_Y10_N16
\counter[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~9_combout\ = (counter(2) & (!\counter[1]~8\)) # (!counter(2) & ((\counter[1]~8\) # (GND)))
-- \counter[2]~10\ = CARRY((!\counter[1]~8\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~8\,
	combout => \counter[2]~9_combout\,
	cout => \counter[2]~10\);

-- Location: LCFF_X13_Y10_N17
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X13_Y10_N18
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

-- Location: LCFF_X13_Y10_N19
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X13_Y10_N20
\counter[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~13_combout\ = (counter(4) & (!\counter[3]~12\)) # (!counter(4) & ((\counter[3]~12\) # (GND)))
-- \counter[4]~14\ = CARRY((!\counter[3]~12\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~12\,
	combout => \counter[4]~13_combout\,
	cout => \counter[4]~14\);

-- Location: LCCOMB_X13_Y10_N22
\counter[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~15_combout\ = (counter(5) & (\counter[4]~14\ $ (GND))) # (!counter(5) & (!\counter[4]~14\ & VCC))
-- \counter[5]~16\ = CARRY((counter(5) & !\counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~14\,
	combout => \counter[5]~15_combout\,
	cout => \counter[5]~16\);

-- Location: LCFF_X13_Y10_N23
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X13_Y10_N24
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

-- Location: LCFF_X13_Y10_N25
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X13_Y10_N26
\counter[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~19_combout\ = \counter[6]~18\ $ (!counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(7),
	cin => \counter[6]~18\,
	combout => \counter[7]~19_combout\);

-- Location: LCFF_X13_Y10_N27
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X16_Y10_N26
\pwm1[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[7]~0_combout\ = (\Switch_1~combout\(0) & counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_1~combout\(0),
	datac => counter(7),
	combout => \pwm1[7]~0_combout\);

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

-- Location: LCCOMB_X16_Y10_N20
\pwm1[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[6]~1_combout\ = (counter(6) & \Switch_1~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(6),
	datad => \Switch_1~combout\(0),
	combout => \pwm1[6]~1_combout\);

-- Location: LCFF_X15_Y10_N17
\Motor_1|pulsecount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[4]~17_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(4));

-- Location: LCCOMB_X16_Y10_N18
\pwm1[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[3]~4_combout\ = (counter(3)) # (!\Switch_1~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_1~combout\(0),
	datac => counter(3),
	combout => \pwm1[3]~4_combout\);

-- Location: LCCOMB_X16_Y10_N28
\pwm1[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[2]~5_combout\ = (\Switch_1~combout\(0) & counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_1~combout\(0),
	datad => counter(2),
	combout => \pwm1[2]~5_combout\);

-- Location: LCCOMB_X13_Y10_N2
\pwm1[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm1[1]~6_combout\ = (counter(1) & \Switch_1~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(1),
	datad => \Switch_1~combout\(0),
	combout => \pwm1[1]~6_combout\);

-- Location: LCCOMB_X16_Y10_N0
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

-- Location: LCCOMB_X16_Y10_N2
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

-- Location: LCCOMB_X16_Y10_N4
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

-- Location: LCCOMB_X16_Y10_N6
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

-- Location: LCCOMB_X16_Y10_N8
\Motor_1|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~10_cout\ = CARRY((\pwm1[4]~3_combout\ & ((!\Motor_1|LessThan0~8_cout\) # (!\Motor_1|pulsecount\(4)))) # (!\pwm1[4]~3_combout\ & (!\Motor_1|pulsecount\(4) & !\Motor_1|LessThan0~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1[4]~3_combout\,
	datab => \Motor_1|pulsecount\(4),
	datad => VCC,
	cin => \Motor_1|LessThan0~8_cout\,
	cout => \Motor_1|LessThan0~10_cout\);

-- Location: LCCOMB_X16_Y10_N10
\Motor_1|LessThan0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~12_cout\ = CARRY((\pwm1[5]~2_combout\ & (\Motor_1|pulsecount\(5) & !\Motor_1|LessThan0~10_cout\)) # (!\pwm1[5]~2_combout\ & ((\Motor_1|pulsecount\(5)) # (!\Motor_1|LessThan0~10_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1[5]~2_combout\,
	datab => \Motor_1|pulsecount\(5),
	datad => VCC,
	cin => \Motor_1|LessThan0~10_cout\,
	cout => \Motor_1|LessThan0~12_cout\);

-- Location: LCCOMB_X16_Y10_N12
\Motor_1|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~14_cout\ = CARRY((\Motor_1|pulsecount\(6) & (\pwm1[6]~1_combout\ & !\Motor_1|LessThan0~12_cout\)) # (!\Motor_1|pulsecount\(6) & ((\pwm1[6]~1_combout\) # (!\Motor_1|LessThan0~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(6),
	datab => \pwm1[6]~1_combout\,
	datad => VCC,
	cin => \Motor_1|LessThan0~12_cout\,
	cout => \Motor_1|LessThan0~14_cout\);

-- Location: LCCOMB_X16_Y10_N14
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

-- Location: LCCOMB_X15_Y10_N24
\Motor_1|pulsecount[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[8]~25_combout\ = (\Motor_1|pulsecount\(8) & (!\Motor_1|pulsecount[7]~24\)) # (!\Motor_1|pulsecount\(8) & ((\Motor_1|pulsecount[7]~24\) # (GND)))
-- \Motor_1|pulsecount[8]~26\ = CARRY((!\Motor_1|pulsecount[7]~24\) # (!\Motor_1|pulsecount\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(8),
	datad => VCC,
	cin => \Motor_1|pulsecount[7]~24\,
	combout => \Motor_1|pulsecount[8]~25_combout\,
	cout => \Motor_1|pulsecount[8]~26\);

-- Location: LCCOMB_X15_Y10_N26
\Motor_1|pulsecount[9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[9]~27_combout\ = (\Motor_1|pulsecount\(9) & (\Motor_1|pulsecount[8]~26\ $ (GND))) # (!\Motor_1|pulsecount\(9) & (!\Motor_1|pulsecount[8]~26\ & VCC))
-- \Motor_1|pulsecount[9]~28\ = CARRY((\Motor_1|pulsecount\(9) & !\Motor_1|pulsecount[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(9),
	datad => VCC,
	cin => \Motor_1|pulsecount[8]~26\,
	combout => \Motor_1|pulsecount[9]~27_combout\,
	cout => \Motor_1|pulsecount[9]~28\);

-- Location: LCFF_X15_Y10_N27
\Motor_1|pulsecount[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[9]~27_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(9));

-- Location: LCCOMB_X15_Y10_N28
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

-- Location: LCFF_X15_Y10_N29
\Motor_1|pulsecount[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[10]~29_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(10));

-- Location: LCCOMB_X15_Y10_N30
\Motor_1|pulsecount[11]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|pulsecount[11]~31_combout\ = \Motor_1|pulsecount[10]~30\ $ (!\Motor_1|pulsecount\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Motor_1|pulsecount\(11),
	cin => \Motor_1|pulsecount[10]~30\,
	combout => \Motor_1|pulsecount[11]~31_combout\);

-- Location: LCFF_X15_Y10_N31
\Motor_1|pulsecount[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[11]~31_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(11));

-- Location: LCCOMB_X12_Y10_N10
\Motor_1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~0_combout\ = (!\Motor_1|pulsecount\(11) & (!\Motor_1|pulsecount\(9) & !\Motor_1|pulsecount\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(11),
	datac => \Motor_1|pulsecount\(9),
	datad => \Motor_1|pulsecount\(10),
	combout => \Motor_1|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y10_N16
\Motor_1|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_1|LessThan0~17_combout\ = (\Motor_1|LessThan0~0_combout\ & ((\Motor_1|LessThan0~15_combout\) # (!\Motor_1|pulsecount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(8),
	datac => \Motor_1|LessThan0~15_combout\,
	datad => \Motor_1|LessThan0~0_combout\,
	combout => \Motor_1|LessThan0~17_combout\);

-- Location: LCFF_X16_Y10_N17
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

-- Location: LCCOMB_X17_Y10_N28
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

-- Location: LCCOMB_X17_Y10_N30
\pwm2[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[6]~1_combout\ = (\Switch_1~combout\(1) & counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(1),
	datac => counter(6),
	combout => \pwm2[6]~1_combout\);

-- Location: LCCOMB_X17_Y10_N0
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

-- Location: LCFF_X13_Y10_N21
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \U_1HzClkDivider|clk_out~clkctrl_outclk\,
	datain => \counter[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X17_Y10_N26
\pwm2[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[4]~3_combout\ = (\Switch_1~combout\(1) & counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(1),
	datad => counter(4),
	combout => \pwm2[4]~3_combout\);

-- Location: LCCOMB_X17_Y10_N4
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

-- Location: LCCOMB_X17_Y10_N22
\pwm2[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[2]~5_combout\ = (\Switch_1~combout\(1) & counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(1),
	datad => counter(2),
	combout => \pwm2[2]~5_combout\);

-- Location: LCCOMB_X13_Y10_N6
\pwm2[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[1]~6_combout\ = (counter(1) & \Switch_1~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(1),
	datad => \Switch_1~combout\(1),
	combout => \pwm2[1]~6_combout\);

-- Location: LCCOMB_X13_Y10_N8
\pwm2[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm2[0]~7_combout\ = (\Switch_1~combout\(1) & \current_State~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(1),
	datad => \current_State~regout\,
	combout => \pwm2[0]~7_combout\);

-- Location: LCCOMB_X17_Y10_N6
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

-- Location: LCCOMB_X17_Y10_N8
\Motor_2|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~3_cout\ = CARRY((\Motor_1|pulsecount\(1) & ((!\Motor_2|LessThan0~1_cout\) # (!\pwm2[1]~6_combout\))) # (!\Motor_1|pulsecount\(1) & (!\pwm2[1]~6_combout\ & !\Motor_2|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(1),
	datab => \pwm2[1]~6_combout\,
	datad => VCC,
	cin => \Motor_2|LessThan0~1_cout\,
	cout => \Motor_2|LessThan0~3_cout\);

-- Location: LCCOMB_X17_Y10_N10
\Motor_2|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~5_cout\ = CARRY((\Motor_1|pulsecount\(2) & (\pwm2[2]~5_combout\ & !\Motor_2|LessThan0~3_cout\)) # (!\Motor_1|pulsecount\(2) & ((\pwm2[2]~5_combout\) # (!\Motor_2|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(2),
	datab => \pwm2[2]~5_combout\,
	datad => VCC,
	cin => \Motor_2|LessThan0~3_cout\,
	cout => \Motor_2|LessThan0~5_cout\);

-- Location: LCCOMB_X17_Y10_N12
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

-- Location: LCCOMB_X17_Y10_N14
\Motor_2|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~9_cout\ = CARRY((\Motor_1|pulsecount\(4) & (\pwm2[4]~3_combout\ & !\Motor_2|LessThan0~7_cout\)) # (!\Motor_1|pulsecount\(4) & ((\pwm2[4]~3_combout\) # (!\Motor_2|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(4),
	datab => \pwm2[4]~3_combout\,
	datad => VCC,
	cin => \Motor_2|LessThan0~7_cout\,
	cout => \Motor_2|LessThan0~9_cout\);

-- Location: LCCOMB_X17_Y10_N16
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

-- Location: LCCOMB_X17_Y10_N18
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

-- Location: LCCOMB_X17_Y10_N20
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

-- Location: LCFF_X15_Y10_N25
\Motor_1|pulsecount[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[8]~25_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(8));

-- Location: LCCOMB_X17_Y10_N24
\Motor_2|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_2|LessThan0~16_combout\ = (\Motor_1|LessThan0~0_combout\ & ((\Motor_2|LessThan0~14_combout\) # (!\Motor_1|pulsecount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|LessThan0~0_combout\,
	datac => \Motor_2|LessThan0~14_combout\,
	datad => \Motor_1|pulsecount\(8),
	combout => \Motor_2|LessThan0~16_combout\);

-- Location: LCFF_X17_Y10_N25
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

-- Location: LCCOMB_X14_Y10_N0
\pwm3[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[7]~0_combout\ = (\Switch_1~combout\(2) & counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(2),
	datad => counter(7),
	combout => \pwm3[7]~0_combout\);

-- Location: LCFF_X15_Y10_N21
\Motor_1|pulsecount[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[6]~21_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(6));

-- Location: LCCOMB_X14_Y10_N28
\pwm3[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[5]~2_combout\ = (\Switch_1~combout\(2) & counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(2),
	datad => counter(5),
	combout => \pwm3[5]~2_combout\);

-- Location: LCCOMB_X14_Y10_N30
\pwm3[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[4]~3_combout\ = (counter(4) & \Switch_1~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(4),
	datad => \Switch_1~combout\(2),
	combout => \pwm3[4]~3_combout\);

-- Location: LCCOMB_X14_Y10_N26
\pwm3[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[2]~5_combout\ = (\Switch_1~combout\(2) & counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(2),
	datad => counter(2),
	combout => \pwm3[2]~5_combout\);

-- Location: LCFF_X15_Y10_N11
\Motor_1|pulsecount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_1|pulsecount[1]~11_combout\,
	ena => \Motor_1|clocktick~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_1|pulsecount\(1));

-- Location: LCCOMB_X13_Y10_N4
\pwm3[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm3[0]~7_combout\ = (\Switch_1~combout\(2) & \current_State~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(2),
	datad => \current_State~regout\,
	combout => \pwm3[0]~7_combout\);

-- Location: LCCOMB_X14_Y10_N6
\Motor_3|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~1_cout\ = CARRY((!\Motor_1|pulsecount\(0) & \pwm3[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(0),
	datab => \pwm3[0]~7_combout\,
	datad => VCC,
	cout => \Motor_3|LessThan0~1_cout\);

-- Location: LCCOMB_X14_Y10_N8
\Motor_3|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~3_cout\ = CARRY((\pwm3[1]~6_combout\ & (\Motor_1|pulsecount\(1) & !\Motor_3|LessThan0~1_cout\)) # (!\pwm3[1]~6_combout\ & ((\Motor_1|pulsecount\(1)) # (!\Motor_3|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm3[1]~6_combout\,
	datab => \Motor_1|pulsecount\(1),
	datad => VCC,
	cin => \Motor_3|LessThan0~1_cout\,
	cout => \Motor_3|LessThan0~3_cout\);

-- Location: LCCOMB_X14_Y10_N10
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

-- Location: LCCOMB_X14_Y10_N12
\Motor_3|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~7_cout\ = CARRY((\pwm3[3]~4_combout\ & (\Motor_1|pulsecount\(3) & !\Motor_3|LessThan0~5_cout\)) # (!\pwm3[3]~4_combout\ & ((\Motor_1|pulsecount\(3)) # (!\Motor_3|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm3[3]~4_combout\,
	datab => \Motor_1|pulsecount\(3),
	datad => VCC,
	cin => \Motor_3|LessThan0~5_cout\,
	cout => \Motor_3|LessThan0~7_cout\);

-- Location: LCCOMB_X14_Y10_N14
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

-- Location: LCCOMB_X14_Y10_N16
\Motor_3|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~11_cout\ = CARRY((\Motor_1|pulsecount\(5) & ((!\Motor_3|LessThan0~9_cout\) # (!\pwm3[5]~2_combout\))) # (!\Motor_1|pulsecount\(5) & (!\pwm3[5]~2_combout\ & !\Motor_3|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(5),
	datab => \pwm3[5]~2_combout\,
	datad => VCC,
	cin => \Motor_3|LessThan0~9_cout\,
	cout => \Motor_3|LessThan0~11_cout\);

-- Location: LCCOMB_X14_Y10_N18
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

-- Location: LCCOMB_X14_Y10_N20
\Motor_3|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~14_combout\ = (\Motor_1|pulsecount\(7) & (\pwm3[7]~0_combout\ & \Motor_3|LessThan0~13_cout\)) # (!\Motor_1|pulsecount\(7) & ((\pwm3[7]~0_combout\) # (\Motor_3|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(7),
	datab => \pwm3[7]~0_combout\,
	cin => \Motor_3|LessThan0~13_cout\,
	combout => \Motor_3|LessThan0~14_combout\);

-- Location: LCCOMB_X17_Y10_N2
\Motor_3|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_3|LessThan0~16_combout\ = (\Motor_1|LessThan0~0_combout\ & ((\Motor_3|LessThan0~14_combout\) # (!\Motor_1|pulsecount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(8),
	datac => \Motor_1|LessThan0~0_combout\,
	datad => \Motor_3|LessThan0~14_combout\,
	combout => \Motor_3|LessThan0~16_combout\);

-- Location: LCFF_X17_Y10_N3
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

-- Location: LCCOMB_X12_Y10_N28
\pwm5[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm5[7]~0_combout\ = (\Switch_1~combout\(3) & counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(3),
	datac => counter(7),
	combout => \pwm5[7]~0_combout\);

-- Location: LCCOMB_X12_Y10_N0
\pwm5[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm5[5]~2_combout\ = (\Switch_1~combout\(3) & counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(3),
	datad => counter(5),
	combout => \pwm5[5]~2_combout\);

-- Location: LCCOMB_X12_Y10_N2
\pwm5[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm5[4]~3_combout\ = (\Switch_1~combout\(3) & counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(3),
	datad => counter(4),
	combout => \pwm5[4]~3_combout\);

-- Location: LCCOMB_X12_Y10_N4
\pwm5[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm5[3]~4_combout\ = (counter(3)) # (!\Switch_1~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(3),
	datad => counter(3),
	combout => \pwm5[3]~4_combout\);

-- Location: LCCOMB_X12_Y10_N30
\pwm5[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm5[2]~5_combout\ = (\Switch_1~combout\(3) & counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch_1~combout\(3),
	datac => counter(2),
	combout => \pwm5[2]~5_combout\);

-- Location: LCCOMB_X13_Y10_N28
\pwm5[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm5[1]~6_combout\ = (\Switch_1~combout\(3) & counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(3),
	datad => counter(1),
	combout => \pwm5[1]~6_combout\);

-- Location: LCCOMB_X13_Y10_N30
\pwm5[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm5[0]~7_combout\ = (\Switch_1~combout\(3) & \current_State~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch_1~combout\(3),
	datad => \current_State~regout\,
	combout => \pwm5[0]~7_combout\);

-- Location: LCCOMB_X12_Y10_N12
\Motor_5|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_5|LessThan0~1_cout\ = CARRY((!\Motor_1|pulsecount\(0) & \pwm5[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(0),
	datab => \pwm5[0]~7_combout\,
	datad => VCC,
	cout => \Motor_5|LessThan0~1_cout\);

-- Location: LCCOMB_X12_Y10_N14
\Motor_5|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_5|LessThan0~3_cout\ = CARRY((\Motor_1|pulsecount\(1) & ((!\Motor_5|LessThan0~1_cout\) # (!\pwm5[1]~6_combout\))) # (!\Motor_1|pulsecount\(1) & (!\pwm5[1]~6_combout\ & !\Motor_5|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(1),
	datab => \pwm5[1]~6_combout\,
	datad => VCC,
	cin => \Motor_5|LessThan0~1_cout\,
	cout => \Motor_5|LessThan0~3_cout\);

-- Location: LCCOMB_X12_Y10_N16
\Motor_5|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_5|LessThan0~5_cout\ = CARRY((\Motor_1|pulsecount\(2) & (\pwm5[2]~5_combout\ & !\Motor_5|LessThan0~3_cout\)) # (!\Motor_1|pulsecount\(2) & ((\pwm5[2]~5_combout\) # (!\Motor_5|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(2),
	datab => \pwm5[2]~5_combout\,
	datad => VCC,
	cin => \Motor_5|LessThan0~3_cout\,
	cout => \Motor_5|LessThan0~5_cout\);

-- Location: LCCOMB_X12_Y10_N18
\Motor_5|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_5|LessThan0~7_cout\ = CARRY((\Motor_1|pulsecount\(3) & ((!\Motor_5|LessThan0~5_cout\) # (!\pwm5[3]~4_combout\))) # (!\Motor_1|pulsecount\(3) & (!\pwm5[3]~4_combout\ & !\Motor_5|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(3),
	datab => \pwm5[3]~4_combout\,
	datad => VCC,
	cin => \Motor_5|LessThan0~5_cout\,
	cout => \Motor_5|LessThan0~7_cout\);

-- Location: LCCOMB_X12_Y10_N20
\Motor_5|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_5|LessThan0~9_cout\ = CARRY((\Motor_1|pulsecount\(4) & (\pwm5[4]~3_combout\ & !\Motor_5|LessThan0~7_cout\)) # (!\Motor_1|pulsecount\(4) & ((\pwm5[4]~3_combout\) # (!\Motor_5|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(4),
	datab => \pwm5[4]~3_combout\,
	datad => VCC,
	cin => \Motor_5|LessThan0~7_cout\,
	cout => \Motor_5|LessThan0~9_cout\);

-- Location: LCCOMB_X12_Y10_N22
\Motor_5|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_5|LessThan0~11_cout\ = CARRY((\Motor_1|pulsecount\(5) & ((!\Motor_5|LessThan0~9_cout\) # (!\pwm5[5]~2_combout\))) # (!\Motor_1|pulsecount\(5) & (!\pwm5[5]~2_combout\ & !\Motor_5|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|pulsecount\(5),
	datab => \pwm5[5]~2_combout\,
	datad => VCC,
	cin => \Motor_5|LessThan0~9_cout\,
	cout => \Motor_5|LessThan0~11_cout\);

-- Location: LCCOMB_X12_Y10_N24
\Motor_5|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_5|LessThan0~13_cout\ = CARRY((\pwm5[6]~1_combout\ & ((!\Motor_5|LessThan0~11_cout\) # (!\Motor_1|pulsecount\(6)))) # (!\pwm5[6]~1_combout\ & (!\Motor_1|pulsecount\(6) & !\Motor_5|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm5[6]~1_combout\,
	datab => \Motor_1|pulsecount\(6),
	datad => VCC,
	cin => \Motor_5|LessThan0~11_cout\,
	cout => \Motor_5|LessThan0~13_cout\);

-- Location: LCCOMB_X12_Y10_N26
\Motor_5|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_5|LessThan0~14_combout\ = (\Motor_1|pulsecount\(7) & (\Motor_5|LessThan0~13_cout\ & \pwm5[7]~0_combout\)) # (!\Motor_1|pulsecount\(7) & ((\Motor_5|LessThan0~13_cout\) # (\pwm5[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Motor_1|pulsecount\(7),
	datad => \pwm5[7]~0_combout\,
	cin => \Motor_5|LessThan0~13_cout\,
	combout => \Motor_5|LessThan0~14_combout\);

-- Location: LCCOMB_X12_Y10_N8
\Motor_5|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Motor_5|LessThan0~16_combout\ = (\Motor_1|LessThan0~0_combout\ & ((\Motor_5|LessThan0~14_combout\) # (!\Motor_1|pulsecount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Motor_1|LessThan0~0_combout\,
	datac => \Motor_1|pulsecount\(8),
	datad => \Motor_5|LessThan0~14_combout\,
	combout => \Motor_5|LessThan0~16_combout\);

-- Location: LCFF_X12_Y10_N9
\Motor_5|pwm\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Motor_5|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Motor_5|pwm~regout\);

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
	datain => \Motor_5|pwm~regout\,
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


