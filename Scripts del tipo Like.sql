-- Ejemplos del tipo "Like"
SELECT *
FROM game 
WHERE name LIKE "_IFA%"; -- el caracter _ es un caracter comodín que nos permite no conocer un caracter

SELECT *
FROM game 
WHERE name LIKE "FIFA%"; -- el caracter % al final son todos los juegos que empiezan con FIFA

-- el caracter % al principio y al final significa que nos va a traer todo lo que contenga Ultimate
SELECT *
FROM game
WHERE name LIKE "%Ultimate%"; 

-- El caracter % al principio nos va a traer todo lo que termina en TEAM
SELECT *
FROM game
WHERE name LIKE "%Team"; 