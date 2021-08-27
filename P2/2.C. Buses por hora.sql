SELECT 
    COUNT(*) AS "Cantidad de buses", buses_x_hora.Hora AS 'Hora'
FROM
    (SELECT 
        bus,
            DATE_FORMAT(FechaTransaccion, '%d-%m-%Y %H:%m') AS 'Hora'
    FROM
        blaisesocial.trx
    GROUP BY bus , Hora) AS buses_x_hora
GROUP BY Hora
ORDER BY Hora
;