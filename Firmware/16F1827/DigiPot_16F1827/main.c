//Capture Code
//Last Update ====>Saturday Feb 2012
#include <16F1827.h>
#include <MCP4461.h>


//#use delay(clock=12000000)
#DEVICE ADC=8
#use delay(clock=8000000)
#fuses NOWDT,INTRC_IO, NOPROTECT, NOBROWNOUT, NOMCLR, NOCPD, PUT, NOIESO, NOFCMEN, PLL_SW



//Turn me on for RS232 stuffs
#use rs232(baud=19200,parity=N,xmit=PIN_B5,rcv=PIN_B2,bits=8)
//#use rs232(baud=57600,parity=N,xmit=PIN_B5,rcv=PIN_B2,bits=8)
//#use rs232(baud=57600,parity=N,bits=8,UART1)

//Turn me on for I2C stuffs
#use i2c(master, sda=PIN_B1, scl=PIN_B4)

//Define the Addresses
#define MCP4461_Address 0x58
//#define TCA9555_Address 0x40;


//Bring in the library for TCA9555 basically a few functions

#include <TCA9555.c>



//Variable Declaration
int8 count;
int8 Pot1,Pot2,Pot3;


//********************************************************************************
//Functions
//********************************************************************************

// This function writes the slave address to the i2c bus.
// If a slave chip is at that address, it should respond to
// this with an "ACK".   This function returns TRUE if an
// ACK was found.  Otherwise it returns FALSE.
int8 get_ack_status(int8 address)
{
int8 status;

i2c_start();
status = i2c_write(address);  // Status = 0 if got an ACK
i2c_stop();

if(status == 0)
   return(TRUE);
else
   return(FALSE);
} 


//This function updates the volatile wiper value of one of the four pots
//Volatile
void setVolatileWiper(int8 wiper, int8 wiper_value){
  int8 d_byte = wiper_value;
  int8 c_byte = 0;
  switch (wiper) {
      case 0:
        c_byte |= MCP4461_VW0;
        break;
      case 1:
        c_byte |= MCP4461_VW1;
        break;
      case 2:
        c_byte |= MCP4461_VW2;
        break;
      case 3:
        c_byte |= MCP4461_VW3;
        break;
      default:
        break; //not a valid wiper
  }
  c_byte |= MCP4461_WRITE;
  
  //send command byte
  i2c_start();
  i2c_write(MCP4461_Address);
  i2c_write(c_byte);
  i2c_write(d_byte);
  i2c_stop();

  }

//Blinker Code for the indicator LED
void blink(){
output_low(PIN_B3);
delay_ms(250);
output_high(PIN_B3);
delay_ms(100);
}

void main(){
setup_timer_0(RTCC_INTERNAL|RTCC_DIV_256);
setup_timer_1(T1_INTERNAL );
setup_oscillator (OSC_8MHZ);
setup_adc_ports(sAN2|sAN3|sAN4|VSS_VDD);
setup_adc(ADC_CLOCK_INTERNAL);
setup_comparator(NC_NC_NC_NC);
setup_vref(FALSE);


blink();//PowerGood blinker
//Main loop starts here...
int8 count;
count = 0;

//Now set up both ports on the shift register pin directions for outputs
printf("TCA9555_Address %X \n\r" , TCA9555_Address);
setPortDirection(PORT_0,DIR_OUTPUT);
setPortDirection(PORT_1,DIR_OUTPUT);

while(1){


//Now turn on some frigging LEDS
//setOutputStates(1<<8 | 3);
setOutputStates(PORT_0,0xFF);
setOutputStates(PORT_1,0x00);

delay_ms(500);

setOutputStates(PORT_0,0x00);
setOutputStates(PORT_1,0xFF);

delay_ms(500);



}

while(1){
set_adc_channel(2);
delay_us(20);  //a small delay is required after setting the channel
Pot1=read_adc();
setVolatileWiper(0, Pot1);

set_adc_channel(3);
delay_us(20);  //a small delay is required after setting the channel
Pot2=read_adc();
setVolatileWiper(1, Pot2);

set_adc_channel(4);
delay_us(20);  //a small delay is required after setting the channel
Pot3=read_adc();
setVolatileWiper(2, Pot3);
 


//printf("Pot1: %3u \n\r" , Pot1);
//printf("Pot2: %3u \n\r" , Pot2);
//printf("Pot3: %3u \n\r" , Pot3);
  
}
}

   
   
   
   
   
   
  
   


