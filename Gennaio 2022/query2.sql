/*
	Query 2
Per ogni progetto mostrare il nome del progetto ed il numero di lavoratori che partecipano a quel progetto.
*/
SELECT DISTINCT progetto, COUNT(*)
FROM partecipa JOIN attivita ON codiceattivita = codice
GROUP BY progetto
ORDER BY progetto