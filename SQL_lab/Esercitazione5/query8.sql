/*
	Query 8
Mostrare il codice ed il cognome (o i codici e i cognomi, se sono più d'uno) degli autori i quali, complessivamente con i libri da loro scritti, hanno registrato il maggior numero di copie vendute.
*/
WITH sum_copie AS (
	SELECT DISTINCT titolo, SUM(copievendute) s
	FROM scritto NATURAL JOIN libro
	GROUP BY titolo,codicea
	ORDER BY titolo
)
SELECT DISTINCT codice, cognome
FROM (autore JOIN scritto ON codice = codicea) NATURAL JOIN sum_copie 
WHERE titolo NOT IN (
SELECT DISTINCT b.titolo
FROM sum_copie a CROSS JOIN sum_copie b
WHERE a.titolo <> b.titolo AND a.s > b.s
)

