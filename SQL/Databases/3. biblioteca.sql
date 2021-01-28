-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              10.1.21-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win32
-- HeidiSQL Versione:            9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dump della struttura del database biblioteca
CREATE DATABASE IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `biblioteca`;


-- Dump della struttura di tabella biblioteca.autore
CREATE TABLE IF NOT EXISTS `autore` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `cognome` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella biblioteca.autore: ~4 rows (circa)
/*!40000 ALTER TABLE `autore` DISABLE KEYS */;
INSERT INTO `autore` (`id`, `nome`, `cognome`) VALUES
	(1, 'Mario', 'Cipolla'),
	(2, 'Lorenzo', 'Mazzi'),
	(3, 'Pippolo', 'Luppo'),
	(4, 'Grillo', 'Spiol');
/*!40000 ALTER TABLE `autore` ENABLE KEYS */;


-- Dump della struttura di tabella biblioteca.casaeditrice
CREATE TABLE IF NOT EXISTS `casa_editrice` (
  `id` int(11) NOT NULL,
  `sede` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella biblioteca.casa_editrice: ~4 rows (circa)
/*!40000 ALTER TABLE `casa_editrice` DISABLE KEYS */;
INSERT INTO `casa_editrice` (`id`, `sede`) VALUES
	(1, 'Milano'),
	(2, 'Roma'),
	(3, 'Locarno'),
	(4, 'Genova');
/*!40000 ALTER TABLE `casa_editrice` ENABLE KEYS */;


-- Dump della struttura di tabella biblioteca.edizione
CREATE TABLE IF NOT EXISTS `edizione` (
  `anno` int(11) DEFAULT NULL,
  `casa_editrice_id` int(11) NOT NULL,
  `libro_id` varchar(20) NOT NULL,
  PRIMARY KEY (`casa_editrice_id`,`libro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella biblioteca.edizione: ~5 rows (circa)
/*!40000 ALTER TABLE `edizione` DISABLE KEYS */;
INSERT INTO `edizione` (`anno`, `casa_editrice_id`, `libro_id`) VALUES
	(1990, 1, '1'),
	(1991, 1, '2'),
	(1995, 2, '3'),
	(2000, 2, '4'),
	(2017, 3, '4');
/*!40000 ALTER TABLE `edizione` ENABLE KEYS */;


-- Dump della struttura di tabella biblioteca.lettore
CREATE TABLE IF NOT EXISTS `lettore` (
  `id` int(11) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `cognome` varchar(20) DEFAULT NULL,
  `indirizzo` varchar(20) DEFAULT NULL,
  `NAP` int(11) DEFAULT NULL,
  `citta` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella biblioteca.lettore: ~3 rows (circa)
/*!40000 ALTER TABLE `lettore` DISABLE KEYS */;
INSERT INTO `lettore` (`id`, `telefono`, `nome`, `cognome`, `indirizzo`, `NAP`, `citta`) VALUES
	(1, '0916589877', 'Nic', 'Bernasconi', 'via liouz', 6900, 'Lugano'),
	(2, '0914789547', 'Luc', 'Besson', 'via ssede', 6600, 'Locarno'),
	(3, '078954897', 'Marc', 'Arret', 'via Lodi', 6500, 'Bellinzona'),
	(4, '0915689898', 'Livia', 'Martello', 'via Balla', 6500, 'Bellinzona');
/*!40000 ALTER TABLE `lettore` ENABLE KEYS */;


-- Dump della struttura di tabella biblioteca.libro
CREATE TABLE IF NOT EXISTS `libro` (
  `id` varchar(20) NOT NULL,
  `titolo` varchar(20) DEFAULT NULL,
  `prestito` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella biblioteca.libro: ~4 rows (circa)
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` (`id`, `titolo`, `prestito`) VALUES
	('1', 'idiota', 1),
	('2', 'La notte', 1),
	('3', 'babau', 0),
	('4', 'Cento anni', 0);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;


-- Dump della struttura di tabella biblioteca.riserva
CREATE TABLE IF NOT EXISTS `legge` (
  `lettore_id` int(11) DEFAULT NULL,
  `da` date DEFAULT NULL,
  `a` date DEFAULT NULL,
  `libro_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella biblioteca.riserva: ~0 rows (circa)
/*!40000 ALTER TABLE `legge` DISABLE KEYS */;
INSERT INTO `legge` (`lettore_id`, `libro_id`) VALUES
	(1, '1'),
	(1, '2'),
	(2,'2'),
	(3, '3'),
	(3, '2');
/*!40000 ALTER TABLE `legge` ENABLE KEYS */;


/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
