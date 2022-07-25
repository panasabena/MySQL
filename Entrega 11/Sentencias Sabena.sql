## Creamos los dos usuarios con su respectiva clave (ponemos la misma para ambos)
CREATE USER francisco@localhost IDENTIFIED BY 'Coderhouse30';
CREATE USER alfredo@localhost IDENTIFIED BY 'Coderhouse30';
## Mostramos los permisos de los usuarios
SHOW GRANTS FOR francisco@localhost;
SHOW GRANTS FOR alfredo@localhost;
## Otorgando permisos sólo de consulta todos los objetos, sólo para francisco
GRANT SELECT ON *.* TO francisco@localhost;
## A Alfredo le damos permisos de Lectura, update, insert, alter(modificar) de todos los objetos
GRANT SELECT, UPDATE, INSERT, ALTER ON *.* TO alfredo@localhost;

