# Reporte 1 #
/*En esta consulta se muestran las citas con el medico de caracter Leve. Lo mismo se puede hacer, cambiando
la categoría en la consulta, por ejemplo a Urgente. Exportamos el reporte*/
select * from cita
where categoria = "Leve";

# Reporte 2 #
/*Esta tabla nos muestra el id del paciente que canceló la cita y el id de la cita que fué cancelada. Lo que es
sumamente útil, para poder realizar otra consulta en ese turno.*/
select * from cita_cancelada;

# Reporte 3 #
/*En la siguiente consulta se hace uso de la unión de tablas para poder visualizar específicamente cuantas consultas
tiene asignado el médico de Id = 9. Con este reporte se podría ver si el médico está con muchas citas programadas
o no. Con lo que se podría organizar las futuras consultas del médico*/
select * from medico m inner join cita c on m.Id_Medico = c.Id_Medico
where m.Id_Medico = 9;

# Reporte 4 #
/*Se unen con el orden de la seguna tabla. Y si la primera tabla tiene más registros que la segunda. Estos,
se verán pero con sus filas correspondientes nulas (porque no les corresponden datos de la segunda tabla)
En este caso, se puede ver que Merit Ptah y Rene Laennec, no tienen ninguna cita asignada.*/
select * from medico m left outer join cita c on m.Id_Medico = c.Id_Medico
where m.Id_Medico;

# Reporte 5#
/*Se muestran todos los turnos asignados a cada uno de los médicos*/
select * from medico m right outer join cita c on m.Id_Medico = c.Id_Medico
where m.Id_Medico;

# Reporte 6 #
/*Creamos informe en donde se muestran a los pacientes de más de 20 años que tienen una cita de carácter urgente*/
select * from paciente p inner join cita c on p.Id_Paciente = c.Id_Paciente where p.edad>20 and c.Categoria = "Urgente";

# Reporte 7 #
/*El inner join se une con el orden y los datos de la primer tabla. Creamos este informe con el fin de ver y 
consultar la información de una manera más completa*/
select * from medico m inner join cita c on m.Id_Medico = c.Id_Medico;


