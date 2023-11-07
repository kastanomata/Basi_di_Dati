/*
	Query 1
Mostrare tutti i dati (codice, giorno, valore) delle rilevazioni che hanno rilevato un valore maggiore di 100 e che sono state prodotte da centraline di tipo diverso da I che si trovano a Milano.
*/
WITH joinone AS (
	SELECT giorno, id id_citta, nome nome_citta, codice codice_centralina, tipo tipo_centralina, valore valore_rilevazione
	FROM centralina NATURAL JOIN rilevazione JOIN citta ON citta.id = centralina.citta 
	ORDER BY id, nome, codice, tipo, valore
)
SELECT codice_centralina, giorno, valore_rilevazione
FROM joinone
WHERE valore_rilevazione > 100 AND tipo_centralina <> 1 AND nome_citta = 'Milano' 