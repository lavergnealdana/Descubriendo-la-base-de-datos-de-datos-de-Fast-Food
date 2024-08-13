--Consultas Finales

USE FastFoodBD;

/*
1-Eficiencia de los mensajeros: ¿Cuál es el tiempo promedio desde el despacho hasta la entrega 
de los pedidos gestionados por todo el equipo de mensajería?
*/

SELECT
		AVG(DATEDIFF(MINUTE, FechaDespacho, FechaEntrega)) AS TiempoPromedioEntrega
FROM Ordenes
WHERE MensajeroID IS NOT NULL
;

/*
2-Análisis de Ventas por Origen de Orden: ¿Qué canal de ventas genera más ingresos?
*/

SELECT TOP 1
		T2.Descripcion,
		SUM(T1.TotalCompra) AS Ingreso
FROM Ordenes AS T1
	INNER JOIN OrigenesOrden AS T2
		ON T1.OrigenID = T2.OrigenID
GROUP BY T2.Descripcion
ORDER BY Ingreso DESC
;

/*
3-Productividad de los Empleados: ¿Cuál es el nivel de ingreso generado por Empleado?
*/

SELECT	T2.Nombre AS Empleado,
		SUM (TotalCompra) AS Ingreso
FROM Ordenes AS T1
	LEFT JOIN Empleados AS T2
		ON T1.EmpleadoID = T2.EmpleadoID
GROUP BY T2.Nombre
;

/*
4-Análisis de Demanda por Horario y Día: ¿Cómo varía la demanda de productos a lo largo del día?
*/

SELECT 
		T3.Nombre, 
		T1.HorarioVenta,
		SUM(T2.Cantidad) AS DemandaProductos
FROM Ordenes AS T1
	INNER JOIN DetalleOrdenes AS T2
		ON T1.OrdenID = T2.OrdenID
	INNER JOIN Productos AS T3
		ON T2.ProductoID = T3.ProductoID
GROUP BY T3.Nombre, T1.HorarioVenta
;

/*
5-Comparación de Ventas Mensuales: ¿Cuál es la tendencia de los ingresos generados en 
cada periodo mensual?
*/

SELECT
		MONTH(FechaOrdenTomada) AS [PeriodosMensuales],
		DATENAME (MONTH, FechaOrdenTomada) AS [Meses],
		SUM(TotalCompra) AS [Ingreso]
FROM Ordenes
GROUP BY MONTH(FechaOrdenTomada), DATENAME(MONTH, FechaOrdenTomada)
ORDER BY PeriodosMensuales ASC
;

/*
6-Análisis de Fidelidad del Cliente: ¿Qué porcentaje de clientes son recurrentes versus 
nuevos clientes cada mes? NOTA: La consulta se enfocaría en la frecuencia de órdenes por 
cliente para inferir la fidelidad.
*/

SELECT	ClienteID, COUNT(OrdenID) AS [CantidadOrdenes],
		CASE
			WHEN COUNT(OrdenID) = 1 THEN 'Nuevo'
			ELSE 'Recurrente'
		END AS TipoCliente
FROM Ordenes
GROUP BY ClienteID
ORDER BY CantidadOrdenes
;