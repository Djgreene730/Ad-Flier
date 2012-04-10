--	=	=	=	=	=	=	=	=	=	=	=	=	=	=	=
--	Title:		Generic Clock Divider
--	Project:		The Ad-Flier, Spring 2012
--	Author:		David Greene
--	=	=	=	=	=	=	=	=	=	=	=	=	=	=	=

library ieee;
use ieee.std_logic_1164.all;

entity clk_div is
	port( 
		clk_in			:	in		std_logic;
		clk_out			:	out	std_logic
	);
end clk_div;

architecture BHV of clk_div is
begin
	process(clk_in)
		variable cnt : integer range 0 to 12587500;
	begin
		if(clk_in'event and clk_in = '1') then
			if (cnt = 12587500) then
				cnt := 0;
				clk_out <= '1';
			else
				cnt := cnt + 1;
				clk_out <= '0';
			end if;
		end if;
	end process;
end BHV; 