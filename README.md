
## 1. Introduzione al Livello Fisico (Physical Layer)

Il **Livello Fisico** è la base su cui si poggia l’intera comunicazione di rete. È responsabile della **trasmissione effettiva** di bit su un mezzo fisico (rame, fibra ottica, onde radio, ecc.) e definisce:
- **Strutture hardware** (cavi, connettori, antenne, NIC, hub, ripetitori...)
- **Tipologie di segnale** (elettrico, ottico, radio…)
- **Specifiche di velocità** (data rate, bandwidth)
- **Topologie fisiche** (layout e disposizione effettiva dei cavi/apparecchi)

## 2. Canale di Trasmissione (Transmission Channel)

### 2.1 Definizione
È il mezzo fisico attraverso cui i bit (logici) si trasformano in segnali (fisici) per poter viaggiare tra dispositivi. Può sfruttare:
- **Corrente elettrica** (rame)
- **Luce** (fibra ottica, infrarossi, visibile)
- **Onde elettromagnetiche** (wireless in aria o altro mezzo)
- **Suono** e **ultrasuoni** (in applicazioni particolari)

L’informazione digitale viene codificata in variazioni di una grandezza fisica (es. tensione, intensità luminosa, frequenza radio, ecc.) e propagata lungo il canale.

### 2.2 Caratteristiche principali dei canali
1. **Frequenza operativa**  
2. **Larghezza di banda (Bandwidth)**  
3. **Attenuazione su distanza** (degrado del segnale)  
4. **Multipath** (possibili percorsi multipli, specialmente nel wireless)  
5. **Rumore (Noise)**  
6. **Crosstalk** (diafonia, interferenze tra cavi vicini)  
7. **Immunità alle interferenze**  
8. **Costo**  
9. **Altri fattori** (es. facilità di installazione)

## 3. Trasmissione Elettrica su Cavi in Rame

- Le informazioni sono **segnali elettrici** che viaggiano in cavi conduttori (rame).
- Esistono vari tipi di cavi in rame, ognuno con peculiarità e **limiti in frequenza**:
  - **Coassiali** (es. 10Base5 “thick coax”, 10Base2 “thin coax” RG58)
  - **Twisted Pair** (cavi a coppie intrecciate – RJ45):
    - **UTP** (Unshielded Twisted Pair)  
    - **STP** (Shielded Twisted Pair)
- Comportamento tipico: agiscono da **filtro passa-basso** (le alte frequenze subiscono attenuazioni maggiori).
- **Standard Ethernet su rame**:
  - 10Base5, 10Base2, 10Base-T, 100Base-TX, 1000Base-T, 10GBase-T ecc.

### 3.1 Categorie di Cavi (EIA/TIA e ISO/IEC 11801)
- **Cat 3**: fino a 16 MHz  
- **Cat 4**: fino a 20 MHz  
- **Cat 5**: fino a 100 MHz  
- **Cat 6**: fino a 250 MHz  
- **Cat 7**: fino a 600 MHz  

## 4. Trasmissione Ottica (Fibre e Comunicazioni a Luce)

- L’informazione è codificata in **segnali luminosi** che possono propagarsi:
  - In **spazio libero** (es. infrarossi di un telecomando), soggetti a forte attenuazione
  - In **fibra ottica** (core in vetro o plastica), con minore attenuazione e grande velocità
- **Tipi di fibra**:
  - **Single-Mode** (diametro ~9 μm, per lunghe distanze e alta capacità)
  - **Multi-Mode** (diametro ~50-62.5 μm, per distanze più brevi)
- Vantaggi: **alta banda**, bassa attenuazione, **distanze notevoli**.

## 5. Trasmissione Wireless (Segnali Elettromagnetici)

- Avviene tramite **onde radio** (o microonde, Wi-Fi, LTE…) che si propagano in aria, vuoto, acqua, ecc.
- Richiede **antenne**: la lunghezza dell’antenna è spesso proporzionale alla **lunghezza d’onda** (λ = velocità di propagazione / frequenza).
- È in molti casi **broadcast**: più ricevitori possono captare il segnale.
- Interferenze, multipath e ostacoli possono influire molto sulle prestazioni.


## 6. Infrastrutture di Livello Fisico

Dispositivi e componenti che operano **solo** sul segnale fisico (bit “grezzi”):
- **NIC (Network Interface Card)**: scheda di rete con MAC address univoco.  
- **Repeater (Ripetitore)**: rigenera/amplifica un segnale per coprire distanze maggiori.  
- **Hub**: connette più dispositivi ripetendo il segnale a tutte le porte (nessuna “intelligenza” di instradamento).  
- **Media Converter**: converte da rame a fibra o viceversa.  
- **Transceiver**: dispositivo che trasmette e riceve segnali (ad es. in Ethernet).  
- **MAU, Multiport Transceivers, Patch Panel**: varie soluzioni per cablaggio, connessione a mezzi legacy, gestione ordinata dei cavi (strutture di cablaggio).


## 7. Trasmissione dell’Informazione (Coding e Modulazioni)

### 7.1 Baseband Coding
- **Trasmissione in banda base**: si inviano impulsi elettrici/ottici direttamente (es. NRZ, RZ).  
  - **NRZ (Non-Return to Zero)**: il segnale rimane costante per tutta la durata del bit.  
  - **RZ (Return to Zero)**: il segnale torna a zero a metà bit, separando più nettamente i simboli.  

### 7.2 Ethernet: Tecniche di Codifica/Modulazione
- **Manchester Encoding (10BASE-T)**: transizione di segnale a metà bit (sincronizzazione).  
- **MLT-3 (100BASE-TX)**: 3 livelli di tensione, riduce interferenze.  
- **PAM-5 (1000BASE-T)**: 5 livelli di ampiezza (più bit per simbolo, maggiore data rate).  
- **PAM-16 (10GBASE-T)**: 16 livelli, per alte velocità.  
- **PAM-4 (25G/40G/50G/100GBASE-T)**: 4 livelli, usato in Ethernet ad alta velocità (data center).

### 7.3 Modulazioni Digitali su Portante Analogica
Implementate da modem, adattatori e dispositivi radio:
1. **ASK (Amplitude Shift Keying)** e **OOK (On-Off Keying)**  
   - Modifica dell’ampiezza della portante (2 livelli in ASK di base; OOK=portante presente/assente).  
2. **FSK (Frequency Shift Keying)**  
   - Due frequenze (f₀ e f₁) a seconda dei bit 0 o 1.  
3. **PSK (Phase Shift Keying)**  
   - Variazione di fase (0° o 180°) per rappresentare i bit (BPSK). Versioni più complesse includono QPSK (4 fasi), 8PSK…  
4. **QAM (Quadrature Amplitude Modulation)**  
   - Combina ampiezza e fase, creando “costellazioni” di simboli (es. 16 QAM, 64 QAM, 256 QAM...).  
   - Ogni simbolo può rappresentare diversi bit, aumentando il **bitrate** a parità di banda (baudrate).

## 8. Multiplexing e Condivisione del Mezzo

Quando più trasmissioni devono **condividere** lo stesso mezzo fisico, si usano tecniche di **multiplexing**:
- **TDM (Time Division Multiplexing)**: suddivisione in intervalli di tempo.  
- **FDM (Frequency Division Multiplexing)**: canali distinti in diverse bande di frequenza.  
- **WDM (Wavelength Division Multiplexing)**: “colori” diversi di luce in fibra ottica (multiplexing in lunghezza d’onda).  
- **OFDM (Orthogonal Frequency Division Multiplexing)**: banda divisa in sottoportanti ortogonali (Wi-Fi, LTE).  

### 8.1 Multiple Access
Sistemi per gestire più utenti contemporanei:
- **FDMA** (Frequency Division Multiple Access): ogni utente ha una sotto-banda.  
- **TDMA** (Time Division Multiple Access): ogni utente trasmette in uno slot temporale.  
- **CDMA** (Code Division Multiple Access): ognuno usa un codice univoco sulla **stessa** banda/frequenza.  
- **SDMA** (Space Division Multiple Access): si sfruttano diverse direzioni/antenne in parallelo (es. beamforming).

---
## 1. Introduzione al Data Link Layer (Layer 2)

Il **Data Link Layer** è fondamentale per gestire la comunicazione **diretta** tra nodi collegati fisicamente sulla stessa rete locale.  
- **Obiettivi Principali**:
  - **Formazione delle trame (Frame Formation)**: suddivide i dati in **frame** (pacchetti a livello 2).  
  - **Controllo di Errore e Correzione (Error Detection and Correction)**: utilizza meccanismi come **CRC** o tecniche di codifica (es. Hamming) per rilevare/correggere errori.  
  - **Indirizzamento MAC**: assegna a ciascun dispositivo un **MAC address** univoco.  
  - **Controllo di Flusso (Flow Control)**: regola la velocità di trasmissione per non sovraccaricare i nodi riceventi.  
  - **Media Access Control (MAC)**: coordina l’accesso al mezzo condiviso (ad es. CSMA/CD in Ethernet).  

È uno strato essenziale per garantire **affidabilità** della trasmissione in una LAN o su collegamenti punto-punto.


## 2. Cause di Errori di Trasmissione

La trasmissione dei segnali (specie elettrici) può essere soggetta a interferenze e rumore, fra cui:  
1. **Rumore termico (Johnson–Nyquist)**: generato dal moto casuale degli elettroni.  
2. **Impulse noise**: picchi di disturbo repentini (cambiamenti di stato meccanici/elettrici).  
3. **Variazioni del segnale in funzione della frequenza** (dispersione, fase, ampiezza).  
4. **Crosstalk** (interferenza mutua): accoppi indesiderati tra fili adiacenti.  
5. **Eco**: riflessioni del segnale lungo la linea.  
6. **Attenuazione**: perdita di potenza del segnale su lunghe distanze.  

Spesso gli errori **non** sono isolati, ma si presentano a **burst** (raffiche di bit corrotti).


## 3. Error Detection e Data Integrity Checks

### 3.1 Tipologie di errori
- **Single-bit error**: un singolo bit invertito (0→1 o 1→0).  
- **Multiple-bit error**: più bit corrotti nella stessa trasmissione.  
- **Burst error**: sequenze consecutive di bit alterati.  
- **Random error**: sporadici, causati da disturbi aleatori.  
- **Burst length error**: combinazione di singoli e multipli bit error in brevi intervalli.  
- **Synchronization error**: perdita di allineamento fra mittente e destinatario.

### 3.2 Metodi di controllo
1. **Parity Check** (bit di parità):
   - Aggiunge 1 bit (parity bit) per rendere il conteggio dei bit a 1 **pari** (even) o **dispari** (odd).  
   - Efficace per singoli errori, **limitato** contro burst error o errori multipli.  

2. **VRC/BCC/SRC/Interleaving**:
   - **VRC (Vertical Redundancy Check)**: aggiunge bit di controllo per colonna, riga o blocco.  
   - **BCC (Block Check Character)** e **SRC (Spiral Redundancy Checking)**: vari schemi per rilevare errori su blocchi di dati.  
   - **Interleaving**: riorganizza i dati in modo da distribuire eventuali burst error e favorire la correzione.

3. **CRC (Cyclic Redundancy Check)**:
   - Esegue una divisione polinomiale binaria dei dati e calcola un resto (remainder).  
   - Aggiunge un “Frame Check Sequence” (FCS) tipicamente di 32 bit in Ethernet.  
   - **Molto affidabile** nel rilevare errori multipli/burst.

4. **Hamming Code**:
   - Integra bit di ridondanza “r” nei dati “m” (con la relazione 2^r ≥ m + r + 1).  
   - Permette di **rilevare e correggere** errori a singolo bit e di rilevarne alcuni multipli.  
   - Usato in memoria (RAM), trasmissioni, ecc.

## 4. Sublivelli del Data Link: MAC e LLC

- **LLC (Logical Link Control)**:  
  - Fornisce interfaccia logica tra strato Network (Layer 3) e Data Link (Layer 2).  
  - Gestisce controllo di flusso, error checking, e multiplexing di protocolli di rete diversi (es. IP, IPX).  
- **MAC (Media Access Control)**:  
  - Definisce come i dispositivi accedono al mezzo fisico (rame, fibra, radio).  
  - Gestisce l’indirizzamento (MAC address) e le modalità di trasmissione (collision detection/avoidance).  
  - Specifico per la tecnologia (Ethernet, Wi-Fi, Token Ring…).

**Standard IEEE 802**:  
- **802.2**: LLC  
- **802.3**: Ethernet (CSMA/CD)  
- **802.4**: Token Bus  
- **802.5**: Token Ring  
- **802.11**: Wireless LAN (Wi-Fi)  

## 5. Indirizzo MAC

- **Definizione**: 48 bit (6 byte), solitamente rappresentati in notazione esadecimale (es. 00:1A:2B:3C:4D:5E).  
- **Organizzazione**:  
  - **OUI (Organizationally Unique Identifier)**: primi 3 byte, identificano il produttore.  
  - **Device Identifier**: ultimi 3 byte, unici per ogni scheda prodotta.  
- **Tipi**:  
  - Unicast: indirizza un singolo dispositivo.  
  - Multicast: inizia con 01 (es. 01:00:5E:xx:xx:xx).  
  - Broadcast: FF:FF:FF:FF:FF:FF.  


## 6. Ethernet e IEEE 802.3

**Ethernet V2.0** (DIX Ethernet) e **IEEE 802.3** differiscono principalmente in un campo di 2 byte:  
- **EtherType** (≥ 1536 → 0x0600) in Ethernet II: indica il protocollo (IP, ARP…)  
- **Length** in IEEE 802.3: indica la lunghezza del payload (massimo 1500 byte), mentre il protocollo è gestito da LLC.  

**Struttura di base** (Ethernet II):  
```
Preamble (7 byte) | SFD (1 byte) | Dest MAC (6) | Src MAC (6) | Type (2) | Data (46..1500) | FCS (4)
```
**Minima dimensione** frame: 64 byte, **Massima**: 1518 byte (senza VLAN), 1522 con VLAN tag.

### 6.1 Evoluzione Ethernet
- **10 Mbps (10Base-T)**: star fisica, bus logico, CSMA/CD.  
- **Fast Ethernet (100 Mbps, 802.3u)**: retrocompatibile con 10 Mbps.  
- **Gigabit Ethernet (1 Gbps, 802.3z/ab)**: cavi in rame (1000Base-T) o fibra (1000Base-SX/LX).  
- **10 Gigabit Ethernet (802.3ae)**: 10 Gbps su fibra e rame (10GBase-T).  
- **100 Gigabit Ethernet (802.3ba)**: utilizzo in data center/backbone (PAM4, canali multipli, SFP/QSFP).  


## 7. Altre Tecnologie di Livello 2

### 7.1 Token Ring (IEEE 802.5)
- **Funzionamento**: Il “gettone” (token) circola nel ring; solo chi possiede il token trasmette.  
- **Velocità**: 4 o 16 Mbps.  
- **Topologia fisica**: tipicamente a stella, ma logica ad anello.  
- **Oggi** molto **raro** (ambiente IBM legacy).

### 7.2 FDDI (Fiber Distributed Data Interface)
- **Doppio anello** contro-rotante (fault tolerance), 100 Mbps.  
- Sostituito in gran parte dalle Gigabit Ethernet su fibra.

### 7.3 ATM (Asynchronous Transfer Mode)
- **Celle fisse da 53 byte** (5 header + 48 payload).  
- Pensato per voce/dati con QoS, usato in ambito telco.  
- Non standard IEEE, ora **poco diffuso** nelle LAN.

### 7.4 SLIP (Serial Line Internet Protocol)
- Incapsula pacchetti IP su linee seriali.  
- Molto semplice, **senza** meccanismi di correzione, un solo delimitatore (0xC0).  
- Oggi spesso sostituito da PPP.

### 7.5 PPP (Point-to-Point Protocol, RFC 1661)
- Supporta multi-protocollo (IP, IPX, AppleTalk).  
- Integra **autenticazione** (PAP/CHAP), **compressione**, **CRC** e configurazione dinamica.  
- Struttura di frame con campi Flag, Address, Control, Protocol, FCS.  
- Diffuso su linee WAN (xDSL, ISDN, link seriali).

### 7.6 Wi-Fi (IEEE 802.11)
- **Wireless LAN** su bande 2,4 GHz, 5 GHz (e 6 GHz per Wi-Fi 6E/7).  
- Vari standard: 802.11a/b/g/n/ac/ax/be… con velocità crescenti.  
- **Sicurezza**: WEP (obsoleto), WPA, WPA2, WPA3 con cifrature RC4, AES, e meccanismi di key management (TKIP, CCMP).  
- Struttura di frame con campi specifici per reti wireless (control field, indirizzi multipli, ecc.).


## 8. Dispositivi e Infrastrutture di Livello 2

- **Switch**: instrada frame in base al MAC address, riduce collisioni, supporta VLAN.  
- **Bridge**: collega più segmenti LAN, filtra il traffico.  
- **Hub**: ripete segnali a tutti (obsoleto).  
- **Access Point (AP)**: gestisce la trasmissione Wi-Fi (MAC wireless).  
- **NIC (Network Interface Card)**: scheda di rete con MAC address univoco.  
- **PPP/SLIP** su linee seriali o WAN.
## 9. Scegliere una Tecnologia LAN

| **Tecnologia**             | **Velocità**         | **Uso Comune**                                     | **Costo**        | **Mezzo**                   |
|----------------------------|----------------------|----------------------------------------------------|------------------|-----------------------------|
| **Ethernet (10 Mbps)**     | 10 Mbps             | Reti legacy                                        | Basso            | Coassiale, UTP, STP, Fibra  |
| **Fast Ethernet (100 Mbps)**| 100 Mbps           | Desktop “vecchi”, infrastrutture medio-datate      | Basso            | UTP, STP, Fibra             |
| **Gigabit Ethernet (1 Gbps)**| 1 Gbps            | Standard moderno per PC, server, backbone locali   | Medio            | UTP (Cat 5e/6), Fibra       |
| **10 Gigabit Ethernet**    | 10 Gbps             | Data center, backbone di rete ad alte prestazioni  | Medio/Alto       | Fibra, rame Cat6a/7         |
| **Token Ring**            | 4 o 16 Mbps         | Legacy, ambienti IBM (in disuso)                   | Alto (Obsoleto)  | STP, topologia fisica a stella|
| **FDDI**                  | 100 Mbps            | Vecchie reti su fibra (legacy)                     | Alto (Obsoleto)  | Fibra, doppio anello        |
| **ATM**                   | 25 Mbps - 2,5 Gbps  | Reti telco/backbone (ormai superato)               | Alto             | Celle 53 byte su diversi mezzi|
| **100 Gigabit Ethernet**   | 100 Gbps            | Data center e backbone su larga scala             | Alto             | Fibra e moduli QSFP         |
| **Wi-Fi 6/6E (802.11ax)**  | Fino a ~9,6 Gbps    | LAN wireless moderne, reti aziendali/home          | Medio            | Onde radio (2,4 / 5 / 6 GHz)|
| **Wi-Fi 7 (802.11be)**     | Fino a ~46 Gbps teorici | Prossima generazione Wi-Fi per altissima velocità | Medio/Alto       | Onde radio multi-banda      |

---
## 1. Caratteristiche principali di una LAN

1. **Affidabilità (Reliability)**
   - Basata su tecnologie consolidate (es. Ethernet, Wi-Fi).  
   - Garantisce prestazioni di rete stabili e costanti.

2. **Flessibilità (Flexibility)**
   - Supporta diverse applicazioni (voce, dati, video).  
   - Si adatta a necessità operative diverse e a crescita futura.

3. **Modularità & Standardizzazione (Modularity & Standardization)**
   - Design modulare che rende facili espansioni o aggiornamenti.  
   - Utilizza tecnologie standard (IEEE 802, EIA 568, ISO/IEC 11801), indipendenti dal vendor.

4. **Estensibilità (Extensibility)**
   - Scalabilità da piccole a grandi reti.  
   - Sostiene espansioni future senza eccessivi cambiamenti infrastrutturali.

5. **Gestibilità (Manageability)**
   - Strumenti di gestione centralizzata (monitoraggio, controllo).  
   - Semplifica troubleshooting e manutenzione.

6. **Conformità agli standard (Standards Compliance)**
   - Rispetta le specifiche IEEE 802 (Ethernet, Wi-Fi, ecc.).  
   - Garantisce compatibilità tra dispositivi di vari produttori.

7. **Cablatura universale (Universal Cabling)**
   - Rispetta gli standard (EIA/TIA 568, ISO 11801).  
   - Infrastruttura coerente e prestazioni previste in qualsiasi installazione.
## 2. Interconnessioni nelle LAN: Importanza e Dispositivi

### 2.1 Importanza
Le interconnessioni in una LAN consentono la comunicazione tra sistemi di tipologie diverse. Assicurano che i dati possano fluire correttamente e in modo compatibile tra dispositivi che possono operare a **diversi livelli** del modello OSI.

### 2.2 Dispositivi in base al livello OSI

1. **Ripetitore/Hub (Layer 1 – Fisico)**
   - Rigenera il segnale (amplificazione e rigenerazione).  
   - Forward **a tutte** le porte.  
   - Oggi caduto in disuso a favore degli switch.

2. **Bridge/Switch/Access Point (Layer 2 – Data Link)**
   - Gestiscono i frame tramite MAC address.  
   - Migliorano l’efficienza riducendo il traffico broadcast tra segmenti diversi.  
   - Gli Access Point Wi-Fi lavorano anch’essi a livello 2 (smistano i frame wireless).

3. **Router (Layer 3 – Network)**
   - Instrada pacchetti in base a IP address verso reti diverse.

4. **Gateway (Spesso opera a più livelli)**
   - Traduce protocolli tra reti eterogenee (può arrivare fino al Layer 7).  
   - Esempio: conversione tra IP e protocollo proprietario.

5. **Firewall (Layer 3-7)**
   - Filtra il traffico per scopi di sicurezza.  
   - Puo’ operare a livello pacchetto (3/4) o a livello applicativo (7).
## 3. Ripetitori e Hub

- **Funzionamento**:  
  - Lavorano al **Livello 1** (Physical).  
  - Ripetono il segnale in ingresso a tutte le porte (broadcast fisico).  
  - Rigenerano segnali attenuati, estendendo la portata del cavo.

- **Limitazioni**:  
  - Non filtrano o smistano il traffico in base agli indirizzi MAC.  
  - In caso di collisioni su un segmento, le collisioni possono propagarsi (anche se alcuni ripetitori “intelligenti” le rilevano e bloccano).  
  - Sostituiti quasi totalmente dagli **switch**, più efficienti.
## 4. Bridge e Switch di Livello 2

### 4.1 Bridge

- **Livello 2 (Data Link)**, collega due segmenti LAN.  
- Mantiene tabelle di bridging, per decidere se inoltrare i frame fra i segmenti.  
- Non più molto usato (storicamente era un precursore dello switch).

### 4.2 Switch

- **Evoluzione del Bridge**: interconnette più segmenti (porte).  
- Lavora a **Layer 2** in base al MAC address del destinatario.  
- Crea tabelle di **switching** (MAC-port mapping) e inoltra il traffico solo sulla porta corretta, riducendo congestion e collisioni.  
- Segmentazione logica → Ogni porta può essere un dominio di collisione dedicato (in half-duplex). Con lo switch full-duplex, le collisioni non si verificano.  
- **Spanning Tree Protocol (STP)**: evita loop di bridging in topologie ridondanti.  
- Alcuni switch supportano funzionalità di livello 3 (routing IP di base), VLAN, QoS, PoE (802.3af/at) ecc.
## 5. Switch Gestiti e Non Gestiti

- **Non gestiti (unmanaged)**:
  - Nessuna configurazione; plug-and-play.  
  - Adatti a piccole reti domestiche o semplici.  

- **Gestiti (managed)**:
  - Forniscono interfacce di configurazione (CLI, Web, SNMP) per funzioni avanzate:  
    - Creazione di VLAN  
    - Configurazione QoS (Quality of Service)  
    - Autenticazione porte (802.1X)  
    - Monitoraggio SNMP  
    - Link Aggregation (802.3ad)  
  - Maggiore flessibilità, scalabilità e sicurezza.
## 6. VLAN (Virtual Local Area Network)

### 6.1 Definizione
Le **VLAN** segmentano logicamente una rete fisica in più **domini di broadcast** separati. Questo permette di raggruppare dispositivi per funzione, reparto o livello di sicurezza, **indipendentemente** dalla posizione fisica.

### 6.2 Vantaggi
1. **Sicurezza**: isola il traffico sensibile (es. VLAN Finance) dai restanti.  
2. **Gestione semplificata**: spostamenti o nuove assegnazioni avvengono via configurazione software.  
3. **Riduzione del broadcast**: ogni VLAN è un dominio di broadcast separato, minore congestione.

### 6.3 VLAN Trunking
- Permette di **trasportare** più VLAN su un singolo collegamento tra switch.  
- **Tagging IEEE 802.1Q**: aggiunge un header (4 byte) con i campi **TPID** (0x8100) e **TCI** (Priority, DEI, VLAN ID).  
- VLAN ID: 12 bit (fino a 4094 VLAN utilizzabili).

### 6.4 Use Cases
- Separazione dei reparti (HR, Finance, IT) pur usando lo stesso switch fisico.  
- **Guest Wi-Fi** su VLAN distinta per isolare ospiti dalla rete interna.  
- Prioritizzazione: VLAN VoIP con QoS più alta rispetto al traffico dati.
## 7. Router (Layer 3)

- **Livello Network**: instrada pacchetti in base all’indirizzo IP di destinazione.  
- Connette reti IP distinte, aggiornando tabelle di routing (statiche o dinamiche via protocollo di routing).  
- Per comunicare tra VLAN diverse, serve un **router** o uno switch di livello 3 (inter-VLAN routing).
## 8. Gateway

- Può operare dal **Livello 3** fino al **Livello 7**.  
- Esempio: NAT gateway (tra rete privata e Internet), mail gateway (conversione di protocolli di posta), protocol translator (tra protocolli proprietari e IP).
## 9. Dispositivi di Sicurezza (Firewall)

- Filtra il traffico in base a regole specifiche (IP, porte, applicazioni).  
- Può bloccare o consentire determinate connessioni.  
- Fondamentale per proteggere la rete interna da minacce esterne.

---
---
## 1. Introduzione al Livello 3 (Network Layer)

**Funzione principale**: gestire l’instradamento (routing) dei pacchetti dalla sorgente alla destinazione, eventualmente attraversando più router intermedi.  
- **Indirizzamento Logico (IP)**: assegna indirizzi IP univoci ai dispositivi.  
- **Routing**: trova il percorso migliore tra reti diverse.  
- **Frammentazione**: se necessario, suddivide i pacchetti che superano l’MTU (Maximum Transmission Unit).  

**Protocollo cardine**: **IP (Internet Protocol)**, affiancato da protocolli di supporto come **ICMP**, **ARP**, ecc.  
**Dispositivo chiave**: **Router**, che inoltra i pacchetti tra reti diverse usando le tabelle di routing (Layer 3).  
## 2. IP Addressing e Subnetting

### 2.1 Perché l’IP?
- **Scalabilità**: separa il concetto di host fisico dall’indirizzo di rete, consentendo reti di dimensioni variabili.  
- **Gerarchia**: l’indirizzo è diviso in **network part** e **host part**, favorendo l’organizzazione e il routing.  
- **Flessibilità**: a differenza dei MAC (statici), gli IP possono essere assegnati dinamicamente (DHCP).  

### 2.2 IPv4
- **Lunghezza**: 32 bit (4 byte). Esempio: `193.5.153.103`  
- **Rappresentazione**: notazione decimale puntata a.b.c.d  
- **Subnet Mask**: definisce quanti bit appartengono alla parte di rete e quanti alla parte host.  
  - Notazione “dotted decimal” (es. `255.255.255.0`)  
  - Notazione CIDR /n, dove `n` è il numero di bit a 1 (es. `/24`).  
- **Rete e Host**: con una maschera /24 (`255.255.255.0`), i primi 24 bit indicano la rete, gli ultimi 8 l’host.  
  - Esempio: `193.5.15.167/24 → rete 193.5.15.0, host 167`.

#### Classi IP (storiche)
- **Class A**: 0-127.x.x.x  
- **Class B**: 128-191.x.x.x  
- **Class C**: 192-223.x.x.x  
- Oggi si preferisce il **CIDR** (Classless Inter-Domain Routing): subnetting e supernetting senza rigide classi.  

### 2.3 Indirizzi Speciali in IPv4
1. **Network Address**: primo indirizzo della subnet (host=0).  
2. **Broadcast Address**: ultimo indirizzo della subnet (host tutti 1).  
3. **Loopback**: `127.x.x.x` (tipicamente `127.0.0.1`) per test locale.  
4. **Private IP (RFC 1918)**: non instradabili su Internet.  
   - 10.0.0.0/8  
   - 172.16.0.0/12  
   - 192.168.0.0/16  

### 2.4 Esempi di Subnetting
- **192.168.10.0/24** in 4 subnet → maschera /26 (4 blocchi da 64 IP).  
- **255.255.255.240 (/28)** → 16 IP totali, 14 utilizzabili.
## 3. Formato del Pacchetto IPv4

- **Version (4 bit)**: indica IPv4.  
- **Header Length (4 bit)**: lunghezza dell’header in parole da 32 bit (min. 5 → 20 byte).  
- **Type of Service/DSCP (8 bit)**: priorità e QoS.  
- **Total Length (16 bit)**: lunghezza totale pacchetto (max 65535 byte).  
- **Identification, Flags, Fragment Offset**: gestiscono la frammentazione.  
- **TTL (Time to Live, 8 bit)**: decrementa ad ogni hop, previene loop infiniti.  
- **Protocol (8 bit)**: es. 6=TCP, 17=UDP, 1=ICMP.  
- **Header Checksum (16 bit)**: controllo di errore sull’header.  
- **Source IP, Destination IP**: 32 bit ciascuno.  
- **Options (opzionale)**: raramente utilizzate.
## 4. IP Configuration di Base

Per comunicare in una LAN serve:
1. **IP Address** (es. `192.168.0.5`)  
2. **Subnet Mask** (es. `255.255.255.0`)  

Per uscire dalla LAN (Internet/altre reti) serve anche:
3. **Default Gateway**: l’IP del router locale (es. `192.168.0.1`).  
## 5. Router e Routing

### 5.1 Ruolo del Router
- Opera a **Layer 3** (Network).  
- Usa una **tabella di routing** per decidere dove inoltrare i pacchetti in base all’IP di destinazione.  
- Ogni router mantiene entry con:
  - **Network/Mask**  
  - **Next Hop** e/o **Interfaccia d’uscita**  
  - **Metriche** (costo, banda, delay…).  

### 5.2 Routing Statico
- Route inserite manualmente dall’amministratore.  
- Stabile ma non reagisce ai cambiamenti di rete (guasti, nuovi link).

### 5.3 Routing Dinamico
- I router usano **protocolli di routing** per scambiare informazioni (tabelle).  
- Aggiornano automaticamente le rotte in caso di variazioni.  
- **Distance Vector** (es. RIP, IGRP, EIGRP) e **Link State** (es. OSPF).
## 6. Protocolli di Routing Interni (IGP) e Esterni (EGP)

- **IGP (Interior Gateway Protocol)**: usati **dentro** un Autonomous System (AS). Esempi:  
  - **RIP** (max 15 hop, semplice, metric: hop count)  
  - **IGRP** (Cisco, multiple metriche)  
  - **EIGRP** (Cisco, ibrido distance vector–link state)  
  - **OSPF** (open source, link state, Dijkstra, molto scalabile)  

- **EGP (Exterior Gateway Protocol)**: usati **tra** diversi AS, su Internet.  
  - **BGP (Border Gateway Protocol)**: standard de facto per interconnessione su larga scala.
## 7. ARP (Address Resolution Protocol)

- Mappa IP→MAC su una rete LAN.  
- **Funzionamento**:  
  1. Host invia ARP Request in broadcast: “Chi ha IP x.x.x.x?”  
  2. Il dispositivo con quell’IP risponde con il suo MAC.  
  3. L’host salva la corrispondenza in una **cache** ARP (scade dopo un certo tempo).  
- **Limitato** alla subnet locale: per inviare fuori LAN, si risolve il MAC del default gateway.
## 8. ICMP (Internet Control Message Protocol)

- **Uso**: segnalazioni di errore, diagnostica, controllo.  
- **Esempi**:  
  - **Ping (Echo Request/Echo Reply)** per testare raggiungibilità.  
  - **Traceroute** per scoprire i router (hop) attraversati.  
- **Messaggi Tipici**: Destination Unreachable, Time Exceeded, ecc.
## 9. IPv6

- **Indirizzi a 128 bit**: notazione esadecimale separata da `:` (es. `2001:0db8:85a3::8a2e:0370:7334`).  
- **Vantaggi**:
  - Spazio di indirizzamento enorme.  
  - Header semplificato (40 byte).  
  - Supporto nativo per QoS, IPsec, e autoconfigurazione.  
  - **Anycast**: un singolo indirizzo per individuare il router più vicino fra un gruppo.  
- **Indirizzi privati**: ULA `fd00::/8` (Unique Local Address).  
- **Subnetting tipico**: /64 (primi 64 bit rete, ultimi 64 bit host).  
## 10. DHCP (Dynamic Host Configuration Protocol)

- **Funzione**: Assegnare dinamicamente parametri IP a un host.  
- **Parametri forniti**: IP address, subnet mask, gateway, DNS, e altri (lease temporaneo).  
- **Processo**:
  1. **DHCPDISCOVER**: client → broadcast.  
  2. **DHCPOFFER**: server → client.  
  3. **DHCPREQUEST**: client → server (richiesta definitiva).  
  4. **DHCPACK**: server → client (conferma).  
- **Vantaggi**:
  - Riduce configurazioni manuali.  
  - Assegna/rilascia IP in base alle necessità.  

---
## 1. Introduzione al Transport Layer (Layer 4)

**Funzione principale**: garantire un **trasferimento dati affidabile** “end-to-end” tra host, gestendo flusso, segmentazione, integrità, e controllo degli errori.

- **Responsabilità chiave**:
  - **Segmentazione e Riassemblaggio**: divide i dati in segmenti (o datagrammi in caso di UDP).  
  - **Flow Control**: regola la velocità di trasmissione per evitare congestioni.  
  - **Error Detection/Correction**: verifica l’integrità dei dati; in protocolli affidabili come TCP può richiedere ritrasmissioni.  
  - **Port Numbers**: identifica processi/applicazioni specifiche sulle macchine di destinazione.  
  - **Connessione e Rilascio**: in protocolli orientati alla connessione (TCP) stabilisce e chiude correttamente il flusso.

**Protocolli principali**:  
- **TCP (Transmission Control Protocol)**: affidabile, orientato alla connessione, con meccanismi di ritrasmissione e controllo di flusso.  
- **UDP (User Datagram Protocol)**: non orientato alla connessione, minor overhead, adatto a contesti real-time (voce, video) dove la velocità è prioritaria rispetto alla totale affidabilità.


## 2. Porte (Ports) e Socket

### 2.1 Numeri di Porta
- Sono **16 bit** (0 - 65535).  
- **Categorie**:  
  - Well-known (0-1023): usate da servizi noti (HTTP=80, FTP=21, ecc.).  
  - Registered (1024-49151): assegnate a specifiche applicazioni.  
  - Dynamic/Ephemeral (49152-65535): temporanee per le connessioni client.

### 2.2 Socket
- **Definizione**: endpoint di comunicazione (IP + Port).  
- **Socket Pair (4 tuple)**: combina IP sorgente, porta sorgente, IP destinazione, porta destinazione → canale univoco per ogni connessione.  
- **Tipologie**:  
  - **Stream Socket (TCP)**: affidabile, orientato alla connessione.  
  - **Datagram Socket (UDP)**: non affidabile, orientato al messaggio, minor overhead.


## 3. UDP (User Datagram Protocol)

- **RFC 768**.  
- **Caratteristiche**:
  - **Connectionless**: non instaura sessioni, invia semplicemente datagrammi.  
  - **No controllo di flusso/integrità**: eventuali ritrasmissioni o controlli a carico dell’applicazione.  
  - **Veloce e leggero**: overhead ridotto (header di 8 byte).  

### 3.1 Struttura di un Datagramma UDP

```
|-------------------|---------------------|
│ Source Port (16)  │ Destination Port(16)│
|-------------------|---------------------|
│ Length (16)       │ Checksum (16)       │
|-------------------|---------------------|
│                 Dati (Payload)          │
|-----------------------------------------|
```
- **Lunghezza**: dimensione totale di header + dati.  
- **Checksum**: controllo di errore basato su header e payload.

**Uso tipico**: streaming audio/video, VoIP, DNS query, dove la perdita di qualche pacchetto è tollerabile ma la bassa latenza è cruciale.


## 4. TCP (Transmission Control Protocol)

- **RFC 793** e successivi (RFC 9293).  
- **Orientato alla connessione**, garantisce:
  - **Affidabilità** (ritrasmissione in caso di perdita).  
  - **Controllo di flusso** (sliding window).  
  - **Controllo di congestione** (evita di saturare la rete).  
- **Stream-based**: i dati arrivano come un flusso continuo, segmentati dal protocollo.

### 4.1 Struttura di un Segmento TCP
```
┌───────────────────┬───────────────────┐
│ Source Port (16)  │ Destination Port(16)│
├───────────────────┴───────────────────┬┘
│ Sequence Number (32)                  │
├───────────────────────────────────────┤
│ Acknowledgment Number (32)            │
├─────┬─────┬─────┬─────┬─────────┬─────┤
│HLEN │Rsvd │Flags│Window Size (16)     │
├─────┴─────┴─────┴─────┬─────────┴─────┤
│ Checksum (16)          │Urgent Ptr (16)│
├────────────────────────┴───────────────┤
│      Options (variable) / Padding      │
├───────────────────────────────────────┤
│                 Dati (Payload)        │
└───────────────────────────────────────┘
```


Ecco la versione in linea con la formattazione richiesta:

- **Sequence Number**: indica l’offset nel flusso di byte. - **Acknowledgment Number**: byte successivo atteso, conferma ricezione. - **Flags (6 principali)**: **SYN** (sincronizzazione per l’apertura connessione), **ACK** (indica che l’acknowledgment number è valido), **FIN** (richiesta di chiusura della connessione), **RST** (reset immediato della connessione), **PSH** (push dei dati verso l’applicazione), **URG** (segnala dati urgenti). - **Window Size**: controllo di flusso (in byte).

### 4.2 Affidabilità e Flow Control
- **Sliding Window**: il mittente può inviare più segmenti in base alla “finestra” (window) indicata dal ricevente.  
- **Ack cumulativi**: un singolo ACK può confermare più segmenti.  
- **Ritrasmissione** se non si riceve ACK entro un timeout o si ricevono segnali di perdita.

### 4.3 Apertura e Chiusura TCP

#### Apertura (Three-Way Handshake)
1. **Client** invia SYN (seq=x).  
2. **Server** risponde SYN-ACK (seq=y, ack=x+1).  
3. **Client** manda ACK (ack=y+1).  
4. Stato: **ESTABLISHED**.

#### Chiusura
- **FIN**, **FIN-ACK**, **ACK** → la connessione viene rilasciata in modo ordinato.  
- Il lato che invia FIN passa in vari stati (FIN-WAIT-1/2, TIME-WAIT) per garantire corretto rilascio.
## 5. NAT (Network Address Translation)

### 5.1 Concetto
- Traduzione degli indirizzi IP da rete privata (es. 192.168.x.x) a rete pubblica (IP WAN) e viceversa.  
- **Spesso implementato sui router domestici**: gli host interni sono “nascosti” dietro un unico IP pubblico.  
- **Motivo**: risparmiare IPv4 pubblici, sicurezza base (mascheramento).

### 5.2 Tipi di NAT
- **Full Cone NAT / 1:1**: mappa un IP privato a uno pubblico.  
- **Restricted Cone NAT**: l’host esterno può rispondere solo se riceve traffico iniziale dal privato.  
- **Port-Restricted Cone NAT**: come sopra ma vincolato anche alla porta.  
- **Symmetric NAT**: mappa IP e porta specifici con corrispondenza unica, creando complessità per applicazioni P2P.  
- **NAPT / PAT (Port Address Translation)**: usa la porta per distinguere più host interni che condividono lo stesso IP pubblico.

### 5.3 Esempio di NAPT
- **Scenario**: più dispositivi in LAN privata 192.168.1.x. Router con IP pubblico (es. 203.0.113.5).  
- **Operazione**:
  1. Host interno (192.168.1.10:5001) → Router traduce IP:porta in 203.0.113.5:15001.  
  2. Server esterno risponde a 203.0.113.5:15001.  
  3. Router riconosce la sessione e inoltra a 192.168.1.10:5001.  

**Vantaggio**: possibilità di avere un solo IP pubblico per molti host interni, risparmiando indirizzi e migliorando la sicurezza.

---
## 1. L’“Altra Metà” dello Stack OSI: Livelli 5, 6 e 7

**Livelli 1-4**: dedicati alla **trasmissione dei dati** (fisica, instradamento, affidabilità).  
**Livelli 5-7**: si concentrano sulla **gestione delle sessioni**, **formattazione** e **interfaccia** con le applicazioni.  

### 1.1 Sintesi
- **Layer 5 – Session**: gestisce la creazione, mantenimento e terminazione di **sessioni** (dialoghi) tra applicazioni.  
- **Layer 6 – Presentation**: si occupa di **formattazione**, **compressione**, **encryption/decryption** dei dati.  
- **Layer 7 – Application**: è il punto di contatto tra la rete e il **software** utente (browser, client di posta, etc.).

Spesso, nella pratica odierna, questi tre livelli sono **fortemente integrati** (es. HTTPS incorpora session, presentation e application).


## 2. Layer 5 (Session)

### 2.1 Funzione Principale
- **Session Establishment, Maintenance, Termination**: controlla l’**avvio**, la **gestione** e la **chiusura** di un dialogo.  
- **Dialog Control**: definisce se la comunicazione è half-duplex o full-duplex.  
- **Synchronization**: fornisce **checkpoints** per riprendere lo scambio di dati dopo interruzioni.  
- **Session Recovery**: riattiva la comunicazione in caso di caduta temporanea (es. **SIP** per le chiamate VoIP).

### 2.2 Protocolli a Livello Sessione
- **SIP** (Session Initiation Protocol): chiama/gestisce sessioni multimediali (VoIP, video).  
- **PPTP** (Point-to-Point Tunneling Protocol): crea VPN.  
- **RPC** (Remote Procedure Call): esegue funzioni su server remoti come se fossero locali.  
- **NetBIOS**: gestione sessioni in reti Windows legacy (nome, session control).  
- **RTSP** (Real-Time Streaming Protocol): comandi tipo play/stop per streaming media.

### 2.3 Esempio: Trasferimento di una Sessione
- **Cambio rete** (es. da Wi-Fi casa a Wi-Fi ufficio) in una videochiamata: la session layer ripristina e mantiene la sessione, evitando di ricominciare la chiamata da zero.


## 3. Layer 6 (Presentation)

### 3.1 Funzione Principale
- **Data Translation**: convertire dati da un formato interno a uno **standard** (es. ASCII↔EBCDIC).  
- **Encryption/Decryption**: proteggere i dati (SSL/TLS).  
- **Compression/Decompression**: ridurre dimensione dei dati per trasmissione più rapida.  

### 3.2 Protocolli e Formati Tipici
- **SSL/TLS**: cifratura e integrità (ad es. HTTPS).  
- **JPEG/PNG**: formati immagine compressi.  
- **MPEG/MP3**: compressione audio/video.  
- **JSON/XML**: strutturazione dati per web service.  
- **ASCII/EBCDIC**: codifiche testo.  
- **ZIP/GZIP**: compressione file.

### 3.3 Applicazioni
- **Web Browsing (HTTPS)**: cifratura e formattazione dei dati.  
- **Video Streaming (Netflix, YouTube)**: codec come MPEG, compressione.  
- **File Transfer**: formati e compressione (FTP con SSL).  
- **API REST (JSON)**: scambio dati formattati in JSON/XML.


Ecco la versione con `||` come separatore:

## 4. Layer 7 (Application)  
### 4.1 Funzione Principale  
- **Interfaccia verso l’utente** o le applicazioni || **Gestione servizi di rete ad alto livello** (HTTP, FTP, SMTP, DNS, ecc.) || Verifica disponibilità di risorse e definizione protocollo di alto livello.  

### 4.2 Principali Protocolli e Servizi  
1. **Telnet**: accesso remoto a linea di comando (porta 23) || **Sicurezza assente** (testo in chiaro) || oggi sostituito da SSH.  
2. **HTTP / HTTPS**: **HTTP** (protocollo di trasferimento ipertestuale, porta 80) || **HTTPS** (HTTP + SSL/TLS, porta 443, per connessioni sicure) || **Metodi**: GET, POST, HEAD, ecc. || **Stateless**: ogni richiesta è indipendente.  
3. **SMTP (Simple Mail Transfer Protocol)**: invia mail (porta 25) || Comandi: HELO, MAIL FROM, RCPT TO, DATA… || Nessuna cifratura nativa (si può usare SMTP su TLS).  
4. **POP3 (Post Office Protocol v3)**: scarica mail e di default le **rimuove** dal server (porta 110) || Stato: `Authorization → Transaction → Update` || Semplice, ma limitato rispetto a IMAP.  
5. **IMAP (Internet Message Access Protocol)**: mail “online” (porta 143) || Consente gestione cartelle, sincronizzazione multi-dispositivo, lettura parziale || Stati: `Unauthenticated, Authenticated, Selected, Logout`.  
6. **FTP (File Transfer Protocol)**: trasferimento file su TCP (porta 21 per controllo) || **Modalità Active** (il server si connette al client, porta 20) e **Passive** (PASV, il client inizia la connessione dati) || Nessuna cifratura nativa (usa SFTP/FTPS per sicurezza).  
7. **DNS (Domain Name System)**: risolve nomi di dominio in **indirizzi IP** (porta 53, UDP/TCP) || Struttura gerarchica (root → TLD → authoritative) || Query recursive o iterative.  
8. **TFTP (Trivial File Transfer Protocol)**: semplicissimo protocollo file su UDP (porta 69) || Nessuna sicurezza né autenticazione || Usato a volte per firmware update su dispositivi di rete.  
9. **MIME / S/MIME**: **MIME** (estende formati possibili nelle mail: allegati binari, testo multilingua) || **S/MIME** (aggiunge **cifratura** e **firma digitale** ai messaggi email).  
10. **SSH (Secure Shell)**: connessione remota **cifrata** (porta 22) || Sostituto sicuro di Telnet || Fornisce tunneling sicuro e trasferimento file (SFTP).
