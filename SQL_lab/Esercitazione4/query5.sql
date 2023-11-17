WITH casa AS (
	SELECT DISTINCT targa, codice
	FROM automobile JOIN garage ON automobile.citta = garage.citta
	ORDER BY targa
)
SELECT DISTINCT targaauto, SUM(numero)
FROM custodita
WHERE (targaauto, codgarage) in (SELECT * FROM casa)
GROUP BY targaauto