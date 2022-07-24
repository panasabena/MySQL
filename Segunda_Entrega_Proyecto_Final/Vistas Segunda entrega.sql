use hospital;

/*Objetivo: No ver el nombre del tratamiento, no ver los nombres de los materiales, 
unir varias tablas en la misma vista, con la información escencial, paciente y medicina que le asignaron al mismo*/
create or replace view medicina_paciente as select m.Id_medicina, m.Descripcion, id_prescripcion, id_paciente from medicina m inner join prescripcion p on m.Id_medicina = p.Id_medicina;
select * from medicina_paciente;

------------------------------------------------------------------------------------------------------

/*Creando vita nombre_paciente*/
/*Objetivo, restringir el acceso a la información completa del paciente, brindando sólamente acceso a
el nombre y la edad del paciente. Protegiendo sus datos personales tales como el mail, documento de 
identidad y número telefónico*/
create or replace view nombre_paciente as (select nombre, edad from paciente);
select * from nombre_paciente;

------------------------------------------------------------------------------------------------

/*Creando vista join de dos tablas
Lo queremos ver es el nombre del paciente, mail y numero de telefono que tienen asignada una cita con
el medico en un determinado día*/

create or replace view cita_paciente as select a.Id_Cita, a.Id_Paciente, a.Id_Medico, p.Nombre, p.Mail,
p.Teléfono, a.Fecha_Cita from cita a inner join paciente p on a.Id_Paciente = p.Id_Paciente;

select * from cita_paciente;

-------------------------------------------------------------------------------------------------

/*Order by View*/
/*Lo que se busca hacer es darle un orden a la consulta de cita_paciente por edad*/
create or replace view ordenado_por_edad as select 
a.Id_Cita, a.Id_Paciente, a.Id_Medico, p.Nombre, p.Edad, p.Mail,
p.Teléfono, a.Fecha_Cita from cita a inner join paciente p on a.Id_Paciente = p.Id_Paciente
order by edad desc;

select * from ordenado_por_edad;
-------------------------------------------------------------------------------------------------

/*El objetivo de esta vista es mostrar unicamente las citas de caracter urgente que tiene o tuvo 
el paciente*/
create or replace view urgente as select 
u.Id_Prescripcion, u.Id_Paciente, u.Categoria, u.Dias, u.Nombre_medicina, p.Mail,
p.Teléfono from prescripcion u inner join paciente p on u.Id_Paciente = p.Id_Paciente
where Categoria like ('%Urgente%');
select * from urgente;

