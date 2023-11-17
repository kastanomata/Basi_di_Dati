/*
	Query 3
Per ogni giocattolo che ha avuto almeno una richiesta, mostrare il codice del giocattolo, la categoria a cui appartiene e la media delle preferenze con le quali è stato richiesto.
*/
SELECT DISTINCT codice::int, categoria, AVG(preferenza)
FROM richiesta JOIN giocattolo ON codiceg = codice
GROUP BY codice, categoria
ORDER BY codice
