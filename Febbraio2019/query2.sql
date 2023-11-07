/*
	Query 2
Per ogni centralina, mostrare il codice della centralina, il nome della regione a cui appartiene cd il valore medio prodotto dalle rilevazioni.
*/
WITH centralina_cityinfo AS (
	SELECT codice, tipo, id id_citta, nome nome_citta, regione regione_citta
	FROM centralina JOIN citta ON citta = id
	ORDER BY codice
)

SELECT codice, regione_citta, AVG(valore)
FROM centralina_cityinfo NATURAL LEFT JOIN rilevazione
GROUP BY codice, regione_citta
ORDER BY codice