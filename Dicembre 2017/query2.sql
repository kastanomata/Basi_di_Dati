/*
	Query 2
Calcolare la lista senza ripetizioni di codice e cognome dei giocatori che hanno fatto più di 20 gol in almeno una squadra con prestigio maggiore o uguale a 4.
*/
SELECT DISTINCT codice, cognome
FROM giocatore JOIN giocato ON codice = codiceg 
	JOIN squadra on nomes = nome
WHERE prestigio >= 4 AND gol > 20
