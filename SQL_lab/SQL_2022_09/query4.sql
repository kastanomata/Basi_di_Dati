/*
	Query 4
Mostrare il codice delle centraline che non hanno prodotto alcuna rilevazione in gennaio.
*/
WITH rilevazione_gennaio AS (
SELECT DISTINCT codice
FROM rilevazione
WHERE giorno <= 31
ORDER BY codice
)
SELECT codice
FROM centralina
WHERE codice NOT IN (SELECT * FROM rilevazione_gennaio)