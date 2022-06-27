CREATE TABLE new_class (
	id_level int not null,
    id_class int not null,
    description varchar(200) not null,
    PRIMARY KEY (id_class, id_level)
);

CREATE TABLE new_level_game (
	id_level int not null, 
    description varchar(200) not null,
    PRIMARY KEY (id_level)
);


INSERT INTO new_class (id_level, id_class, description)
VALUES(17, 10, 'Adventure Other'),
(15, 1, 'Spy Other'),
(17, 20, 'British Comedy'),
(17, 30, 'Adventure '),
(14, 1, ''),
(18, 1, '');

INSERT INTO new_level_game (id_level, description) (SELECT DISTINCT id_level, 'New level'
													FROM new_class
                                                    WHERE id_level NOT IN (
																			SELECT id_level
                                                                            FROM level_game));
                                                                            
SELECT id_level from level_game;

CREATE TABLE PLAY_INCOMPLETED
(SELECT * FROM PLAY WHERE completed = 'FALSE');

SELECT * FROM PLAY WHERE completed = false;

SET sql_safe_updates = 0;
UPDATE NEW_CLASS SET ID_LEVEL = 20
WHERE ID_LEVEL IN (SELECT ID_LEVEL FROM NEW_LEVEL_GAME);


/*Delete + subconsulta: ejemplo*/

/*Generamos la sentencia para eliminar aquellas nuevas clases que no van a poder estar relacionados con
ningún registro de la tabla*/

SELECT * FROM NEW_CLASS;
DELETE FROM NEW_CLASS
WHERE id_level NOT IN (SELECT id_level 
						FROM NEW_LEVEL_GAME);

/*Volví a ejecutar el script de inserción de datos porque los borramos en el paso anterior*/
SELECT * FROM NEW_CLASS;

/*Mientras practiquemos operaciones de actualización al igual que opreaciones de eliminación de
registros, lo recomendable es crear tablas de backup con los datos a modificar/eliminar, para que se 
pueda restaurar rápidamente los mismos registros en el caso que la cláusula especificada haya modificado
o eliminado más o menos información de la esperada*/

CREATE TABLE CLASS_BKP
(SELECT * FROM CLASS);