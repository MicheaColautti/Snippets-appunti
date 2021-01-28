

DROP TABLE IF EXISTS auto;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE auto (
  id int NOT NULL AUTO_INCREMENT,
  marca varchar(25) DEFAULT NULL,
  modello varchar(25) DEFAULT NULL,
  anno date DEFAULT NULL,
  prezzo int DEFAULT NULL,
  cliente_id int DEFAULT NULL,
  nazione_id int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY cliente_id (cliente_id),
  KEY nazione_id (nazione_id),
  CONSTRAINT auto_ibfk_1 FOREIGN KEY (cliente_id) REFERENCES cliente (id),
  CONSTRAINT auto_ibfk_2 FOREIGN KEY (nazione_id) REFERENCES nazione (id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table auto
--

LOCK TABLES auto WRITE;
/*!40000 ALTER TABLE auto DISABLE KEYS */;
INSERT INTO auto VALUES (1,'Mercedes','A-45 AMG','2019-05-09',70000,1,2),(2,'Nissan','Skyline R-33','1995-07-22',80000,3,3),(3,'Toyota','Supra','1999-09-15',55000,3,3),(4,'Nissan','Skyline R-32','1983-06-13',50000,NULL,3);
/*!40000 ALTER TABLE auto ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table cliente
--

DROP TABLE IF EXISTS cliente;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE cliente (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(25) DEFAULT NULL,
  cognome varchar(25) DEFAULT NULL,
  indirizzo varchar(25) DEFAULT NULL,
  data_nascita date DEFAULT NULL,
  telefono int DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table cliente
--

LOCK TABLES cliente WRITE;
/*!40000 ALTER TABLE cliente DISABLE KEYS */;
INSERT INTO cliente VALUES (1,'Piero','Angela','Via casa sua 65','1967-05-12',32675476),(2,'Ivano','Pierugini','Via maremma 2','1999-12-12',12345678),(3,'nome','cognome','Via nessuno 0','0000-01-01',11111111);
/*!40000 ALTER TABLE cliente ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table nazione
--

DROP TABLE IF EXISTS nazione;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE nazione (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(25) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table nazione
--

LOCK TABLES nazione WRITE;
/*!40000 ALTER TABLE nazione DISABLE KEYS */;
INSERT INTO nazione VALUES (1,'Italia'),(2,'Germania'),(3,'Giappone');
/*!40000 ALTER TABLE nazione ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-02 13:23:18
