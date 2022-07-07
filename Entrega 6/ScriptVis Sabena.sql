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

/*Order by View*/
/*Lo que se busca hacer es darle un orden a la consulta anterior por edad*/
create or replace view ordenado_por_edad as select 
a.Id_Cita, a.Id_Paciente, a.Id_Medico, p.Nombre, p.Edad, p.Mail,
p.Teléfono, a.Fecha_Cita from cita a inner join paciente p on a.Id_Paciente = p.Id_Paciente
order by edad desc;

select * from ordenado_por_edad;

/*Consultas*/
select * from medicina;
select * from prescripcion;

/*Vamos a crear una vista que solo nos muestre las prescripciones urgentes
Y la vamos a unir con la tabla de pacientes para que nos traiga los datos de contacto del paciente
y poder avisarle que su prescripcion es de caracter urgente*/

create or replace view urgente as select 
u.Id_Prescripcion, u.Id_Paciente, u.Categoria, u.Dias, u.Nombre_medicina, p.Mail,
p.Teléfono from prescripcion u inner join paciente p on u.Id_Paciente = p.Id_Paciente
order by edad desc;
select * from urgente;
