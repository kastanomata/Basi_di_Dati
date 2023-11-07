/*
	Query 10
Diciamo che un autore è solitario se ha scritto solo libri a firma singola. Calcolare il codice ed il cognome di tutti gli autori famosi e non solitari.
*/
WITH autori_famosi AS (
	SELECT DISTINCT codicea
	FROM scritto NATURAL JOIN libro
	WHERE copievendute > 10
	GROUP BY codicea
	HAVING COUNT(*) >= 2
	ORDER BY codicea
), autori_solitari AS (
	SELECT DISTINCT a.codicea
	FROM scritto a JOIN scritto b ON (a.titolo = b.titolo AND a.codicea <> b.codicea)
)
