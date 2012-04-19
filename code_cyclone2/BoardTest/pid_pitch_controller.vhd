--Salvatore D'Acunto
--Senior Design 
--Quad

LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pid_pitch_controller is 
	port (
			clk : in std_logic;
			set_point, measured_point : in std_logic_vector(7 downto 0);
			pwm_input : out std_logic_vector(8 downto 0)
		   );
end pid_pitch_controller;

architecture behavior of pid_pitch_controller is 

signal pwm : std_logic_vector(8 downto 0) := "000000000";
signal Iset_point, Imeasured_point : integer range 0 to 255;
signal error, previous_error, previous_error2 : integer := 0;

signal u, u_old, v : integer := 0; --Creating integer signal for pwm
signal P, I, D : integer := 0; --Creating P I and D terms

constant T_s : integer := 1; --Fix values after determing sampling times
constant T_i : integer := 1; --Creating values for sampling times
constant T_d : integer := 1;

constant K_p : integer := 1; --Fix values after determing sampling times and tuning
constant K_i : integer := 0; --Creating values for PID
constant K_d : integer := 0; -- Ki = (Kp*Ts)/Ti Kp = (Kp*Td)/Ti

begin

Iset_point <= conv_integer(set_point);  --Converting input vectors to integers
Imeasured_point <= conv_integer(measured_point);

process(clk, u) --Getting value for old pwm signal and errors
begin

pwm <= "000000000";

	if (clk'event and clk = '1') then
		u_old <= u;
		error <= Iset_point - Imeasured_point;
		previous_error <= error;
		previous_error2 <= previous_error;	
	end if;
	
	if (u > 0 or u = 0) then 
		pwm <= '0' & std_logic_vector(to_unsigned(u, 8));
	elsif (u < 0) then
		pwm <= '1' & std_logic_vector(to_unsigned(-u, 8));
	end if;
end process;

P <= K_p * (error - previous_error); --Calculating PID
I <= K_i * (error);
D <= K_d * (error - (2*previous_error) + previous_error2);

process(error, v, u_old, P, I, D)
begin
	if error > 128 then
		v <= 255;
	elsif error < -128  then
		v <= -128;
	else
		v <= (u_old + P + I + D); --Calculating new pwm with old pwm reference and PID (Velocity PID)
	end if;
	
	if (v > 255) then
		u <= 255;
	elsif (v < 255) then
		u <= -255;
	else
      u <= v;
	end if;
end process;

pwm_input <= pwm;
	
end behavior;