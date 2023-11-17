/*
	Query 9
Diciamo che un autore è famoso se ha scritto almeno 2 libri con più di IO copie vendute. Calcolare i libri tutti gli autori dei quali sono famosi.
*/
WITH autori_famosi AS (
	SELECT DISTINCT codicea
	FROM scritto NATURAL JOIN libro
	WHERE copievendute > 10
	GROUP BY codicea
	HAVING COUNT(*) >= 2
	ORDER BY codicea
)
SELECT DISTINCT titolo
FROM scritto
EXCEPT
SELECT DISTINCT titolo
FROM scritto 
WHERE codicea NOT IN (SELECT * FROM autori_famosi)
ORDER BY titolo