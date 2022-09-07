USE tienda;

INSERT INTO clientes (nombre, apellido, telefono, dirreccion)
VALUES ('Pedro', 'Páramo', '555555234', 'Comala'),
('Raul', 'Sanchez', '555555234', 'Hidalgo'),
('Victor', 'Fernández', '555555234', 'Comala'),
('Magali', 'Quiroz', '555555234', 'CDMX'),
('María', 'Vargas', '555555234', 'CDMX'),
('Marina', 'Pardo', '555555234', 'CDMX');

select * from tienda.clientes;

INSERT INTO compra(cliente_id, fecha_compra, total, cantidad_productos)
values (6, '2022-09-06', 300.50, 2);


-- INNER JOIN
-- Explicita
SELECT *
FROM clientes
INNER JOIN 	compra
ON clientes.cliente_id = compra.cliente_id;

SELECT 
clientes.cliente_id,
clientes.nombre,
compra.*
FROM clientes
ON;


-- Union implicita
select *
from clientes, compra
where clientes.cliente_id = compra.cliente_id;

-- Left Join
SELECT *
FROM clientes
left join 
ON clientes.cliente_id = compra.cliente_id;

USE SAKILA;

/*
address - city/address
city - city_id
country - country_id/country
*/

-- En este  caso es una unio de tres tablas
SELECT 
address.address,
city.city,
city.country_id
FROM city
INNER JOIN city
ON address.city_id = city.city_id;

SELECT * FROM 
country.country AS Pais,
city.city as Ciudad,
address.address AS Direccion
FROM country 
INNER JOIN city on city.country_id = country.country_id 
INNER JOIN address on address.city_id = city.city_id;