/*
	Query 6
Calcolare, per ogni libro con più di 15 copie vendute, il numero degli autori aventi un'età maggiore di 40 anni, mostrando il titolo del libro e il numero di tali autori.
*/
WITH libro_15 AS (
	SELECT *
	FROM libro
	WHERE copievendute>15
),
	autore_40 AS (
	SELECT *
	FROM autore
	WHERE eta>40
)
SELECT DISTINCT titolo, COUNT(codice)
FROM (autore_40 JOIN scritto ON codice = codicea) NATURAL JOIN libro_15
GROUP BY titolo


