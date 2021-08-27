SELECT 
    bus_pasajero.bus, COUNT(*) AS 'Cantidad de pasajeros'
FROM
    (SELECT 
        bus, tarjeta
    FROM
        blaisesocial.trx
    GROUP BY bus , tarjeta) AS bus_pasajero
    
GROUP BY bus
ORDER BY `Cantidad de pasajeros` DESC
LIMIT 30;