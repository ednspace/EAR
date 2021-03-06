//IQS253 Test Code
//Last Update ====>Jan 2014
#include <16F1827.h>



//#use delay(clock=12000000)
#DEVICE ADC=10
#use delay(clock=8000000)
#fuses NOWDT,INTRC_IO, NOPROTECT, NOBROWNOUT, NOMCLR, NOCPD, PUT, NOIESO, NOFCMEN, PLL_SW



//Turn me on for RS232 stuffs
#use rs232(baud=19200,parity=N,xmit=PIN_B5,rcv=PIN_B2,bits=8)
//#use rs232(baud=57600,parity=N,xmit=PIN_B5,rcv=PIN_B2,bits=8)
//#use rs232(baud=57600,parity=N,bits=8,UART1)

//Turn me on for I2C stuffs
#use i2c(master, sda=PIN_B1, scl=PIN_B4)

//Define the Addresses
//#define MCP4461_Address 0x58
//#define TCA9555_Address 0x40;
//Variable Declaration
int8 status,test,i,count,data,ID;


//********************************************************************************
//Functions
//********************************************************************************
#include <IQS253.c>
#include <PCA9554.c>

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








void main(){
setup_timer_0(RTCC_INTERNAL|RTCC_DIV_256);
setup_timer_1(T1_INTERNAL );
setup_oscillator (OSC_8MHZ);
setup_adc_ports(sAN2|sAN3|sAN4|VSS_VDD);
setup_adc(ADC_CLOCK_INTERNAL);
setup_comparator(NC_NC_NC_NC);
setup_vref(FALSE);

int8 Button;
int8 Button_States,Button1_State,Button2_State,Button3A_State,Button3B_State;

//Main loop starts here...

//Setup the IQS253
IQS253_Init();
delay_ms(100);

PCA9554_Direction(0x00);
PCA9554_Output_States(0xFF); //Turn EveryOne OFF
delay_ms(100);

Button1_State=Button1_Off;
Button2_State=Button2_Off;
Button3A_State=Button3A_On;
Button3B_State=Button3B_Off;

Button_States=(Button1_State&Button2_State&Button3A_State&Button3B_State);

//Test the Buttons LED Fing up the Outputs
//PCA9554_Output_States(Button1_Off & Button2_0n & Button3A_Off & Button3B_Off);

while(1){
if(!input(PIN_A1))
{
Button = IQS253_Status();

if ((Button == 0x81) && (Button1_State == Button1_Off))
   Button1_State=Button1_On;
else if ((Button == 0x81) & (Button1_State == Button1_On))
   Button1_State=Button1_Off;
   
if ((Button == 0x84) && (Button2_State == Button2_Off))
   Button2_State=Button2_0n;
else if ((Button == 0x84) & (Button2_State == Button2_0n))
   Button2_State=Button2_Off;
   
if ((Button == 0x82) && (Button3A_State == Button3A_On)){
   Button3A_State=Button3A_Off;
   Button3B_State=Button3B_On;
   }
else if ((Button == 0x82) & (Button3B_State == Button3B_On)){
   Button3B_State=Button3B_Off;
   Button3A_State=Button3A_On;
}


printf("Touch Status  %X\n\r  ",Button);
Button_States=(Button1_State&Button2_State&Button3A_State&Button3B_State);
PCA9554_Output_States(Button_States);
}
}


while(1){

PCA9554_Output_States(Button1_On & Button2_Off & Button3A_Off & Button3B_Off);
delay_ms(1000);

PCA9554_Output_States(Button1_Off & Button2_0n & Button3A_Off & Button3B_Off);
delay_ms(1000);

PCA9554_Output_States(Button1_Off & Button2_Off & Button3A_On & Button3B_Off);
delay_ms(1000);

PCA9554_Output_States(Button1_Off & Button2_Off & Button3A_Off & Button3B_On);
delay_ms(1000);

PCA9554_Output_States(Button1_Off & Button2_Off & Button3A_On & Button3B_On);
delay_ms(1000);

PCA9554_Output_States(Button1_Off & Button2_Off & Button3A_Off & Button3B_Off);
delay_ms(1000);


printf("Attempting Comms...\n\r ");

output_low(PIN_A1);
delay_ms(15);
output_float(PIN_A1);
delay_ms(1);
if( !input(PIN_A1))
IQS253_Status();
}





}













   
   
   
   
   
   
  
   


