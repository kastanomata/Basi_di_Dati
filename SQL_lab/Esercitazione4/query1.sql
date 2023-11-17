SELECT DISTINCT targaauto, codice, citta
FROM custodita JOIN garage on codgarage = codice
WHERE numero = 1
ORDER BY targaauto 