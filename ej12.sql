DROP DATABASE IF EXISTS cursosdediomas ;
CREATE DATABASE cursosdediomas;
USE cursosdediomas;




DROP TABLE IF EXISTS profesores;
CREATE TABLE profesores(
nombre nvarchar(100)  not null,
apellido1 nvarchar(100) ,
apellido2 nvarchar(100),
dni varchar(8) PRIMARY KEY,
direccion nvarchar(100)  not null,
titulo nvarchar(100),
gana nvarchar(100)  not null
);




DROP TABLE IF EXISTS curso;
CREATE TABLE curso(
id_curso INT AUTO_INCREMENT PRIMARY KEY,
nombre_curso nvarchar(100) UNIQUE ,
cod_curso int  not null,
dni_profesor varchar(8),
mxalumnos int not null,
fecha_inicio date,
fecha_fin date,
num_horas int not nul,
CONSTRAINT FK_dniprofesor FOREIGN KEY (dni_profesor)
REFERENCES profesores(dni)
ON DELETE CASCADE ON UPDATE CASCADE
);








DROP TABLE IF EXISTS alumnos;
CREATE TABLE alumnos(
nombre nvarchar(100)  not null,
apellido1 nvarchar(100) not null,
apellido2 nvarchar(100) not null,
dni varchar(8) PRIMARY KEY,
direccion nvarchar(100)  not null,
sexo ENUM ('H','M'),
fecha_nacimient varchar(100),
curso int  not null,
CONSTRAINT FK_curso FOREIGN KEY (curso)
REFERENCES curso(id_curso)
ON DELETE CASCADE ON UPDATE CASCADE);