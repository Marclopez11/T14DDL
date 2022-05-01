CREATE DATABASE Peliculasysalas;


USE Peliculasysalas;




DROP TABLE IF EXISTS peliculas;
CREATE TABLE peliculas(
codigo int AUTO_INCREMENT PRIMARY KEY,
nombre nvarchar(100) NOT NULL,
calificacionedad int not null
);






DROP TABLE IF EXISTS salas;
CREATE TABLE salas(
codigo int AUTO_INCREMENT PRIMARY KEY,
nombre nvarchar(100) NULL,
id_pelicula int NOT NULL,
CONSTRAINT FK_pelicula FOREIGN KEY (id_pelicula)
REFERENCES peliculas(codigo)
ON DELETE CASCADE ON UPDATE CASCADE


);