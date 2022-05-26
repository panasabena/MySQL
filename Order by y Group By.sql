-- Order by
SELECT id_system_user, last_name
FROM SYSTEM_USER
WHERE id_user_type = (SELECT max(id_user_type) FROM user_type)
ORDER BY last_name ASC;

-- Group by
SELECT id_game, SUM(value) as votos
FROM vote
WHERE id_game IN (SELECT id_game
				  FROM game
                  WHERE id_level = 1)
GROUP BY id_game;

SELECT id_game
FROM game WHERE id_level = 1;

-- Uso de having dentro de la consulta
SELECT id_game, name, id_level
FROM GAME
WHERE id_level = 1 AND
	id_game IN 
(SELECT id_game
		FROM vote
        GROUP BY id_game
        HAVING count(*) > 1);
        