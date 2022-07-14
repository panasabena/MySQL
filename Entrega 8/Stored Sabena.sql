use hospital;
/*Primero investigamos que tiene cada tabla*/
select * from hospital;
/*Se decide usar la tabla de pacientes*/
select * from paciente;

/*Creamos el primer store procedure, el mismo sirve para insertar los datos de un paciente
Se suguiere imprimir primero la tabla, para poder seguir con el orden correcto de importacion de datos*/
USE `hospital`;
DROP procedure IF EXISTS `insertar_paciente`;

USE `hospital`;
DROP procedure IF EXISTS `hospital`.`insertar_paciente`;
;

DELIMITER $$
USE `hospital`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_paciente`(in p_id_paciente int,
									  in p_mail varchar(255), 
                                      in p_telefono int,
                                      in p_edad int,                                      
                                      in p_nombre varchar(255)) 
BEGIN
INSERT INTO hospital.paciente(id_paciente,
					 Mail,
                     Teléfono,
                     Edad,
                     Nombre) values (p_id_paciente, 
									  p_mail,
                                      p_telefono,
                                      p_edad,
                                      p_nombre);

END$$

DELIMITER ;
;
/*Importamos los datos*/
call insertar_paciente(38330734, 'alfre_sabena@hotmail.com', 425919, 28, 'Francisco Alfredo Sabena');
/*Comprobamos que funcione ----> Funciona*/
select * from paciente;

/*Creamos stored procedure de ordenar la tabla de acuerdo al parametro que asignemos.
En este caso tiene que ser del tipo CHAR(20)*/
USE `hospital`;
DROP procedure IF EXISTS `ordenar`;

USE `hospital`;
DROP procedure IF EXISTS `hospital`.`ordenar`;
;

DELIMITER $$
USE `hospital`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ordenar`(IN field CHAR(20))
BEGIN
	IF field <> '' then
		set @paciente_order = concat('ORDER BY ', field);
	else 
		set @paciente_order = '';
	end if;
set @clausula = concat('SELECT * FROM paciente ', @paciente_order);
PREPARE runSQL FROM @clausula;
EXECUTE runSQL; 
DEALLOCATE PREPARE runSQL;        
END$$

DELIMITER ;
;

/*Lo probamos y funciona*/
CALL ordenar('Id_Paciente');
CALL ordenar('Mail');
