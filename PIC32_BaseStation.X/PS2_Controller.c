#include <plib.h>
#include <p32xxxx.h>
#include <PS2_Controller.h>

// Reverse Bit Order During Transmission
#define bitrev(c)       c = (c & 0x0F) << 4 | (c & 0xF0) >> 4; \
                        c = (c & 0x33) << 2 | (c & 0xCC) >> 2; \
                        c = (c & 0x55) << 1 | (c & 0xAA) >> 1;

//------------ Global Variables ------------------------------- //

int read_buf_index =0;
unsigned char print_buf[80];
unsigned char print_buf_index = 0;

UINT8 PS2_ID, MSG;
UINT8 PS2_byte1, PS2_byte2, PS2_byte3, PS2_byte4, PS2_byte5, PS2_byte6;
UINT8 PS2_prev_byte1, PS2_prev_byte2, PS2_prev_byte3, PS2_prev_byte4, PS2_prev_byte5, PS2_prev_byte6;
unsigned char PS2_pressure[12];





// ---------------  utility functions ---------------- //

void ps2_txrx(unsigned char data_out,unsigned char *reg_in){
	char send = data_out;
	bitrev(data_out);
	WriteSPI2(data_out);
	while(!SSPSTATbits.BF);
	*reg_in = SSPBUF;
	bitrev(*reg_in);
	print_ascii_r(send, *reg_in);
}


void print_ascii_r(unsigned char t, unsigned char t2) {
	// there's not enough time to send out serial RS-232 back to the computer
	// in between every byte, so output is stored in a buffer until the end
	// of a packet.
	print_buf[2*print_buf_index] = t;
	print_buf[2*print_buf_index+1] = t2;
	if (print_buf_index < 38)
		print_buf_index++;
}

void print_buffer() {
	char t = 0;
	print_buf_index = print_buf_index *2;
	while (t<print_buf_index) {
		print_ascii(print_buf[t++]);
		//print_ascii(0x7A);
		WriteUART('_');
		print_ascii(print_buf[t++]);
		WriteUART(0x0D);
	}
	print_buf_index = 0;
}

void print_ascii( unsigned char t) {
	char buf[20];
	sprintf((char *)buf, "%02X", t); // the (char *) is there to suppress a type error having to do with the (near / small pointer) memory model used in the compiler...
	putsUART(buf);
}






/*-----------------------------------------------*/
/*------------   M A I N   -----------------------*/
/*-----------------------------------------------*/



void main (void) {

	Initial();

//	record_to_buffer_then_dump_to_usart();

//	continuously_read_spi_and_dump_to_usart();

	send_commands_to_controller();

    while(1);
}


void Initial()
{

	ADCON0 = 0b00110000;
	TRISCbits.TRISC7 = 0;	// SDO (SPI Output)
	LATBbits.LATB2 = 1;  //ATT for SPI)
	TRISB = 0b11111001;
	TRISCbits.TRISC6 = 0; // makes TX an output
	// Fosc = 16 MHz, so the SPI data rate is 250kHz.  The playstation 2 usually
	// talks to controllers at 500kHZ, except the Guitar Hero controller.  Playstation 1
	// talked at 250kHz.  Going at 500kHZ gave us some noise issues on some controllers.

	OpenSPI(SPI_FOSC_64, MODE_11, SMPMID);  //MODE_11 = (CKP, CKE) = (1,0)
										//CKP=1 (idle clock state is high, active low)
										//CKE=0	data is read when the clock transitions
										//from active to idle.  This causes the clock
										//to start out going low, and then high mid-cycle.
	OpenUART();



	// initialize LED ports and set their tris bits
	PORTEbits.RE2 = 0;
  	TRISEbits.TRISE2 = 0;
}

// warning, don't connect to play station as the two clocks will fight each other.
void send_commands_to_controller() {
	unsigned char response;
	char buf[20];
	char t;


	// 0x42: general purpose poll and command for vibration motors, number of bytes depends on configuration
	pin_ATT = 0;					// pull ATT low to signal gamepad
	ps2_txrx(0x01, &response);					// send: 	Start (0x01 LSBF (order flipped in ps2_tx)
	ps2_txrx(0x42, &PS2_ID.byte);	// send: 	Request Data (0x42 LSBF)
	ps2_txrx(0x00, &MSG.byte);// receive gamepad ID:	should be '0x5A' for 'ready to send'
	ps2_txrx(0x00, &PS2_byte1.byte);			// receive:	1st byte of button states
	ps2_txrx(0x00, &PS2_byte2.byte);			// receive:	2nd byte of button states
	ps2_txrx(0x00, &PS2_byte3.byte);			// receive:	3rd byte of button states
	ps2_txrx(0x00, &PS2_byte4.byte);			// receive:	4th byte of button states
	ps2_txrx(0x00, &PS2_byte5.byte);			// receive:	5th byte of button states
	ps2_txrx(0x00, &PS2_byte6.byte);			// receive:	6th byte of button states
	pin_ATT = 1; // reset the ATTention line... can't just leave it low
	Delay100TCYx(255); // not sure how much delay is necessary after each packet, but it seems to work inconsistently without these
	WriteUART(0x0D); // CR Carriage Return (new line)

	// 0x43: go in 'escape mode' or 'config mode'
	//01/ff 43/41 00/5a | 01/ff 00/ff
	pin_ATT = 0;
	ps2_txrx(0x01,&response);
	ps2_txrx(0x43, &PS2_ID.byte);
	ps2_txrx(0x00, &MSG.byte);
	ps2_txrx(0x01,&PS2_byte1.byte);
	ps2_txrx(0x00,&PS2_byte2.byte);
	pin_ATT = 1;
	Delay100TCYx(255);
	WriteUART(0x0D);

/*
	// 0x41 get a bit map that shows which buttons are being returned in 0x42 calls.
		pin_ATT = 0;					// pull ATT low to signal gamepad
	ps2_txrx(0x01, &response);					// send: 	Start (0x01 LSBF (order flipped in ps2_tx)
	ps2_txrx(0x41, &PS2_ID.byte);	// send: 	Request Data (0x42 LSBF)
	ps2_txrx(0x00, &MSG.byte);// receive gamepad ID:	should be '0x5A' for 'ready to send'
	ps2_txrx(0x00, &PS2_byte1.byte);			// receive:	1st byte of button states
	ps2_txrx(0x00, &PS2_byte2.byte);			// receive:	2nd byte of button states
	ps2_txrx(0x00, &PS2_byte3.byte);			// receive:	3rd byte of button states
	ps2_txrx(0x00, &PS2_byte4.byte);			// receive:	4th byte of button states
	ps2_txrx(0x00, &PS2_byte5.byte);			// receive:	5th byte of button states
	ps2_txrx(0x00, &PS2_byte6.byte);			// receive:	6th byte of button states
	pin_ATT = 1;
	Delay100TCYx(60);
	WriteUART(0x0D);

*/

	// turn dual shock mode, or 'analog' mode on
	//	01/ff 44/f3 00/5a | 01/00 03/00 00/00 00/00 00/00 00/00
	pin_ATT = 0;
	ps2_txrx(0x01,&response);
	ps2_txrx(0x44, &PS2_ID.byte);
	ps2_txrx(0x00, &MSG.byte);
	ps2_txrx(0x01,&PS2_byte1.byte);
	ps2_txrx(0x03,&PS2_byte2.byte);
	ps2_txrx(0x00,&PS2_byte3.byte);
	ps2_txrx(0x00,&PS2_byte4.byte);
	ps2_txrx(0x00,&PS2_byte5.byte);
	ps2_txrx(0x00,&PS2_byte6.byte);
	pin_ATT = 1;
	Delay100TCYx(255); // this delay was necessary for a Sony brand controller... delays may be necessary after
	// other commands, also,... not sure.

	WriteUART(0x0D);


	// setup motor mapping
	// 01/ff 4d/f3 00/5a | 00/00 01/01 ff/ff ff/ff ff/ff ff/ff
	pin_ATT = 0;
	ps2_txrx(0x01,&response);
	ps2_txrx(0x4d, &PS2_ID.byte);
	ps2_txrx(0x00, &MSG.byte);
	ps2_txrx(0x00,&PS2_byte1.byte); // whichever command byte has 00 will be the stop in the 0x42 poll cammand that triggers the smaller motor
	ps2_txrx(0x01,&PS2_byte2.byte);	// applied to larger motor, which can be controlled with an 8 bit speed. smaller motor is just 0xFF for on, otherwise off.
	ps2_txrx(0xff,&PS2_byte3.byte);
	ps2_txrx(0xff,&PS2_byte4.byte);
	ps2_txrx(0xff,&PS2_byte5.byte);
	ps2_txrx(0xff,&PS2_byte6.byte);
	pin_ATT = 1;


	WriteUART(0x0D);


	// request pressure sensing data
	// 01/ff 4f/f3 00/5a | ff/00 ff/00 03/00 00/00 00/00 00/5a
	pin_ATT = 0;
	ps2_txrx(0x01,&response);
	ps2_txrx(0x4f, &PS2_ID.byte);
	ps2_txrx(0x00, &MSG.byte);
	ps2_txrx(0xff,&PS2_byte1.byte);
	ps2_txrx(0xff,&PS2_byte2.byte);
	ps2_txrx(0x03,&PS2_byte3.byte);
	ps2_txrx(0x00,&PS2_byte4.byte);
	ps2_txrx(0x00,&PS2_byte5.byte);
	ps2_txrx(0x00,&PS2_byte6.byte);
	pin_ATT = 1;
	Delay100TCYx(255); // requires large delay here? maybe

	WriteUART(0x0D);


	// 0x41 get a bit map that shows which buttons are being returned in 0x42 calls.
	pin_ATT = 0;					// pull ATT low to signal gamepad
	ps2_txrx(0x01, &response);				// send: 	Start (0x01 LSBF (order flipped in ps2_tx)
	ps2_txrx(0x41, &PS2_ID.byte);	// send: 	Request Data (0x42 LSBF)
	ps2_txrx(0x00, &MSG.byte);// receive gamepad ID:	should be '0x5A' for 'ready to send'
	ps2_txrx(0x00, &PS2_byte1.byte);			// receive:	1st byte of button states
	ps2_txrx(0x00, &PS2_byte2.byte);			// receive:	2nd byte of button states
	ps2_txrx(0x00, &PS2_byte3.byte);			// receive:	3rd byte of button states
	ps2_txrx(0x00, &PS2_byte4.byte);			// receive:	4th byte of button states
	ps2_txrx(0x00, &PS2_byte5.byte);			// receive:	5th byte of button states
	ps2_txrx(0x00, &PS2_byte6.byte);			// receive:	6th byte of button states
	pin_ATT = 1;
	Delay100TCYx(255);
	WriteUART(0x0D);



	// exit escape mode 2nd method by lynxmotion: "CONFIG_MODE_EXIT_DS2_NATIVE" ... using only the first 2 bytes with 0's doesn't work on China knockoffs
	//CMD=01,43,00,00,5A (5A,5A,5A,5A)
	// on the guitar hero controller, the 5A's seemed to be necessary (as oppsed to 0x00's).  not lots of testing on this
	pin_ATT = 0;
	ps2_txrx(0x01,&response);
	ps2_txrx(0x43, &PS2_ID.byte);
	ps2_txrx(0x00, &MSG.byte);

	ps2_txrx(0x00,&PS2_byte1.byte);
	ps2_txrx(0x5A,&PS2_byte2.byte);
	ps2_txrx(0x5A,&PS2_byte3.byte);
	ps2_txrx(0x5A,&PS2_byte4.byte);
	ps2_txrx(0x5A,&PS2_byte5.byte);
	ps2_txrx(0x5A,&PS2_byte6.byte);
	pin_ATT = 1;
	Delay100TCYx(255);

	WriteUART(0x0D);



	while(1) {
		// poll and command
		pin_ATT = 0;										// pull ATT low to signal gamepad
		ps2_txrx(0x01, &response);							// send: 	Start (0x01 LSBF (order flipped in ps2_tx)
		ps2_txrx(0x42, &PS2_ID.byte);						// send: 	Request Data (0x42 LSBF)
		ps2_txrx(0x00, &MSG.byte);							// receive gamepad ID:	should be '0x5A' for 'ready to send'

		ps2_txrx(PS2_pressure[0], &PS2_byte1.byte);			// receive:	1st byte of button states and set big (left) motor to Left arrow pressure
		ps2_txrx(PS2_pressure[1], &PS2_byte2.byte);			// receive:	2nd byte of button states and turn on small (right) motor if Right arrow pressure = 0xFF
		ps2_txrx(0x00,&PS2_byte3.byte);						// receive:	3rd byte of button states
		ps2_txrx(0x00,&PS2_byte4.byte);						// receive:	4th byte of button states
		ps2_txrx(0x00,&PS2_byte5.byte);						// receive:	5th byte of button states
		ps2_txrx(0x00,&PS2_byte6.byte);						// receive:	6th byte of button states

		ps2_txrx(0x00, &PS2_pressure[0]);
		ps2_txrx(0x00, &PS2_pressure[1]);
		ps2_txrx(0x00, &PS2_pressure[2]);
		ps2_txrx(0x00, &PS2_pressure[3]);
		ps2_txrx(0x00, &PS2_pressure[4]);
		ps2_txrx(0x00, &PS2_pressure[5]);
		ps2_txrx(0x00, &PS2_pressure[6]);
		ps2_txrx(0x00, &PS2_pressure[7]);
		ps2_txrx(0x00, &PS2_pressure[8]);
		ps2_txrx(0x00, &PS2_pressure[9]);
		ps2_txrx(0x00, &PS2_pressure[10]);
		ps2_txrx(0x00, &PS2_pressure[11]);
		pin_ATT = 1;

		print_buffer();
		WriteUART(0x0D);
		Delay1KTCYx(20);
		Delay1KTCYx(255);
		Delay1KTCYx(255);
		Delay1KTCYx(255);

	}
}
