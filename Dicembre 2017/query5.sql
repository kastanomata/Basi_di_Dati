/*
	Query 5
Per ogni squadra con prestigio maggiore o uguale a 4, calcolare la media dei gol fatti dai suoi giocatori, mostrando il nome della squadra e tale media.
*/
SELECT nome, AVG(gol)
FROM squadra JOIN giocato on nome = nomes
WHERE prestigio >= 4
GROUP BY nome
ORDER BY nome
