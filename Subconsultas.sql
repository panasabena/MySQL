-- Subconsultas SQL
SELECT id_system_user, last_name, id_user_type
FROM system_user
WHERE id_user_type = (SELECT max(id_user_type) FROM user_type); 

-- Subconsultas en una misma tabla
SELECT id_system_user
FROM vote WHERE value = (SELECT FLOOR(AVG(value)) from vote);

SELECT FLOOR(AVG(value)) FROM vote;

SELECT AVG(value) FROM vote;

SELECT sum(value)
FROM vote
WHERE id_game = (select min(id_game) from game);