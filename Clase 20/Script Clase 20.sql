SELECT * FROM fifa.jugadores;
DELETE FROM fifa.jugadores
WHERE ID = 183907;
SET AUTOCOMMIT = 0;
SET AUTOCOMMIT = 1;
SELECT @@autocommit;
SET SQL_SAFE_UPDATES = 0;

## Inicio de transaction
START TRANSACTION;
	DELETE FROM jugadores
    WHERE ID = 20801; ## Eliminamos a cristiano Ronaldo de la base de datos
ROLLBACK; ## Rolback es el equivalente a Ctrl-Z, es decir ejecutando esta linea de código devolvemos a 
		  ## Cristiano Ronaldo a la base de datos
          
## Ahora, que pasa si al codigo anterior le sumamos la sentencia COMMIT;
START TRANSACTION;
	DELETE FROM jugadores
    WHERE ID = 20801;
COMMIT; ## DE ESTA MANERA, ES IMPOSIBLE RECUPERAR A CRISTIANO RONALDO EN LA BASE, YA QUE CONFIRMAMOS
		## LOS CAMBIOS

## NUEVA SENTENCIA
START TRANSACTION;
	UPDATE jugadores
    SET NombreCompleto = "Gonzalo Higuaín" ## CORREGIMOS EL NOMBRE DE HIGUAÍN, QUE ESTABA COMO NZALO
    WHERE id = 167664;
ROLLBACK; ## Si ejecutamos el rollback, volvemos a tener el nombre anterior

/*Ahora, si nosotros queremos confirmar el cambio, directamente le ponemos el commit al final de la
sentencia*/
START TRANSACTION;
	UPDATE jugadores
    SET NombreCompleto = "Gonzalo Higuaín" ## CORREGIMOS EL NOMBRE DE HIGUAÍN, QUE ESTABA COMO NZALO
    WHERE id = 167664;
COMMIT; /*Ahora queda de forma definitiva*/
ROLLBACK; /*Comprobamos que al ejecutar el rollback luego del commit, la tabla queda con el ultimo
cambio confirmado, osea el nombre "Gonzalo Higuaín"*/

## SAVEPOINT

START TRANSACTION;
	SAVEPOINT Defecto;
		DELETE FROM jugadores
		WHERE ID = 190871; /*Eliminamos a Neymar de la tabla*/
    SAVEPOINT Eliminacion_Neymar;
		UPDATE jugadores
        SET ValorEuropa = '223000000'
        WHERE ID = 158023;
	SAVEPOINT Actualizacion;
		INSERT INTO jugadores
        VALUES (20801, 'Cristiano Ronaldo', 'C. Ronaldo dos Santos Aveiro', 'Real Madrid FC', 
        'Spanish Primera Division', CAST('1985-02-05' AS Date), 185, 80, 'Portugal', 95500000, 'Right');
ROLLBACK TO Defecto;    ## Nos devuelve a Neymar y a los otros cambios realizados
/*Si queremos hacer un rollback que está luego del rollback defecto, por ejemplo el rollback de
actualización, no podemos porque hemos ido a un rollback que está antes de el rollback actualización.*/

## Liberar memoria savepoint;
RELEASE SAVEPOINT Inserccion;
