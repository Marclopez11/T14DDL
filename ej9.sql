DROP DATABASE IF EXISTS cintificos ;
CREATE DATABASE cintificos;


USE cintificos;




DROP TABLE IF EXISTS proyecto;
CREATE TABLE proyecto(
id char(4) PRIMARY KEY,
nombre nvarchar(100)  not null,
horas int 
);






DROP TABLE IF EXISTS cientificos;
CREATE TABLE cientificos(
dni char(8) PRIMARY KEY,
nomapels nvarchar(255)  not null
);








DROP TABLE IF EXISTS asignado_a;
CREATE TABLE asignado_a(


cientifico varchar(8),
proyecto char(4),
PRIMARY KEY (`cientifico`, `proyecto`),


CONSTRAINT FK_cientifico FOREIGN KEY (cientifico)
REFERENCES cientificos(dni)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_proyecto FOREIGN KEY (proyecto)
REFERENCES proyecto(id)
ON DELETE CASCADE ON UPDATE CASCADE,




);