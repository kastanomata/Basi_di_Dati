/*
	Query 5
Per ogni città, mostrare il nome della città ed il primo giorno dell'anno in cui almeno una delle centraline situate in quella città ha rilevato un valore di inquinamento maggiore di 500, mostrando "null" nel caso in cui un tale valore non è stato mai rilevato nelle centraline di quella città.
*/
WITH rilevazione500plus AS (
	SELECT id, nome, codice, giorno, valore
	FROM citta JOIN centralina a ON id = citta 
	NATURAL JOIN rilevazione
	WHERE valore > 500
	ORDER BY nome, giorno
)
SELECT nome, null as giorno_min
FROM citta
WHERE nome NOT IN (SELECT nome FROM rilevazione500plus)
UNION
SELECT nome, MIN(giorno)
FROM rilevazione500plus
GROUP BY nome
