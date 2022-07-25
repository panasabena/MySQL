## MOSTRAR BASES DE DATOS
show databases;
## UTILIZAR BASES DE DATOS
USE MYSQL;
## MOSTRAR TABLAS
SHOW TABLES;
SELECT * FROM USER;
## CREAR USUARIO SIN CLAVE
CREATE USER prueba@localhost;
## CREAR USUARIO CON CLAVE
CREATE USER `test@localhost` IDENTIFIED BY 'SQL2022.';
## CREAR OTRO USUARIO CON CLAVE
CREATE USER usuarioConClave@127.0.0.1 IDENTIFIED BY 'clave123';
## ELIMINAR USUARIOS
DROP USER `test@localhost`;
DROP USER usuarioConClave@127.0.0.1;
## MODIFICAR PASSWORD
ALTER USER prueba@localhost IDENTIFIED BY 'Sql2022.';
ALTER USER prueba@localhost IDENTIFIED BY '2022';
SET PASSWORD FOR prueba@localhost = 'Data2022';
## RENOMBRAR USUARIOS
RENAME USER prueba@localhost to test@localhost;
CREATE USER maximiliano@loacalhost IDENTIFIED BY 'Coderhouse30';
CREATE USER alfredo@localhost IDENTIFIED BY 'Coderhouse30';
## ELIMINACION EN CASCADA, ELIMINAR MULTIPLES USUARIOS
DROP USER test@localhost, prueba@localhost, maximiliano@localhost;
## MUESTRA LOS PERMISOS DEL USUARIO
SHOW GRANTS FOR root@localhost;
SHOW GRANTS FOR maximiliano@localhost;
## OTORGAR TODOS LOS PERMISOS A UN USUARIO
GRANT ALL ON *.* TO alfredo@localhost;
## por mas que le asignemos todos los permisos a un usuario, no se le van a poder otorgar absolutamente
## todos los permisos, el unico usuario que tiene todo todo, es el usuario root
SHOW GRANTS FOR alfredo@localhost; 

## CON EL SIGUIENTE COMANDO SE DA PERMISO SOBRE ALGO ESPECÍFICO
GRANT ALL ON fifa.jugadores to alfredo@localhost;
GRANT ALL ON sys.sys_config TO alfredo@localhost;
## otorgar permisos sobre una vista
GRANT ALL ON sys.host_summary to alfredo@localhost;

## OTORGAR PERMISOS SELECTIVOS
## LOS SIGUIENTES PERMISOS SON LOS MAS COMUNES, SON SOLAMENTE PARA CONSULTAR, CREAR TABLAS TEMPORALES
## Y CREAR VISTAS, NADA QUE PONGA EN RIESGO LOS DATOS DE LA ORGANIZACION
GRANT SELECT, CREATE TEMPORARY TABLES, CREATE VIEW ON fifa.* TO alfredo@localhost;

GRANT SELECT (NombreCompleto, Club, Liga, Nacionalidad) ON fifa.jugadores TO alfredo@localhost;

## REVOCAR PERMISOS
REVOKE ALL ON *.* FROM alfredo@localhost;
## REVOCAR PERMISOS PARTICULARES
REVOKE SELECT (Nacionalidad) ON fifa.jugadores FROM alfredo@localhost;