#include <12f1822.h>  
#fuses INTRC_IO,NOWDT,NOPROTECT,NOMCLR,NOCLKOUT,PLL_SW,NOLVP
#DEVICE ADC=10
#use delay(clock=2000000)
#use rs232(baud=9600, UART2, ERRORS)
#use i2c(master, sda=PIN_A2, scl=PIN_A1, FORCE_HW, FAST)
#byte APFCON=getenv("SFR:APFCON") //This is the register to move pins around


#include <MCP4725.c> //DAC Library


//Variable Declaration
int1 tap_return, got_pulse_width, first_press;
int16 ccp_delta, overflow,pot_val,pot_save,voltage_hold,my_voltage;
int32 pulse_width_ms;


const int16 millisecond_delay[10] = {879,821,745,665,572,470,356,220,93,66};
const float y_intercept[10] = {4.53,4.30,3.98,3.41,2.16,-0.59,-8.43,-35.11,-194.05,-303.50};
const float slope[10] = {0.245,0.688,1.000,1.375,2.000,3.100,5.714,13.358,52.896,77.217};
float calculated_voltage;
float khz;
int8 LUT_count;






//Timer2 interrupts every ms basically just handles overflow condition
//Stops counting up at 1000 to prevent eventually filling the overflow 
//variable and rolling over back to 0 causing confusion
#int_timer2
void timer2_isr(void)
{
if (overflow < 1000){
   overflow = overflow + 1;
   }
   
clear_interrupt(int_timer2);// clear timer2 interrupt's flag 
}

#int_ccp1 
void ccp1_isr(void) 
{ 
static int16 t1_falling_edge;
if (overflow >= 900) //Set Overflow at 900ms can actually count to 1048
   {
   first_press = TRUE; //Restart the Tap Train on next falling edge
   got_pulse_width = FALSE; //Don't report pulse width if overflow
   tap_return = TRUE;
   }
if(first_press) 
  { 
   overflow = 0; //Reset the Overflow
   t1_falling_edge = CCP_1; //Capture the clock
   first_press = FALSE;
  } 
else 
  {
   ccp_delta = CCP_1 - t1_falling_edge;
   t1_falling_edge = CCP_1; //Re Capture the clock
   overflow = 0; //Reset the Overflow
   got_pulse_width = TRUE;
  } 

} 

//==================================== 
void main() 
{ 


int16 local_ccp_delta;
got_pulse_width = FALSE; 
first_press = TRUE;

//DAC_address = 0xC4; //I2C Address of parts with marking AP
DAC_address = 0xC0; //I2C Address of parts with marking AP

//Oscillator Config

//setup_oscillator(OSC_8MHZ|OSC_INTRC|OSC_PLL_ON); //I am giving it all shes got, she can't take any more Captain
//setup_oscillator(OSC_500KHZ|OSC_INTRC|OSC_PLL_OFF);  //Can measure a little over 4 seconds with timer1
setup_oscillator(OSC_2MHZ|OSC_INTRC|OSC_PLL_OFF);  //Can measure a little over 1 second with timer1 Use this one

//Capture Compare Config
setup_CCP1(CCP_CAPTURE_FE); //Sets up Capture Compare for Falling Edge - Reads Tap Input
bit_set(APFCON,0); //Set CCP1 Pin to A5 instead of A2

//ADC Config
SETUP_ADC(ADC_CLOCK_INTERNAL);
SETUP_ADC_PORTS(sAN3); //Analog in on RA4
set_adc_channel(3);
delay_us(10);



setup_timer_1(T1_INTERNAL | T1_DIV_BY_8 ); 
setup_timer_2(T2_DIV_BY_16 , 31, 1);  //Need a real understanding of what this lines does here
//enable_interrupts(INT_CCP1);
//enable_interrupts(INT_TIMER2);
//enable_interrupts(GLOBAL);

//DAC Test Code
//setVoltage(4095, FALSE); //Sets DAC output to Max voltage
//setVoltage(0, FALSE); 


while(1) 
  { 
  
  //pot_val = read_adc();
  printf("test \n\r"); //Debug Message
  
  for (my_voltage = 0; my_voltage <= 4096; my_voltage = my_voltage + 204){
  setVoltage(my_voltage, FALSE);
  printf("%lu volts \n\r", my_voltage); //Debug Message
  delay_ms(10000);
  }
   

  } 

}
