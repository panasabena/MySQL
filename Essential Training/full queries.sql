use world;
/*Cuenta*/
select count(*) from country where population > 10000000;
-- 01 comparison operators

SELECT 0 = 0;
SELECT 0 = 1;
SELECT 0 = '0';
SELECT '0.1' > 0;
SELECT '0.1' < 0;
SELECT 0.1 < 0;
SELECT 9 < 7;
SELECT 9 > 7;
SELECT 9 = 7;
SELECT 9 != 7;
SELECT 9 <= 7;
SELECT 9 >= 7;
SELECT (9 > 7) AND (12 < 27);
SELECT (9 > 7) OR (12 < 27);
SELECT (9 > 7) IS TRUE;
SELECT (9 > 7) IS NOT TRUE;

-- 02 logical operators

SELECT 1 AND 1;
SELECT 1 OR 1;
SELECT 1 OR 0;
SELECT 1 XOR 0;
SELECT 1 XOR 1;

SELECT 1 IS TRUE;
SELECT 1 IS NOT TRUE;

SELECT 1 IS NULL;
SELECT 1 IS NOT NULL;
SELECT 0 IS NULL;
SELECT 0 IS NULL;
SELECT NULL IS NULL;
SELECT '' IS NULL;

SELECT 7 IN (1, 5, 9);
SELECT 9 IN (1, 5, 9);

USE world;
SELECT Name AS 'Country', ROUND(Population / 1000000) AS 'PopMM' 
  FROM Country 
  WHERE Population > 50000000 AND Continent IN ('Asia', 'Europe')
  ORDER BY Population DESC;

SELECT t.title AS 'Track', t.track_number AS 'Track No', a.title AS 'Album', 
    a.artist AS 'Artist', t.duration AS 'Seconds'
  FROM Album AS a
  JOIN Track AS t ON t.album_id = a.id
  WHERE t.duration > 120 AND t.track_number > 3
  ORDER BY t.duration DESC;

-- 03 assignment operators

SELECT 5 + 3;
SELECT 5 - 3;
SELECT 5 * 3;
SELECT 5 / 3;
SELECT 5 DIV 3;
SELECT 5 MOD 3;
SELECT 5 / 0;

-- 04 operator precedence

SELECT 5 + 6 * 7 - 8;
SELECT (5 + 6) * (7 - 8);
SELECT 5 + (6 * 7) - 8;

-- 05 The CASE statement

USE scratch;

DROP TABLE IF EXISTS booltest;
CREATE TABLE booltest (a INTEGER, b INTEGER);
INSERT INTO booltest VALUES (1, 0);
SELECT * FROM booltest;

SELECT
  CASE WHEN a < 5 THEN 'true' ELSE 'false' END AS boolA,
  CASE WHEN b > 0 THEN 'true' ELSE 'false' END AS boolB
  FROM booltest
;

SELECT
  CASE a WHEN 1 THEN 'true' ELSE 'false' END AS boolA,
  CASE b WHEN 1 THEN 'true' ELSE 'false' END AS boolB 
  FROM booltest
;

DROP TABLE IF EXISTS booltest;

-- 06 the IF statement

USE scratch;

DROP TABLE IF EXISTS booltest;
CREATE TABLE booltest (a INTEGER, b INTEGER);
INSERT INTO booltest VALUES (1, 0);
SELECT * FROM booltest;

SELECT IF(a < 5, 'TRUE', 'FALSE') FROM booltest;
SELECT IF(b > 0, 'TRUE', 'FALSE') FROM booltest;

DROP TABLE IF EXISTS booltest;

select 7 % 3;

use world;
select * from country;
select name from country where name like '%a';

/*Regular expressions*/
use world;
select name from country where name Rlike 'y$' order by name; /*Muestra todos los paises terminados en y*/
select concat('Love', ' ','is', ' ', 'all', ' ','you', ' ', 'need');

/*Trimming and paddindg*/
/*Lo que hace el comando trim, es cortar el caracter que le indicamos en el parametro,
en este caso es la x*/
select concat (':', trim('x' FROM 'xxxBill Smithxxx'), ':');
/*Si le indicamos que corte los espacios, cortará los espacios*/
select concat (':', trim(' ' FROM '   Bill Smithxxx'), ':');
/*Le podemos indicar que solo corte sólo los caracteres de la izquierda*/
select concat (':', ltrim('   Bill Smith   '), ':');
/*Pero este comando no funciona con caracteres, al parecer sólo funciona con los espacios*/
select concat (':', ltrim('xxxBill Smithxxx'), ':'); -- devuelve lo mismo

select lpad('Price',20, '.');
select rpad('Price',20, '.');

use scratch;
select lcase(name) from customer;
select ucase(name) from customer;
select concat(upper(substring(name,1,1), lower(substring(name,2)))) from customer;

/*Select substring*/
SELECT substr('This is a string', 6);
SELECT substr('This is a string', 6, 4);
SELECT substr('This is a string', -6);
SELECT substr('This is a string', ' ', -4);

/*Soundex*/
select soundex('Bill'), soundex('Bell');
/**/
select 'bill' sounds like 'boil', 'bill' sounds like 'phil';

/*Mathematical Functions*/

select ceiling(12.2); -- redondea para arriba
select ceil(12.2); -- redondea para arriba
select floor(12.2); -- redondea para abajo
select round(17.4); -- para dode esta mas cerca
select round(17.6);

/*Basic math*/
select pi() + 0.0000;
select power(8,2);
select sqrt(64);
select power(4096,1/4);
select rand(); -- arroja un numero random
-- se puede seleccionar una semilla tambien
select rand(42);
select asin(.2);
select cos(pi());
select acos(pi());
select tan(pi());
/*Logarithms*/
select log(10,100);
select log(2,65535);
/*Radians and degrees*/
SELECT RADIANS(180);
SELECT DEGREES(30);
select log(10,10000);
SELECT EXP(2,5);
SELECT EXP(4);
select 5 mod 2;