--AVANCE 4

USE FastFoodBD;

/*
Listar todos los productos y sus categor�as
1-Pregunta: �C�mo puedo obtener una lista de todos los productos junto con sus categor�as?
*/

SELECT T1.Nombre, T2.Nombre
FROM Productos AS T1
	INNER JOIN Categorias AS T2
		ON T1.CategoriaID = T2.CategoriaID
;


/*
2-Obtener empleados y su sucursal asignada
Pregunta: �C�mo puedo saber a qu� sucursal est� asignado cada empleado?
*/

SELECT T1.EmpleadoID, T1.Nombre, T2.Nombre
FROM Empleados AS T1
	INNER JOIN Sucursales AS T2
		ON T1.SucursalID = T2.SucursalID
;

/*
3-Identificar productos sin categor�a asignada
Pregunta: �Existen productos que no tienen una categor�a asignada?
*/

SELECT T1.Nombre, T2.Nombre
FROM Productos AS T1
	LEFT JOIN Categorias AS T2
		ON T1.CategoriaID = T2.CategoriaID
WHERE T2.Nombre IS NULL
;

/*
4-Detalle completo de �rdenes
Pregunta: �C�mo puedo obtener un detalle completo de las �rdenes, 
incluyendo el Nombre del cliente, Nombre del empleado que tom� la orden,
y Nombre del mensajero que la entreg�?
*/

SELECT	T1.*,
		T2.Nombre AS Cliente,
		T3.Nombre AS Empleado,
		T4.Nombre AS Mensajero
FROM Ordenes AS T1
	INNER JOIN Clientes AS T2
		ON T1.ClienteID = T2.ClienteID
	INNER JOIN Empleados AS T3
		ON T1.EmpleadoID = T3.EmpleadoID
	INNER JOIN Mensajeros AS T4
		ON T1.MensajeroID = T4.MensajeroID

/*
5-Productos vendidos por sucursal
Pregunta: �Cu�ntos art�culos correspondientes a cada Categor�a de Productos se han 
vendido en cada sucursal?
*/

SELECT	T4.Nombre AS Categorias,
		T5.Nombre AS Sucursales,
		SUM(T2.Cantidad) AS CantidadArticulos
FROM Ordenes AS T1
	INNER JOIN DetalleOrdenes AS T2
		ON T1.OrdenID = T2.OrdenID
	INNER JOIN Productos AS T3
		ON T2.ProductoID = T3.ProductoID
	INNER JOIN Categorias AS T4
		ON T3.CategoriaID = T4.CategoriaID
	INNER JOIN Sucursales AS T5
		ON T1.SucursalID = T5.SucursalID
GROUP BY T4.Nombre, T5.Nombre
;
