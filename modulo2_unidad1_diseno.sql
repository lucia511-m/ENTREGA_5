--modulo2_unidad1_diseno.sql
--CREAR TABLA CLIENTES
CREATE TABLE Clientes(
IdCliente int not null, --debe ser numero entero y no puede ser nulo 
  NombreCliente VARCHAR(100) NOT NULL,--solo texto para escribir nombre
  PerfilBio VARCHAR(50),--texto para notas
  FechaRegistro DATE);
  
  --CREAR TABLA PRODUCTOS
  CREATE TABLE Productos(
    IdProducto int not null,--debe ser numero entero y no puede ser nulo
    Descripcion VARCHAR(255),--texto para detallar descripcion
    precio DECIMAL(10, 2),
    esta_Activo VARCHAR (2) --como texto para colocar si o no
); 
    