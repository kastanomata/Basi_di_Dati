/*
	Query 3
Calcolare il codice ed il cognome degli autori che non hanno scritto alcun libro con più di IO copie vendute.
*/
WITH autori_famosi AS (
	SELECT *
	FROM libro NATURAL JOIN scritto
	WHERE copievendute > 10
)
SELECT DISTINCT codice, cognome
FROM autore
WHERE codice not in (SELECT DISTINCT codicea FROM autori_famosi)
ORDER BY codice

