/* Clase 12 bis
Inserción con importación
*/
/*Objetivos de la clase: Implementar prcesos de importación con el asistente de importación
Implementar procesos de importacion por medio de comandos consola*/

CREATE TABLE productos (
						id int NOT NULL AUTO_INCREMENT,
                        nombre varchar(40) NOT NULL,
                        existencia int NOT NULL DEFAULT '0',
                        precio float NOT NULL DEFAULT '0',
                        precio_compra float NOT NULL DEFAULT '0',
                        PRIMARY KEY (id)
                        );
/*Para importar los datos fuimos al schema sakila, que es donde está la tabla productos que creamos
anteriormente. Luego click derecho y le damos a 'Table data import wizard' y después de ahí
seleccionamos el archivo que queremos y seguimos los pasos de importacion de manera intuitiva */

SELECT * from productos;

INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (1,'MOTHERBOARD AM4 - ASROCK A320M',0,6599,4619);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (2,'MOTHERBOARD AM4 - ASROCK B450M AC',0,9239,6467);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (3,'MOTHERBOARD AM4 - ASROCK B550M HDV',0,8299,5809);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (4,'MOTHERBOARD AM4 - GIGABYTE GA-A320M',0,7499,5249);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (5,'MOTHERBOARD AM4 - GIGABYTE GA-A520M',0,8289,5802);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (6,'MOTHERBOARD AM4 - GIGABYTE GA',0,12499,8749);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (7,'PROCESADOR AMD ATHLON 3000G 3.5 GHZ',0,18989,13292);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (8,'PROCESADOR AMD APU A10 9700 3.8 GHZ',0,19499,13649);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (9,'PROCESADOR AMD RYZEN 5 5600X 3.7 GHZ',0,32799,22959);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (10,'MEMORIA RAM DDR3 - 4GB 1600 MHZ',0,3699,2589);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (11,'MEMORIA RAM DDR3 - 4GB 1600 MHZ ',0,4199,2939);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (12,'MEMORIA RAM DDR3 - 4GB 1866 MHZ ',0,4599,3219);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (13,'PLACA DE VIDEO GEFORCE G 210 1GB MSI',0,5599,3919);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (14,'PLACA DE VIDEO GEFORCE G 210 1GB EVGA',0,5899,4129);
INSERT INTO productos (`id`,`nombre`,`existencia`,`precio`,`precio_compra`) VALUES (15,'PLACA DE VIDEO GEFORCE GT 710 1GB MSI',0,6689,4682);
