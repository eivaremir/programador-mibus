

Select avg(Monto_por_hora) as "promedio_por_hora" from
(SELECT 
        sum(TarifaMonto) as "Monto_por_hora",
        DATE_FORMAT(FechaTransaccion, '%d-%m-%Y %H:%m') AS 'Hora'
    FROM
        blaisesocial.trx
    GROUP BY Hora) as montos_por_hora;