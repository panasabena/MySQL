use hospital;
select * from cita;
select * from hospital;
select * from medicina;
select * from medico;
select * from paciente;
select * from prescripcion;
select * from tratamiento;

/*Insercion de Medicos*/

INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (1,'Alexander Fleming',5960,'Bacteriología','Alex_fleming@hotmail.com');
SET sql_safe_updates = 0;

/*LOAD DATA INFILE 'C:/Users/fsabena/OneDrive - MicroStrategy, Inc/MySQL CoderHouse/Datos de entrega/Medicos.csv'
INTO TABLE medico
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
*/