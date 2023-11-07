/*
	Query 4
Calcolare, per ogni squadra con prestigio minore di 3, il numero di giocatori che hanno fatto più di 10 gol per quella squadra, mostrando il nome della squadra e il numero di tali giocatori.
*/
WITH squadra_pres_m3 AS (
	SELECT nome
	FROM squadra
	WHERE prestigio < 3
)
SELECT nome, COUNT(codiceg)
FROM squadra_pres_m3 JOIN giocato on nome = nomes
WHERE gol > 10
GROUP BY nome
ORDER BY nome
