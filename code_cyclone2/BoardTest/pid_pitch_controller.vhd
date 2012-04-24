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

signal u, u_old, v : integer := 0;                            --Creating integer signal for pwm
signal P, I, D : integer := 0;                                --Creating P I and D terms

constant K_p : integer := 1;                                  --Fix values after tuning
constant K_i : integer := 0;                                  --Creating values for PID
constant K_d : integer := 0; 

begin

Iset_point <= conv_integer(set_point);                        --Converting input vectors to integers
Imeasured_point <= conv_integer(measured_point);

process(clk, error, previous_error, previous_error2, P, I, D, u, u_old, v)                                               
begin

   pwm <= "000000000";                                        --Initializing PWM

	if (clk'event and clk = '1') then                          --Calculating Errors and Old Output
		u_old <= u;
		error <= Iset_point - Imeasured_point;
		previous_error <= error;
		previous_error2 <= previous_error;	
	end if;
	
	P <= K_p * (error - previous_error);                        --Calculating PID
	I <= K_i * (error);
	D <= K_d * (error - (2*previous_error) + previous_error2);
	
	if error > 30 or error = 30 then                            --Error Exceeds 30 Degrees Negative
		pwm <= "011001101";                                       --PWM at 80%
	elsif error < -30 then                                      --Error Exceeds 30 Degrees Positive
		pwm <= "111001101";                                   	 --PWM at 20%
	else
		if (u > 0  or u = 0) then                                --PID Output Positive (Increase Negative Axis)
			pwm <= '1' & std_logic_vector(to_unsigned(u,8));           --PWM Set to U with 1 Sign Bit
		elsif (u < 0) then	                                    --PID Output Negative (Increase Positive Axis)
			pwm <= '0' & std_logic_vector(to_unsigned(-u,8));          --PID Set to Positive U with 0 Sign Bit
		end if;
	end if;
	
	v <= u_old + P + I + D;                                     --Calculating PID Output
	
	if v > 255 then                                             -- +V Exceeds 8 Bits
		u <= 255;                                                  -- U Set to Max 255
	elsif v < -255 then                                         -- -V Exceeds 8 bits
		u <= -255;                                                 -- U Set to Min -255
	else                                                        -- V Withing Range
		u <= v;                                                    -- U Set to V
	end if;

end process;

	pwm_input <= pwm;                                           -- Setting Output to Variable

end behavior;