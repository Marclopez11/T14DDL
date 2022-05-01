DROP DATABASE IF EXISTS directores
CREATE DATABASE directores;


USE directores;




DROP TABLE IF EXISTS despachos;
CREATE TABLE despachos(
numero int AUTO_INCREMENT PRIMARY KEY,
capacidad int not null
);








DROP TABLE IF EXISTS directores;
CREATE TABLE directores(dni varchar(8) PRIMARY KEY,
nombre_apellidos VARCHAR(255),
id_despacho int,
CONSTRAINT FK_despacho FOREIGN KEY (id_despacho)
REFERENCES despachos(numero)
ON DELETE CASCADE ON UPDATE CASCADE,
id_dnijefe varchar(8),
CONSTRAINT FK_dnijefe FOREIGN KEY (id_dnijefe)
REFERENCES directores(dni)
ON DELETE CASCADE ON UPDATE CASCADE






);