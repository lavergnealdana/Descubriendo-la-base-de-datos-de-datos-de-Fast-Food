# Descubriendo-la-base-de-datos-de-datos-de-Fast-Food

_La compañía Fast Food House S.A. es una organización fundada en 2022. Actualmente, cuenta con varias sucursales distribuidas en los principales centros comerciales y turísticos. 
A partir del rápido y vertiginoso crecimiento del negocio y sus complicaciones a la hora de gestionar efectivamente la organización, se presenta el siguiente informe, el cual tiene por objetivo llevar a cabo la transición hacia una base de datos consolidada y confiable, garantizando la escalabilidad y eficiencia en la toma de decisiones.
El objetivo principal es de este proyecto es la generación de insight e información confiable que nos proporcione una visión clara del rendimiento y las áreas de mejora dentro de Fast Food House S.A. Se analizarán aspectos claves como tendencias de ventas, estado de la eficiencia operativa, estrategias de maximización de ingresos, entre otros._

___________________________________________________________________________________________________________________________________________________________________________________________________________________________________
## DESARROLLO DEL PROYECTO
**Etapa 1: Diseño de la Base de Datos**
Tablas Creadas:

Categorias: Define categorías de productos con un CategoriaID auto-incremental.
Clientes: Contiene información sobre los clientes, identificados por ClienteID.
Empleados: Almacena detalles de los empleados y su relación con SucursalID.
Sucursales: Información sobre las ubicaciones físicas de la empresa.
OrigenesOrden: Registra los orígenes de las órdenes.
Mensajeros: Datos sobre los mensajeros, diferenciando entre internos y externos.
Productos: Información sobre productos con relación a CategoriaID y precio.
TiposPago: Métodos de pago disponibles.
DetalleOrdenes: Relaciona productos con órdenes mediante OrdenID y ProductoID.
Ordenes: Información completa de cada orden, incluyendo cliente, empleado, y sucursal.
Relaciones: Se establecieron claves primarias y foráneas para asegurar la integridad de los datos.

**Etapa 2: Consultas Básicas**
Población de Datos: Uso de INSERT, UPDATE, y DELETE para gestionar y mantener la precisión de los datos.
Verificación: Consultas básicas (SELECT) para asegurar la integridad de la información.
Mantenimiento: Actualización y eliminación de registros para mantener la base de datos actualizada.

**Etapa 3: Consultas Avanzadas**
Consultas Estadísticas: Funciones de agregación (SUM, AVG, MIN, MAX) para analizar datos clave como Total de ventas, Precios promedio por categoría, Rango de ventas por sucursal, Kilómetros recorridos para entregas, Promedio de productos por orden, Total de ventas por método de pago, Sucursal con mayor ingreso promedio, Comparación de ventas antes y después de una fecha específica y Distribución de ventas por jornada (mañana, tarde, noche).

**Etapa 4: Consultas con Múltiples Tablas y JOINs**
Uniones de Tablas:
Productos y Categorías: Listado de productos con sus categorías utilizando INNER JOIN.
Empleados y Sucursales: Identificación de sucursales correspondientes a cada empleado.
Productos sin Categoría: Búsqueda de productos sin categoría asignada usando LEFT JOIN.
Detalles de Órdenes: Información completa de órdenes combinando clientes, empleados y mensajeros.
Ventas por Categoría y Sucursal: Análisis de ventas por categoría en cada sucursal.


___________________________________________________________________________________________________________________________________________________________________________________________________________________________________
## OPTIMIZACION Y SOSTENIBILIDAD
Claves Primarias y Foráneas: Garantizan la unicidad de los registros y las relaciones entre tablas.

Normalización: Mejora la calidad y eficiencia de la base de datos, facilitando la escalabilidad y reduciendo anomalías.

Reglas de Integridad:
Claves: Aseguran unicidad y relaciones correctas.
Dominio: Define valores permitidos para cada columna.
Integridad Referencial: Mantiene la consistencia entre tablas mediante claves foráneas.
Recuperación de Datos: Políticas robustas de respaldo y recuperación garantizan la protección contra pérdida de datos.

Documentación y Mantenimiento: Documentación completa y un programa regular de mantenimiento para monitorear y actualizar la base de datos.

Seguridad: Medidas de seguridad y control de acceso para proteger datos confidenciales y cumplir regulaciones.


