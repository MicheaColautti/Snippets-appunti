-- --------------------------------------------------------
-- Host:                         localhost
-- Versione server:              10.1.28-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win32
-- HeidiSQL Versione:            9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dump della struttura del database ql_serie_6
CREATE DATABASE IF NOT EXISTS `ql_serie_6` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ql_serie_6`;

-- Dump della struttura di tabella ql_serie_6.cdl
CREATE TABLE IF NOT EXISTS `cdl` (
  `nome` varchar(50) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL,
  `presidente` varchar(50) DEFAULT NULL,
  `facolta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella ql_serie_6.cdl: ~5 rows (circa)
/*!40000 ALTER TABLE `cdl` DISABLE KEYS */;
INSERT INTO `cdl` (`nome`, `descrizione`, `presidente`, `facolta`) VALUES
	('chimica', 'corso chimica', 'Bluemberg', 'scienze'),
	('fisica', 'corso di fisica', 'Ranieri', 'scienze'),
	('info', 'informatica', 'Tirri', 'informatica'),
	('italiano', 'ita', 'Maritti', 'letteratura'),
	('Tecnologie Web e Multimediali', 'informatica', 'Palli', 'informatica');
/*!40000 ALTER TABLE `cdl` ENABLE KEYS */;

-- Dump della struttura di tabella ql_serie_6.corso
CREATE TABLE IF NOT EXISTS `corso` (
  `nome` varchar(50) NOT NULL,
  `cdl` varchar(50) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL,
  `programma` varchar(50) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `docente` int(11) DEFAULT NULL,
  PRIMARY KEY (`nome`,`cdl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella ql_serie_6.corso: ~4 rows (circa)
/*!40000 ALTER TABLE `corso` DISABLE KEYS */;
INSERT INTO `corso` (`nome`, `cdl`, `descrizione`, `programma`, `anno`, `docente`) VALUES
	('corso 2', 'italiano', 'corso avanzato', 'vario', 1, 1),
	('corso facoltativo', 'Tecnologie Web e Multimediali', 'corso principianti', 'vario', 4, 2),
	('corso specifico 1', 'chimica', 'corso per chimici avanzati', 'dettagliato', 4, 2),
	('programmazione', 'info', 'corso info', 'XML', 5, 3);
/*!40000 ALTER TABLE `corso` ENABLE KEYS */;

-- Dump della struttura di tabella ql_serie_6.dislocazione
CREATE TABLE IF NOT EXISTS `dislocazione` (
  `facolta` varchar(50) NOT NULL,
  `sede` varchar(50) NOT NULL,
  PRIMARY KEY (`facolta`,`sede`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella ql_serie_6.dislocazione: ~3 rows (circa)
/*!40000 ALTER TABLE `dislocazione` DISABLE KEYS */;
INSERT INTO `dislocazione` (`facolta`, `sede`) VALUES
	('italiano', 'Lugano'),
	('matematica', 'Locarno'),
	('medicina', 'Bellinzona');
/*!40000 ALTER TABLE `dislocazione` ENABLE KEYS */;

-- Dump della struttura di tabella ql_serie_6.docente
CREATE TABLE IF NOT EXISTS `docente` (
  `codice` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sito` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) NOT NULL,
  `ufficio` varchar(50) NOT NULL,
  `facolta` varchar(50) NOT NULL,
  PRIMARY KEY (`codice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella ql_serie_6.docente: ~3 rows (circa)
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` (`codice`, `tipo`, `nome`, `cognome`, `email`, `sito`, `telefono`, `ufficio`, `facolta`) VALUES
	(1, 'ricercatore', 'Roberto', 'Ranon', 'r.ra@ch.ch', '', '09546554', '0605601', 'medicina'),
	(2, 'ricercatore', 'Mari', 'DeLorenzi', 'r@ch.ch', '', '505050', '50505', 'scienze'),
	(3, 'docente ricercatore', 'Malu', 'Colotti', 'r@ddl.ch', 'www.cc.dd', '5050505', '995656', 'matematica');
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;

-- Dump della struttura di tabella ql_serie_6.facolta
CREATE TABLE IF NOT EXISTS `facolta` (
  `nome` varchar(50) NOT NULL,
  `preside` varchar(50) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella ql_serie_6.facolta: ~4 rows (circa)
/*!40000 ALTER TABLE `facolta` DISABLE KEYS */;
INSERT INTO `facolta` (`nome`, `preside`) VALUES
	('italiano', 'Biffi'),
	('matematica', 'Ranieri'),
	('medicina', 'Ruggeri'),
	('scienze', 'Bacca');
/*!40000 ALTER TABLE `facolta` ENABLE KEYS */;

-- Dump della struttura di tabella ql_serie_6.lezione
CREATE TABLE IF NOT EXISTS `lezione` (
  `giorno` varchar(50) NOT NULL,
  `fascia` varchar(50) NOT NULL,
  `aula` varchar(50) NOT NULL,
  `corso` varchar(50) DEFAULT NULL,
  `cdl` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`giorno`,`fascia`,`aula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella ql_serie_6.lezione: ~3 rows (circa)
/*!40000 ALTER TABLE `lezione` DISABLE KEYS */;
INSERT INTO `lezione` (`giorno`, `fascia`, `aula`, `corso`, `cdl`) VALUES
	('22', '8-10', 'A333', 'corso 2', 'italiano'),
	('22', '8-10', 'A334', 'corso specifico 1', 'italiano'),
	('23', '8-11', 'A2233', 'corso facoltativo', 'chimica');
/*!40000 ALTER TABLE `lezione` ENABLE KEYS */;

-- Dump della struttura di tabella ql_serie_6.mutuo
CREATE TABLE IF NOT EXISTS `mutuo` (
  `corso_nome` varchar(50) NOT NULL,
  `cdl` varchar(50) NOT NULL,
  `corsoMutuo` varchar(50) DEFAULT NULL,
  `cdlMutuo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`corso_nome`,`cdl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella ql_serie_6.mutuo: ~3 rows (circa)
/*!40000 ALTER TABLE `mutuo` DISABLE KEYS */;
INSERT INTO `mutuo` (`corso_nome`, `cdl`, `corsoMutuo`, `cdlMutuo`) VALUES
	('corso 2', 'italiano', '100', '200'),
	('corso facoltativo', 'italiano', '200', '400'),
	('corso specifico 1', 'chimica', '500', '150');
/*!40000 ALTER TABLE `mutuo` ENABLE KEYS */;

-- Dump della struttura di tabella ql_serie_6.pianodistudi
CREATE TABLE IF NOT EXISTS `pianodistudi` (
  `studente` varchar(50) NOT NULL,
  `corso` varchar(50) NOT NULL,
  `cdl` varchar(50) NOT NULL,
  PRIMARY KEY (`studente`,`corso`,`cdl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella ql_serie_6.pianodistudi: ~4 rows (circa)
/*!40000 ALTER TABLE `pianodistudi` DISABLE KEYS */;
INSERT INTO `pianodistudi` (`studente`, `corso`, `cdl`) VALUES
	('1', 'corso facoltativo', 'italiano'),
	('2', 'corso 2', 'italiano'),
	('3', 'corso facoltativo', 'italiano'),
	('4', 'corso specifico 1', 'chimica');
/*!40000 ALTER TABLE `pianodistudi` ENABLE KEYS */;

-- Dump della struttura di tabella ql_serie_6.sede
CREATE TABLE IF NOT EXISTS `sede` (
  `indirizzo` varchar(50) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`indirizzo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella ql_serie_6.sede: ~3 rows (circa)
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` (`indirizzo`, `telefono`) VALUES
	('montalbani', '102050'),
	('via Lorto', '505050'),
	('via tini ', '5050502');
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;

-- Dump della struttura di tabella ql_serie_6.studente
CREATE TABLE IF NOT EXISTS `studente` (
  `matricola` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `dataImmatricolazione` date NOT NULL,
  `cdl` varchar(50) NOT NULL,
  PRIMARY KEY (`matricola`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella ql_serie_6.studente: ~10 rows (circa)
/*!40000 ALTER TABLE `studente` DISABLE KEYS */;
INSERT INTO `studente` (`matricola`, `nome`, `cognome`, `dataImmatricolazione`, `cdl`) VALUES
	('1', 'Mario', 'Nili', '2018-04-17', 'italiano'),
	('10', 'Tizi', 'Lissi', '2018-04-17', 'Tecnologie Web e Multimediali'),
	('2', 'Miro', 'Loa', '2018-04-15', 'chimica'),
	('3', 'Mario', 'Nili', '2018-04-10', 'fisica'),
	('4', 'Tino', 'Maro', '2018-04-10', 'italiano'),
	('5', 'Erica', 'Maggi', '2018-04-17', 'Tecnologie Web e Multimediali'),
	('6', 'Prisca', 'Basr', '2018-04-17', 'Tecnologie Web e Multimediali'),
	('7', 'Data', 'Lisa', '2018-04-17', 'Tecnologie Web e Multimediali'),
	('8', 'Mila', 'Ma', '2018-04-17', 'Tecnologie Web e Multimediali'),
	('9', 'Mora', 'No', '2018-04-17', 'Tecnologie Web e Multimediali');
/*!40000 ALTER TABLE `studente` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
