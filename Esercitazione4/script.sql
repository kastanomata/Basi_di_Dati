DROP TABLE IF EXISTS automobile CASCADE;
CREATE TABLE automobile(
	targa varchar(3) PRIMARY KEY,
	cilindrata int,
	citta varchar(20) NOT NULL,
	CHECK(cilindrata>0)
);

DROP TABLE IF EXISTS garage CASCADE;
CREATE TABLE garage(
	codice varchar(3) PRIMARY KEY,
	citta varchar(20)
);

DROP TABLE IF EXISTS custodita CASCADE;
CREATE TABLE custodita(
	targaauto varchar(3),
	codgarage varchar(3),
	numero int,
	PRIMARY KEY(targaauto, codgarage),
	FOREIGN KEY(targaauto) REFERENCES automobile(targa),
	FOREIGN KEY(codgarage) REFERENCES garage(codice)
);

INSERT INTO automobile VALUES 
('A1', 500, 'Roma'),
('A2', 1200, 'Roma'),
('A3', 900, 'Milano'),
('A4', 1000, 'Firenze'),
('A5', 2000, 'Palermo'),
('A6', 3000, 'Torino'),
('A7', 2000, 'Torino'),
('A8', 4000, 'Roma'),
('A9', 4000, 'Napoli'),
('A10', 2500, 'Siena');

INSERT INTO garage VALUES
('G1', 'Roma'),
('G2', 'Firenze'),
('G3', 'Firenze'),
('G4', 'Milano'),
('G5', 'Milano'),
('G6', 'Palermo'),
('G7', 'Roma'),
('G8', 'Palermo'),
('G9', 'Roma'),
('G10', 'Milano'),
('G11', 'Roma'),
('G12', 'Siena');

INSERT INTO custodita VALUES
('A1', 'G1', 2),
('A1', 'G2', 1),
('A3', 'G5', 1),
('A2', 'G6', 15),
('A2', 'G7', 17),
('A5', 'G6', 18),
('A5', 'G1', 2),
('A4', 'G3', 1),
('A6', 'G1', 1),
('A5', 'G8', 1),
('A8', 'G9', NULL),
('A8', 'G2', 3),
('A10', 'G12', 5);