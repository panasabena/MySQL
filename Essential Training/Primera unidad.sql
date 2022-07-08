use scratch;
select * from customer where name like 'Jimi%';
Update name set address = 'Benito Carrasco 5852' WHERE name LIKE 'Jimi%';

-----------------------------------------------

CREATE TABLE test (a INT, b VARCHAR(16), c VARCHAR (16));
INSERT INTO TEST VALUES(1, 'this', 'right here!');
INSERT INTO TEST VALUES(2, 'that', 'over there!');
INSERT INTO TEST VALUES(3, 'another', 'nowhere.!');
INSERT INTO TEST VALUES(4, 'again', 'guess where?!');
INSERT INTO TEST VALUES(5, 'one more', 'everywhere!');

SELECT * FROM test;
SELECT * FROM TEST where a = 2;
DELETE FROM test WHERE a = 2; -- me tira el error de que estoy usando el safe mode asique lineas abajo lo deshabilito
SELECT * FROM test;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM test WHERE a = 2;
SELECT * FROM test; -- ahora funciona

---------------------------------------------------

SELECT * FROM CUSTOMER;
SELECT * FROM CUSTOMER WHERE name LIKE 'Jimi%' OR name LIKE 'Fred%';
DELETE FROM CUSTOMER WHERE name LIKE 'Jimi%' OR name LIKE 'FRED%';
SELECT * FROM CUSTOMER;

----------------------------------------------------

use album;
SELECT * FROM track;
SELECT * FROM ALBUM;

SELECT a.artist AS Artist, a.title AS Album, t.track_number AS 'Track Num',
    t.title AS Track, t.duration AS Seconds
  FROM album AS a
  JOIN track AS t ON a.id = t.album_id
  ORDER BY a.artist, a.title, t.track_number;
  
  SHOW DATABASES;
  USE SCRATCH;
  SHOW TABLES;
  DESCRIBE CUSTOMER;