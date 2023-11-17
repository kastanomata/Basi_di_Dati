/*
	Query 6
Mostrare, per ogni giocatore con età maggiore o uguale a 28 anni, il codice e la media dei gol fatti nelle squadre, ma restringendo l'attenzione solo sui giocatori la cui media è superiore a 15.
*/
SELECT codice, AVG(gol)
FROM giocatore JOIN giocato on codice = codiceg
WHERE eta >= 28
GROUP BY codice
HAVING AVG(gol)>15
ORDER BY codice