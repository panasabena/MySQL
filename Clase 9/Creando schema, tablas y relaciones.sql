create schema if not exists centro_medico_coder;
use centro_medico_coder;

-- Creacion de las tablas o entidades
/*Primero se crean las tablas que sólo tienen Primary keys, porque si creamos primero una que contiene
una foreign key antes de que el primary key exista, nos va a dar un error*/

-- Tabla de Obra Social
CREATE TABLE IF NOT EXISTS ObraSocial(
	idObraSocial INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    razonSocial VARCHAR (255) NOT NULL,
    CUIT INT NOT NULL,
    Direccion varchar(255));

-- Tabla de Pacientes
CREATE TABLE IF NOT EXISTS Pacientes(
	idPaciente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Apellido VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL, 
    Fecha_De_Naciemiento DATE, 
    Direccion VARCHAR(255),
    IdObraSocial INT NOT NULL,
    FOREIGN KEY(IdObraSocial) REFERENCES ObraSocial (IdObraSocial)); /*REFERENCES indica 
    la relacion entre las dos tablas,     la que contiene la primary key con la de la foreign key*/
    
    -- Tabla de Especialidad
    CREATE TABLE IF NOT EXISTS Especialidad(
	idEspecialidad INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    Nombre VARCHAR (255) NOT NULL);
    
    -- Tabla de Medicos
    CREATE TABLE IF NOT EXISTS Medico(
	idMedico INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    Nombre VARCHAR (255) NOT NULL,
    Apellido VARCHAR (255) NOT NULL,
    Fecha_de_Nacimiento DATE,
    Matricula INT NOT NULL,
    IdEspecialidad varchar(255));
    
        -- Tabla de Medico_ObraSocial
    CREATE TABLE IF NOT EXISTS Medico_ObraSocial(
	idMedico INT NOT NULL,
    idObraSocial INT NOT NULL, 
    FOREIGN KEY (idMedico) REFERENCES Medico (idMedico),
    FOREIGN KEY (idObraSocial) REFERENCES ObraSocial (idObraSocial)
    );
    
-- Tabla Consultorio
    CREATE TABLE IF NOT EXISTS Consultorio(
	idConsultorio INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    direccion VARCHAR(255),
    Telefono INT NOT NULL);
    
-- Tabla Citas
    CREATE TABLE IF NOT EXISTS Citas(
	idCita INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    idMedico INT NOT NULL, 
    idPaciente INT NOT NULL,
    idConsultorio INT NOT NULL,
    FOREIGN KEY (idMedico) REFERENCES Medico (idMedico),
    FOREIGN KEY (idPaciente) REFERENCES Pacientes (idPaciente),
    FOREIGN KEY (idConsultorio) REFERENCES Consultorio (idConsultorio)
    );
    
    /*Luego de ejecutar todo el script, para ver como quedó el diagrama de entidad relacion, vamos
    a la pestaña [database]---> Reverse engineer--->Next ----> Next ---> y seleccionamos sobre que
    data base queremos realizar el diagrama/