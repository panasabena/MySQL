/* Ejecmplo de funcion*/
CREATE FUNCTION count_troops(id_troop INT)
RETURNS INT
DETERMINISTIC
RETURN (SELECT COUNT(*) FROM friend WHERE troop=id_troop);

SELECT count_troops(2);

