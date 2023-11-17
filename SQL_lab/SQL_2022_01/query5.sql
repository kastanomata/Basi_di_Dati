/*
	Query 5
Per ogni lavoratore che è coinvolto in tutte le attività di almeno un progetto al quale egli partecipa, calcolare il suo numero di matricola.
*/
WITH n_attivita_prg AS (
	SELECT progetto, COUNT(codice) as n_att
	FROM attivita
	GROUP BY progetto
)
SELECT DISTINCT lavoratore
FROM attivita JOIN partecipa on codice = codiceattivita NATURAL JOIN n_attivita_prg
GROUP BY lavoratore, progetto, n_att
HAVING COUNT(codice) = n_att
ORDER BY lavoratore