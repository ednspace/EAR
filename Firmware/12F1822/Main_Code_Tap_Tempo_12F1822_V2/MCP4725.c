/*
* MCP4725 Library
* Eric Daine
* 
*/


#include <MCP4725.h>





/**************************************************************************/
/*! 
    @brief  Sets the output voltage to a fraction of source vref.  (Value
            can be 0..4095)

    @param[in]  output
                The 12-bit value representing the relationship between
                the DAC's input voltage and its output voltage.
    @param[in]  writeEEPROM
                If this value is true, 'output' will also be written
                to the MCP4725's internal non-volatile memory, meaning
                that the DAC will retain the current voltage output
                after power-down or reset.
*/
/**************************************************************************/
void setVoltage( int16 output, int1 writeEEPROM )
{
   //disable_interrupts(GLOBAL); 
   i2c_start();
   i2c_write(DAC_address);
   
  if (writeEEPROM)
  {
    i2c_write(MCP4725_CMD_WRITEDACEEPROM);
  }
  else
  {
    i2c_write(MCP4725_CMD_WRITEDAC);
  }
  i2c_write(output / 16);                   // Upper data bits          (D11.D10.D9.D8.D7.D6.D5.D4)
  i2c_write((output % 16) << 4);            // Lower data bits          (D3.D2.D1.D0.x.x.x.x)
  i2c_stop(); 
  //enable_interrupts(GLOBAL);
  
}



