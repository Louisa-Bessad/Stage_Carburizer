@@ 
expression hwif, data; 
@@

-hwif->hwif_data
+ide_
(
- = data
+ set_hwifdata(hwif, data)
|
- ;
+ get_hwifdata(hwif)
)