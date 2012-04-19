--Salvatore D'Acunto
--Senior Design 
--Quad

LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rangefinder is 
	port (
			clk : in std_logic;
		   edge : in std_logic;
			trigger : out std_logic;
			altitude : out std_logic_vector(7 downto 0)
		   );
end rangefinder;

architecture behavior of rangefinder is

component Divider IS
	PORT
	(
		denom		: IN STD_LOGIC_VECTOR (23 DOWNTO 0);
		numer		: IN STD_LOGIC_VECTOR (23 DOWNTO 0);
		quotient		: OUT STD_LOGIC_VECTOR (23 DOWNTO 0);
		remain		: OUT STD_LOGIC_VECTOR (23 DOWNTO 0)
	);
END component;

signal LSB : std_logic := '0';
signal edgebegin, timevector, quotient, remain : std_logic_vector(23 downto 0) := "000000000000000000000000";
constant denom : std_logic_vector(23 downto 0) := "000000000001110011101000";
signal count : std_logic_vector(23 downto 0) := "000000000000000000000000";
begin

process(clk, edge, count)
	variable edgeYet : std_logic := '0';
begin 

	if (clk'event and clk = '1') then
	--Getting Range to Update Trigger every 62 ms
		if count < "000110000000000000000000" then
			count <= count + '1';
		else
			count <= "000000000000000000000000";
		end if;
		
	--Sending 10 us Trigger
		if count < "000000000000000100000000" then --256
			trigger <= '1';
		else 
			trigger <= '0';
		end if;
		
	--Getting Count of Edge	
		if (edge = '1' and edgeYet = '0') then
			edgebegin <= count;
			edgeYet := '1';
		elsif (edge = '0' and edgeYet = '1') then
			edgeYet := '0';
		end if;
			
	end if;
end process;

--Getting Time Between Receiving Edge and Sending Trigger
timevector <= edgebegin - "000000000000000100000000";

--LPM Divide to get Distance
Div : Divider port map(denom, timevector, quotient, remain);

--Rounding to Nearest Inch
process (remain)
begin
	if (remain > "000000000001000000000000") then
		LSB <= '1';
	else
		LSB <= '0';
	end if;
end process;

altitude <= quotient(7 downto 0) + LSB;

end behavior;