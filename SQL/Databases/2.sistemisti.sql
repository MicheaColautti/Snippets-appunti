/*
SQLyog Community v8.61 
MySQL - 5.1.50-community : Database - sistemisti
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sistemisti` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sistemisti`;

/*Table structure for table `aula` */

DROP TABLE IF EXISTS `aula`;

CREATE TABLE `aula` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `piano` int(10) DEFAULT NULL,
  `numero_postazioni` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `aula` */

insert  into `aula`(`id`,`piano`,`numero_postazioni`) values (1,3,4),(2,1,5),(3,2,6),(4,2,7);

/*Table structure for table `software` */

DROP TABLE IF EXISTS `software`;

CREATE TABLE `software` (
  `seriale` varchar(50),
  `nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seriale`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `software` */

insert  into `software`(`seriale`,`nome`) values ('sjks','Windows 7'),('kd','Windows xp'),('oeopaoslej','Office photo editor'),('poppo','Photo Planetarium');

/*Table structure for table `pc` */

DROP TABLE IF EXISTS `pc`;

CREATE TABLE `pc` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modello` varchar(10) DEFAULT NULL,
  `processore` varchar(10) DEFAULT NULL,
  `aula_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`aula_id`) REFERENCES `aula` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pc` */

insert  into `pc`(`id`,`modello`,`processore`,`aula_id`) values (1,'Athlon','AMD',1),(2,'Lenovo','Intel',2),(3,'Lenovo','Intel',2),(4,'Athlon','Pentium',1),(5,'i7','Pentium',3);


/*Table structure for table `installazione` */

DROP TABLE IF EXISTS `installazione`;

CREATE TABLE `installazione` (
  `pc_id` int(10) NOT NULL DEFAULT '0',
  `software_seriale` VARCHAR(50) NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`pc_id`,`software_seriale`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `installazione` */

insert  into `installazione`(`pc_id`,`software_seriale`,`data`) values (1,'sjks','2011-11-08'),(2,'kd','2011-11-11'),(3,'kd','2011-11-02'),(3,'oeopaoslej','2011-11-11'),(4,'oeopaoslej','2011-10-16');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

