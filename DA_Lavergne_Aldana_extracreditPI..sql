--EXTRA CREDIT

USE FastFoodBD;

--1-�Cuales son los productos m�s vendidos por categor�a?


SELECT 
    T4.Nombre AS Categoria,
    T3.Nombre AS Producto,
    SUM(T2.Cantidad) AS [CantidadVendida]
FROM Ordenes AS T1
    INNER JOIN DetalleOrdenes AS T2 
		ON T1.OrdenID = T2.OrdenID
    INNER JOIN Productos AS T3 
		ON T2.ProductoID = T3.ProductoID
    INNER JOIN Categorias AS T4 
		ON T3.CategoriaID = T4.CategoriaID
GROUP BY T4.Nombre, T3.Nombre
ORDER BY CantidadVendida DESC
;

--2-�C�mo se distribuye el total de ventas seg�n la jornada del d�a?

SELECT 
    HorarioVenta AS [Jornada],
    COUNT(OrdenID) AS [CantidadVentas],
    SUM(TotalCompra) AS [Facturacion]
FROM Ordenes
GROUP BY HorarioVenta;


--3-�Que productos generan mayor beneficio en comparaci�n a su costo?

SELECT 
    P.Nombre AS Producto,
    P.Precio AS PrecioVenta,
    SUM(D.Cantidad) AS TotalVendido,
    SUM(D.Cantidad * D.Precio) AS Ingresos,
    SUM(D.Cantidad * (P.Precio - D.Precio)) AS Beneficio
FROM Productos AS P
    INNER JOIN DetalleOrdenes AS D ON P.ProductoID = D.ProductoID
GROUP BY P.Nombre, P.Precio;