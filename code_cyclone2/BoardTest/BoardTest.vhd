--	=	=	=	=	=	=	=	=	=	=	=	=	=	=	=
--	Title:		Ad-Flier BoardTest Top Level
--	Project:	The Ad-Flier, Spring 2012
--	Authors:		David Greene, Salvatore D'Acunto
--	=	=	=	=	=	=	=	=	=	=	=	=	=	=	=

LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BoardTest is
	port( 
		-- FPGA Clocks
		clk					:	in		std_logic;						-- 25.175MHz Oscillator
		clk_DS1085Z_0		:	in		std_logic;						-- DS1085Z Output 0
		clk_DS1085Z_1		:	in		std_logic;						-- DS1085Z Output 1
		
		-- Board Switches & Lights
		Switch_1			:	in		std_logic_vector(3 downto 0);	-- DIP Switch Bank
		Switch_2			:	in		std_logic;						-- Push-Button 1
		Switch_3			:	in		std_logic;						-- Push-Button 2
		Switch_4			:	in		std_logic;						-- Push-Button 3
		TLED_Orange_1		:	out		std_logic;						-- Top Board Indicator 1
		TLED_Orange_2		:	out		std_logic;						-- Top Board Indicator 2
		
		-- Bottom Board Lights
		BLED_Blue			:	out		std_logic_vector(3 downto 0);			-- Bottom Blue Lights
		BLED_Orange			:	out		std_logic_vector(3 downto 0);			-- Bottom Orange Lights
		
		-- PIC & FPGA Bi-Directional 8-Bit Parallel Port
		PIC_PBUS_Data		:	inout	std_logic_vector(7 downto 0);	-- Bi-Directional Data Bus
		PIC_PBUS_A_D		:	in		std_logic;						-- High=Addr / Low=Data
		PIC_PBUS_R_W		:	in		std_logic;						-- High=Read / Low=Write
		PIC_PBUS_OK_IN		:	in		std_logic;						-- Data Bus GOOD from PIC
		PIC_PBUS_OK_OUT	:	out		std_logic;					-- Data Bus GOOD to PIC
		
		-- PIC & FPGA SPI Bus
		PIC_SPI_SCLK		:	in		std_logic;						-- PIC Controlled Serial Clock
		PIC_SPI_MOSI		:	in		std_logic;						-- Serial Input from PIC
		PIC_SPI_MISO		:	out		std_logic;						-- Serial Output to PIC
		PIC_SPI_Select		:	in		std_logic;						-- Active-High Select Line
		
		-- Ultrasonic Modules (Top & Bottom)
		Ultra_T_Trigger		:	out		std_logic;						-- Top Module
		Ultra_T_Edge		:	in		std_logic;
		Ultra_B_Trigger		:	out		std_logic;						-- Bottom Module
		Ultra_B_Edge		:	in		std_logic;
		
		-- PWM Motor Outputs
		Motor_North			:	out		std_logic;						-- North-Facing Motor
		Motor_East			:	out		std_logic;						-- East-Facing Motor
		Motor_South			:	out		std_logic;						-- South-Facing Motor
		Motor_West			:	out		std_logic;						-- West-Facing Motor
		
		-- Camera Module (Bottom Board)
		Camera_SCL			:	out		std_logic;						-- Camera I2C Clock
		Camera_SDA			:	inout	std_logic;						-- Camera I2C Data Line
		Camera_RESET		:	out		std_logic;						-- Camera Active-High Reset
		Camera_EXTCLK		:	out		std_logic;						-- External Clock Input (25MHz)
		Camera_HD			:	in		std_logic;						-- Horizontal Sync
		Camera_VD			:	in		std_logic;						-- Vertical Sync
		Camera_DCLK			:	in		std_logic;						-- Output Data Bus Clock
		Camera_DOUT			:	in		std_logic_vector(7 downto 0);	-- Output Data Bus
		
		-- FPGA Modules SPI Bus
		FPGA_SPI_Clock		:	out		std_logic;						-- SPI Clock Output
		FPGA_SPI_MISO		:	in		std_logic;						-- SPI Serial Input
		FPGA_SPI_MOSI		:	out		std_logic;						-- SPI Serial Output
		
		-- FPGA Modules I2C Bus
		FPGA_I2C_Clock		:	out		std_logic;						-- I2C Clock Output
		FPGA_I2C_Data		:	inout	std_logic;						-- I2C Data Line
		
		-- Module Control Lines
		Gyro_ChipSelect		:	out		std_logic;						-- Gyroscope SPI Chip Select (Active-Low)
		Gyro_DataReady		:	in		std_logic;						-- Gyroscope Data Ready Interrupt
		Gyro_Interrupt		:	in		std_logic;						-- Gyroscope Programmable Interrupt
		SRAM_ChipSelect		:	out		std_logic;						-- Flash SRAM SPI Chip Select
		SRAM_WriteProtect	:	out		std_logic;						-- Flash SRAM Write Protect (Active-Low)
		Accel_Interrupt1	:	in		std_logic;						-- Accelerometer Programmable Interrupt 1
		Accel_Interrupt2	:	in		std_logic;						-- Accelerometer Programmable Interrupt 2
		Accel_SelAddr0		:	out		std_logic						-- Accelerometer I2C Device Address (0:0x1C, 1:0x1D)
	); 	
end BoardTest;

--Register Addresses
--X Angle Desired  $00
--X Angle Measured  $01
--Y Angle Desired  $02
--Y Angle Measured  $03
--Z Angle Desired  $04
--Z Angle Measured  $05
--Altitude Desired $06
--Misc.            $07

architecture STR of BoardTest is

	-- Generic Clock Divider Component
	component clk_div is
		generic (
			width			:	integer	:= 12587500
		);
		port( 
			clk_in			:	in		std_logic;
			clk_out			:	out		std_logic
		);
	end component;
	
	component motor_pwm is 
	port (
			clk : in std_logic;
			speed : in std_logic_vector(7 downto 0);
			pwm : out std_logic
		   );
	end component;
	
	component regmap is 
	port (
			clk : in std_logic;
			reset : in std_logic;
			data : inout std_logic_vector(7 downto 0);
			a_d : in std_logic;
         r_w : in std_logic;
			ok_in : in std_logic;
			ok_out : out std_logic;
			reg0c, reg1c, reg2c, reg3c, reg4c, reg5c, reg6c, reg7c : out std_logic_vector(7 downto 0)
			);
   end component;
	
	component rangefinder is 
		port (
				clk : in std_logic;
				edge : in std_logic;
				trigger : out std_logic;
				altitude : out std_logic_vector(7 downto 0)
				);
	end component;
	
	component quadreg is 
		port (
			clk : in std_logic;
			data : in std_logic_vector(7 downto 0);
			reset : in std_logic;
			regi_en : in std_logic;
			rego_en : in std_logic;
			reg_data : out std_logic_vector(7 downto 0);
			reg_datac : out std_logic_vector(7 downto 0)
			);
	end component;
	
	component pid_yaw_controller is 
		port (
			clk : in std_logic;
			set_point, measured_point : in std_logic_vector(7 downto 0);
			pwm_input : out std_logic_vector(8 downto 0)
		   );
	end component;

	component pid_pitch_controller is 
		port (
			clk : in std_logic;
			set_point, measured_point : in std_logic_vector(7 downto 0);
			pwm_input : out std_logic_vector(8 downto 0)
		   );
	end component;

	component pid_roll_controller is 
		port (
			clk : in std_logic;
			set_point, measured_point : in std_logic_vector(7 downto 0);
			pwm_input : out std_logic_vector(8 downto 0)
		   );
	end component;

	component pid_altitude_controller is 
		port (
			clk : in std_logic;
			set_point, measured_point : in std_logic_vector(7 downto 0);
			pwm_input : out std_logic_vector(8 downto 0)
		   );
	end component;
	
	-- Signals
	signal clk_1Hz			:	std_logic := '0';
	signal pwm1, pwm2, pwm3, pwm4, count, countpwm : std_logic_vector(7 downto 0) := "00000000";
	signal RegXD, RegYD, RegZD, RegXM, RegYM, RegZM, RegAD, RegMisc : std_logic_vector(7 downto 0) := "00000000";
	signal RegAM, RegAMc, RegTR, RegTRc, RegAMA : std_logic_vector(7 downto 0) := "00000000";
	signal pwm_yaw, pwm_pitch, pwm_roll, pwm_altitude, pwm_a : std_logic_vector(8 downto 0) := "000000000";
	signal pwm_n, pwm_s, pwm_e, pwm_w : std_logic_vector(8 downto 0) := "000000000";

	-- Temp Register for Ultrasonics
	signal Top_Range, Altitude : std_logic_vector(7 downto 0) := (others => '0');

begin

   -- Altitude Adjustment
	RegAMA <= RegAMc - 2;
	
	-- Instantiations:
	U_1HzClkDivider		:	clk_div generic map (6293750) port map (clk, clk_1Hz);
	
	--Range Finder Instantiations
	U_Ranger_Top			:	rangefinder port map (clk, Ultra_T_Edge, Ultra_T_Trigger, Top_Range);
	U_Ranger_Botom			:	rangefinder port map (clk, Ultra_B_Edge, Ultra_B_Trigger, Altitude);
	
	--Motor Instantiations
	U_Motor_1              	:  motor_pwm port map (clk, pwm1, Motor_North);
	U_Motor_2					:  motor_pwm port map (clk, pwm2, Motor_East);
	U_Motor_3					:  motor_pwm port map (clk, pwm3, Motor_South);
	U_Motor_4					:  motor_pwm port map (clk, pwm4, Motor_West);
	
	--Register Instantations
	U_Registers             :  regmap    port map (clk, Switch_2, PIC_PBUS_Data, PIC_PBUS_A_D, PIC_PBUS_R_W,
															  PIC_PBUS_OK_IN, PIC_PBUS_OK_OUT, 
															  RegXD, RegYD, RegZD, RegXM, RegYM, RegZM, RegAD, RegMisc);
	U_RegAM                 : quadreg port map(clk, Altitude, Switch_2, '1', '1', RegAM, RegAMc);
	U_RegTR                 : quadreg port map(clk, Top_Range, Switch_2, '1', '1', RegTR, RegTRc);
	
	--PID Instations
	U_Yaw                   : pid_yaw_controller port map (clk, RegZD, RegZM, pwm_yaw);
	U_Pitch                 : pid_pitch_controller port map (clk, RegYD, RegYM, pwm_pitch);
	U_Roll                  : pid_roll_controller port map (clk, RegXD, RegXM, pwm_roll);
	U_Altitude              : pid_altitude_controller port map (clk, RegAD, RegAMA, pwm_altitude);

	
	-- Setup: Bi-Directional Ports to High Impedance
--	PIC_PBUS_Data			<= (others => 'Z');
	Camera_SDA				<= 'Z';
	FPGA_I2C_Data			<= 'Z';
	
	-- Setup: Define Initial Condition for Ports (Remove as Used!)
	Camera_SCL				<= '0';
	Camera_RESET			<= '0';
	Camera_EXTCLK			<= '0';
	FPGA_SPI_Clock			<= '0';
	FPGA_SPI_MOSI			<= '0';
	FPGA_I2C_Clock			<= '0';
	Gyro_ChipSelect		<= '1';
	SRAM_ChipSelect		<= '1';
	SRAM_WriteProtect		<= '0';
	Accel_SelAddr0			<= '0';
	PIC_SPI_MISO		   <= '0';
	

	process(pwm_pitch, pwm_roll, pwm_altitude, pwm_a, RegTR) --Adding Components of PID for PWM
	begin
	
		pwm_n <= "000000000";
		pwm_s <= "000000000";
		pwm_e <= "000000000";
		pwm_w <= "000000000";
		pwm_a <= "000000000";
		
		if RegTR < "00110010" then --Top Object Avoidance
			pwm_a <= pwm_altitude - "000011010"; --10% Reduction
		elsif RegTR > "00110010" or RegTR = "00110010" then
			pwm_a <= pwm_altitude;
		end if;
		
		if pwm_pitch(8) = '0' then
			pwm_n <= pwm_a + ('0' & pwm_pitch(7 downto 0)); --North Motor Component
			if pwm_altitude > pwm_pitch then
				pwm_s <= pwm_a - ('0' & pwm_pitch(7 downto 0)); --South Motor Component
			else
				pwm_s <= '0' & pwm_pitch(7 downto 0);
			end if;
		elsif pwm_pitch(8) = '0' then
			pwm_s <= pwm_a + ('0' & pwm_pitch(7 downto 0)); --South Motor Component
			if pwm_altitude > pwm_pitch then
				pwm_n <= pwm_a - ('0' & pwm_pitch(7 downto 0)); --North Motor Component
			else
				pwm_n <= '0' & pwm_pitch(7 downto 0);
			end if;
		end if;
		
		if pwm_roll(8) = '0' then
			pwm_e <= pwm_a + ('0' & pwm_roll(7 downto 0)); --East Motor Component
			if pwm_altitude > pwm_roll then
				pwm_w <= pwm_a - ('0' & pwm_roll(7 downto 0)); --West Motor Component
			else
				pwm_w <= '0' & pwm_roll(7 downto 0);
			end if;
		elsif pwm_roll(8) = '0' then
			pwm_e <= pwm_a + ('0' & pwm_roll(7 downto 0)); --West Motor Component
			if pwm_altitude > pwm_roll then
				pwm_e <= pwm_a - ('0' & pwm_roll(7 downto 0)); --East Motor Component
			else
				pwm_e <= '0' & pwm_roll(7 downto 0);
			end if;
		end if;
		
	end process;
--	
--	process(pwm_n, pwm_s, pwm_e, pwm_w)
--	begin
--		if pwm_n(8) = '1' then
--			pwm1 <= "11111111";
--		else
--			pwm1 <= pwm_n(7 downto 0);
--		end if;
--
--		if pwm_e(8) = '1' then
--			pwm2 <= "11111111";
--		else
--			pwm2 <= pwm_e(7 downto 0);
--		end if;
--		
--		if pwm_s(8) = '1' then
--			pwm3 <= "11111111";
--		else
--			pwm3 <= pwm_s(7 downto 0);
--		end if;
--		
--		if pwm_w(8) = '1' then
--			pwm4 <= "11111111";
--		else
--			pwm4 <= pwm_w(7 downto 0);
--		end if;
--	end process;
		
	-- Test 1:
	-- A.) Set TLED_Orange_1 on reset	
	process (clk_1Hz, RegTRc, RegAMc, count)
		variable current_State	:	std_logic := '0';
		variable counter, counterp		   :	std_logic_vector(7 downto 0) := (others => '0');
	begin
		TLED_Orange_2 <= '0';
		if (clk_1Hz'event and clk_1Hz = '1') then
			current_State := not current_State;
			TLED_Orange_1 <= current_State;
			counter := counter + 1;
			count <= counter;
			
			if (countpwm < "00010000") then
				counterp := counterp + 1;
				countpwm <= counter;
			else
				countpwm <= "00000000";
				counterp := "00000000";
			end if;
		end if;
		
		if RegTRc = RegAMc then
			TLED_Orange_2 <= '1';
		end if;
		
	end process;
	
	-- Test 2:
	-- A.) Tie PICBUS_BUS to All Bottom LEDs
	-- B.) Check every clk clock pulse
	process (clk, RegAMA)
	begin
		if (clk'event and clk = '1') then
			BLED_Blue	<= RegAMA(7 downto 4);
			BLED_Orange	<= RegAMA(3 downto 0);
		end if;
	end process;
	
	--Test 3:
	--A.) Run Motors
		pwm1 <= (Top_Range + "00010110")  when Switch_1(0) = '1' else (others => '0');
      pwm2 <= (Top_Range + "00011110")  when Switch_1(1) = '1' else (others => '0');
		pwm3 <= (Top_Range + "00011100")  when Switch_1(2) = '1' else (others => '0');
		pwm4 <= (Top_Range + "00011100")  when Switch_1(3) = '1' else (others => '0');
		
end STR; 