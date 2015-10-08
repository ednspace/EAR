/* 
 * Code to test the TapTempo board
 * Throughout the whole delay range
 */
#include <FreqCount.h>

int pulse_pin = 12;  //The output pulse pin
unsigned long samples = 0;  //Number of samples to take
unsigned long delay_time = 25; //Time to delay
unsigned long average = 0; //Compute the Average

void setup() {
  pinMode(pulse_pin, OUTPUT);
  digitalWrite(pulse_pin,LOW); //Start out at ground
  Serial.begin(57600);
  FreqCount.begin(1000);
}

void loop() {
  if (FreqCount.available()) {
    unsigned long count = FreqCount.read();
    average = average + count;
    samples = samples + 1;
  }
  
  if (samples == 10){
    FreqCount.end(); //Shutoff Frequency Counter
    samples = 0; //Reset samples
    average = average / 10;
    
    //Print it out
    Serial.print(delay_time);
    Serial.print("     ");
    Serial.println(average);
    
    average = 0; //Reset the average
    
    //Update the Millisecond pulse count
    //If we reach max delay of 900ms then restart
    delay_time = delay_time + 1;
    if (delay_time >= 900){
      delay_time = 25;
    }
    
    //Give me a good pulse on the gate
    //ONE
    digitalWrite(pulse_pin,HIGH); //Gate catches falling edge
    delay(10);
    digitalWrite(pulse_pin,LOW); //Gate still counting
    delay(delay_time - 10); //Allows for the 1ms delay above
    digitalWrite(pulse_pin,HIGH); //Gate catches falling edge stops counting now ,frequency should be set...
    delay(10);
    digitalWrite(pulse_pin,LOW); //The whole process is over now let the gate float again
    
    
    //Turn back on the Frequency counter
    FreqCount.begin(1000); //Turn on Frequency Counter
  }
  
}

