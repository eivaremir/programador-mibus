
SELECT 
    bus, SUM(TarifaMonto) AS 'Obtenido'
FROM
    blaisesocial.trx
GROUP BY bus
ORDER BY Obtenido DESC LIMIT 10;