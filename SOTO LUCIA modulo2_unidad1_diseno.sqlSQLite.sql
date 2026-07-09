--modulo2_unidad1_diseno.sql
--CREAR TABLA CLIENTES
CREATE TABLE Clientes(
IdCliente int not null AUTOINCREMENT (1,1) PRIMARY KEY,
  NombreCliente VARCHAR(50) NOT NULL,
  PerfilBio VARCHAR(50),
  FechaRegistro DATE);
  
  --CREAR TABLA PRODUCTOS
  CREATE TABLE Productos(
    IdProducto int not null,
    Descripcion VARCHAR(255),
    precio DECIMAL(10, 2),
    Activo VARCHAR (2)
); 
    