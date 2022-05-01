CREATE DATABASE Informatica;


USE informatica;


DROP TABLE IF EXISTS fabricantes;
CREATE TABLE fabricantes(
codigo int AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100) NOT NULL
);






DROP TABLE IF EXISTS articulos;
CREATE TABLE articulos(
codigo int AUTO_INCREMENT PRIMARY KEY,
nombre varchar(8) NULL,
precio int NULL,
id_fabricante int NOT NULL,
CONSTRAINT FK_fabricante FOREIGN KEY (id_fabricante)
REFERENCES fabricantes(codigo)
ON DELETE CASCADE ON UPDATE CASCADE


);