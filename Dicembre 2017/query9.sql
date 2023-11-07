/*
	Query 9
Calcolare, evitando le coppie or, e (y, a:) se già presente (T, y), le coppie dei giocatori che hanno giocato in esattamente le stesse squadre, mostrando i lori codici.
*/
-- da tutti i giocatori
SELECT alfa.codice, beta.codice
FROM giocatore alfa CROSS JOIN giocatore beta 
WHERE alfa.codice > beta.codice
EXCEPT
-- sottrai quelli che hanno giocato in due squadre diverse
SELECT alfa.codiceg, beta.codiceg
FROM giocato alfa JOIN giocato beta ON alfa.codiceg > beta.codiceg
WHERE alfa.nomes <> beta.nomes


