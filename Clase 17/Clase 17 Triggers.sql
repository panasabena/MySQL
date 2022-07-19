CREATE TRIGGER AFT_INS_log
AFTER INSERT ON jugadores
FOR EACH ROW

/*Creando tabla para el trigger*/
CREATE TABLE `new_jugadores` (
  `ID` int NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `NombreCompleto` varchar(150) NOT NULL,
  `Club` varchar(100) DEFAULT NULL,
  `Liga` varchar(100) DEFAULT NULL,
  `FechaNacimiento` date NOT NULL,
  `AlturaCM` int NOT NULL,
  `PesoKG` int NOT NULL,
  `Nacionalidad` varchar(100) NOT NULL,
  `ValorEuropa` float NOT NULL,
  `PiePreferido` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

select * from fifa.new_jugadores;

/*Sentencia del trigger*/
CREATE TRIGGER AFT_INS_log
AFTER INSERT ON jugadores
FOR EACH ROW
INSERT INTO new_jugadores
values (new.ID, new.nombre, new.NombreCompleto,	New.Club, new.Liga,
		new.FechaNacimiento, new.AlturaCM, new.PesoKG, new.Nacionalidad,
        new.ValorEuropa, new.PiePreferido);

INSERT INTO jugadores
VALUES (20000, "Diego", "Diego Gimenez", "Boca Juniors", "Argentina", '1994-07-21',
		180, 85, "Argentina", 10000000, "Left");

## FUNCIONES DATETIME
SELECT NOW(); -- Nos arroja la fecha y hora actual
SELECT CURRENT_DATE(); -- Arroja sólo la fecha
SELECT CURDATE(); -- Arroja lo mismo que current_date, es sólo una abreviación de current_date
SELECT CAST(NOW() AS DATE); -- Arroja solo la fecha
SELECT CURRENT_TIME(); -- Arroja sólo la hora
SELECT CURTIME(); -- Hace lo mismo que current_time, es sólo una abreviatura
SELECT current_timestamp(); -- Fecha y hora actual

## FUNCIONES DE USUARIOS

SELECT session_user(); -- Devuelve el usuario que ejecutó la consulta
SELECT system_user(); -- Devuelve el usuario de sistema, en este caso nos devuelve el mismo
SELECT USER(); -- Devuelve lo mismo que el session user, es una manera abreviada de escribirlo

## FUNCIONES TABLA LOGS
SELECT DATABASE(); -- Muestra la base de datos seleccionada
SELECT VERSION(); -- Muestra la versión de MySQL


CREATE TABLE logs(
	fecha_hora datetime,
    usuario VARCHAR(100),
    bd VARCHAR(100),
    version VARCHAR(20));
    
/*Lo que hace este trigger es que, antes de la eliminación, llena en la tabla logs la fecha y hora,
el usuario, base de datos y version de MySQL del usuario que borró un registro
Estas tablas, son tablas de auditoría, almacena información del mismo, como ser código, descripción y
precio de venta, entre otros.
Podemos registrar en una tabla de auditoría paralela, quién lo creó, fecha de creación, quién modificó 
su precio de venta o de costo, cuándo, y quién lo eliminó de la lista de Productos.
*/
CREATE TRIGGER BEF_DEL_jugadores_logs
BEFORE DELETE ON jugadores 
FOR EACH ROW
INSERT INTO logs -- nombre de la tabla
VALUES (NOW(),
	USER(),
	DATABASE(),
    VERSION());

/*-- CREAR TRIGGER ESPEJO
CREATE TRIGGER BEF_DEL_jugadores_espejo
BEFORE DELETE ON jugadores
FOR EACH ROW
SELECT * */


SET SQL_SAFE_UPDATES=0;
DELETE FROM jugadores
WHERE ID=1179;

select * from fifa.new_jugadores
where ID=20000;

SELECT * FROM FIFA.LOGS;

-- Trigger del nuevo jugador añadido
select * from fifa.new_jugadores;