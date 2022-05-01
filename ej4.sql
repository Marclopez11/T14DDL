CREATE DATABASE Empleados;


USE Empleados;


DROP TABLE IF EXISTS departamentos;
CREATE TABLE departamentos(
codigo int AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100) NOT NULL,
prosupueto int not null
);






DROP TABLE IF EXISTS empleados;
CREATE TABLE empleados(
dni varchar(8) PRIMARY KEY,
nombre varchar(100) NULL,
apellidos varchar(255) NULL,
id_departamento int NOT NULL,
CONSTRAINT FK_departamento FOREIGN KEY (id_departamento)
REFERENCES departamentos(codigo)
ON DELETE CASCADE ON UPDATE CASCADE


);