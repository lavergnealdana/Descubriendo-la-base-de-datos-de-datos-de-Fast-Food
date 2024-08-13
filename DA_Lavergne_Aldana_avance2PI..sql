USE FastFoodBD;

--Insertamos datos en la Tabla de Categorias

INSERT INTO Categorias (Nombre) VALUES
	('Comida R�pida'),
	('Postres'),
	('Bebidas'),
	('Ensaladas'),
	('Desayunos'),
	('Cafeter�a'),
	('Helados'),
	('Comida Vegana'),
	('Carnes'),
	('Pizzas');

SELECT*FROM Categorias;

--Insertamos datos en la tabla de Productos

INSERT INTO Productos (Nombre, CategoriaID, Precio) VALUES
	('Hamburguesa Deluxe', 1, 9.99), 
	('Cheeseburger', 1, 7.99), 
	('Pizza Margarita', 10, 11.99), 
	('Pizza Pepperoni', 10, 12.99), 
	('Helado de Chocolate', 7, 2.99),
	('Helado de Vainilla', 7, 2.99), 
	('Ensalada C�sar', 4, 5.99), 
	('Ensalada Griega', 4, 6.99), 
	('Pastel de Zanahoria', 2, 3.99), 
	('Brownie', 2, 2.99);

SELECT*FROM Productos;

--Insertamos datos en la Tabla de Sucursales

INSERT INTO Sucursales (Nombre, Direccion) VALUES
	('Sucursal Central', '1234 Main St'), 
	('Sucursal Norte', '5678 North St'), 
	('Sucursal Este', '9101 East St'), 
	('Sucursal Oeste', '1121 West St'), 
	('Sucursal Sur', '3141 South St'),
	('Sucursal Playa', '1516 Beach St'), 
	('Sucursal Monta�a', '1718 Mountain St'), 
	('Sucursal Valle', '1920 Valley St'), 
	('Sucursal Lago', '2122 Lake St'), 
	('Sucursal Bosque', '2324 Forest St');

Select * from Sucursales;

--Insertamos datos en la tabla de Empleados

INSERT INTO Empleados (Nombre, Posicion, Departamento, SucursalID, Rol) VALUES
	('John Doe', 'Gerente', 'Administraci�n', 1, 'Vendedor'), 
	('Jane Smith', 'Subgerente', 'Ventas', 1, 'Vendedor'),
	('Bill Jones', 'Cajero', 'Ventas', 1, 'Vendedor'), 
	('Alice Johnson', 'Cocinero', 'Cocina', 1, 'Vendedor'), 
	('Tom Brown', 'Barista', 'Cafeter�a', 1, 'Vendedor'),
	('Emma Davis', 'Repartidor', 'Log�stica', 1, 'Mensajero'), 
	('Lucas Miller', 'Atenci�n al Cliente', 'Servicio', 1, 'Vendedor'),
	('Olivia Garc�a', 'Encargado de Turno', 'Administraci�n', 1, 'Vendedor'), 
	('Ethan Martinez', 'Mesero', 'Restaurante', 1, 'Vendedor'),
	('Sophia Rodriguez', 'Auxiliar de Limpieza', 'Mantenimiento', 1, 'Vendedor');

SELECT*FROM Empleados;

--Insertamos datos en la tabla de Clientes

INSERT INTO Clientes (Nombre, Direccion) VALUES
	('Cliente Uno', '1000 A Street'),
	('Cliente Dos', '1001 B Street'), 
	('Cliente Tres', '1002 C Street'), 
	('Cliente Cuatro', '1003 D Street'), 
	('Cliente Cinco', '1004 E Street'),
	('Cliente Seis', '1005 F Street'), 
	('Cliente Siete', '1006 G Street'), 
	('Cliente Ocho', '1007 H Street'), 
	('Cliente Nueve', '1008 I Street'), 
	('Cliente Diez', '1009 J Street');

SELECT*FROM Clientes;

--Insertamos datos en la tabla de OrigenesOrden

INSERT INTO OrigenesOrden (Descripcion) VALUES
	('En l�nea'), 
	('Presencial'), 
	('Tel�fono'),
	('Drive Thru'), 
	('App M�vil'),
	('Redes Sociales'),
	('Correo Electr�nico'),
	('Publicidad'),
	('Recomendaci�n'),
	('Evento');

SELECT*FROM OrigenesOrden;

--Insertamos datos en la tabla TiposPago

INSERT INTO TiposPago (Descripcion) VALUES
	('Efectivo'), 
	('Tarjeta de Cr�dito'), 
	('Tarjeta de D�bito'), 
	('PayPal'), 
	('Transferencia Bancaria'),
	('Criptomonedas'),
	('Cheque'), 
	('Vale de Comida'), 
	('Cup�n de Descuento'),
	('Pago M�vil');

SELECT*FROM TiposPago;

--Insertamos datos en la Columna Mensajeros

INSERT INTO Mensajeros (Nombre, EsExterno) VALUES
	('Mensajero Uno', 0), 
	('Mensajero Dos', 1), 
	('Mensajero Tres', 0), 
	('Mensajero Cuatro', 1), 
	('Mensajero Cinco', 0),
	('Mensajero Seis', 1), 
	('Mensajero Siete', 0), 
	('Mensajero Ocho', 1), 
	('Mensajero Nueve', 0), 
	('Mensajero Diez', 1);

SELECT*FROM Mensajeros;

--Insertamos datos en la tabla de Ordenes

INSERT INTO Ordenes (ClienteID, EmpleadoID, SucursalID, MensajeroID, TipoPagoID, OrigenID, HorarioVenta, TotalCompra, KilometrosRecorrer, FechaDespacho, FechaEntrega, FechaOrdenTomada, FechaOrdenLista) VALUES
	(1, 1, 1, 1, 1, 1, 'Ma�ana', 1053.51, 5.5, '2023-10-01 08:30:00', '2023-10-01 09:00:00', '2023-10-01 08:00:00', '2023-10-01 08:15:00'),
	(2, 2, 2, 2, 2, 2, 'Tarde', 1075.00, 10.0, '2023-15-02 14:30:00', '2023-15-02 15:00:00', '2023-15-02 13:30:00', '2023-15-02 14:00:00'),
	(3, 3, 3, 3, 3, 3, 'Noche', 920.00, 2.0, '2023-20-03 19:30:00', '2023-20-03 20:00:00', '2023-20-03 19:00:00', '2023-20-03 19:15:00'),
	(4, 4, 4, 4, 4, 4, 'Ma�ana', 930.00, 0.5, '2023-25-04 09:30:00', '2023-25-04 10:00:00', '2023-25-04 09:00:00', '2023-25-04 09:15:00'),
	(5, 5, 5, 5, 5, 5, 'Tarde', 955.00, 8.0, '2023-30-05 15:30:00', '2023-30-05 16:00:00', '2023-30-05 15:00:00', '2023-30-05 15:15:00'),
	(6, 6, 6, 6, 6, 1, 'Noche', 945.00, 12.5, '2023-05-06 20:30:00', '2023-05-06 21:00:00', '2023-05-06 20:00:00', '2023-05-06 20:15:00'),
	(7, 7, 7, 7, 7, 2, 'Ma�ana', 1065.00, 7.5, '2023-10-07 08:30:00', '2023-10-07 09:00:00', '2023-10-07 08:00:00', '2023-10-07 08:15:00'),
	(8, 8, 8, 8, 8, 3, 'Tarde', 1085.00, 9.5, '2023-15-08 14:30:00', '2023-15-08 15:00:00', '2023-15-08 14:00:00', '2023-15-08 14:15:00'),
	(9, 9, 9, 9, 9, 4, 'Noche', 1095.00, 3.0, '2023-20-09 19:30:00', '2023-20-09 20:00:00', '2023-20-09 19:00:00', '2023-20-09 19:15:00'),
	(10, 10, 10, 10, 10, 5, 'Ma�ana', 900.00, 15.0, '2023-25-10 09:30:00', '2023-25-10 10:00:00', '2023-25-10 09:00:00', '2023-25-10 09:15:00');

SELECT*FROM Ordenes;

--Insertar datos en la tabla DetalleOrdenes

INSERT INTO DetalleOrdenes (OrdenID, ProductoID, Cantidad, Precio) VALUES
	(1, 1, 3, 23.44),
	(1, 2, 5, 45.14),
	(1, 3, 4, 46.37),
	(1, 4, 4, 42.34),
	(1, 5, 1, 18.25),
	(1, 6, 4, 20.08),
	(1, 7, 2, 13.31),
	(1, 8, 2, 20.96),
	(1, 9, 4, 30.13),
	(1, 10, 3, 38.34);

SELECT*FROM DetalleOrdenes;




--UPDATE Y DELETE

--ACTUALIZACIONES DE EJEMPLO (UPDATE)

-- Aumentar el precio de todos los productos en la categor�a 1
UPDATE Productos SET Precio = Precio + 1 WHERE CategoriaID = 1; --Con esta acci�n, modificamos el precio de CategoriaID=1

SELECT * FROM Productos;

-- Cambiar la posici�n de todos los empleados del departamento 'Cocina' a 'Chef'
UPDATE Empleados SET Posicion = 'Chef' WHERE Departamento = 'Cocina'; --Con esta acci�n, modificamos la posicion del depto "Cocina" a "Chef"

SELECT * FROM Empleados;

-- Actualizar la direcci�n de una sucursal espec�fica
UPDATE Sucursales SET Direccion = '1234 New Address St' WHERE SucursalID = 1; --Con esta acci�n, modificamos la direccion de la SucursalID=1


SELECT*FROM Sucursales;

--ELIMINACIONES DE EJEMPLO (DELETE)

/*1. Eliminar una orden espec�fica
Imaginemos que quieres eliminar una orden espec�fica, 
por ejemplo, la orden con OrdenID = 10. 
Esta operaci�n eliminar�a la orden junto con sus detalles asociados 
(deber�as asegurarte de eliminar o actualizar cualquier dato relacionado 
para mantener la integridad referencial).*/

DELETE FROM DetalleOrdenes WHERE OrdenID = 10; -- No tengo OrdenID10, todas son OrdenID1
DELETE FROM Ordenes WHERE OrdenID = 10;

/*2. Eliminar todos los productos de una categor�a espec�fica
Si decides dejar de ofrecer todos los "Postres" 
(supongamos que Categorias.CategoriaID = 2 para "Postres"), 
podr�as querer eliminar todos los productos asociados a esa categor�a.*/

DELETE FROM Productos WHERE CategoriaID = 2; -- Nos arroja el ERROR 547, con el fin de preservar la integridad referencias (FK)
--Antes de ejecutar este comando, deber�as considerar si hay �rdenes que incluyen estos productos y decidir c�mo manejar esas referencias.

/*3. Eliminar empleados de una sucursal que cerr�
Si una sucursal cierra, por ejemplo, 
SucursalID = 10 (Sucursal Bosque), 
podr�as necesitar eliminar a todos los empleados asociados con esa sucursal.*/

DELETE FROM Empleados WHERE SucursalID = 10; --En este caso, no tenemos registro afectado porque no hay empleados en la SucursalID=10

SELECT*FROM Empleados;

---------------------------------------------------------------------------------------------------------------------------------


--Pregunta: �Cu�l es la cantidad total de registros �nicos en la tabla de �rdenes?

SELECT COUNT(OrdenID)FROM Ordenes;

--Pregunta: �Cu�ntos empleados existen en cada departamento?
--
SELECT Departamento, COUNT(EmpleadoID) AS TotalEmpleados
FROM Empleados
GROUP BY Departamento;

--Pregunta: �Cu�ntos productos hay por c�digo de categor�a?

SELECT CategoriaID, COUNT(ProductoID) AS ProductosPorCategoria
FROM Productos
GROUP BY CategoriaID;

--Pregunta: �Cu�ntos clientes se han importado a la tabla de clientes?

SELECT COUNT (*) AS TotalClientes FROM Clientes;

/*
�Cuales son las sucursales con un promedio de Facturaci�n/Ingresos superior a 1000.00 y
y que minimizan sus costos en base al promedio de kil�metros recorridos de todas de sus entregas gestionadas?
 Para un mejor relevamiento, ordene el listado por el Promedio Km Recorridos.
 */

SELECT SucursalID,
		AVG (TotalCompra) AS Facturacion,
		AVG (KilometrosRecorrer) AS KmRecorridos
FROM Ordenes
GROUP BY SucursalID
HAVING AVG (TotalCompra) > 1000.00
ORDER BY KmRecorridos DESC;
