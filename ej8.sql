DROP DATABASE IF EXISTS piezasyprovedores ;
CREATE DATABASE piezasyprovedores;


USE piezasyprovedores;




DROP TABLE IF EXISTS piezas;
CREATE TABLE piezas(
codigo int AUTO_INCREMENT PRIMARY KEY,
nombre nvarchar(100) not null
);






DROP TABLE IF EXISTS proveedores;
CREATE TABLE proveedores(
id char(4) PRIMARY KEY,
nombre nvarchar(100)  not null
);








DROP TABLE IF EXISTS suministra;
CREATE TABLE suministra(


codigopieza int,
idproveedor char(4),
PRIMARY KEY (`codigopieza`, `idproveedor`),
precio int,
CONSTRAINT FK_proveedor FOREIGN KEY (codigopieza)
REFERENCES piezas(codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_prveedor FOREIGN KEY (idproveedor)
REFERENCES proveedores(id)
ON DELETE CASCADE ON UPDATE CASCADE


);