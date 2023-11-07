/*
	Query 3
Per ogni bambino che ha fatto almeno una richiesta, mostrare il codice del bambino, la città in cui risiede ed il numero di richieste che ha fatto con preferenza 1.
*/
SELECT DISTINCT codice, citta, COUNT(*)
FROM richiesta JOIN bambino on codiceb = codice
WHERE preferenza = 1
GROUP BY codice, citta
