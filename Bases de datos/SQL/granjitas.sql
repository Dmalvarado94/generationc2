create table hileras (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
numero_hilera int not null,
supervisor_id varchar(100)

);


create table supervisor (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) not null,
	telefono int,
	hilera int not null
);

create table temporeros (
	id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) not null,
	correo varchar(100) not null,
	supervisor_id int not null,
	foreign key (supervisor_id) references supervisor(id)
);

alter table temporeros 
add cantidad_cajas int not null;

insert into supervisor (nombre, telefono, hilera)
values ("Leonardo Favio", 232323, 1);

alter table supervisor 
add hilera_id int;

alter table supervisor 
add foreign key (hilera_id) references hileras(id);


