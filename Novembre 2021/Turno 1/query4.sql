/*
	QUERY 4
Per ogni bambino e per ogni giocattolo mostrare il codice del bambino, il codice del giocattolo ed il gradimento che quel bambino ha espresso per quel giocattolo, dove il gradimento è O nel caso in cui quel bambino non abbia richiesto affatto quel giocattolo, altrimenti è pari alla preferenza massima che quel bambino ha espresso per quel giocattolo.
*/

SELECT bambino.codice, giocattolo.codice, 0
FROM bambino CROSS JOIN giocattolo
WHERE (bambino.codice, giocattolo.codice) not in (SELECT DISTINCT codiceb, codiceg FROM richiesta)
UNION
SELECT a.codiceb, a.codiceg, MAX(a.preferenza)
FROM richiesta a 
GROUP BY a.codiceb, a.codiceg
--ORDER BY bambino.codice, giocattolo.codice