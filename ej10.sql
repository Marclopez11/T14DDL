DROP DATABASE IF EXISTS grandesalmacenes ;
CREATE DATABASE grandesalmacenes;


USE grandesalmacenes;




DROP TABLE IF EXISTS cajeros;
CREATE TABLE cajeros(
codigo int AUTO_INCREMENT PRIMARY KEY,
nomapels nvarchar(255)  not null
);


DROP TABLE IF EXISTS productos;
CREATE TABLE productos(
codigo int AUTO_INCREMENT PRIMARY KEY,
nombre nvarchar(100)  not null,
precio int
);
DROP TABLE IF EXISTS maquinas_registradas;
CREATE TABLE maquinas_registradas(
codigo int AUTO_INCREMENT PRIMARY KEY,
piso int not null
);


DROP TABLE IF EXISTS venta;
CREATE TABLE venta(
cajero int,
maquina int,
producto int,
PRIMARY KEY (`cajero`, `maquina`, `producto`),
CONSTRAINT FK_calero FOREIGN KEY (cajero)
REFERENCES cajeros(codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_maquina FOREIGN KEY (maquina)
REFERENCES maquinas_registradas(codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_producto FOREIGN KEY (producto)
REFERENCES productos(codigo)
ON DELETE CASCADE ON UPDATE CASCADE


);