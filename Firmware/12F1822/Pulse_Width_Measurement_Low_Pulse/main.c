#include <12f1822.h>  
#fuses INTRC_IO,NOWDT,NOPROTECT,NOMCLR 
#use delay(clock=500000)
#use rs232(baud=2400, UART2, ERRORS) //Makes the Xmit PIN

int8 capture_falling_edge;
int8 got_pulse_width; 
int16  ccp_delta; 


#int_ccp1 
void ccp1_isr(void) 
{ 
static int16 t1_falling_edge; 

// If current interrupt is for falling edge. 
if(capture_falling_edge) 
  { 
   setup_ccp1(CCP_CAPTURE_RE); 
   capture_falling_edge = FALSE; 
   t1_falling_edge = CCP_1; 
  } 
else 
  { 
   setup_ccp1(CCP_CAPTURE_FE); 
   capture_falling_edge = TRUE; 
   ccp_delta = CCP_1 - t1_falling_edge; 
   got_pulse_width = TRUE; 
  } 

} 

//==================================== 
main() 
{ 
int16 pulse_width_ms; 
int16 local_ccp_delta; 

got_pulse_width = FALSE; 
capture_falling_edge = TRUE; 

setup_oscillator(OSC_500KHZ|OSC_INTRC|OSC_PLL_OFF);
setup_CCP1(CCP_CAPTURE_FE);
setup_timer_1(T1_INTERNAL | T1_DIV_BY_8 ); 
enable_interrupts(INT_CCP1); 
enable_interrupts(GLOBAL); 

while(1) 
  { 
  // printf("Running...\n\r");
   output_toggle(PIN_A5);
   if(got_pulse_width) 
     { 
      disable_interrupts(GLOBAL); 
      local_ccp_delta = ccp_delta;  
      enable_interrupts(GLOBAL); 

      //pulse_width_ms = local_ccp_delta / 64; 
      pulse_width_ms = local_ccp_delta / 16;
      printf("%lu ms \n\r", pulse_width_ms); 
      got_pulse_width = FALSE;
     } 

   delay_ms(500); 

  } 

}
