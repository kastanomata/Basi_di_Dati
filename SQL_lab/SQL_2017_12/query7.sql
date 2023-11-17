/*
	Query 7
Calcolare il codice, il cognome e il numero dei gol (rispettando quest'ordine) dei giocatori che hanno giocato nel Milan e in nessuna altra squadra.
*/
WITH only_milan_players AS (
	SELECT codiceg as codice, cognome
	FROM giocato JOIN giocatore on codiceg = codice
	WHERE nomes = 'Milan' AND codiceg NOT IN (
		SELECT codiceg FROM giocato WHERE nomes <> 'Milan')
)
SELECT codice, cognome, SUM(gol)
FROM only_milan_players JOIN giocato ON codice = codiceg
GROUP BY codice, cognome
	

