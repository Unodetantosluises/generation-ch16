-- Crea una base de Datos
SHOW DATABASES;
-- Crea una base de Datos
CREATE DATABASE Tienda;
-- Usamos las base de datos que acabamos de crear
USE Tienda;
-- Eliminamos la tabla de datos que adabamos de crear
DROP DATABASE Tienda;
-- Creamos una tabla dentro de la base de datos Tienda
CREATE TABLE  clientes(
cliente_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre CHAR(50) NOT NULL,
apellido CHAR(50) NOT NULL,
telefono CHAR(11) NOT NULL,
dirreccion VARCHAR(150) NOT NULL
);
-- INSERT nos permite insertar valores en el campo de una tabla, estos campos respetan las mayusculas
INSERT INTO clientes (nombre, apellido, telefono, dirreccion)
VALUES('Pedro', 'Paramo', '5515471894', 'Comala'),
('Pedro', 'Paramo', '5515471894', 'Comala'),
('Pedro', 'Paramo', '5515471894', 'Comala');
-- El comando SELECT nos trae los valores de la tabla
SELECT * FROM clientes;
-- No permite eliminar los elementos de la tabla, con el where especificamos que elemento vamos a eliminar
DELETE FROM clientes
WHERE cliente_id = 4;

DELETE FROM clientes
WHERE cliente_id = 4;

DROP TABLE clientes;