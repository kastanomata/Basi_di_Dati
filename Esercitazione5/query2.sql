/*
	Query 2
Calcolare codice e cognome degli autori con età inferiore a 30 anni che hanno scritto almeno un libro con più di 20 copie vendute.
*/

SELECT DISTINCT codicea, cognome
FROM (scritto NATURAL JOIN libro) JOIN autore on codicea = codice
WHERE eta<30 AND copievendute>20
ORDER BY codicea
