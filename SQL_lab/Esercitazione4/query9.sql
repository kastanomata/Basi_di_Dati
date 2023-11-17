/*
Per ogni automobile mostrare il numero di città nei garage delle quali è stata custodita.
*/
/*
SELECT targaauto, COUNT(DISTINCT garage.citta) nCitta
FROM custodita JOIN garage ON codgarage = codice
GROUP BY targaauto
ORDER BY targaauto
*/
SELECT targaauto, COUNT(DISTINCT garage.citta) nCitta
FROM custodita JOIN garage ON codgarage = codice
GROUP BY targaauto
ORDER BY targaauto


