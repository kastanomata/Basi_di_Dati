/*
	Query 10
Per ogni automobile mostrare il codice di ogni garage nel quale è stata custodita il maggior numero di volte (ovviamente maggiore di 0). Ad esempio, se i garage gl, g2 e g3 sono quelli in cui è stata custodita l'automobile t, ed in particolare t è stata custodita 3 volte nel garage gl, 1 volta nel garage g2 e 3 volte nel garage g3, allora nel risultato dovranno comparire le tuple <t,gl> e <t,g3>.
*/
WITH targa_max AS (
	SELECT targaauto, MAX(numero)
	FROM custodita
	GROUP BY targaauto
	ORDER BY targaauto
)
SELECT targaauto, codgarage
FROM custodita
WHERE (targaauto, numero) in (SELECT * FROM targa_max)
ORDER BY targaauto
