/*Creamos una vista que se ocupe de mostrarnos los nombres y descripción de los videojuegos
que contenga el nombre Call of Duty*/

CREATE OR REPLACE VIEW games AS
	(SELECT name, description FROM game
    WHERE name like upper ("Call of Duty%"));

SELECT * FROM games;

/*Las vistas una vez creadas pueden ser tratadas tal cual como su fuesen una tabla, por ejemplo
aplicando un orden a la misma*/

/*Si aplicamos una clausula where y/o order by, veremos que los datos de la vista, se listaran tal 
como lo indicamos en la consulta de selección*/

CREATE OR REPLACE VIEW games AS
	(SELECT name, description FROM game
    WHERE name like "%You%" ORDER BY NAME DESC);

SELECT * FROM games;
    
/*Vistas con más de una tabla*/
/*Realizamos una vista que liste los nombres y descripción de los distintos videojuegos que ningún
usuario ha podido completar*/
CREATE OR REPLACE VIEW games AS
	(SELECT DISTINCT name, description FROM game v JOIN PLAY p ON (v.id_game = p.id_game)
    where p.completed = false);
/*Luego de ejecutar el script anterior, tenemos que ejecutar el siguiente para que nos muestre que hace*/
SELECT * FROM games;