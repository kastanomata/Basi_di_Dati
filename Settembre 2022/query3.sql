/*
	Query 3
Per ogni centralina, mostrare il codice della centralina, il nome della regione in cui è situata ed il numero di rilevazioni che ha prodotto.
*/
SELECT codice, regione, 0
FROM centralina JOIN citta on citta = id
WHERE codice not in (SELECT codice FROM rilevazione)
UNION
SELECT DISTINCT codice, regione, COUNT(*)
FROM rilevazione NATURAL JOIN centralina JOIN citta on citta = id
GROUP BY codice, regione
ORDER BY codice