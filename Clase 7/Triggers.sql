/*Ejemeplo de trigger*/
DELIMITER $$
create trigger tr_troops_default_description
before insert	
on troops for each row
BEGIN
	IF NEW.description is null then
		set new.description = 'default description';
	END if;
END$$
DELIMITER ;

INSERT into troops (id, description) values (3, null);
select * from troops;

/*ej SP*/
DELIMITER $$
CREATE PROCEDURE country_hos (d VARCHAR(45)) -- la d es una variable del parámetro
BEGIN
	SELECT * 
	  FROM troops
	 WHERE description = d ;
END $$
DELIMITER ;

CALL country_hos ("Skull")