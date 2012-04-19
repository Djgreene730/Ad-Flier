--Salvatore D'Acunto
--Senior Design 
--Quad

LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity outmux is 
	port (
			data : in std_logic_vector(7 downto 0);
			address : in std_logic_vector(7 downto 0);
			outsel, tbo : in std_logic;
			muxout : out std_logic_vector(7 downto 0)
			);
end outmux;

architecture behavior of outmux is

signal tmp1, tmp2 : std_logic_vector(7 downto 0) := "ZZZZZZZZ";

begin

process (data, address, outsel, tbo, tmp1)
begin

tmp1 <= "00000000";
tmp2 <= "ZZZZZZZZ";

	if outsel = '0' then
		tmp1 <= address;
	elsif outsel = '1' then
		tmp1 <= data;
	end if;
	
	if tbo = '1' then
		tmp2 <= tmp1;
	else
		tmp2 <= "ZZZZZZZZ";
	end if;
end process;

muxout <= tmp2;

end behavior;