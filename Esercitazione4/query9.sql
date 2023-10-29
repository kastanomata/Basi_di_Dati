/*
SELECT DISTINCT targaauto, garage.citta
FROM custodita JOIN garage ON codgarage = codice
ORDER BY targaauto
*/
SELECT DISTINCT targaauto, COUNT(*) nCitta
FROM custodita JOIN garage ON codgarage = codice
GROUP BY targaauto
ORDER BY targaauto
