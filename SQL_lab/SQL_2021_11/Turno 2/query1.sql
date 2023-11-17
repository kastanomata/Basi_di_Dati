/*
	Query 1
Calcolare il codice ed il nome dei giocattoli di categoria diversa da 5 che sono stati richiesti da almeno un bambino con preferenza minore o uguale a 4.
*/
SELECT DISTINCT codiceg, nome
FROM richiesta JOIN giocattolo ON codiceg = codice
WHERE categoria <> 5 AND preferenza <= 4
ORDER BY codiceg