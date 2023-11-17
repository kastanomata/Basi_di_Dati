/*
eliminare le automobili immatricolate a Siena
*/
WITH automobili_siena as (
	SELECT *
	FROM automobile
	WHERE citta = 'Siena'
)
DELETE FROM custodita
	WHERE targaauto IN (SELECT targa FROM automobili_siena)
;
DELETE FROM automobile
	WHERE citta = 'Siena'
