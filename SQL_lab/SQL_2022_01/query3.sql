/*
	Query 3
Per ogni lavoratore mostrare il numero di matricola ed il numero medio di attività che appartengono ai progetti ai quali il lavoratore partecipa.
*/
WITH progetti_lavoratore AS (
	SELECT DISTINCT lavoratore, progetto
	FROM partecipa JOIN attivita ON codice = codiceattivita
	ORDER BY lavoratore
), n_attivita_progetto AS (
	SELECT progetto, COUNT(DISTINCT codice) as n_attivita
	FROM attivita
	GROUP BY progetto
)
SELECT lavoratore, AVG(n_attivita)
FROM progetti_lavoratore NATURAL JOIN n_attivita_progetto
GROUP BY lavoratore
ORDER BY lavoratore
