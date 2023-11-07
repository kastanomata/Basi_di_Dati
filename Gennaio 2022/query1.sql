/*
	Query 1
Calcolare il numero di matricola dei lavoratori che sono coinvolti in almeno un'attività la cui durata è maggiore di IO giorni.
*/
SELECT DISTINCT lavoratore as matricola
FROM partecipa JOIN attivita ON codiceattivita = codice
WHERE durata >10
ORDER BY lavoratore