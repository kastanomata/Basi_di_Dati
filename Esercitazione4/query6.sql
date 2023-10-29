WITH automobiliRomane AS (
	SELECT DISTINCT * 
	FROM automobile
	WHERE citta = 'Roma'
)
SELECT DISTINCT codice 
FROM garage
EXCEPT
SELECT DISTINCT codgarage
FROM custodita
WHERE targaauto in (SELECT targa FROM automobiliRomane)
ORDER BY codice