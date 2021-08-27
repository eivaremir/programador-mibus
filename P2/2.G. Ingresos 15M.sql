SELECT 
    CAST(sum(TarifaMonto)/100 as DECIMAL(10,2)) as "Profit",
    FROM_UNIXTIME((UNIX_TIMESTAMP(FechaTransaccion) DIV (15 * 60)) * (15 * 60) + (15 * 60)) AS 'Range'
FROM
    blaisesocial.trx
group by `Range`
ORDER BY `Range` 
    
;