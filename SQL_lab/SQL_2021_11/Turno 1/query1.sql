/*
	Query 1
Calcolare il codice ed il nome dei bambini che non risiedono a Milano e che hanno fatto almeno una richiesta con preferenza maggiore o uguale a 4.
*/
SELECT DISTINCT codice, nome
FROM bambino JOIN richiesta on codiceb = codice
WHERE citta <> 'Milano' AND preferenza >= 4
ORDER BY codice