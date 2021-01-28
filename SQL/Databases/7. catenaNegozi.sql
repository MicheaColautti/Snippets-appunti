/**
 *catena di negozi per database: michea e lorenzo

 *tabella cliente --> id, nome , cognome , data-nascita, indirizzo(citta ,via), carta_credito

 *acquista(ponte) --> id_prodotto , id_cliente , data_acquisto, quantita,  id_acquisto (PK)

 *prodotto --> nome, id , marca, modello , prezzo , disponibilita
 */


DROP DATABASE IF EXISTS catena_negozi;
CREATE DATABASE catena_negozi;
USE catena_negozi;
/****************CLIENTE****************/
DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente (
    id INT (11) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (20),
    cognome VARCHAR(20),
    data_nascita DATE,
    citta VARCHAR (20),
    via VARCHAR (40),
    carta_credito BIGINT(10)
	);
/**************DATI_CLIENTE**************/
INSERT INTO cliente(nome,cognome,data_nascita,citta,via,carta_credito)VALUES 
('Amedeo' , 'Stilton', '1979-09-30' , 'Lugano','Centro 9', 5610984638623409),
('Aldo' , 'Baglio', '1950-04-10' , 'Napoli','Stretta 8', 6910543981640846),
('Giacomo' , 'Poretti', '1965-12-12' , 'Milano','Duomo 13', 2548910548982345),
('Giovanni' , 'Storti', '1965-01-20' , 'Pizzo Calabro','Washington 10', 7775554443331234),
('Paolo','Rossi','1995-06-07','Lugano','Mercoli 18',1111222233334444);





/****************PRODOTTO****************/
DROP TABLE IF EXISTS prodotto;
CREATE TABLE prodotto(
    id INT(11) AUTO_INCREMENT,
    nome VARCHAR(20),
    marca VARCHAR(20),
    modello VARCHAR(20),
    prezzo INT(8),
    disponibilita INT(20),
    PRIMARY KEY(id)
    
);
/**************DATI_PRODOTTO**************/
INSERT INTO prodotto(nome,marca,modello,prezzo,disponibilita) VALUES
('Asus 5','Asus','A555',650,15),
('MacBook','Apple','Pro',3200,20),
('Dell Infinity','DELL','DELL 300',400,8),
('MacBook','Apple','Air',1500,20),
('HP Beyond','HP','HP40',900,30);




/****************ACQUISTA****************/
DROP TABLE IF EXISTS acquista;
CREATE TABLE acquista(
    id_acquisto INT(11) AUTO_INCREMENT,
    id_prodotto INT(11),
    id_cliente INT(11),
    data_acquisto DATE,
    quantita INT(20),
    PRIMARY KEY(id_acquisto),
    FOREIGN KEY (id_prodotto) REFERENCES prodotto(id),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);
/**************DATI_ACQUISTA**************/
INSERT INTO acquista(id_prodotto,id_cliente,data_acquisto,quantita) VALUES
(2,4,'2020-04-20',1),
(1,2,'2020-02-10',4),
(5,3,'2019-10-12',2),
(4,5,'2018-09-05',1),
(5,5,'2020-02-17',2),
(2,3,'2012-01-11',3),
(3,1,'2019-06-21',5),
(1,2,'2018-10-08',1),
(4,4,'2017-04-19',5);
