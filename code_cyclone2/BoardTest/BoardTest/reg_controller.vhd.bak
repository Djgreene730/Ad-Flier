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
			start : in std_logic;
			address : in std_logic_vector(7 downto 0);
			a_d : in std_logic;
         r_w : in std_logic;
			ok_out : in std_logic;
			ok_in : out std_logic;
			add_rego_en, add_reg_en : out std_logic;
			regi00, regi01, regi02, regi03, regi04, regi05, regi06, regi07 : out std_logic;
			rego00, rego01, rego02, rego03, rego04, rego05, rego06, rego07 : out std_logic;
			tbo, outsel : out std_logic
			);
end reg_controller;

architecture behavior of reg_controller is

type statetype is (fetch, ra1, rd1, rd2, wa1, wa2, wd1, wd2);

signal state, nextstate : statetype;

begin

process(nextstate, start, clk)               --Generating State Switching
begin
	if start = '1' then
		state <= fetch;
	elsif (clk = '1' and clk'event) then
		state <= nextstate;
	end if;
end process;

process(state, clk, address, a_d, r_w, ok_out)
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
	add_rego_en <= '0';
	add_reg_en <= '0';
	ok_in <= '0';
	tbo <= '0';
	outsel <= '1';
	
	case state is                            --Controller
		when fetch =>                         --Fetch
			if ok_out = '0' then
				nextstate <= fetch;
			elsif ok_out = '1' then
				if r_w = '1' then
					if a_d = '1' then
						nextstate <= ra1;
					elsif a_d = '0' then
						nextstate <= rd1;
					end if;
				elsif r_w = '0' then
					if a_d = '1' then
						nextstate <= wa1;
					elsif a_d = '0' then
						add_rego_en <= '1';
						nextstate <= wd1;
					end if;
				end if;
			end if;
		when rd1 =>                           --Read Data
			nextstate <= rd2;
		when rd2 => 
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
			end if;
			tbo <= '1';
			outsel <= '1';
			add_rego_en <= '1';
				if ok_out = '1' then
					nextstate <= fetch;
				else
					nextstate <= rd2;
				end if;
		when ra1 =>                           --Read Address
			add_rego_en <= '1';
			outsel <= '0';
			tbo <= '1';
				if ok_out = '1' then
					nextstate <= fetch;
				elsif ok_out = '0' then
					nextstate <= ra1;
				end if;
		when wa1 =>                           --Write Address
			add_reg_en <= '1';
			nextstate <= wa2;
		when wa2 =>
			ok_in <= '1';
			nextstate <= fetch;
		when wd1 => --Write Data
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
		when wd2 =>
			ok_in <= '1';
	end case;
end process;

end behavior;