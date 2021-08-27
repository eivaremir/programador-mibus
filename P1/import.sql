LOAD DATA LOCAL INFILE "C:/Users/eivar/Desktop/prueba mibus/pattern_detail.csv" 
into table pattern_detail
fields terminated by "," 
optionally enclosed by '"'
lines terminated by "\r\n" 
ignore 1 lines 
(RT_ID,SN,STOP_CD,PATTN_DETAIL_ID,IS_ACTIVE,LMT_SPD,DIST,TOPOLOGY);

