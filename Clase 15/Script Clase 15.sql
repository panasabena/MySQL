select litros_pintura_superficie(22, 5,3) as total_pintura;

use sakila;
select * from game;

select get_game(1) as game_name;


select * from play;
select name from game g inner join play p on p.id_game = g.id_game where g.id_game = p_id_game = p_id_game and p.completed = 1;

SELECT get_game_completed(1, 263) AS game_name;


-- creamos un ejemplo de funciones en la bbdd sakila
drop function tipo_sueldo_empleados;
delimiter $$
create function tipo_sueldo_empleado(sueldo int)
returns char(255)
begin
	declare cantidad char(255);
    if (sueldo) > 25000 then
		return concat('sueldo ingresa; ', sueldo, 'Es alto');
    else
		return concat ('sueldo ingresa;', sueldo, 'Es bajo');
	end if;
end$$

-- veridicamos la funcion

select tipo_sueldo_empleados;