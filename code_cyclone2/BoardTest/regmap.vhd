--Salvatore D'Acunto
--Senior Design 
--Quad

LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity regmap is 
	port (
			clk : in std_logic;
			start : in std_logic;
			data : inout std_logic_vector(7 downto 0);
			a_d : in std_logic;
         r_w : in std_logic;
			ok_out : in std_logic;
			ok_in : out std_logic;
			reg0c, reg1c, reg2c, reg3c, reg4c, reg5c, reg6c, reg7c : out std_logic_vector(7 downto 0)
			);
end regmap;

architecture behavior of regmap is 

--Component List
--Register Controller
component reg_controller is 
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
end component;

--Data Registers
component quadreg is 
	port (
			clk : in std_logic;
			data : in std_logic_vector(7 downto 0);
			start : in std_logic;
			regi_en : in std_logic;
			rego_en : in std_logic;
			reg_data : out std_logic_vector(7 downto 0);
			reg_datac : out std_logic_vector(7 downto 0)
			);
end component;

--Address Register
component addreg is 
	port (
			clk : in std_logic;
			data : in std_logic_vector(7 downto 0);
			start : in std_logic;
			regi_en : in std_logic;
			rego_en : in std_logic;
			reg_data : out std_logic_vector(7 downto 0);
			reg_datac : out std_logic_vector(7 downto 0)
			);
end component;

--Output MUX
component outmux is 
	port (
			data : in std_logic_vector(7 downto 0);
			address : in std_logic_vector(7 downto 0);
			outsel, tbo : in std_logic;
			muxout : out std_logic_vector(7 downto 0)
			);
end component;

signal 	add_rego_en, add_reg_en : std_logic := '0';
signal	regi00, regi01, regi02, regi03, regi04, regi05, regi06, regi07 : std_logic := '0';
signal	rego00, rego01, rego02, rego03, rego04, rego05, rego06, rego07 : std_logic := '0';
signal	tbo, outsel : std_logic := '0';
signal   databus : std_logic_vector(7 downto 0) := "00000000";
signal 	address, addressc, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : std_logic_vector(7 downto 0) :="ZZZZZZZZ";
 
begin

--Instantiations
--Controller
RegCont : reg_controller port map(clk, start, addressc, a_d, r_w, ok_out, ok_in, add_rego_en, add_reg_en,
											 regi00, regi01, regi02, regi03, regi04, regi05, regi06, regi07,
											 rego00, rego01, rego02, rego03, rego04, rego05, rego06, rego07,
											 tbo, outsel);
											 
--Address Register
RegAdd : addreg port map(clk, data, start, add_reg_en, add_rego_en, address, addressc);

--Data Registers
RegXD : quadreg port map(clk, data, start, regi00, rego00, reg0, reg0c);
RegYD : quadreg port map(clk, data, start, regi01, rego01, reg1, reg1c);
RegZD : quadreg port map(clk, data, start, regi02, rego02, reg2, reg2c);
RegXM : quadreg port map(clk, data, start, regi03, rego03, reg3, reg3c);
RegYM : quadreg port map(clk, data, start, regi04, rego04, reg4, reg4c);
RegZM : quadreg port map(clk, data, start, regi05, rego05, reg5, reg5c);											 
RegAD : quadreg port map(clk, data, start, regi06, rego06, reg6, reg6c);
RegMisc : quadreg port map(clk, data, start, regi07, rego07, reg7, reg7c);

--Output MUX
MuxOut : outmux port map(databus, address, outsel, tbo, data);
				
process(rego00, rego01, rego02, rego03, rego04, rego05, rego06, rego07, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7)
begin
	databus <= "00000000";
	if (rego00 = '1') then
		databus <= reg0;
	elsif (rego01 = '1') then
		databus <= reg1;
 	elsif (rego02 = '1') then
		databus <= reg2;
	elsif (rego03 = '1') then
		databus <= reg3;
	elsif (rego04 = '1') then
		databus <= reg4;
	elsif (rego05 = '1') then
		databus <= reg5;
	elsif (rego06 = '1') then
		databus <= reg6;
	elsif (rego07 = '1') then
		databus <= reg7;
	end if;
end process;
end behavior;