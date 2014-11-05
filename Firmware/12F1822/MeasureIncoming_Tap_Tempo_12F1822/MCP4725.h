/*
* MCP4725 Library
* Adapted from Adafruit Library
* Eric Daine
* 
*/


#define MCP4725_CMD_WRITEDAC            (0x40)  // Writes data to the DAC
#define MCP4725_CMD_WRITEDACEEPROM      (0x60)  // Writes data to the DAC and the EEPROM (persisting the assigned value after reset)

int8 DAC_address;


//Declare thy prototypes
void begin(int8 a);  
void setVoltage( int16 output, int1 writeEEPROM );

