--Salvatore D'Acunto
--Senior Design 
--Quad

LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pid_roll_controller is 
	port (
			clk : in std_logic;
			reset : in std_logic;
			set_point, measured_point : in std_logic_vector(7 downto 0);
			E : out std_logic_vector(7 downto 0);
			pwm_input : out std_logic_vector(8 downto 0)
		   );
end pid_roll_controller;

architecture behavior of pid_roll_controller is 

signal pwm : std_logic_vector(8 downto 0) := "000000000";
signal uset, umeasured : signed(8 downto 0) := "000000000";
signal Iset_point, Imeasured_point : integer range 0 to 255;
signal error, previous_error, previous_error2 : integer range -500 to 500;

signal u, u_old, v : signed(9 downto 0) := "0000000000";                            --Creating integer signal for pwm
signal P, I, D : integer range -1000 to 1000;                                --Creating P I and D terms

constant K_p : integer := 3;                                  --Fix values after tuning
constant K_i : integer := 0;                                  --Creating values for PID
constant K_d : integer := 0; 

begin

uset <= signed('0' & set_point);
umeasured <= signed('0' & measured_point);
Iset_point <= to_integer(uset);                        --Converting input vectors to integers
Imeasured_point <= to_integer(umeasured);

process(clk, error, previous_error, previous_error2, P, I, D, u, u_old, v, reset)                                               
begin
	P <= 0;
	I <= 0;
	D <= 0;
	v <= "0000000000";

if reset = '0' then
		u_old <= "0000000000";
		error <= 0;
		previous_error <= 0;
		previous_error2 <= 0;
else
	if (clk'event and clk = '1') then                          --Calculating Errors and Old Output
		u_old <= u;
		error <= Iset_point - Imeasured_point;
		previous_error <= error;
		previous_error2 <= previous_error;	
	end if;
	
	P <= K_p * (error - previous_error);                        --Calculating PID
	I <= K_i * (error);
	D <= K_d * (error - (2*previous_error) + previous_error2);
	v <= u_old + P + I + D;                                     --Calculating PID Output
 end if;
end process;

process(error, u, v)
begin

   pwm <= "000000000";   	--Initializing PWM
	u <= "0000000000";
	
	if error > 30 or error = 30 then                            --Error Exceeds 30 Degrees Negative
		pwm <= "111001101";   		--PWM at 80%
	elsif error < -30 then
		pwm <= "011001101";
	else
		if (u > 0  or u = 0) then                                --PID Output Positive (Increase Negative Axis)
			pwm <= '1' & std_logic_vector((unsigned(u(7 downto 0))));           --PWM Set to U with 1 Sign Bit
		elsif (u < 0) then	                                    --PID Output Negative (Increase Positive Axis)
			pwm <= '0' & std_logic_vector((unsigned(-u(7 downto 0))));          --PID Set to Positive U with 0 Sign Bit
		end if;
	end if;
	
	if v > to_signed(254, 10) then                                             -- +V Exceeds 8 Bits
		u <= to_signed(254, 10);                                                  -- U Set to Max 255
	elsif v < to_signed(-255,10) then                                         -- -V Exceeds 8 bits
		u <= to_signed(-255,10);                                                 -- U Set to Min -255
	else                                                        -- V Withing Range
		u <= v;                                                    -- U Set to V
	end if;
end process;

	pwm_input <= pwm;                                           -- Setting Output to Variable
	
	process(error)
	begin
	if error < 0 then
		E <= '1' & std_logic_vector(to_unsigned(-error, 7));
	else
		E <= '0' & std_logic_vector(to_unsigned(error, 7));
	end if;
	end process;

end behavior;