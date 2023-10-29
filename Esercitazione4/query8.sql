WITH tutteCitta as(
	SELECT DISTINCT citta FROM automobile
	UNION
	SELECT DISTINCT citta FROM garage
)
SELECT DISTINCT targa, tutteCitta.citta
FROM automobile CROSS JOIN tutteCitta
EXCEPT
SELECT DISTINCT targaauto, garage.citta
FROM custodita JOIN garage ON codgarage = codice