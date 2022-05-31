CREATE TABLE friend(id INT, first_name VARCHAR(30), last_name VARCHAR(30), troop INT, PRIMARY KEY(id)
);

-- DROP TABLE FRIEND; 

INSERT INTO friend (id, first_name, last_name, troop) VALUES
(1,"Rick", "Hunter", "2"),
(2,"Roy", "Fokler", "2"),
(3,"Max", "Sterling", "2"),
(4,"Kramer", "Key", "2"),
(5,"Mriya", "Sterling", "2"),
(6,"Ben", "Dixon", "1");

Create table troops(
id INT,
description VARCHAR(45),
PRIMARY KEY(id),
FOREIGN KEY(id) REFERENCES friend(id)
);

INSERT INTO troops (id, description) VALUES
(1, "Vermillion"),
(2,"Skull");

select * from friend;