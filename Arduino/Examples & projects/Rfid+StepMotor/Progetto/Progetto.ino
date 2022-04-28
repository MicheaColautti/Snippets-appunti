/*
 * Se la porta è chiusa il led rosso sarà acceso, se ci avviciniamo con una tessera non autorizzata esso lampeggerà; se invece la tessera è riconosciuta lo step-motor girerà in senso anti-orario, si spegnerà il led rosso e si accenderà quello blu. 
 * Ora la porta è aperta.
 * Se in questo momento si avvicinerà nuovamente una tessera autorizzata lo step-motor girerà in senso orario, si accenderà il led rosso e si spegnerà quello blu. 
 * Ora la porta è chiusa.
 * 
 * Creato da: Michea Colautti
 * Ultima modifica: 13/06/2020
 * Testato su: Arduino mega
 */



#define STEPPER_PIN_1 9
#define STEPPER_PIN_2 10
#define STEPPER_PIN_3 11
#define STEPPER_PIN_4 12
//definizione delle costanti per la gestione del motore
#define RED_LED 3
#define BLUE_LED 2
//definizione delle costanti per la gestione dei led
int step_number = 0;
int i = 0;
bool aperto = false;
bool chiuso = true;
//definizione delle costanti per la gestione dei giri del motore

#include <SPI.h>
//Permette di comunicare con interfaccie SPI (MISO,MOSI,...)


#include <MFRC522.h>
//Permette la comunicazione con la placca RFID

#define SDA_PIN 45
#define RST_PIN 53
//Definizioni di due costanti con i pin per l'RFID

MFRC522 mfrc522(SDA_PIN, RST_PIN);
//Definizioni dell'oggetto mfrc522. Usa come pin SDA e RST.

String users[] = {"256g8bgc"};
//array con i vari id delle tessere
int usersSize = sizeof(users) / sizeof(String);
/*
 * permette di ottenre la dimensione dell'array di utenti, per non modificarlo ogni volta che si
 * aggiunge un utente
  */

void setup() {
  pinMode(STEPPER_PIN_1, OUTPUT);
  pinMode(STEPPER_PIN_2, OUTPUT);
  pinMode(STEPPER_PIN_3, OUTPUT);
  pinMode(STEPPER_PIN_4, OUTPUT);
  pinMode(RED_LED, OUTPUT);
  pinMode(BLUE_LED, OUTPUT);
  //Definizione di tutti i pin

  Serial.begin(9600);
  SPI.begin();
  mfrc522.PCD_Init();
  //Inizio tutte le comunicazioni di cui necessito


}

void loop() {
  if (i < 1) {
    digitalWrite(RED_LED, HIGH); //La porta parte da chiusa, accendo il led Rosso
  }
  if (mfrc522.PICC_IsNewCardPresent() && mfrc522.PICC_ReadCardSerial()) {
    //controllo se c'è una tessera e se è leggibile

    String id = getID();
    //richiamo la funzione per ottenere la stringa

    if (checkID(id)) {
      OneStep();
      /*
       * controllo se l'id corrisponde a uno di quelli autorizzati e, in caso
       * accendo il motore
       */
    }
  }
  delay(10);
  //Delay minimo da impostare per step motor
  if (i >= 2048) {
    i = 0;
    aperto = !chiuso;
  }
  /*
   *Eseguo questo if alla fine del programma, 
   *per azzerare i valori e essere pronto a ripartire
   */
}


bool checkID(String id) {
  for (int i = 0; i < usersSize; i++) {
    //percorro l'array contenente tutti gli id
    if (users[i] == id) {//ogni elemento dell'array è un id
      return true;
    }
  }
  return false;
}

String getID() {
  String id = "";
  for (int i = 0; i < mfrc522.uid.size; i++) {
    id += mfrc522.uid.uidByte[i] < 0x10 ? "0" : "";
    //Funzione if in linea
    id += String(mfrc522.uid.uidByte[i], HEX);
  }
  //salvo l'id della tessera in una variabile, averlo composto
  mfrc522.PICC_HaltA();
  Serial.print(id);
  return id;
  //ritorno l'id.
}

void OneStep() {
  if (!aperto) {//Voglio aprire
    chiuso = false;
    //aggiorno la variabile di supporto
    digitalWrite(BLUE_LED, HIGH);
    digitalWrite(RED_LED, LOW);
    //modifico i led 
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
  } else {//Voglio chiudere
    chiuso = true;
     //aggiorno la variabile di supporto
    digitalWrite(BLUE_LED, LOW);
    digitalWrite(RED_LED, HIGH);
     //modifico i led 
    if (i < 2048) {
      switch (step_number) {
         /*
         * Faccio compiere al motore un giro completo, 
         * quindi 2048 passi.
         */
        case 0:
          digitalWrite(STEPPER_PIN_1, LOW);
          digitalWrite(STEPPER_PIN_2, LOW);
          digitalWrite(STEPPER_PIN_3, LOW);
          digitalWrite(STEPPER_PIN_4, HIGH);
          break;

        case 1:
          digitalWrite(STEPPER_PIN_1, LOW);
          digitalWrite(STEPPER_PIN_2, LOW);
          digitalWrite(STEPPER_PIN_3, HIGH);
          digitalWrite(STEPPER_PIN_4, LOW);
          break;

        case 2:
          digitalWrite(STEPPER_PIN_1, LOW);
          digitalWrite(STEPPER_PIN_2, HIGH);
          digitalWrite(STEPPER_PIN_3, LOW);
          digitalWrite(STEPPER_PIN_4, LOW);
          break;

        case 3:
          digitalWrite(STEPPER_PIN_1, HIGH);
          digitalWrite(STEPPER_PIN_2, LOW);
          digitalWrite(STEPPER_PIN_3, LOW);
          digitalWrite(STEPPER_PIN_4, LOW);
          break;
      }
    }

  }
  step_number++;
  if (step_number > 3) {
    step_number = 0;
    /*
     * Mi accerto che i casi siano sempre i soliti 4,
     * permettendo il corretto funzionamento del motore
     */
    
  }
  i++;
  //aumento i
}
