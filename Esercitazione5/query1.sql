/*
	Query 1
Calcolare il codice degli autori che hanno scritto almeno un libro con più di 10 copie vendute.
*/
SELECT DISTINCT codicea
FROM scritto NATURAL JOIN libro
WHERE copievendute>10
ORDER BY codicea