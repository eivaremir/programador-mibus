SELECT 
    DATE_FORMAT(FechaTransaccion,"%d-%m-%Y %H:%m") AS 'Hora',
    COUNT(*) AS 'Cantidad de transacciones'
FROM
    blaisesocial.trx
GROUP BY Hora
ORDER BY Hora;

