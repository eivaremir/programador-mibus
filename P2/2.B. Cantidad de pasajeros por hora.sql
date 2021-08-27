SELECT 
    COUNT(*) AS 'Cantidad de pasajeros', Hora
FROM
    (SELECT 
        DATE_FORMAT(FechaTransaccion, '%d-%m-%Y %H:%m') AS 'Hora',
            tarjeta
    FROM
        blaisesocial.trx
    GROUP BY Hora , tarjeta) AS pasajeros_x_hora
GROUP BY Hora
ORDER BY Hora;

