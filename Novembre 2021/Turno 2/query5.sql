/*
	Query 5
Calcolare, per ogni bambino che ha richiesto solo giocattoli di categoria 1 la media delle preferenze espresse nelle proprie richieste, mostrando il codice del bambino e la media calcolata. Ovviamente, si accetta il valore "null" per la media.
*/
WITH bambini_categoria1 AS (
	-- bambini che hanno richiesto solo giocattoli di categoria 1
	SELECT codice 
	FROM bambino
	EXCEPT 
	SELECT DISTINCT codiceb
	FROM richiesta JOIN giocattolo on codiceg = codice
	WHERE categoria <> 1
	ORDER BY codice
)
SELECT codiceb, AVG(preferenza)
FROM bambini_categoria1 JOIN richiesta ON codice = codiceb
GROUP BY codiceb