/*
	Query 4
Mostrare, senza ripetizioni, il codice delle centraline tali che tutte le rilevazioni che hanno prodotto sono state prodotte nei primi 90 giorni.
*/
WITH rilevazioni_post_marzo AS (
	SELECT DISTINCT codice
	FROM rilevazione 
	WHERE giorno > 90
)
SELECT codice
FROM centralina
WHERE codice NOT IN (SELECT * FROM rilevazioni_post_marzo)
ORDER BY codice