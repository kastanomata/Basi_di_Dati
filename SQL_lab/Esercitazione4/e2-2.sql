/*
per ogni automobile A e per ogni garage G che si trova a Roma, aggiungere 1 al numero di volte in cui A è stata custodita in G.
*/
WITH garage_romani AS(
	SELECT *
	FROM garage
	WHERE citta = 'Roma'
)
UPDATE custodita
SET numero = numero + 1
WHERE codgarage IN (SELECT codice FROM garage_romani)
;

