use hospital;
/*Creación de vistas*/
create view primera_vista
as select * from hospital;

/*Mostrando la primera vista creada*/
select * from primera_vista;

/*Creando otra segunda_vista*/
create or replace view second_view as (select sucursal, direccion from hospital);

select * from second_view;

/*Creando Tercera_vista*/
create or replace view third_view as (select nombre, edad from paciente where Nombre like ('%Juan%'));

select * from third_view;

/*Creando cuarta_vista*/
create or replace view fourth_view as 
(select id_paciente, id_medico, hora_cita from cita where id_medico = 3);

select * from fourth_view;

/*Creando quinta_vista*/
create or replace view fifth_view as (select id_paciente, nombre, mail from paciente p) 
inner join cita c on p.id_paciente = c.id_paciente;

/*Creando vista join de dos tablas
Lo queremos ver es el nombre del paciente, mail y numero de telefono que tienen asignada una cita con
el medico en un determinado día*/

create or replace view cita_paciente as select a.Id_Cita, a.Id_Paciente, a.Id_Medico, p.Nombre, p.Mail,
p.Teléfono, a.Fecha_Cita from cita a inner join paciente p on a.Id_Paciente = p.Id_Paciente;

select * from cita_paciente;
