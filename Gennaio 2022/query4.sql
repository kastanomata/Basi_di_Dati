/*
	Query 4
Per ogni lavoratore e per ogni progetto mostrare il numero di matricola del lavoratore, il nome del progetto e l'impegno in giorni di quel lavoratore in quel progetto, dove tale impegno in giorni è dato dalla somma delle durate delle attività appartenenti a quel progetto nelle quali quel lavoratore è coinvolto.
*/
WITH lavoratore_sum AS (
	SELECT lavoratore, progetto, SUM(durata)
	FROM partecipa JOIN attivita ON codiceattivita = codice
	GROUP BY lavoratore, progetto
	ORDER BY lavoratore, progetto
), progetto AS (
	SELECT DISTINCT progetto
	FROM attivita
), lavoratore AS (
	SELECT DISTINCT lavoratore
	FROM partecipa
)
SELECT lavoratore, progetto, 0
FROM lavoratore CROSS JOIN progetto
WHERE (lavoratore, progetto) NOT IN (SELECT lavoratore, progetto FROM lavoratore_sum)
UNION
SELECT *
FROM lavoratore_sum
ORDER BY lavoratore, progetto

