/*
	Query 1
Calcolare, evitando le ripetizioni, il codice dei giocatori che hanno giocato in almeno una squadra con prestigio minore di 3.
*/
SELECT DISTINCT codiceg
FROM giocato JOIN squadra on nome = nomes
WHERE prestigio < 3