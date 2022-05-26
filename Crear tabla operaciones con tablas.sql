-- Crear Tabla
CREATE TABLE friend(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30), -- Varchar es un tipo de dato str y en los parentesis lleva la cantidad de caracteres que queremos que tenga
last_name VARCHAR(30),
email VARCHAR(30)
);

-- Modifica la tabla, en este caso le añadimos otra columna:

ALTER TABLE friend 
ADD age INT;

ALTER TABLE friend
MODIFY email VARCHAR(50) NOT NULL;

DROP TABLE friend;

-- Clonar Tabla

CREATE TABLE friend_backup
LIKE friend;