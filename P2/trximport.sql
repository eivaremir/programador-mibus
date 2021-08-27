LOAD DATA LOCAL INFILE "C:/Users/eivar/Desktop/prueba mibus/transacciones.csv" 
into table blaisesocial.trx 
fields terminated by "," 
lines terminated by "\n" 
ignore 1 lines 
(@FechaTransaccion, Bus, validador,tarjeta,@FechaRegistroCle,TarifaMonto,`C.TipoTransaccion`,CodigoTransaccion,@FechaContabilizacion )
set 
	FechaTransaccion = str_to_date(@FechaTransaccion,"%m/%d/%Y %h:%i"),
    FechaRegistroCle = str_to_date(@FechaRegistroCle,'%d/%m/%Y %h:%i:%s'),
    FechaContabilizacion = str_to_date(@FechaContabilizacion,'%d/%m/%Y')
    