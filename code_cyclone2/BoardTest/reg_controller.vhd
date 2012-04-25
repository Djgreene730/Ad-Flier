--Salvatore D'Acunto
--Senior Design 
--Quad

LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity reg_controller is 
	port (
			clk : in std_logic;
			reset : in std_logic;
			address : in std_logic_vector(7 downto 0);
			a_d : in std_logic;
         r_w : in std_logic;
			ok_in : in std_logic;
			ok_out : out std_logic;
			add_rego_en, add_reg_en : out std_logic;
			regi00, regi01, regi02, regi03, regi04, regi05, regi06, regi07 : out std_logic;
			rego00, rego01, rego02, rego03, rego04, rego05, rego06, rego07 : out std_logic;
			rego08, rego09, rego0A, rego0B, rego0C, rego0D, rego0E, rego0F, rego10 : out std_logic;
			tbo, outsel : out std_logic
			);
end reg_controller;

architecture behavior of reg_controller is

type statetype is (fetch, ra1, ra2, rd1, rd2, wa1, wa2, wd1, wd2);

signal state, nextstate : statetype := fetch;

begin

process(nextstate, reset, clk)               --Generating State Switching
begin
	if reset = '1' then
		state <= fetch;
	elsif (clk = '1' and clk'event) then
		state <= nextstate;
	end if;
end process;


process(state, clk, address, a_d, r_w, ok_in)
begin
	regi00 <= '0';                            --Initializing Controller Outputs
	rego00 <= '0';
	regi01 <= '0';
	rego01 <= '0';
	regi02 <= '0'; 
	rego02 <= '0';
	regi03 <= '0';
	rego03 <= '0';
	regi04 <= '0';
	rego04 <= '0';
	regi05 <= '0';
	rego05 <= '0';
	regi06 <= '0'; 
	rego06 <= '0';
	regi07 <= '0';
	rego07 <= '0';
	rego08 <= '0';
	rego09 <= '0';
	rego0A <= '0';
	rego0B <= '0';
	rego0C <= '0';
	rego0D <= '0';
	rego0E <= '0';
	rego0F <= '0';
	rego10 <= '0';
	add_rego_en <= '0';
	add_reg_en <= '0';
	ok_out <= '0';
	tbo <= '0';
	outsel <= '1';
	nextstate <= fetch;
	
	
	case state is                            
		when fetch =>  							
			-- Lower OK_OUT, Output is High-Impedance
			ok_out <= '0';
			tbo <= '0';
			
			-- Wait for OK_IN to be HIGH, then REDIRECT
			if ok_in = '0' then				
				nextstate <= fetch;
				
			-- Determine what the microcontroller wants...
			elsif ok_in = '1' then
				if r_w = '1' then				
					if a_d = '1' then				
						nextstate <= ra1;			 	-- READ ADDRESS (ra1)
					elsif a_d = '0' then
						nextstate <= rd1;				-- READ DATA (rd1)			
					end if;
				elsif r_w = '0' then			
					if a_d = '1' then
						nextstate <= wa1;				-- WRITE ADDRESS (wa1)
					elsif a_d = '0' then
						--add_rego_en <= '1';
						nextstate <= wd1;				-- WRITE DATA (wd1)
					end if;
				end if;
			end if;
		
		-- Grab the Address
		when rd1 => 									-- Entered Read Data Command
			ok_out <= '1';
		
			if ok_in = '0' then
				ok_out <= '0';
				nextstate <= rd2;
			else 
				ok_out <= '1';
				nextstate <= rd1;
			end if;
			
		-- Set the Output
		when rd2 => 									-- Grab Address and Place on Bus
			if address = "00000000" then
				rego00 <= '1';
			elsif address = "00000001" then
				rego01 <= '1';
			elsif address = "00000010" then
				rego02 <= '1';
			elsif address = "00000011" then
				rego03 <= '1';
			elsif address = "00000100" then
				rego04 <= '1';
			elsif address = "00000101" then
				rego05 <= '1';
			elsif address = "00000110" then
				rego06 <= '1';
			elsif address = "00000111" then
				rego07 <= '1';
			elsif address = "00001000" then
				rego08 <= '1';
			elsif address = "00001001" then
				rego09 <= '1';
			elsif address = "00001010" then
				rego0A <= '1';
			elsif address = "00001011" then
				rego0B <= '1';
			elsif address = "00001100" then
				rego0C <= '1';
			elsif address = "00001101" then
				rego0D <= '1';
			elsif address = "00001110" then
				rego0E <= '1';
			elsif address = "00001111" then
				rego0F <= '1';
			elsif address = "00010000" then
				rego10 <= '1';
			end if;
			tbo <= '1';
			outsel <= '1';
			--add_rego_en <= '1';
			ok_out <= '1';
			if ok_in = '1' then
				tbo <= '0';
				ok_out <= '0';
				nextstate <= fetch;
			else
				nextstate <= rd2;
			end if;
				
				
		when ra1 =>  									--Read Address
			if ok_in = '0' then	
				nextstate <= ra2;
			else	
				nextstate <= ra1;
			end if;
			
		when ra2 =>
			add_rego_en <= '1';
			outsel <= '0';
			tbo <= '1';
			ok_out <= '1';
			if ok_in = '1' then
				tbo <= '0';
				nextstate <= fetch;
			else
				nextstate <= ra2;
			end if;
				
		when wa1 =>                           --Write Address
			add_reg_en <= '1';
			tbo <= '0';
			nextstate <= wa2;
			
		when wa2 =>
			ok_out <= '1';
			tbo <= '0';
			-- Wait for PIC to go Low
			if (ok_in = '0') then
				ok_out <= '0';
				nextstate <= fetch;
			else
				nextstate <= wa2;
			end if;
			
			
			
		when wd1 => 									--Write Data
			if address = "00000000" then
				regi00 <= '1';
			elsif address = "00000001" then
				regi01 <= '1';
			elsif address = "00000010" then
				regi02 <= '1';
			elsif address = "00000011" then
				regi03 <= '1';
			elsif address = "00000100" then
				regi04 <= '1';
			elsif address = "00000101" then
				regi05 <= '1';
			elsif address = "00000110" then
				regi06 <= '1';
			elsif address = "00000111" then
				regi07 <= '1';
			end if;
			nextstate <= wd2;
			tbo <= '0';
		when wd2 =>
			ok_out <= '1'; 
			tbo <= '0';
			-- Wait for PIC to go Low
			if (ok_in = '0') then
				nextstate <= fetch;
			else
				nextstate <= wd2;
			end if;
			
	end case;
end process;

end behavior;