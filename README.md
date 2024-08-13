# 🍔 Descubriendo la Base de Datos de Fast Food 🍟

![Fast Food House](D:\Documents\ALDANA\Henry\Modulo 2.jpg)

**Fast Food House S.A.**, fundada en 2022, ha experimentado un crecimiento rápido con sucursales en centros comerciales y turísticos. Para enfrentar los desafíos de gestión y tomar decisiones más efectivas, hemos desarrollado una base de datos consolidada y confiable.

Este proyecto tiene como objetivo generar **insights valiosos** y proporcionar una visión clara del rendimiento y áreas de mejora dentro de Fast Food House S.A. Analizaremos **tendencias de ventas**, **eficiencia operativa**, y estrategias para **maximizar ingresos**, entre otros aspectos clave.

---

## 🚀 Desarrollo del Proyecto

**Etapa 1: Diseño de la Base de Datos**
- **Categorías:** Definición de categorías de productos con `CategoriaID` auto-incremental.
- **Clientes:** Información sobre clientes, identificados por `ClienteID`.
- **Empleados:** Detalles de empleados y su relación con `SucursalID`.
- **Sucursales:** Información sobre las ubicaciones físicas.
- **Orígenes de Orden:** Registra los orígenes de las órdenes.
- **Mensajeros:** Datos sobre mensajeros internos y externos.
- **Productos:** Información sobre productos con relación a `CategoriaID` y precio.
- **Tipos de Pago:** Métodos de pago disponibles.
- **Detalle de Órdenes:** Relaciona productos con órdenes mediante `OrdenID` y `ProductoID`.
- **Órdenes:** Información completa de cada orden, incluyendo cliente, empleado, y sucursal.

**Etapa 2: Consultas Básicas**
- **Población de Datos:** Uso de `INSERT`, `UPDATE`, y `DELETE` para gestionar datos.
- **Verificación:** Consultas básicas (`SELECT`) para asegurar integridad.
- **Mantenimiento:** Actualización y eliminación de registros para mantener la base de datos actualizada.

**Etapa 3: Consultas Avanzadas**
- **Consultas Estadísticas:** Análisis de datos clave como:
  - Total de ventas
  - Precios promedio por categoría
  - Rango de ventas por sucursal
  - Kilómetros recorridos para entregas
  - Promedio de productos por orden
  - Total de ventas por método de pago
  - Sucursal con mayor ingreso promedio
  - Comparación de ventas antes y después de una fecha específica
  - Distribución de ventas por jornada (mañana, tarde, noche)

**Etapa 4: Consultas con Múltiples Tablas y JOINs**
- **Uniones de Tablas:**
  - **Productos y Categorías:** Listado de productos con sus categorías usando `INNER JOIN`.
  - **Empleados y Sucursales:** Identificación de sucursales correspondientes a cada empleado.
  - **Productos sin Categoría:** Búsqueda de productos sin categoría asignada con `LEFT JOIN`.
  - **Detalles de Órdenes:** Información completa de órdenes combinando clientes, empleados y mensajeros.
  - **Ventas por Categoría y Sucursal:** Análisis de ventas por categoría en cada sucursal.

---

## 🌟 Optimización y Sostenibilidad

- **Claves Primarias y Foráneas:** Garantizan la unicidad y relaciones correctas entre tablas.
- **Normalización:** Mejora la calidad, eficiencia y escalabilidad de la base de datos, reduciendo anomalías.
- **Reglas de Integridad:**
  - **Claves:** Aseguran unicidad y relaciones adecuadas.
  - **Dominio:** Define los valores permitidos para cada columna.
  - **Integridad Referencial:** Mantiene la consistencia entre tablas mediante claves foráneas.
- **Recuperación de Datos:** Políticas robustas de respaldo y recuperación para proteger contra pérdida de datos.
- **Documentación y Mantenimiento:** Documentación completa y programa de mantenimiento regular para monitorear y actualizar la base de datos.
- **Seguridad:** Medidas de seguridad y control de acceso para proteger datos confidenciales y cumplir con regulaciones.

---

🚀 **¡Estoy disponible para ayudarte a optimizar tu base de datos y transformar tus datos en información valiosa!** Si estás interesado en colaborar o necesitas un analista de datos con experiencia, **no dudes en contactarme**. ¡Vamos a trabajar juntos para llevar tus proyectos al siguiente nivel!

##  📧 **Contáctame conmigo a lavergnealdana@gmail.com**
