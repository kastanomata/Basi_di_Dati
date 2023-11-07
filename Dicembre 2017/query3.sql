/*
	Query 3
Calcolare il codice e il cognome dei giocatori che non hanno fatto alcun gol.
*/
WITH more_than_0_goals AS (
	SELECT DISTINCT codiceg
	FROM giocato
	WHERE gol > 0
)
SELECT DISTINCT codice, cognome
FROM giocatore
WHERE codice NOT IN (SELECT * FROM more_than_0_goals)
