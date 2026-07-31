# Módulo de Datos - Taller Mecánico de Motos (Ejercicio 035)

Solución desarrollada en **MySQL** aplicando consultas avanzadas (`SELECT`), filtros relacionales y funciones de agregación para la gestión de un taller de motocicletas.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_taller_mecanico` y la tabla `ordenes_reparacion` con validaciones `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de órdenes de servicio con diversos estados, tipos y costos.
- **dql/consultas.sql**: 5 consultas analíticas utilizando cláusulas `WHERE`, `GROUP BY`, `AVG`, `SUM`, `COUNT`, ordenamientos y `LIMIT`.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`