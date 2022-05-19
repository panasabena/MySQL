-- Resolver las siguientes consultas:
-- 1. Todos los comentarios sobre juegos desde 2019 en adelante
SELECT comment_date, commentary
from commentary
WHERE comment_date >= "2019-01-01";

-- 2. Todos los comentarios sobre juegos anteriores a 2011
select comment_date, commentary
from commentary
where comment_date < "2011-01-01";

-- 3. Los usuarios y texto de aquellos comentarios sobre juegos cuyo código de juego (id_game) sea 73
## Primero quiero ver que tiene la tabla por eso traigo todo
select * 
from game LIMIT 10;
select * from commentary LIMIT 10;
SELECT id_user
FROM game;
SELECT id_game, id_system_user, commentary FROM commentary
WHERE id_game= 73;

-- 4. Los usuarios y textos de aquellos comentarios sobre juegos cuyo id de juego no sea 73
SELECT id_game, id_system_user, commentary FROM commentary
WHERE id_game != 73;

-- 5. Aquellos juegos de nivel 1
select * from game limit 10;
SELECT * FROM game WHERE id_level = 1;

-- 6. Aquellos juegos sean de nivel 14 o superior
SELECT * FROM game WHERE id_level >= 14;

-- 7. Aquellos juegos de nombre "Riders Republic" o "The Dark Pictures: HOuse Of Ashes"
SELECT * FROM game WHERE name = "Riders Republic" or name= "The Dark Pictures: House Of Ashes";
-- Otra forma de hacer los mismo sería:
SELECT * FROM game WHERE name in ("Riders Republic","The Dark Pictures: House Of Ashes");
-- 8. Aquellos juegos cuyo nombre empiece con "Gran".

-- 9. Aquellos juegos cuyo nombre contenga "field".


-- Ejemplo de operador like:
select * from game where name like "%riders%";
select * from game where upper(name) like "%RIDERS%";
select * from game where lower(name) like "%riders%";

-- /*ej alias/
SELECT
	su.id_system_user as id, -- su es un alias de system_user
    su.last_name as l_n, -- su es un alias de system_user
    su.password as pass -- su es un alias de system_user
from system_user su -- acá se define que system_user es su
order by su.id_system_user;

-- Funciones de agregación
select count(*) as total_level
from level_game;

select min(id_level)
as min_level
from level_game;

select min(id_level)
from level_game;