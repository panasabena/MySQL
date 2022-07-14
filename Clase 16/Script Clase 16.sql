use sakila;
call sp_get_games();
call sp_get_game_by_id_level(2);
call sp_get_game_by_id_level(11);
CALL sp_get_games_order('name');
select * from game;
call sp_insert_class_incremental(11,'prueba sp increment');
select * from class order by id_class desc;
call sp_insert_class (0,302,'prueba sp insert class');