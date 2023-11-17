/*
	Query 4
Per ogni bambino e per ogni numero che rappresenta una preferenza presente nella tabella Richiesta, mostrare il codice del bambino, il valore della preferenza ed il numero di giocattoli di categoria maggiore di 3 che sono stati richiesti da quel bambino con quella preferenza.
*/
SELECT DISTINCT codiceb, preferenza, COUNT(*)
FROM richiesta JOIN giocattolo on codiceg = codice
WHERE categoria > 3
GROUP BY codiceb, preferenza
ORDER BY codiceb, preferenza
