/*
	Query 3
Mostrare il codice delle centraline che hanno prodotto almeno una volta due  rilevazioni con lo stesso valore in giorni consecutivi.
*/
SELECT DISTINCT alfa.codice
FROM rilevazione alfa, rilevazione beta 
WHERE alfa.codice = beta.codice AND alfa.giorno = beta.giorno+1 AND alfa.valore = beta.valore 