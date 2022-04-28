/*
 * Codice per testare il funzionamento di un lettore RFID-RC522.
 * Stampa l’identificativo della tessera o del badge che si 
 * avvicinano. 
 * Rispetto alla versione 1 questo codice effettua le verifiche
 * in una funzione., permettendo maggiore espandibilità.
 * 
 * Creato da: Michea Colautti
 * Ultima modifica: 10/06/2020
 * Testato su: Arduino mega
 */

#include <SPI.h>
//Permette di comunicare con interfaccie SPI (MISO,MOSI,...)


#include <MFRC522.h>
//Permette la comunicazione con la placca RFID

#define SDA_PIN 8
#define RST_PIN 3
//Definizioni di due costanti

MFRC522 mfrc522(SDA_PIN,RST_PIN);
//Definizioni dell'oggetto mfrc522. Usa come pin SDA e RST.

void setup() {
  Serial.begin(9600);
  SPI.begin();
  mfrc522.PCD_Init();
  //Inizio tutte le comunicazioni di cui necessito

}

void loop(){
  if(mfrc522.PICC_IsNewCardPresent() && mfrc522.PICC_ReadCardSerial()){
    //controllo se c'è una tessera e se è leggibile
    
    String id = getID();
    //richiamo la funzione per ottenere la stringa

    Serial.println("Tag id: " + id);
    //stampo la stringa
  }
  delay(10);
}

String getID(){
  String id = "";
  for(int i = 0; i < mfrc522.uid.size; i++){
    id += mfrc522.uid.uidByte[i] < 0x10 ? "0" : "";
    id += String(mfrc522.uid.uidByte[i], HEX);
  }
  //salvo l'id della tessera in una variabile, averlo composto
  mfrc522.PICC_HaltA();
  return id;
  //ritorno l'id.
}
