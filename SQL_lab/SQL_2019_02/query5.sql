/*
	Query 5
Chiamiamo "livello di inquinamento" di un'area geografica la media dei valori rilevati nell'anno dalle centraline di quell'area geografica. Mostrare, senza ripetizioni, le regioni che hanno avuto un livello di inquinamento minore del livello di inquinamento del territorio nazionale.
*/

WITH liv_inquinamento_naz AS (
	SELECT AVG(valore) as inquinamento_naz
	FROM rilevazione
), liv_inquinamento_reg AS (
	SELECT regione, AVG(valore) as avg_inquinamento
	FROM centralina NATURAL JOIN rilevazione JOIN citta on centralina.citta = citta.id
	GROUP BY regione
)
SELECT DISTINCT *
FROM liv_inquinamento_reg
WHERE avg_inquinamento < (SELECT * FROM liv_inquinamento_naz)