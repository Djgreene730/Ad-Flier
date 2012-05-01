#include <stdio.h>
#include <stdlib.h>
#include <p32xxxx.h>
#include <plib.h>
#include <GenericTypeDefs.h>
#include <plib.h>
#include <p32xxxx.h>


void Initial(void);
void print_ascii( unsigned char);
void print_ascii_r(unsigned char t, unsigned char t2);
void read_spi_to_buf(char*, unsigned char);
void write_buf_to_usart(char*, unsigned char);
void record_to_buffer_then_dump_to_usart(void);
void continuously_read_spi_and_dump_to_usart(void);
void send_commands_to_controller(void);
void print_buffer(void);
void ps2_txrx(unsigned char data_out,unsigned char *reg_in);