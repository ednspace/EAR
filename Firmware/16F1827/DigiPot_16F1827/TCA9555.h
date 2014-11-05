/*
* TCA9555 Library
* Kerry D. Wong
* http://www.kerrywong.com
* 3/2011
*
*
* Eric Daine
* adapted for CCSC compiler
* removed C++ class structure
* changed from the wiring library to CCSC I2C
* 11/2013
*/


#define PORT_0 0
#define PORT_1 1

#define DIR_OUTPUT 0
#define DIR_INPUT 1
   
#define POLARITY_NORMAL 0
#define POLARITY_INV 1

#define CR_IN0 0x00
#define CR_IN1 0x01
#define CR_OUT0 0x02
#define CR_OUT1 0x03
#define CR_INV0 0x04
#define CR_INV1 0x05
#define CR_CFG0 0x06
#define CR_CFG1 0x07

//TCA9555(): A2(0), A1(0), A0(0) {};
//TCA9555(int8 a2, int8 a1, int8 a0);


//Declare thy prototypes
   
void setPortDirection(int8 dir);
void setPortDirection(int8 portNum, int8 dir);
void setPortPolarity(int8 polarity);
void setPortPolarity(int8 portNum, int8 polarity);
void setOutputStates(int16 w);
void setOutputStates(int8 portNum, int8 b);
   
int16 getInputStates();
int8 getInputStates(int8 portNum);

void pinMode(int8 pinNum, int8 dir);

//private:
//   int8 A2, A1, A0;
//   int8 I2CAddr;



