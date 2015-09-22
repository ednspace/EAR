#include <12f1822.h>  
#fuses INTRC_IO,NOWDT,NOPROTECT,NOMCLR,NOCLKOUT,PLL_SW,NOLVP
#DEVICE ADC=10
#use delay (clock=32000000)
//#use rs232(baud=9600, UART2, ERRORS)
//#use i2c(master, sda=PIN_A2, scl=PIN_A1, FORCE_HW, FAST)
//#byte APFCON=getenv("SFR:APFCON") //This is the register to move pins around

//#ROM 0xF000 = { 0xCA, 0xFE, 0xBA, 0xBE}

//And here is a trick if you don't know the start of the EEPROM address Aaaahhhhh!!!
#ROM getenv("EEPROM_ADDRESS")={0xCA, 0xFE, 0xBA, 0xBE, 0xAC, 0xDC}




//Timer2 interrupts every ms basically just handles overflow condition
//Stops counting up at 1000 to prevent eventually filling the overflow 
//variable and rolling over back to 0 causing confusion
#int_timer2
void timer2_isr(void)
{

 output_toggle(PIN_A2);  
clear_interrupt(int_timer2);// clear timer2 interrupt's flag 
}

//==================================== 
void main() 
{ 





//Oscillator Config

setup_oscillator(OSC_8MHZ|OSC_INTRC|OSC_PLL_ON); //I am giving it all shes got, she can't take any more Captain
//setup_oscillator(OSC_500KHZ|OSC_INTRC|OSC_PLL_OFF);  //Can measure a little over 4 seconds with timer1
//setup_oscillator(OSC_2MHZ|OSC_INTRC|OSC_PLL_OFF);  //Can measure a little over 1 second with timer1 Use this one





setup_timer_1(T1_INTERNAL | T1_DIV_BY_8 ); 
setup_timer_2(T2_DIV_BY_1, 10, 1);  //Need a real understanding of what this lines does here
enable_interrupts(INT_CCP1);
enable_interrupts(INT_TIMER2);
enable_interrupts(GLOBAL);




while(1) 
  { 
  
  }
 
   
     
   

  } 


