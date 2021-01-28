
DROP TABLE IF EXISTS dipendente;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE dipendente (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(25) DEFAULT NULL,
  cognome varchar(25) DEFAULT NULL,
  ruolo enum('Capo filiale','Cassiere','Magazziniere','Corriere') DEFAULT NULL,
  data_nascita date DEFAULT NULL,
  filiale_id int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY filiale_id (filiale_id),
  CONSTRAINT dipendente_ibfk_1 FOREIGN KEY (filiale_id) REFERENCES filiale (id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table dipendente
--

LOCK TABLES dipendente WRITE;
/*!40000 ALTER TABLE dipendente DISABLE KEYS */;
INSERT INTO dipendente VALUES (1,'Luigi','Rossetti','Cassiere','1982-12-01',2),(2,'Mario','Rossi','Corriere','1993-03-16',1),(3,'Martino','Verdi','Capo filiale','1966-05-23',3);
/*!40000 ALTER TABLE dipendente ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table filiale
--

DROP TABLE IF EXISTS filiale;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE filiale (
  id int NOT NULL AUTO_INCREMENT,
  indirizzo varchar(50) DEFAULT NULL,
  nome varchar(25) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table filiale
--

LOCK TABLES filiale WRITE;
/*!40000 ALTER TABLE filiale DISABLE KEYS */;
INSERT INTO filiale VALUES (1,'Strada cantonale, 6978 Gandria','migros Gandria'),(2,'Parco commerciale, 6916 Grancia','migros Grancia'),(3,'Via L. Lavizzari 2, 6850 Mendrisio','migros Piazza');
/*!40000 ALTER TABLE filiale ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table filiale_prodotto
--

DROP TABLE IF EXISTS filiale_prodotto;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE filiale_prodotto (
  filiale_id int NOT NULL,
  prodotto_id int NOT NULL,
  PRIMARY KEY (filiale_id,prodotto_id),
  KEY prodotto_id (prodotto_id),
  CONSTRAINT filiale_prodotto_ibfk_1 FOREIGN KEY (filiale_id) REFERENCES filiale (id),
  CONSTRAINT filiale_prodotto_ibfk_2 FOREIGN KEY (prodotto_id) REFERENCES prodotto (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table filiale_prodotto
--

LOCK TABLES filiale_prodotto WRITE;
/*!40000 ALTER TABLE filiale_prodotto DISABLE KEYS */;
INSERT INTO filiale_prodotto VALUES (1,1),(2,1),(1,2),(3,2),(1,3);
/*!40000 ALTER TABLE filiale_prodotto ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table prodotto
--

DROP TABLE IF EXISTS prodotto;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE prodotto (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(25) DEFAULT NULL,
  tipologia enum('Surgelato','Fresco','Confezionato','In scatola','Bevanda') DEFAULT NULL,
  prezzo double DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table prodotto
--

LOCK TABLES prodotto WRITE;
/*!40000 ALTER TABLE prodotto DISABLE KEYS */;
INSERT INTO prodotto VALUES (1,'M-classicSuccoDiMele','Bevanda',1.2),(2,'CoscePolloSpeziate','Confezionato',9),(3,'M-classicHamburgerManzo','Surgelato',8.4);
/*!40000 ALTER TABLE prodotto ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-02 14:00:11

