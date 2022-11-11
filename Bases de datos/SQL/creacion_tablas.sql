-- Una forma de crear
CREATE TABLE generationc2.directivos (
    id INT NOT NULL auto_increment,
    nombre varchar(100) NOT NULL,
    apellido varchar(100) NOT NULL,
    primary key (id)
);

-- otra forma crear tablas
CREATE TABLE nombre_tabla(
    nombre_columna1 tipo_dato restricciones,
    nombre_columna2 tipo_dato restricciones,
    nombre_columna3 tipo_dato restricciones,
);

CREATE TABLE generationc2.mascotas (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL,
	especialidad varchar(100) NOT NULL
);

CREATE TABLE generationc2.directivos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL	
);

INSERT into directivos (id, nombre, apellido)
values (1,"Maggi", "Fernandez");
INSERT into directivos (id, nombre, apellido)
values (2,"Isra", "Palma");
INSERT into directivos (id, nombre, apellido)
values (3,"Lau", "Soto");

-- crear tabla cursos

CREATE TABLE generationc2.cursos (
    id INT NOT NULL auto_increment,
    nombre varchar(100) NOT NULL,
    cant_alumnos int NOT NULL,
    especialidad varchar(100),
    primary key (id)
);


