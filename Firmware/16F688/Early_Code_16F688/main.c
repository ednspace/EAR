#include <16F688.h>
//#device adc=10
#use delay(clock=8000000)
#fuses NOWDT,INTRC_IO, NOPROTECT, BROWNOUT, NOMCLR, NOCPD, PUT, NOIESO, NOFCMEN
//#use rs232(baud=9600,parity=N,xmit=PIN_C4,rcv=PIN_C5,bits=9)

#define LED0 PIN_C5
#define LED1 PIN_C4
#define LED2 PIN_C3

#define button0 PIN_C2
#define button1 PIN_C1
#define button2 PIN_C0

int1 state0,state1,state2;


void main(){
   setup_oscillator( OSC_8MHZ );
   //setup_adc_ports(sAN6|VSS_VDD);
   setup_adc(ADC_CLOCK_INTERNAL);
   //setup_counters(RTCC_INTERNAL,RTCC_DIV_1);
   //setup_timer_1(T1_DISABLED);
   setup_comparator(NC_NC_NC_NC);
   setup_vref(FALSE);

state0 = read_eeprom (0);
state1 = read_eeprom (1);
state2 = read_eeprom (2);

//Test the LEDs
/*
while (1){
output_low(LED0);
output_low(LED1);
output_low(LED2);
delay_ms(1000);
output_high(LED0);
output_high(LED1);
output_high(LED2);
delay_ms(1000);
}
*/

//The LEDs are an active High because of the NPN transistor driving the low side
if (state0 == 1)
output_high(LED0);

if (state1 == 1)
output_high(LED1);

if (state2 == 1)
output_high(LED2);

//The buttons are an active high to avoid problems with powerdown causing false triggers
//
   while(true)
   {
   
      if(input(button0)){
         //Toggle the LED
         output_toggle(LED0);
         while (input(button0)){} //Stay right here until button is released
         //We know button was pressed and released
         state0 = !state0;
         write_eeprom(0, state0);
        
      }
   
      if(input(button1)){
         //Toggle the LED
         output_toggle(LED1);
         while (input(button1)){} //Stay right here until button is released
         //We know button was pressed and released
         state1 = !state1;
         write_eeprom(1, state1);
         
      }
      
      if( input(button2) ){
         output_toggle(LED2);
         while (input(button2)){} //Stay right here until button is released
         //We know button was pressed and released
         state2 = !state2;
         write_eeprom(2, state2);
         
         
      }
   }

}
