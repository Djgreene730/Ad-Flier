--Salvatore D'Acunto
--Senior Design 
--Quad

LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity addreg is 
	port (
			clk : in std_logic;
			data : in std_logic_vector(7 downto 0);
			start : in std_logic;
			regi_en : in std_logic;
			rego_en : in std_logic;
			reg_data : out std_logic_vector(7 downto 0);
			reg_datac : out std_logic_vector(7 downto 0)
			);
end addreg;

architecture behavior of addreg is

signal tmp : std_logic_vector(7 downto 0) :="00000000";

begin

process (clk, data, start, rego_en)
begin
	if (start = '1') then
		tmp <= "00000000";
	elsif (clk = '1' and clk'event) then
		if regi_en = '1' then
			tmp <= data;
		end if;
	end if;
end process;

process (tmp, rego_en)
begin
	if rego_en = '1' then
		reg_data <= tmp;
	else
		reg_data <= "ZZZZZZZZ";
	end if;
end process;

	reg_datac <= tmp;

end behavior;