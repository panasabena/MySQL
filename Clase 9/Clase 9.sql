/*Beneficios de las vistas:
-Privacidad de la información: Los usuarios podrán ver sólo aquellos datos que creamos convenientes mostrar,
en otras palabras, mejora la seguridad de la DB.
-Rendimiento de la DB: Crear queries sobre vistas complejas nos ahorra ejecutar una query pesada
para llegar a la información
- Protección de los datos: Aquellos usuarios que no poseen un entorno de pre-producción, las vistas evitan
errores de borrado o alteración*/
## Las vistas son tablas virtuales y no las tablas en si, es para no dar un acceso directo a las DB
create view game_view as Select * from game;

 /*Si la ejecutamos de nuevo va a dar error porque ya está creada*/
/*create view game_view as Select * from game;*/
/*Entonces lo que hacemos es:*/
CREATE OR REPLACE VIEW game_view AS SELECT * FROM game;