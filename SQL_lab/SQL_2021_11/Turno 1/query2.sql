/*
	Query 2
Calcolare il codice dei bambini che hanno richiesto con la stessa preferenza due giocattoli di diverse
categorie.
*/
SELECT DISTINCT a.codiceb
FROM (richiesta JOIN giocattolo ON codice = codiceg) a JOIN (richiesta JOIN giocattolo ON codice = codiceg) b ON (a.codiceb = b.codiceb)
WHERE  a.categoria <> b.categoria AND a.preferenza = b.preferenza
ORDER BY codiceb