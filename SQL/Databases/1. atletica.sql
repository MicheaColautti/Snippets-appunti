/*
SQLyog Community v8.61 
MySQL - 5.1.50-community : Database - atletica
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/atletica /*!40100 DEFAULT CHARACTER SET latin1 */;

USE atletica;

/*Table structure for table atleta */

DROP TABLE IF EXISTS atleta;

CREATE TABLE atleta (
  id int(11) NOT NULL,
  nome varchar(50) DEFAULT NULL,
  cognome varchar(50) DEFAULT NULL,
  statura varchar(50) DEFAULT NULL,
  peso int(11) DEFAULT NULL,
  data_nascita date DEFAULT NULL,
  nazione varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table atleta */

insert  into atleta(id,nome,cognome,statura,peso,data_nascita,nazione) values (1,'Luca','May','1.50',66,'2000-01-01','Svizzera'),(2,'Maria','Callas','1.45',95,'1990-05-10','Svizzera'),(3,'Laura','Pistol','1.90',110,'1995-10-10','Italia'),(4,'Paolo','Riva','1.33',110,'1977-11-11','Marocco'),(5,'Mara','Gara','1.77',70,'1988-11-10','Italia'),(6,'Luigia','Maigia','1.88',80,'1989-05-05','Italia');

/*Table structure for table finale */

DROP TABLE IF EXISTS finale;

CREATE TABLE finale (
  atleta_id int(11) NOT NULL,
  specialita_id int(11) NOT NULL,
  prestazione int(11) DEFAULT NULL,
  PRIMARY KEY (atleta_id,specialita_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table finale */

insert  into finale(atleta_id,specialita_id,prestazione) values (1,1,3),(2,1,2),(2,2,2),(3,1,1),(4,2,1),(5,2,3),(6,2,4);

/*Table structure for table specialita */

DROP TABLE IF EXISTS specialita;

CREATE TABLE specialita (
  id int(11) NOT NULL,
  nome varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table specialita */

insert  into specialita(id,nome) values (1,'100 m'),(2,'400 m ad ostacoli');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
