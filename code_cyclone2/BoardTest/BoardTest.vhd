--	=	=	=	=	=	=	=	=	=	=	=	=	=	=	=
--	Title:		Ad-Flier BoardTest Top Level
--	Project:	The Ad-Flier, Spring 2012
--	Author:		David Greene
--	=	=	=	=	=	=	=	=	=	=	=	=	=	=	=

library ieee;
use ieee.std_logic_1164.all;

entity BoardTest is
	port( 
		-- FPGA Clocks
		clk_25MHz			:	in		std_logic;
		clk_DS1085Z_0		:	in		std_logic;
		clk_DS1085Z_1		:	in		std_logic;
		
		-- Board Switches & Lights
		TLED_Orange_1		:	out		std_logic;
		TLED_Orange_2		:	out		std_logic;
		Switch_1			:	in		std_logic_vector(3 downto 0);
		Switch_2			:	in		std_logic;
		Switch_3			:	in		std_logic;
		Switch_4			:	in		std_logic;
		
		-- PIC & FPGA Bi-Directional 8-Bit Parallel Port
		PICBUS_Bus			:	inout	std_logic_vector(7 downto 0);
		PICBUS_A_D			:	in		std_logic;
		PICBUS_R_W			:	in		std_logic;
		PICBUS_OK_IN		:	in		std_logic;
		PICBUS_OK_OUT		:	out		std_logic
	);
end BoardTest;

architecture STR of BoardTest is

	-- Generic Clock Divider Component
	component clk_div is
		port( 
			clk_in			:	in		std_logic;
			clk_out			:	out	std_logic
		);
	end component;
	
	-- Serial Peripheral Interface Slave Front-End
	component SPI_Slave is
		port( 
			clk		:	in		std_logic;
			SCK		:	in		std_logic;
			MOSI	:	in		std_logic;
			MISO	:	out		std_logic;
			SSEL	:	in		std_logic;
			LED		:	out		std_logic
		);
	end component;
	
	-- Signals
	signal clk_1Hz			:	std_logic := '0';

begin

	-- Instantiate Clock Divider
	U_1HzClkDivider			:	clk_div port map (clk_25MHz, clk_1Hz);
	
	-- Test 1:
	-- A.) Toggle TLED_Orange_1 every clk_1Hz Pulse	
	process (clk_1Hz)
		variable current_State	:	std_logic := '0';
	begin
		if (clk_1Hz'event and clk_1Hz = '1') then
			current_State := not current_State;
			TLED_Orange_1 <= current_State;
		end if;
	end process;

	-- Test 2:
	-- A.) Tie PICBUS_BUS to TLED_Orange_2
	-- B.) Check every clk_25MHz clock pulse
	process (clk_25MHz, PICBUS_Bus(0))
	begin
		if (clk_25MHz'event and clk_25MHz = '1') then
			TLED_Orange_2 <= '0';	
			
			if (PICBUS_Bus(0) = '1') then
				TLED_Orange_2 <= '1';
			end if;
		end if;
	end process;
	
end STR; 