create table pais (pais_id int primary key, nombre_pais varchar (50));
create table personas (persona_id int primary key, nombre_completo varchar(60), pais_id int);


alter table personas add constraint fk_personas_pais foreign key (pais_id) references pais (pais_id)
on delete cascade;


insert into pais(pais_id, nombre_pais)
values (1, 'Espania'),
	   (2,'Italia'),
       (3,'Argentina'),
       (4,'Albania'),
       (5,'Brasil');
       
insert into personas (persona_id, nombre_completo, pais_id)
values (1, 'Fernando Omar', 3),
	   (2, 'Julian Conte',3),
       (3, 'Nicolas Mariano',1),
       (4,'Laura Grisel',2),
       (5,'Constantino Pascual',4);
 
 
/*Luego de ejecutar esta linea de comando vemos que se borran los registros de pais y de personas
debido a la clausula cascade, que justamente lo que hace es un efecto cascada de borrado de datos.
Lo que se borra de una tabla, también se ve afectado en la otra*/
delete from pais where pais_id = 3;

select * from pais;
select * from personas;

/*Primero se borra la tabla hija, luego la tabla madre o padre*/
drop table personas;
drop table pais;

create table pais (pais_id int primary key, nombre_pais varchar (50));
create table personas (persona_id int primary key, nombre_completo varchar(60), pais_id int);

alter table personas add constraint fk_personas_pais foreign key (pais_id) references pais (pais_id)
on delete no action;

insert into pais(pais_id, nombre_pais)
values (1, 'Espania'),
	   (2,'Italia'),
       (3,'Argentina'),
       (4,'Albania'),
       (5,'Brasil');


insert into personas (persona_id, nombre_completo, pais_id)
values (1, 'Fernando Omar', 3),
	   (2, 'Julian Conte',3),
       (3, 'Nicolas Mariano',1),
       (4,'Laura Grisel',2),
       (5,'Constantino Pascual',4);
 /*Tratamos de borrar de nuevo los registros padres a ver que pasa*/
 
 delete from pais where pais_id = 3; /*No se puede borrar, justamente por la configuracion que le dimos*/

/*Ahora probamos con otro numero de registro, por ejemplo el 5, a ver que pasa*/

delete from pais where pais_id = 5; /*En este caso si lo borra porque Brasil (que es el 5, no está
asociado a ningun hijo, por eso no da error)*/

/*Ahora probamos el set null
Volvemos a borrar todo*/
drop table personas;
drop table pais;

create table pais (pais_id int primary key, nombre_pais varchar (50));
create table personas (persona_id int primary key, nombre_completo varchar(60), pais_id int);

alter table personas add constraint fk_personas_pais foreign key (pais_id) references pais (pais_id)
on delete set null;

insert into pais(pais_id, nombre_pais)
values (1, 'Espania'),
	   (2,'Italia'),
       (3,'Argentina'),
       (4,'Albania'),
       (5,'Brasil');


insert into personas (persona_id, nombre_completo, pais_id)
values (1, 'Fernando Omar', 3),
	   (2, 'Julian Conte',3),
       (3, 'Nicolas Mariano',1),
       (4,'Laura Grisel',2),
       (5,'Constantino Pascual',4);
/*Probamos de nuevo borrar el pais argentina, con la configuracion nueva del set null*/
delete from pais where pais_id = 3;

	select * from pais;
    select * from personas;
    
/*Ahora vemos como funcionan con update*/
drop table personas;
drop table pais;

create table pais (pais_id int primary key, nombre_pais varchar (50));
create table personas (persona_id int primary key, nombre_completo varchar(60), pais_id int);

alter table personas add constraint fk_personas_pais foreign key (pais_id) references pais (pais_id)
on update cascade;

insert into pais(pais_id, nombre_pais)
values (1, 'Espania'),
	   (2,'Italia'),
       (3,'Argentina'),
       (4,'Albania'),
       (5,'Brasil');


insert into personas (persona_id, nombre_completo, pais_id)
values (1, 'Fernando Omar', 3),
	   (2, 'Julian Conte',3),
       (3, 'Nicolas Mariano',1),
       (4,'Laura Grisel',2),
       (5,'Constantino Pascual',4);

	select * from pais;
    select * from personas;

update pais 
set pais_id = 6 
where pais_id = 3;

select * from pais;

select * from personas;

/*Probando el update con update set null*/
drop table personas;
drop table pais;

create table pais (pais_id int primary key, nombre_pais varchar (50));
create table personas (persona_id int primary key, nombre_completo varchar(60), pais_id int);

alter table personas add constraint fk_personas_pais foreign key (pais_id) references pais (pais_id)
on update set null;

insert into pais(pais_id, nombre_pais)
values (1, 'Espania'),
	   (2,'Italia'),
       (3,'Argentina'),
       (4,'Albania'),
       (5,'Brasil');


insert into personas (persona_id, nombre_completo, pais_id)
values (1, 'Fernando Omar', 3),
	   (2, 'Julian Conte',3),
       (3, 'Nicolas Mariano',1),
       (4,'Laura Grisel',2),
       (5,'Constantino Pascual',4);

	select * from pais;
    select * from personas;

update pais 
set pais_id = 6 
where pais_id = 3;

select * from pais;
select * from personas;
