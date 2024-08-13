--CREACIÓN DE LA BASE DE DATOS FastFoodDB_
CREATE DATABASE FastFoodBD;

USE FastFoodBD;

--CREACIÓN DE LAS TABLAS 
CREATE TABLE Categorias(
CategoriaID INT PRIMARY KEY IDENTITY,
Nombre VARCHAR (255) NOT NULL
);


CREATE TABLE Clientes(
ClienteID INT PRIMARY KEY IDENTITY,
Nombre VARCHAR(255) NOT NULL,
Direccion VARCHAR (255) 
);


CREATE TABLE Empleados(
EmpleadoID INT PRIMARY KEY IDENTITY,
Nombre VARCHAR(255) NOT NULL,
Posicion VARCHAR(255),
Departamento VARCHAR(255),
SucursalID INT,
Rol VARCHAR(255)
);


CREATE TABLE Sucursales(
SucursalID INT PRIMARY KEY IDENTITY,
Nombre VARCHAR(255) NOT NULL,
Direccion VARCHAR(255)
);

CREATE TABLE OrigenesOrden(
OrigenID INT PRIMARY KEY IDENTITY,
Descripcion VARCHAR(255) NOT NULL
);

CREATE TABLE Mensajeros(
MensajeroID INT PRIMARY KEY IDENTITY,
Nombre VARCHAR(255) NOT NULL,
EsExterno BIT NOT NULL
);

CREATE TABLE Productos(
ProductoID INT PRIMARY KEY IDENTITY,
Nombre VARCHAR (255) NOT NULL,
CategoriaID INT,
Precio DECIMAL (10,2) NOT NULL
);


CREATE TABLE TiposPago(
TipoPagoID INT PRIMARY KEY IDENTITY,
Descripcion VARCHAR(255) NOT NULL
);

CREATE TABLE DetalleOrdenes(
OrdenID INT,
ProductoID INT,
Cantidad INT,
Precio DECIMAL (10,2)
PRIMARY KEY (OrdenID, ProductoID)
);

CREATE TABLE Ordenes(
OrdenID INT PRIMARY KEY IDENTITY,
ClienteID INT,
EmpleadoID INT,
SucursalID INT,
MensajeroID INT,
TipoPagoID INT,
OrigenID INT,
HorarioVenta VARCHAR(255), ---Mañana, tarde, noche
TotalCompra DECIMAL (10,2),
KilometrosRecorrer DECIMAL (10,2),
FechaDespacho DATETIME,
FechaEntrega DATETIME,
FechaOrdenTomada DATETIME,
FechaOrdenLista DATETIME
);


--RELACIONES ENTRE LAS TABLAS
--Relacionamos las tablas de Productos y Categorias

ALTER TABLE Productos
ADD CONSTRAINT Fk_Productos_Categorias
FOREIGN KEY(CategoriaID) REFERENCES Categorias(CategoriaID);

ALTER TABLE Ordenes
ADD CONSTRAINT Fk_Ordenes_Clientes
FOREIGN KEY(ClienteID) REFERENCES Clientes (ClienteID);

ALTER TABLE Ordenes
ADD CONSTRAINT Fk_Ordenes_Sucursal
FOREIGN KEY(SucursalID) REFERENCES Sucursales (SucursalID);

ALTER TABLE Ordenes
ADD CONSTRAINT Fk_Ordenes_Mensajeros
FOREIGN KEY(MensajeroID) REFERENCES Mensajeros (MensajeroID);

ALTER TABLE Ordenes
ADD CONSTRAINT Fk_Ordenes_TipoPago
FOREIGN KEY(TipoPagoID) REFERENCES TiposPago (TipoPagoID);

ALTER TABLE Ordenes
ADD CONSTRAINT Fk_Ordenes_Origenes
FOREIGN KEY(OrigenID) REFERENCES OrigenesOrden (OrigenID);

ALTER TABLE Empleados
ADD CONSTRAINT Fk_Empleados_Sucursales
FOREIGN KEY(SucursalID) REFERENCES Sucursales (SucursalID);

ALTER TABLE DetalleOrdenes
ADD CONSTRAINT Fk_DetalleOrdenes_Ordenes
FOREIGN KEY(OrdenID) REFERENCES Ordenes (OrdenID);

ALTER TABLE DetalleOrdenes
ADD CONSTRAINT Fk_DetalleOrdenes_Productos
FOREIGN KEY(ProductoID) REFERENCES Productos (ProductoID); 

ALTER TABLE Ordenes
ADD CONSTRAINT Fk_Ordenes_Empleados
FOREIGN KEY(EmpleadoID) REFERENCES Empleados (EmpleadoID);
