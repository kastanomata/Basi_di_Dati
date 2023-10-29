WITH coppieDiversaCitta AS (
	SELECT DISTINCT targa, codice
	FROM automobile JOIN garage on automobile.citta <> garage.citta
	ORDER BY targa
)
SELECT DISTINCT codice
FROM garage
EXCEPT
SELECT DISTINCT codgarage
FROM custodita
WHERE (targaauto, codgarage) IN (SELECT * FROM coppieDiversaCitta)
ORDER BY codice