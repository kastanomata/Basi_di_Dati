/*
	Query 7
Calcolare il titolo dei libri che sono stati scritti da uno ed un solo autore.
*/
SELECT titolo
FROM scritto
GROUP BY titolo
HAVING COUNT(*)=1
ORDER BY titolo



