USE hospital;
## Primera tabla: utilizo la tabla CITA
SELECT * FROM cita; 
## Inicio de Transacción
START TRANSACTION;
	DELETE FROM cita
		WHERE Id_Cita = 506;
ROLLBACK;
COMMIT;
## Insertamos nuevamente valor borrado
INSERT INTO cita 
		VALUES (506, 39176910, '7/22/2022', 
        '8:00:00 AM', 9, 'Leve', 'Below the national average');

## Segunda tabla
SELECT * FROM PACIENTE;

START TRANSACTION;
        INSERT INTO hospital.paciente VALUES (43946768, 'Lunagu@mi.unc.edu.ar', 3513, 19, 'Luna Gutierrez Lara Belen');
        INSERT INTO hospital.paciente VALUES (43956453, 'marcalo@mi.unc.edu.ar', 3513, 20, 'Marca Lopez Ramiro Franz');
        INSERT INTO hospital.paciente VALUES (39804194, 'abigailmendez@mi.unc.edu.ar', 3513, 27, 'Abigail Mendez Esmeralda');
		INSERT INTO hospital.paciente VALUES (43694166, 'alejonieto@mi.unc.edu.ar', 3513, 21, 'Alejo Nietto');
	SAVEPOINT PRIMERAS_INSERCIONES;
		INSERT INTO hospital.paciente VALUES (42130852, 'magdacastro@mi.unc.edu.ar', 3513, 22, 'Magdalena Castro Oro');
		INSERT INTO hospital.paciente VALUES (94338809, 'pachechom@mi.unc.edu.ar', 3513, 28, 'Martin Pacheco Louis');
		INSERT INTO hospital.paciente VALUES (43604365, 'massimo@mi.unc.edu.ar', 3513, 19, 'Massimo Poli');
        INSERT INTO hospital.paciente VALUES (44245421, 'franquitoreyes@mi.unc.edu.ar', 3513, 18, 'Franco Ezequiel Reyes');
	SAVEPOINT SEGUNDAS_INSERCIONES;
    
    ## Liberar memoria savepoint
    ## RELEASE SAVEPOINT PRIMERAS_INSERCIONES;
    
