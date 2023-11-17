/*
	Query 5
Calcolare per ogni autore la media delle copie vendute tra i libri scritti da lui, mostrando il codice dell' autore e tale media.
*/

SELECT DISTINCT codice, 0
FROM autore
WHERE codice NOT IN (SELECT DISTINCT codicea FROM scritto)
UNION
SELECT DISTINCT codicea, AVG(copievendute)
FROM scritto NATURAL JOIN libro
GROUP BY codicea
ORDER BY codice


