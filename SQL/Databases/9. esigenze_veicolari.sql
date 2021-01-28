/*
 * Creazione del database di Samuele Ganci e Veljko Markovic.
 */
CREATE DATABASE esigenze_veicolari;
USE esigenze_veicolari;

/*
 * Creazione delle tabelle.
 */
CREATE TABLE compravendita_pezzo(
	id INTEGER PRIMARY KEY,
	marca VARCHAR(25),
	modello VARCHAR(25),
	prezzo FLOAT
);
CREATE TABLE compravendita_veicolo (
	id INTEGER PRIMARY KEY,
	tipo_veicolo VARCHAR(25),
	marca VARCHAR(25),
	modello VARCHAR(25),
	anno INTEGER,
	numero_telaio INTEGER,
	descrizione VARCHAR(25),
	prezzo FLOAT
);
CREATE TABLE cliente (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(25),
	cognome VARCHAR(25),
	data_nascita DATE
);
CREATE TABLE cliente_compravendita_pezzo(
	compravendita_pezzo_id INTEGER,
	cliente_id INTEGER,
	quantita INTEGER,
	data_acquisto DATE,
	PRIMARY KEY (compravendita_pezzo_id, cliente_id),
	FOREIGN KEY (compravendita_pezzo_id) REFERENCES compravendita_pezzo(id),
	FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);
CREATE TABLE cliente_compravendita_veicolo (
	compravendita_veicolo_id INTEGER,
	cliente_id INTEGER,
	data_acquisto DATE,
	PRIMARY KEY (compravendita_veicolo_id, cliente_id),
	FOREIGN KEY (compravendita_veicolo_id) REFERENCES compravendita_veicolo(id),
	FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

/*
 * Inserimento dati.
 */
INSERT INTO compravendita_pezzo (id, marca, modello, prezzo) VALUES (1, 'SPARCO', 'Filtro aria', 12.50);
INSERT INTO compravendita_pezzo (id, marca, modello, prezzo) VALUES (2, 'Turbonetics', 'Turbina', 99.99);
INSERT INTO compravendita_pezzo (id, marca, modello, prezzo) VALUES (3, 'HKS', 'HI Power Exhaust', 200);
INSERT INTO compravendita_pezzo (id, marca, modello, prezzo) VALUES (4, 'HKS', 'Pistoni Forgiati', 800);
INSERT INTO compravendita_veicolo (id, tipo_veicolo, marca, modello, anno, numero_telaio, descrizione, prezzo) VALUES (1, 'Automobile', 'Nissan', 'Skyline R34 GTR', 1999, 3453234, '15000 Km Twin Turbo', 84000);
INSERT INTO compravendita_veicolo (id, tipo_veicolo, marca, modello, anno, numero_telaio, descrizione, prezzo) VALUES (2, 'Motocicletta', 'Honda', 'CBR 1000 RR', 2005, 235234, '8000 Km', 13400);
INSERT INTO compravendita_veicolo (id, tipo_veicolo, marca, modello, anno, numero_telaio, descrizione, prezzo) VALUES (3, 'Automobile', 'Honda', 'Civic', 1997, 1243462, '80000 Km', 12000);
INSERT INTO compravendita_veicolo (id, tipo_veicolo, marca, modello, anno, numero_telaio, descrizione, prezzo) VALUES (4, 'Automobile', 'Toyota', 'Supra MK4 RZ', 1995, 214135, '800 Km Twin Turbo Manual', 80000);
INSERT INTO cliente (id, nome, cognome, data_nascita) VALUES (1, 'Pippo', 'Bianco', '2003-10-12');
INSERT INTO cliente (id, nome, cognome, data_nascita) VALUES (2, 'Paolo', 'Rossi', '2003-11-11');
INSERT INTO cliente (id, nome, cognome, data_nascita) VALUES (3, 'Pinco', 'Pallino', '2003-08-01');
INSERT INTO cliente (id, nome, cognome, data_nascita) VALUES (4, 'Sergio', 'Verdi', '2003-09-27');
INSERT INTO cliente_compravendita_pezzo (compravendita_pezzo_id, cliente_id, quantita, data_acquisto) VALUES (2, 1, 1, '2020-06-01');
INSERT INTO cliente_compravendita_pezzo (compravendita_pezzo_id, cliente_id, quantita, data_acquisto) VALUES (3, 1, 1, '2020-06-01');
INSERT INTO cliente_compravendita_pezzo (compravendita_pezzo_id, cliente_id, quantita, data_acquisto) VALUES (4, 3, 6, '2020-06-01');
INSERT INTO cliente_compravendita_pezzo (compravendita_pezzo_id, cliente_id, quantita, data_acquisto) VALUES (1, 4, 1, '2020-06-01');
INSERT INTO cliente_compravendita_veicolo (compravendita_veicolo_id, cliente_id, data_acquisto) VALUES (1, 1, '2020-06-01');
INSERT INTO cliente_compravendita_veicolo (compravendita_veicolo_id, cliente_id, data_acquisto) VALUES (2, 1, '2020-06-01');
INSERT INTO cliente_compravendita_veicolo (compravendita_veicolo_id, cliente_id, data_acquisto) VALUES (4, 3, '2020-06-01');
INSERT INTO cliente_compravendita_veicolo (compravendita_veicolo_id, cliente_id, data_acquisto) VALUES (3, 2, '2020-06-01');

