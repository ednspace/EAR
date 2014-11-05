/*
* TCA9555 Library
* Kerry D. Wong
* http://www.kerrywong.com
* 3/2011
*
*
* adapted for CCSC compiler
* 11/2013
* Eric Daine
*/

#include <TCA9555.h>


int8 TCA9555_Address = 0x40;



//set port directions for both ports
//dir: DIR_OUTPUT or DIR_INPUT

/*
void setPortDirection(int8 dir)
{
  i2c_start();
  i2c_write(TCA9555_Address);
  i2c_write(CR_CFG0);
  i2c_write(dir);
  i2c_write(dir);
  i2c_stop();   
}
*/

//portNum: PORT_0 or PORT_1
void setPortDirection(int8 portNum, int8 dir)
{
  i2c_start();
  i2c_write(TCA9555_Address);
  if (portNum == PORT_0) i2c_write(CR_CFG0);
  else i2c_write(CR_CFG1);
  i2c_write(dir);
  i2c_stop();
}

//set port polarity for both ports
//polarity: POLARITY_NORMAL or POLARITY_INV
/*
void setPortPolarity(byte polarity)
{
  i2c_start();
  i2c_write(TCA9555_Address);
  i2c_write(CR_INV0);
  i2c_write(polarity);
  i2c_write(polarity);
  i2c_stop();
}
*/

void setPortPolarity(byte portNum, byte polarity)
{
  i2c_start();
  i2c_write(TCA9555_Address);
  if (portNum == PORT_0) i2c_write(CR_INV0);
  else i2c_write(CR_INV1);
  i2c_write(polarity);
  i2c_stop();
}

//set output states when both ports are used as output ports
//w contains all 16 ports' states.
/*
void setOutputStates(int16 w)
{
  int8 low_byte = w & 0xff;
  int8 high_byte = (w & 0xff00) >> 8;
  
  i2c_start();
  i2c_write(TCA9555_Address);
  i2c_write(CR_OUT0);
  i2c_write(low_byte);
  i2c_write(high_byte);
  i2c_stop();
}
*/

void setOutputStates(int8 portNum, int8 b)
{
  i2c_start();
  i2c_write(TCA9555_Address);
  if (portNum == PORT_0) i2c_write(CR_OUT0);
  else i2c_write(CR_OUT1);
  i2c_write(b);
  i2c_stop();
}

//returns the input states of both ports when ports
//are used as inputs
//This is out for now until I figure out how Wire.requestFrom and Wire.available 
//maps to the CCSC code for now I don't so much need this function urk!

/*
int16 getInputStates()
{
  byte low_byte, high_byte;
  
  i2c_start();
  i2c_write(TCA9555_Address);
  Wire.requestFrom(TCA9555_Address, 2u);

  while (!Wire.available()) {};
  low_byte = Wire.receive();
  while (!Wire.available()) {};
  high_byte = Wire.receive();

  i2c_stop();
  
  int16 w = low_byte | (high_byte << 8);
  
  return w;
}
*/

byte getInputStates(byte portNum)
{
  int16 w = getInputStates();
  
  if (portNum == PORT_0) return w & 0xff;
  else return (w & 0xff00) >> 8;
}


