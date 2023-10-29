WITH garageAttivi AS (
	SELECT DISTINCT codgarage
	FROM custodita
	--WHERE numero is not null
	ORDER BY codgarage
)
SELECT codgarage, SUM(numero)
FROM custodita
WHERE codgarage IN (SELECT * FROM garageAttivi)
GROUP BY codgarage
HAVING SUM(numero)>10 OR SUM(numero) IS NULL
ORDER BY codgarage