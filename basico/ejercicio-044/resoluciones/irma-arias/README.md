# Módulo de Datos - Saga de Ciencia Ficción (Ejercicio 044)

Solución desarrollada en **MySQL** orientada a la práctica de **fechas básicas**, funciones de fecha (`YEAR()`), restricciones de validación numérica (`CHECK`) y consultas analíticas sobre cronologías y presupuestos.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_saga_scifi` y la tabla `eventos_saga` con tipos de fecha estructurados y validaciones.
- **dml/inserts.sql**: Inserción de 8 registros realistas de lanzamientos literarios y audiovisuales de ciencia ficción con fechas y presupuestos variados.
- **dql/consultas.sql**: 5 consultas analíticas aplicando ordenamientos por fecha, extracción de años con `YEAR()`, filtros por rangos temporales y agrupaciones estadísticas.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`