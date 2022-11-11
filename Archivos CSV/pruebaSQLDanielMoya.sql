-- Prueba SQL intento 2

/* Puntos a considerar:
● Don José vende distintos tipos de productos.
● Tiene distintos proveedores.
● Desea un informe anual sobre ganancias y venta de productos.

Puntos a evaluar:
● Creación de la base.
● Creación de tablas necesarias.
● Generar distintos tipos de relaciones entre tablas.
● Generar tablas relacionales.
● Poblar la base con al menos 5 productos.
● Poblar la base con al menos 4 tipos de productos.
● Generar una consulta que una a lo menos 2 tablas (JOIN).
● Creación lógica que tenga relación con el caso */

create table proveedor(
	id INT primary key NOT NULL auto_increment,
	nombreprov varchar(100) NOT NULL,
	descripcion varchar(100) NOT NULL,
	numerotel varchar(100) NOT NULL
);

create table productos(
    id INT primary key NOT NULL auto_increment,
    nombre varchar(100) NOT NULL,
    tipo_producto varchar(100) NOT NULL,
    valor_unitario int NOT NULL,
    proveedor_id int NOT NULL,
    foreign key(proveedor_id) references proveedor(id)
    );
   
 create table compra(
    id INT primary key NOT NULL auto_increment,
    fechacompra date NOT NULL,
    monto int NOT NULL,
    producto_id int not null,
    foreign key(producto_id) references productos(id)
);

create table pedido_proveedor(
	id INT primary key NOT NULL auto_increment,
	pproveedor_id int not null,
	compra_id int not null,
	foreign key(pproveedor_id) references proveedor(id),
	foreign key(compra_id) references compra(id)
	);

-- inserción de datos proveedores
INSERT into proveedor (nombreprov,descripcion, numerotel)
values ("Israel", "vende dulces", "9992323");
INSERT into proveedor (nombreprov,descripcion, numerotel)
values ("Luis", "vende bebidas", "8823234");
INSERT into proveedor (nombreprov,descripcion, numerotel)
values ("Cynthia", "vende cereal", "7772290");
INSERT into proveedor (nombreprov,descripcion, numerotel)
values ("Kiara", "vende abarrotes", "5343829");
-- insert datos productos
INSERT into productos (nombre, tipo_producto, valor_unitario, proveedor_id)
values ("galleta", "dulces", "300", 1);
INSERT into productos (nombre, tipo_producto, valor_unitario, proveedor_id)
values ("chocolate", "dulces", "500", 1);
INSERT into productos (nombre, tipo_producto, valor_unitario, proveedor_id)
values ("pepsi", "bebidas", "1200", 2);
INSERT into productos (nombre, tipo_producto, valor_unitario, proveedor_id)
values ("pap", "bebidas", "1000", 2);
INSERT into productos (nombre, tipo_producto, valor_unitario, proveedor_id)
values ("quaker", "cereales", "800", 3);
INSERT into productos (nombre, tipo_producto, valor_unitario, proveedor_id)
values ("chocapic", "cereales", "900", 3);
INSERT into productos (nombre, tipo_producto, valor_unitario, proveedor_id)
values ("fideos", "abarrotes", "700", 4);
INSERT into productos (nombre, tipo_producto, valor_unitario, proveedor_id)
values ("arroz", "abarrotes", "650", 4);
-- insertamos compras
INSERT into compra (fechacompra, monto, producto_id)
values ("2022-11-10 21:11:00", "3", "1");
INSERT into compra (fechacompra, monto, producto_id)
values ("2022-12-10 12:11:00", "2", "2");
INSERT into compra (fechacompra, monto, producto_id)
values ("2022-12-21 11:11:00", "2", "3");
INSERT into compra (fechacompra, monto, producto_id)
values ("2022-11-25 14:11:00", "4", "4");


-- Query para ver los productos
SELECT * from productos;

-- Query para ver el total de cada compra. (1 por 1)
select productos.nombre, compra.monto, productos.valor_unitario,compra.monto * productos.valor_unitario Total from compra
INNER JOIN productos;

-- Querys para ver la suma de todas las bebidas
SELECT SUM(valor_unitario) TotalBebidas FROM compra 
INNER JOIN
productos p 
ON p.tipo_producto  LIKE '%bebidas%'
;

-- Query para ver todas las compras del 2022
select * from productos p 
INNER JOIN compra
ON p.id = compra.producto_id 
where compra.fechacompra LIKE '%2022%'
;

-- Querys para ver cuanto vendí en Diciembre del 2022.
SELECT compra.fechacompra, compra.monto, compra.producto_id from compra
where compra.fechacompra LIKE '%2022-12%'
;



