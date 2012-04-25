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
			reset : in std_logic;
			data : inout std_logic_vector(7 downto 0);
			a_d : in std_logic;
         r_w : in std_logic;
			ok_in : in std_logic;
			ok_out : out std_logic;
			P1, P2, P3, P4, EX, EY, EZ, EA, AM : in std_logic_vector(7 downto 0);
			reg0c, reg1c, reg2c, reg3c, reg4c, reg5c, reg6c, reg7c : out std_logic_vector(7 downto 0);
			reg8c, reg9c, regAc, regBc, regCc, regDc, regEc, regFc, reg10c : out std_logic_vector(7 downto 0);
			fetch_state : in std_logic
			);
end regmap;

architecture behavior of regmap is 

--Component List
--Register Controller
component reg_controller is 
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
end component;

--Data Registers
component quadreg is 
	port (
			clk : in std_logic;
			data : in std_logic_vector(7 downto 0);
			reset : in std_logic;
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
			reset : in std_logic;
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

signal	reg_controller_reset : std_logic := '0';
signal 	add_rego_en, add_reg_en : std_logic := '0';
signal	regi00, regi01, regi02, regi03, regi04, regi05, regi06, regi07 : std_logic := '0';
signal	rego00, rego01, rego02, rego03, rego04, rego05, rego06, rego07 : std_logic := '0';
signal	rego08, rego09, rego0A, rego0B, rego0C, rego0D, rego0E, rego0F, rego10 : std_logic := '0';
signal	tbo, outsel : std_logic := '0';
signal   databus : std_logic_vector(7 downto 0) := "00000000";
signal 	address, addressc, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : std_logic_vector(7 downto 0) :="ZZZZZZZZ";
signal 	reg8, reg9, regA, regB, regC, regD, regE, regF, reg10 : std_logic_vector(7 downto 0) :="ZZZZZZZZ";

begin

--Instantiations
--Controller
RegCont : reg_controller port map(clk, reg_controller_reset, addressc, a_d, r_w, ok_in, ok_out, add_rego_en, add_reg_en,
											 regi00, regi01, regi02, regi03, regi04, regi05, regi06, regi07,
											 rego00, rego01, rego02, rego03, rego04, rego05, rego06, rego07,
											 rego08, rego09, rego0A, rego0B, rego0C, rego0D, rego0E, rego0F, rego10,
											 tbo, outsel);
											 
--Address Register
RegAdd : addreg port map(clk, data, reset, add_reg_en, add_rego_en, address, addressc);

--Data Registers
RegXD : quadreg port map(clk, data, reset, regi00, rego00, reg0, reg0c);
RegYD : quadreg port map(clk, data, reset, regi01, rego01, reg1, reg1c);
RegZD : quadreg port map(clk, data, reset, regi02, rego02, reg2, reg2c);
RegXM : quadreg port map(clk, data, reset, regi03, rego03, reg3, reg3c);
RegYM : quadreg port map(clk, data, reset, regi04, rego04, reg4, reg4c);
RegZM : quadreg port map(clk, data, reset, regi05, rego05, reg5, reg5c);											 
RegAD : quadreg port map(clk, data, reset, regi06, rego06, reg6, reg6c);
RegMi : quadreg port map(clk, data, reset, regi07, rego07, reg7, reg7c);
RegAM : quadreg port map(clk, AM, reset, '1', rego10, reg10, reg10c);
RegP1 : quadreg port map(clk, P1, reset, '1', rego08, reg8, reg8c);
RegP2 : quadreg port map(clk, P2, reset, '1', rego09, reg9, reg9c);
RegP3 : quadreg port map(clk, P3, reset, '1', rego0A, regA, regAc);
RegP4 : quadreg port map(clk, P4, reset, '1', rego0B, regB, regBc);
RegEx : quadreg port map(clk, EX, reset, '1', rego0C, regC, regCc);
RegEy : quadreg port map(clk, EY, reset, '1', rego0D, regD, regDc);
RegEz : quadreg port map(clk, EZ, reset, '1', rego0E, regE, regEc);
RegEa : quadreg port map(clk, EA, reset, '1', rego0F, regF, regFc);


--Output MUX
MuxOut : outmux port map(databus, address, outsel, tbo, data);

-- Reg Controller Reset based on FPGA Reset and Microcontroller Reset
reg_controller_reset <= (reset or fetch_state);
				
process(rego00, rego01, rego02, rego03, rego04, rego05, rego06, rego07, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7,
			rego08, rego09, rego0A, rego0B, rego0C, rego0D, rego0E, rego0F, rego10, reg8, reg9, regA, regB, regC, regD, regE, regF, reg10)
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
	elsif (rego08 = '1') then
		databus <= reg8;
 	elsif (rego09 = '1') then
		databus <= reg9;
	elsif (rego0A = '1') then
		databus <= regA;
	elsif (rego0B = '1') then
		databus <= regB;
	elsif (rego0C = '1') then
		databus <= regC;
	elsif (rego0D = '1') then
		databus <= regD;
	elsif (rego0E = '1') then
		databus <= regE;
	elsif (rego0F = '1') then
		databus <= regF;
	elsif (rego10 = '1') then
		databus <= reg10;
	end if;
end process;
end behavior;