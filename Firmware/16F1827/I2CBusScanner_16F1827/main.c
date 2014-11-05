//Capture Code
//Last Update ====>Saturday Feb 2012
#include <16F1827.h>
//#use delay(clock=12000000)
#use delay(clock=8000000)
#fuses NOWDT,INTRC_IO, NOPROTECT, NOBROWNOUT, NOMCLR, NOCPD, PUT, NOIESO, NOFCMEN, PLL_SW
//#fuses NOWDT,ECH, NOCLKOUT, NOPROTECT, NOBROWNOUT, NOMCLR, NOCPD, PUT, NOIESO, NOFCMEN, PLL_SW

//Turn me on for RS232 stuffs
#use rs232(baud=19200,parity=N,xmit=PIN_B5,rcv=PIN_B2,bits=8)
//#use rs232(baud=57600,parity=N,xmit=PIN_B5,rcv=PIN_B2,bits=8)
//#use rs232(baud=57600,parity=N,bits=8,UART1)

//Turn me on for I2C stuffs
#use i2c(master, sda=PIN_B1, scl=PIN_B4)
//#define Device_SDA PIN_B1
//#define Device_SLC PIN_B4


//Define Read and Write Address
//#define I2C_ADDR_W   0x90
//#define I2C_ADDR_R   0x91

//Variable Declaration
int8 high_byte,low_byte,i,count;
int16 timer_hold,reading;


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
setup_adc_ports(NO_ANALOGS|VSS_VDD);
setup_adc(ADC_OFF);
setup_comparator(NC_NC_NC_NC);
setup_vref(FALSE);


blink();//PowerGood blinker
//Main loop starts here...
int8 i;
int8 status;
int8 count = 0;

printf("\n\rStart:\n\r");

delay_ms(1000);

// Try all slave addresses from 0x10 to 0xEF.
// See if we get a response from any slaves
// that may be on the i2c bus.
for(i=0x10; i < 0xF0; i+=2)
   {
    status = get_ack_status(i);
    if(status == TRUE)
      { 
       printf("ACK addr: %X\n\r", i);
       count++;
       delay_ms(2000);
      }
   }

if(count == 0)
   printf("\n\rNothing Found");
else
   printf("\n\rNumber of i2c chips found: %u", count);

while(1);
}  

   
   
   
   
   
   
  
   


