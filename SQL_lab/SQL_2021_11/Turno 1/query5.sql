/*
	QUERY 5
Calcolare, per ogni giocattolo che è stato richiesto solo da bambini non residenti a Firenze, la media delle preferenze con cui è stato richiesto, mostrando il codice del giocattolo e la media calcolata. Ovviamente si accetta il valore "null" per la media.
*/
WITH giocattoli_Firenze AS (
	SELECT DISTINCT codiceg
	FROM richiesta JOIN bambino ON codice = codiceb
	WHERE citta = 'Firenze'
	ORDER BY codiceg
)
SELECT codice, null as avg_preferenza
FROM giocattolo
WHERE codice NOT IN (SELECT codiceg from richiesta) AND codice NOT IN (SELECT * FROM giocattoli_Firenze)
UNION
SELECT codiceg, AVG(preferenza)
FROM richiesta
WHERE codiceg NOT IN (SELECT * FROM giocattoli_Firenze)
GROUP BY codiceg
ORDER BY codice

