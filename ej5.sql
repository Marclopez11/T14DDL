CREATE DATABASE Almacenes;


USE Almacenes;




DROP TABLE IF EXISTS almacenes;
CREATE TABLE almacenes(
codigo int AUTO_INCREMENT PRIMARY KEY,
lugar nvarchar(100) NOT NULL,
capacidad int not null
);






DROP TABLE IF EXISTS cajas;
CREATE TABLE cajas(
numreferencia char(5) PRIMARY KEY,
contenido nvarchar(100) NULL,
valor int  NULL,
id_almacen int NOT NULL,
CONSTRAINT FK_almacen FOREIGN KEY (id_almacen)
REFERENCES almacenes(codigo)
ON DELETE CASCADE ON UPDATE CASCADE


);