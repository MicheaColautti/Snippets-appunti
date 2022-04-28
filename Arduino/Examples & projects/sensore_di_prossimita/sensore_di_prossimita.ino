#include <HCSR04.h>

HCSR04 hc(2,3);//inizzializzazzione HCSR04 (trig pin , echo pin)

void setup()
{ 
  Serial.begin(9600); 
}

void loop() 
{ 
  
  Serial.println( hc.dist()); //return current distance (cm)
  delay(500);
} 
