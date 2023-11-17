SELECT DISTINCT garage.citta, targaauto
FROM (custodita JOIN garage ON codgarage = codice) JOIN automobile ON targaauto = targa
WHERE cilindrata > 100 AND numero > 10