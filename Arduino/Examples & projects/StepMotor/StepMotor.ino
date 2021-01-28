
#include <HCSR04.h>

#define STEPPER_PIN_1 31
#define STEPPER_PIN_2 33
#define STEPPER_PIN_3 35
#define STEPPER_PIN_4 37

int step_number = 0;
int i=0;

HCSR04 hc(2,3);//iniizzailizzazzione HCSR04 (trig pin , echo pin)

void setup()
{ 
  Serial.begin(9600); 
}

void loop() {
    if (i < 2048) {
      switch (step_number) {
        /*
         * Faccio compiere al motore un giro completo, 
         * quindi 2048 passi.
         */
        case 0:
          digitalWrite(STEPPER_PIN_1, HIGH);
          digitalWrite(STEPPER_PIN_2, LOW);
          digitalWrite(STEPPER_PIN_3, LOW);
          digitalWrite(STEPPER_PIN_4, LOW);
          break;

        case 1:
          digitalWrite(STEPPER_PIN_1, LOW);
          digitalWrite(STEPPER_PIN_2, HIGH);
          digitalWrite(STEPPER_PIN_3, LOW);
          digitalWrite(STEPPER_PIN_4, LOW);
          break;

        case 2:
          digitalWrite(STEPPER_PIN_1, LOW);
          digitalWrite(STEPPER_PIN_2, LOW);
          digitalWrite(STEPPER_PIN_3, HIGH);
          digitalWrite(STEPPER_PIN_4, LOW);
          break;

        case 3:
          digitalWrite(STEPPER_PIN_1, LOW);
          digitalWrite(STEPPER_PIN_2, LOW);
          digitalWrite(STEPPER_PIN_3, LOW);
          digitalWrite(STEPPER_PIN_4, HIGH);
          break;
      }
    }
      step_number++;
      if (step_number > 3) {
        step_number = 0;
      }
      i++;
      delay(5);
      if (i >= 2048) {
        i = 0;
      }
}
