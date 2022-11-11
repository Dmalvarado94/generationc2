-- query para la insercion de un registro
INSERT INTO generationc2.estudiante (nombre,id,apellido) 
VALUES ('Ali',8,'Turip');
INSERT INTO generationc2.estudiante (nombre,id,apellido) 
VALUES ('Jose',7,'Turip');
INSERT INTO generationc2.estudiante (nombre,id,apellido) 
VALUES ('Prueba',6,'Turip');

-- query para eliminar un registro

DELETE FROM generationc2.estudiante
	WHERE nombre='Prueba' AND id=6 AND apellido='Turip';
