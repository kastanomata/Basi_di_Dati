/*
WITH garageAttivi AS (
	SELECT DISTINCT codgarage
	FROM custodita
	WHERE numero is not null
	ORDER BY codgarage
)
*/
SELECT codgarage, SUM(numero)
FROM custodita
WHERE codgarage IN  (SELECT DISTINCT codgarage
					FROM custodita
					WHERE numero is not null
					ORDER BY codgarage)
GROUP BY codgarage
ORDER BY codgarage