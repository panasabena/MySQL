CREATE SCHEMA IF NOT EXISTS HOSPITAL;
USE HOSPITAL;

-- Creacion de las tablas o entidades
/*Primero se crean las tablas que sólo tienen Primary keys, porque si creamos primero una que contiene
una foreign key antes de que el primary key exista, nos va a dar un error*/

-- Tabla de Medico (Sin FK)
CREATE TABLE IF NOT EXISTS Medico(
	Id_Medico INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    Nombre VARCHAR (255) NOT NULL,
    Edad INT NOT NULL,
    Telefono_medico INT NOT NULL,
    Especialidad VARCHAR(255),
    Email_medico varchar(255));

-- Tabla de Medicina (Sin FK)
CREATE TABLE IF NOT EXISTS Medicina (
	Id_Medicina INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Tipo VARCHAR(255) NOT NULL,
    Descripcion VARCHAR(255));
    
-- Tabla de Tratamiento (Con FKS de Medico y Medicina)
CREATE TABLE IF NOT EXISTS Tratamiento(
	Nombre_del_Tratamiento VARCHAR(255) NOT NULL,
    Fecha_del_Tratamiento DATE,
    Lista_de_materiales VARCHAR(255) NOT NULL,
    Id_Medico INT NOT NULL,
    FOREIGN KEY(Id_Medico) REFERENCES medico (Id_Medico)
    );
    
    -- Tabla de Paciente
    CREATE TABLE IF NOT EXISTS Paciente(
		Id_Paciente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        Mail VARCHAR(255) NOT NULL,
        Teléfono INT NOT NULL,
        Edad INT NOT NULL,
        Nombre VARCHAR(255)
    );
    
-- Tabla Cita
CREATE TABLE IF NOT EXISTS Cita(
	Id_Cita INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Paciente INT NOT NULL,
    Fecha_Cita DATE,
    Hora_Cita DATETIME,
    Id_Medico INT NOT NULL, 
    Categoria VARCHAR(255),
    Descricpión VARCHAR(255),
    FOREIGN KEY(Id_Paciente) REFERENCES Paciente (Id_Paciente),
    FOREIGN KEY(Id_Medico) REFERENCES Medico (Id_Medico)
    );
    
    -- Tabla Prescripción
    CREATE TABLE IF NOT EXISTS Prescripcion(
		Id_Prescripcion INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        Id_Paciente INT NOT NULL, 
        Categoria VARCHAR(255),
        Dias INT NOT NULL,
        Nombre_medicina VARCHAR(255) NOT NULL,
        Id_Medicina INT NOT NULL,
        FOREIGN KEY (Id_Paciente) REFERENCES PACIENTE(Id_Paciente),
        FOREIGN KEY (Id_Medicina) REFERENCES Medicina(Id_Medicina)
        );

-- Tabla Hospital
CREATE TABLE IF NOT EXISTS Hospital(
	Id_Hospital INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Sucursal VARCHAR(255) NOT NULL,
    Direccion VARCHAR(255) NOT NULL,
    Id_Paciente INT NOT NULL,
    FOREIGN KEY (Id_Paciente) REFERENCES Paciente(Id_Paciente)
    );

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