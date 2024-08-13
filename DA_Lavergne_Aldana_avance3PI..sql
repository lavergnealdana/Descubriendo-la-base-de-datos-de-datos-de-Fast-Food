USE FastFoodBD;

AVANCE 3

--Preguntas para consultas

/*
1- Total de ventas globales
Pregunta: ¿Cuál es el total de ventas (TotalCompra) a nivel global?
*/

SELECT 
	SUM(TotalCompra) AS TotalVentas
	From Ordenes;
	
/*
2-Promedio de precios de productos por categoría
Pregunta: ¿Cuál es el precio promedio de los productos dentro de cada categoría?
*/

SELECT CategoriaID,
	AVG (Precio) AS PrecioPromedio
FROM Productos
GROUP BY CategoriaID;

/*
3- Orden mínima y máxima por sucursal
Pregunta: ¿Cuál es el valor de la orden mínima y máxima por cada sucursal?
*/

SELECT SucursalID,
	MIN (TotalCompra) AS Minimo,
	MAX (TotalCompra) AS Maximo
FROM Ordenes
GROUP BY SucursalID;

/*
4- Mayor número de kilómetros recorridos para entrega
Pregunta: ¿Cuál es el mayor número de kilómetros recorridos para una entrega?
*/

SELECT 
	MAX(KilometrosRecorrer) AS [Km Recorridos] 
	FROM Ordenes;

/*
5- Promedio de cantidad de productos por orden
Pregunta: ¿Cuál es la cantidad promedio de productos por orden?
*/

SELECT AVG (Cantidad) AS [CantidadPromedio]
	FROM DetalleOrdenes;

/*
6- Total de ventas por tipo de pago
Pregunta: ¿Cómo se distribuye la Facturación Total del Negocio de
acuerdo a los métodos de pago?
*/

SELECT * FROM TiposPago;
SELECT TipoPagoID,
	SUM (TotalCompra) AS [Facturacion]
FROM Ordenes
GROUP BY TipoPagoID
ORDER BY Facturacion DESC;

/*
7- Sucursal con la venta promedio más alta
Pregunta: ¿Cual Sucursal tiene el ingreso promedio más alto?
*/

SELECT TOP 1 SucursalID,
	AVG (TotalCompra) AS [IngresoPromedio]
FROM Ordenes
GROUP BY SucursalID
ORDER BY IngresoPromedio DESC;

/*
8- Sucursal con la mayor cantidad de ventas por encima de un umbral
Pregunta: ¿Cuáles son las sucursales que han generado ventas totales por encima de $ 1000?
*/

SELECT SucursalID,
	SUM (TotalCompra) AS VentasTotales
FROM Ordenes
GROUP BY SucursalID
HAVING SUM (TotalCompra) > 1000.00
ORDER BY VentasTotales DESC;

/*
9- Comparación de ventas promedio antes y después de una fecha específica
Pregunta: ¿Cómo se comparan las ventas promedio antes y después del 
1 de julio de 2023?
*/

SELECT 	AVG (TotalCompra) AS [PromedioVentasAntes01-07-2023]
FROM Ordenes
WHERE FechaOrdenTomada < '2023-01-07'

SELECT AVG (TotalCompra) AS [PromedioVentasDespues01-07-2023]
FROM Ordenes
WHERE FechaOrdenTomada >= '2023-01-07'

/*
10- Análisis de actividad de ventas por horario
Pregunta: ¿Durante qué horario del día (mañana, tarde, noche) 
se registra la mayor cantidad de ventas, cuál es el ingreso 
promedio de estas ventas, y cuál ha sido el importe máximo 
alcanzado por una orden en dicha jornada?
*/

SELECT HorarioVenta,
	COUNT (OrdenID) AS [CantidadVentas],
	CONVERT (DECIMAL (10,2), AVG (TotalCompra)) AS [IngresoPromedio],
	MAX (TotalCompra) AS [MaximoCompra]
FROM Ordenes
GROUP BY HorarioVenta
ORDER BY CantidadVentas DESC;