/*
	Query 4
Calcolare, per ogni autore con età maggiore di 30 anni, il codice dell'autore ed il numero di copie vendute considerando tutti i suoi libri scritti, ma restringendo l'attenzione solo agli autori che hanno scritto almeno 2 libri.
*/
WITH autori_vecchi AS (
	SELECT *
	FROM autore
	WHERE eta>30
)
SELECT DISTINCT codice, SUM(copievendute) copietotali
FROM (autori_vecchi JOIN scritto on codicea = codice) NATURAL JOIN libro
GROUP BY codice
ORDER BY codice


