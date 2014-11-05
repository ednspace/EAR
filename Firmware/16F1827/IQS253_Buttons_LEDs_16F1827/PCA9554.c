/*
* 1/2014
* Eric Daine
*/

#include <PCA9554.h>


int8 PCA9554_Address = 0x40;


void PCA9554_Direction(int8 dir)
{
  i2c_start();
  i2c_write(PCA9554_Address);
  i2c_write(Configuration);
  i2c_write(dir);
  i2c_stop();   
}



void PCA9554_Output_States(int8 PortState)
{
  i2c_start();
  i2c_write(PCA9554_Address);
  i2c_write(Output_Port);
  i2c_write(PortState);
  i2c_stop();
}


