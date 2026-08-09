--ventas_tech_db
--CREAR BASE DE DATOS 
CREATE DATABASE Ventas_Tech_DB;
--USAR LA BASE DE DATOS 
USE Ventas_Tech_DB;
--DROP TABLES PARA ELIMINAR TABLAS 
DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS categorias;
-- CREAR TABLAS 
--CREAR TABLA CATEGORIAS
CREATE TABLE Categorias (
  Id_Categoria int not null PRIMARY KEY,--identificador unico 
  Nombre_Categoria VARCHAR (50) not null,--nombre de la categoria va con texto porque es nombre 
  Descripcion VARCHAR (200) not null--descripcion de la categoria 
  );
--CREAR TABLA CLIENTES
CREATE TABLE Clientes (
  Id_Cliente int not null PRIMARY KEY,--identificador unico 
  Nombre_Cliente VARCHAR (100) not null,--nombre de cliente va con texto porque es nombre 
  Email_Cliente VARCHAR (100) UNIQUE,--descripcion de la categoria 
  Ciudad  VARCHAR (50),
  Fecha_registro DATE
  );
--CREAR TABLA PRODUCTOS
CREATE TABLE Productos (   
  Id_Producto INT PRIMARY KEY,
  nombre_producto VARCHAR(100) NOT NULL,
  Id_Categoria INT not null FOREIGN KEY REFERENCES Categorias(Id_Categoria),--hace referencia a la otra tabla 
  precio DECIMAL(10,2) NOT NULL,
  stock INT DEFAULT 0,
  activo TINYINT (1) DEFAULT 1
  );
--CREAR TABLA VENTAS
CREATE TABLE Ventas (
  Id_Venta INT NOT NULL PRIMARY KEY,
  Id_Cliente INT NOT NULL FOREIGN KEY REFERENCES Clientes(Id_Cliente),
  Id_Producto INT NOT NULL FOREIGN KEY REFERENCES Productos(Id_Producto),
  cantidad INT NOT NULL,
  precio_unitario DECIMAL(10,2) NOT NULL,
  fecha_venta DATE NOT NULL
  );

--INSERTAR DATOS A LAS TABLAS CREADAS 
--INSERTAR DATOS A TABLA CATEGORIAS 
INSERT INTO Categorias 
  (Id_Categoria, Nombre_Categoria,Descripcion)
VALUES 
(1, 'Computación', 'Laptops, PCs y monitores'),
(2, 'Accesorios', 'Periféricos y complementos'),
(3, 'Audio', 'Auriculares y parlantes'),
(4, 'Almacenamiento', 'Discos y memorias');

--INSERTAR DATOS A TABLA CLIENTES
INSERT INTO Clientes 
 (Id_Cliente, Nombre_Cliente, Email_Cliente, Ciudad, Fecha_registro)
VALUES 
(1, 'María López',   'maria@mail.com',   'Buenos Aires', '2024-01-05'),
(2, 'Carlos Ruiz',   'carlos@mail.com',  'Córdoba',      '2024-01-10'),
(3, 'Ana Gómez',     'ana@mail.com',     'Rosario',      '2024-02-01'), 
(4, 'Pedro Sanz',    'pedro@mail.com',   'Mendoza',      '2024-02-15'), 
(5, 'Laura Torres',  'laura@mail.com',   'Tucumán',      '2024-03-01');

--INSERTAR DATOS A TABLA PRODUCTOS 
INSERT INTO Productos 
(Id_Producto, nombre_producto,Id_Categoria, precio,stock, activo)
VALUES
(1, 'Laptop Pro 15',       1, 1200.00, 15, 1),
(2, 'Mouse Inalámbrico',   2,   28.00, 80, 1),
(3, 'Monitor 4K 27"',      1,  450.00, 12, 1),
(4, 'Auriculares BT Pro',  3,  120.00, 35, 1),
(5, 'SSD Externo 1TB',     4,  130.00, 18, 1),
(6, 'Teclado Mecánico',    2,   95.00, 40, 1);

--INSERTAR DATOS A TABLA VENTAS 

INSERT INTO Ventas
(Id_Venta, Id_Cliente, Id_Producto, cantidad, precio_unitario, fecha_venta)
VALUES 
(1,  1, 1, 2, 1200.00, '2024-03-05'),
(2,  2, 2, 5,   28.00, '2024-03-06'),
(3,  3, 3, 1,  450.00, '2024-03-07'),
(4,  1, 4, 2,  120.00, '2024-03-08'),
(5,  4, 5, 3,  130.00, '2024-03-10'),
(6,  2, 6, 4,   95.00, '2024-03-11'),
(7,  5, 1, 1, 1200.00, '2024-03-12'),
(8,  3, 2, 8,   28.00, '2024-03-13'),
(9,  4, 4, 1,  120.00, '2024-03-14'),
(10, 5, 3, 2,  450.00, '2024-03-15');

--SELECT VALIDACIONES
SELECT * FROM Categorias;
SELECT * FROM Clientes;
SELECT * FROM Productos;
SELECT * FROM Ventas;
