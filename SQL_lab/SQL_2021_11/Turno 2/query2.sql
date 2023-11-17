/*
	Query 2
Calcolare il codice dei giocattoli che sono stati richiesti dallo stesso bambino con almeno due referenze diverse.
*/
SELECT DISTINCT alfa.codiceg
FROM richiesta alfa JOIN richiesta beta ON alfa.codiceb = beta.codiceb
WHERE alfa.codiceg = beta.codiceg AND alfa.preferenza <> beta.preferenza
ORDER BY alfa.codiceg