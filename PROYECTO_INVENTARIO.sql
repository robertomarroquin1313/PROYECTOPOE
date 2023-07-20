CREATE DATABASE [PROYECTO_INVENTARIO]
GO
CREATE TABLE Productos_Detalle(
    prodcodigo INT PRIMARY KEY,
    prodnombre VARCHAR(150) NOT NULL,
    prodcantidad INT NOT NULL,
    proddescripcion VARCHAR(150) NULL,
    prodprecio NUMERIC(5, 2) NOT NULL,
    prodmarca VARCHAR(150) NULL
);
GO
USE PROYECTO_INVENTARIO
GO
 
INSERT INTO Productos_Detalle
VALUES(25,'zapatos',15,'tenis color negro',45.00,'adidas');

select * from Productos_Detalle