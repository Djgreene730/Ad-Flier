--	=	=	=	=	=	=	=	=	=	=	=	=	=	=	=
--	Title:		Ad-Flier BoardTest Top Level
--	Project:		The Ad-Flier, Spring 2012
--	Author:		David Greene
--	=	=	=	=	=	=	=	=	=	=	=	=	=	=	=

library ieee;
use ieee.std_logic_1164.all;

entity BoardTest is
	port( 
		clk				:	in		std_logic;
		
		TLED_Orange_1	:	out	std_logic;
		TLED_Orange_2	:	out	std_logic;
		
		Switch_1			:	in		std_logic_vector(3 downto 0);
		Switch_2			:	in		std_logic;
		Switch_3			:	in		std_logic;
		Switch_4			:	in		std_logic;
		
		PIC_Bus			:	in		std_logic_vector(7 downto 0);
		PIC_A_D			:	in		std_logic;
		PIC_R_W			:	in		std_logic
	);
end BoardTest;

architecture STR of BoardTest is

	component clk_div is
		port( 
			clk_in			:	in		std_logic;
			clk_out			:	out	std_logic
		);
	end component;
	
	signal clock_1Hz		:	std_logic := '0';

begin
	U_1HzPulse	:	clk_div port map (clk, clock_1Hz);
	
	process (clk, PIC_Bus(0))
	begin
		if (clk'event and clk = '1') then
			TLED_Orange_2 <= '0';	
			
			if (PIC_Bus(0) = '1') then
				TLED_Orange_2 <= '1';
			end if;
		end if;
	end process;
	
	process (clock_1Hz)
		variable current_State	:	std_logic := '0';
	begin
		if (clock_1Hz'event and clock_1Hz = '1') then
			current_State := not current_State;
			TLED_Orange_1 <= current_State;
		end if;
	end process;
	
end STR; 