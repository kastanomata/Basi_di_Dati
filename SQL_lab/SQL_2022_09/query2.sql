/*
	Query 2
Mostrare il nome (non l'id) delle città con almeno due centraline dello stesso tipo.
*/
/*
INSERT INTO centralina VALUES
('C12',1,'ID5'),
('C13',1,'ID5');
DELETE FROM centralina WHERE 
(codice, tipo, citta) = ('C12',1,'ID5') OR 
(codice, tipo, citta) = ('C13',1,'ID5');
*/
SELECT DISTINCT nome
FROM (centralina c1 JOIN centralina c2 ON (c1.tipo = c2.tipo AND c1.codice > c2.codice)) JOIN citta on id = c1.citta
WHERE c1.citta = c2.citta


	