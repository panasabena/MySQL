use hospital;
select * from cita;

SET GLOBAL log_bin_trust_function_creators = 1;

/*Le pasamos la primera letra de la descripción y cuenta la cantidad
ejemplo, si ponemos U y hay varias descripciones que son [Urgentes] nos va a devolver la 
suma de la cantidad que son Urgentes, lo mismo si le pasamos el primer caracter de las otras
descripciones, L para leve e I para importante*/
delimiter //
DROP function IF EXISTS `tipo_cita`;
create function tipo_cita (letra char) returns int

begin
	declare numero int;
    select count(*) into numero from cita where Categoria like concat('%',letra, '%');
    return numero;
end //
delimiter ;

Select tipo_cita ('I');

/*Funcion que devuelve si es propenso o no a tener enfermedades de acuerdo a la edad*/
delimiter //
DROP function IF EXISTS `propenso`;
create function propenso(edad int)
returns char(255)
begin
	declare numero char(255);
    if (edad) > 40 then
		return concat('La edad de ', edad, ' es propenso a tener más enfermedades');
    else
		return concat ('La edad de', edad, ' no es tan propenso a tener enfermedades');
	end if;
end//
delimiter ;

select propenso(25);