-- Full Join
SELECT p.id_system_user as user, g.id_game as game,
g.name, g.id_level as level
FROM game as g RIGHT JOIN play p
ON (p.id_game = g.id_game)
UNION
SELECT p.id_system_user as user, g.id_game as game,
g.name, g.id_level as level
FROM game g RIGHT JOIN play p
ON (p.id_game = g.id_game);

-- EJEMPLO
SELECT id_game, name, description, id_level, id_class
FROM game
WHERE id_level = 1
UNION
SELECT id_game, name, description, id_level, id_class
FROM game
WHERE id_level = 2;

