SELECT
	a.targa as Targa_automobile,
	COUNT(DISTINCT g.citta) as N_Citta_cus
FROM
	automobile a
	LEFT JOIN
	custodita c
	ON a.targa = c.targaauto
	LEFT JOIN
	garage g
	ON c.codgarage = g.codice
GROUP BY a.targa
ORDER BY a.targa
