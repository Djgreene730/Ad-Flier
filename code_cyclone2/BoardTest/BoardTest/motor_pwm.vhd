--Salvatore D'Acunto
--Senior Design 
--Quad

LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity motor_pwm is 
	port (
			clk : in std_logic;
			speed : in std_logic_vector(7 downto 0);
			pwm : out std_logic
		   );
end motor_pwm;

architecture behavior of motor_pwm is

constant clockdiv: integer := 98; --Used to create 50 Hz signal from 25 MHz clock
 
signal clocktick: std_logic := '0';
signal clockcount: std_logic_vector (6 downto 0) := "0000000";
signal pulsecount: std_logic_vector (11 downto 0) := "000000000000";


begin
		
process (clk) --Creating 50 Hz pulses
begin
	if clk='1' and clk'event then
		if clockcount = clockdiv-2 then
			clocktick <= '1';
		else
			clocktick <= '0';
		end if;
		if clocktick='1' then
			clockcount <= "0000000";
		else
			clockcount <= clockcount + 1;
		end if;
	end if;
end process;
 
process (clk) --Turning 8 bit speed into 1ms to 2ms PWM
begin
	if clk='1' and clk'event then
		if clocktick='1' then
			pulsecount <= pulsecount + 1;
		end if;
		if pulsecount < ("0001" & speed) then
			pwm <= '1';
		else
			pwm <= '0';
		end if;
	end if;
end process;

end behavior;