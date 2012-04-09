--	=	=	=	=	=	=	=	=	=	=	=	=	=	=	=
--	Title:		SPI Slave Module
--	Project:		The Ad-Flier, Spring 2012
--	Author:		David Greene
--	=	=	=	=	=	=	=	=	=	=	=	=	=	=	=

library ieee;
use ieee.std_logic_1164.all;

entity SPI_Slave is
	port( 
		clk				:	in		std_logic;
		SCK				:	in		std_logic;
		MOSI				:	in		std_logic;
		MISO				:	out	std_logic;
		SSEL				:	in		std_logic;
		LED				:	out	std_logic
	);
end SPI_Slave;

architecture BHV of SPI_Slave is
begin
	
	-- Signals
	signal SCKr		:	std_logic_vector(2 downto 0);
	signal SSELr	:	std_logic_vector(2 downto 0);
	signal MOSIr	:	std_logic_vector(1 downto 0);
	
	-- Update SPI Clock
	process (clk, SCK)
	begin
		if (clk'event and clk = '1') then
			SCKr <= SCKr(1 downto 0) & SCK;
			
			if (SCKr(2 downto 1) = "01") then
				SCK_risingedge <= '1';
			else
				SCK_risingedge <= '0';
			end if;
			
			if (SCKr(2 downto 1) = "10") then
				SCK_fallingedge <= '1';
			else
				SCK_fallingedge <= '0';
			end if;
		end if;
	end process;
	
	process (clk, SSELr, SSEL)
	begin
		SSELr <= SSELr(1 downto 0) & SSEL;
		
		SSEL_active <= not SSELr(1);
	
	
	end process;
 

always @(posedge clk) SSELr <= {SSELr[1:0], SSEL};
wire SSEL_active = ~SSELr[1];  // SSEL is active low
wire SSEL_startmessage = (SSELr[2:1]==2'b10);  // message starts at falling edge
wire SSEL_endmessage = (SSELr[2:1]==2'b01);  // message stops at rising edge

// and for MOSI
 

always @(posedge clk) MOSIr <= {MOSIr[0], MOSI};
wire MOSI_data = MOSIr[1];




-- Receiving Data from Master

// we handle SPI in 8-bits format, so we need a 3 bits counter to count the bits as they come in
reg [2:0] bitcnt;

reg byte_received;  // high when a byte has been received
reg [7:0] byte_data_received;

always @(posedge clk)
begin
  if(~SSEL_active)
    bitcnt <= 3'b000;
  else
  if(SCK_risingedge)
  begin
    bitcnt <= bitcnt + 3'b001;

    // implement a shift-left register (since we receive the data MSB first)
    byte_data_received <= {byte_data_received[6:0], MOSI_data};
  end
end

always @(posedge clk) byte_received <= SSEL_active && SCK_risingedge && (bitcnt==3'b111);

// we use the LSB of the data received to control an LED
reg LED;
always @(posedge clk) if(byte_received) LED <= byte_data_received[0];




-- Transmission Module

reg [7:0] byte_data_sent;

reg [7:0] cnt;
always @(posedge clk) if(SSEL_startmessage) cnt<=cnt+8'h1;  // count the messages

always @(posedge clk)
if(SSEL_active)
begin
  if(SSEL_startmessage)
    byte_data_sent <= cnt;  // first byte sent in a message is the message count
  else
  if(SCK_fallingedge)
  begin
    if(bitcnt==3'b000)
      byte_data_sent <= 8'h00;  // after that, we send 0s
    else
      byte_data_sent <= {byte_data_sent[6:0], 1'b0};
  end
end

assign MISO = byte_data_sent[7];  // send MSB first
// we assume that there is only one slave on the SPI bus
// so we don't bother with a tri-state buffer for MISO
// otherwise we would need to tri-state MISO when SSEL is inactive

endmodule




end BHV; 