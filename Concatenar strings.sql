SELECT concat("Francisco"," ", "Alfredo"," ", "Sabena") as Nombre_Completo;
-- Convierte tu nombre completo en mayúsculas
SELECT upper(concat("Francisco"," ", "Alfredo"," ", "Sabena")) as Nombre_Completo;
-- Convierte tu nombre completo en minúsculas
SELECT lower(concat("Francisco"," ", "Alfredo"," ", "Sabena")) as Nombre_Completo;
SELECT lcase(concat("Francisco"," ", "Alfredo"," ", "Sabena")) as Nombre_Completo;


Select floor(1994/0806) as resultado;
-- Devuelve el día de la fecha
select dayname("1994-08-06") as Día_de_Nacimiento;

select datediff(curdate(),"1994-08-06") as Días_de_vida;

select timestampdiff(year,'1994-05-08', curdate()) as Cantidad_de_años_hasta_hoy