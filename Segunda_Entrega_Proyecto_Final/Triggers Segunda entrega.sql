USE HOSPITAL;

/*Creando tabla para el trigger "Before" */
drop table if exists cita_cancelada;

/*Tener cuidado con esta tabla, porque la fecha y la hora están en formato texto
entonces cuando creamos otra tabla trigger tiene que tener el mismo formato*/
CREATE TABLE `CITA_CANCELADA` (
  `Id_Cita` int NOT NULL,
  `Id_Paciente` INT NOT NULL,
  `Fecha_Cita` text,
  `Hora_Cita` text,
  `Id_Medico` INT NOT NULL,
  `Categoria` VARCHAR(255),
  `Descripcion` VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Probamos que la tabla creada de cita cancelada funcione*/
SELECT * FROM CITA_CANCELADA;

/*Creamos la lógica del trigger:
En este caso lo que queremos lograr es que cada cita cancelada se guarde en la tabla creada de citas 
canceladas.*/

/*Borro trigger si es que ya está creado*/
drop trigger if exists BEF_DEL_log;

/*Sentencia del trigger*/
select * from cita;

CREATE TRIGGER BEF_DEL_log
BEFORE DELETE ON cita FOR EACH ROW

INSERT INTO CITA_CANCELADA VALUES (Old.Id_cita, Old.Id_Paciente, Old.Fecha_Cita, Old.Hora_Cita,
Old.Id_Medico, Old.Categoria, Old.Descripcion);

SELECT * FROM CITA_CANCELADA;
CREATE TRIGGER BEF_DEL_log
after delete ON CITA
FOR EACH ROW
INSERT INTO cita_cancelada
values (Id_cita, Id_Paciente, Fecha_Cita, Hora_Cita, Id_Medico,
		Categoria, Descripcion);

select * from cita;

# INSERT INTO `CITA` (`Id_Cita`,`Id_Paciente`,`Fecha_Cita`,`Hora_Cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (505,44078271,'7/7/2022','8:00:00 AM',8,'Urgente','Below the national average');
# INSERT INTO `CITA` (`Id_Cita`,`Id_Paciente`,`Fecha_Cita`,`Hora_Cita`,`Id_Medico`,`Categoria`,`Descricpión`) VALUES (506,39176910,'7/22/2022','8:00:00 AM',9,'Leve','Below the national average');

/*Borramos de la tabla cita el id 505 porque fué cancelado*/
DELETE FROM CITA WHERE Id_Cita = 505;

select * from CITA;

## Luego vemos en la tabla citas canceladas que el id_cita = 505 fue cancelado
select * from CITA_CANCELADA; ## Funciona
/*--------------------------------------------------------------------------------------*/

/*Creando triger para after*/

-- Tabla de NUEVO Paciente
CREATE TABLE `nuevo_paciente` (
  `Id_Paciente` int NOT NULL,
  `Mail` VARCHAR(255) NOT NULL,
  `Teléfono` INT NOT NULL,
  `Edad` INT NOT NULL,
  `Nombre` VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
    
/*Sentencia del trigger*/ 

CREATE TRIGGER AFT_INS_log
AFTER INSERT ON paciente
FOR EACH ROW
INSERT INTO nuevo_paciente
values (new.Id_Paciente, new.mail, new.Teléfono, new.Edad,
		new.Nombre);
        
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (38106814,'GerNavarro@gmail.com',4556,28,'Mario German Navarro');

select * from nuevo_paciente;