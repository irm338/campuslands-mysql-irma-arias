# Módulo de Datos - Inventario de Skins Shooter (Ejercicio 033)

Solución desarrollada en **MySQL** aplicando restricciones de integridad con `PRIMARY KEY` y criterios profesionales para la gestión de ítems virtuales.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_inventario_skins` y la tabla `skins_shooter` con clave primaria `PRIMARY KEY` y validaciones `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de skins variadas con diferentes rarezas, armas y estados.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en negocio (filtros por estado, agregaciones `AVG`, `MAX`, `COUNT`, ordenamientos y `LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`