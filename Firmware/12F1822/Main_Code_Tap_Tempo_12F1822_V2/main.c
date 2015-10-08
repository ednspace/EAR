//This is the main working code for the TapTempo Project
//It was delievered 10/6/2015 and said to be AWESOME
//Time line of changes follow below...
//10/8/2015 made commit to github

#include <12f1822.h>
#fuses INTRC_IO,NOWDT,NOPROTECT,NOMCLR,NOCLKOUT,PLL_SW,NOLVP
#DEVICE ADC=10
#use delay(clock=2000000)
#use rs232(baud=9600, UART2, ERRORS)
#use i2c(master, sda=PIN_A2, scl=PIN_A1, FORCE_HW, FAST)
#byte APFCON=getenv("SFR:APFCON") //This is the register to move pins around


#include <MCP4725.c>
//#include <math.h>

//Variable Declaration
int1 got_pulse_width, first_press, mode;
int16 ccp_delta, overflow,pot_val,pot_save;
int32 pulse_width_ms;

const int16 millisecond_delay[21] = {842,836,821,794,763,728,692,653,612,570,524,478,427,374,318,257,195,127,77,57,47};
const int16 dac_out[21] = {0,206,414,622,824,1035,1235,1442,1647,1850,2059,2260,2468,2671,2875,3080,3285,3490,3695,3899,4096};
int16 calculated_voltage;
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
   //tap_return = TRUE;
   }
if(first_press) 
  { 
   overflow = 0; //Reset the Overflow
   t1_falling_edge = CCP_1; //Capture the clock
   got_pulse_width = FALSE;
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


double map(double value, float x_min, float x_max, float y_min, float y_max)    
{                    
    return (y_min + (((y_max - y_min)/(x_max - x_min)) * (value - x_min))); 
} 

//==================================== 
void main() 
{ 


int16 local_ccp_delta;
got_pulse_width = FALSE; 
first_press = TRUE;

//DAC_address = 0xC4; //Address of the DAC don't ever forget this please
DAC_address = 0xC0; //I2C Address of parts with marking AJ

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
enable_interrupts(INT_CCP1);
enable_interrupts(INT_TIMER2);
enable_interrupts(GLOBAL);

//DAC Test Code
//setVoltage(4095, FALSE); //Sets DAC output to Max voltage
//setVoltage(0, FALSE); 

mode = 1; //Start off in POT mode

while(1) 
  { 
  pot_val = read_adc(); //Read the ADC everytime
  
  if (mode == 1){ //We are in POT mode just set the value
      pot_save = pot_val;
      setVoltage(pot_val * 4, FALSE); //scale to 12bit DAC
  }
  
  if (((pot_val > pot_save + 10 && mode ==0)) || ((pot_val < pot_save - 10) && (mode == 0))){ //We are in TAP mode only set voltage if POT moves a lot
      mode = 1; //Jump out of tap mode and enter pot mode
  }
 
   
  
  if(got_pulse_width) 
     { 
      disable_interrupts(GLOBAL); 
      local_ccp_delta = ccp_delta;  
      enable_interrupts(GLOBAL);
      
      pulse_width_ms = local_ccp_delta / 62; //2E-6 per tick * 8 Prescale = 1.6E-5 so .001 / 1.6E-5 = 62.5 
      got_pulse_width = FALSE;
      
     // For Testing set Pulse width ms here
     // pulse_width_ms = 524;
      
      LUT_count = 1;
      while   (millisecond_delay[LUT_count] >= pulse_width_ms){
      LUT_count = LUT_count + 1;
      }
      calculated_voltage = map(pulse_width_ms, millisecond_delay[LUT_count - 1], millisecond_delay[LUT_count] , dac_out[LUT_count-1],dac_out[LUT_count]);
      
      
     // printf("%lu ms \n\r", pulse_width_ms); //Debug Message
     // printf("%lu dac \n\r", calculated_voltage); //Debug Message
      setVoltage(calculated_voltage,FALSE);
      mode = 0; //Set Mode to tap mode, requires larger movement of POT to break out
     } 
  } 

}
