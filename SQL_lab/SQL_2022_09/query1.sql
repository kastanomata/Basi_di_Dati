/*
	Query 1
Mostrare codice, giorno e valore delle rilevazioni che hanno fornito un valore del livello di inquinamento minore di 1100, che sono state prodotte da centraline di tipo 200 e che si trovano in una città diversa da Milano.
*/
SELECT DISTINCT codice, giorno, valore
FROM centralina NATURAL JOIN rilevazione
WHERE citta <> (SELECT id FROM citta WHERE nome = 'Milano')
	AND valore < 1100 AND tipo = 200
	