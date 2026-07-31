# Módulo de Datos - Garaje de Motos (Ejercicio 034)

Solución desarrollada en **MySQL** aplicando criterios profesionales de inserción de datos (`INSERT`), validaciones con restricciones `CHECK` y consultas analíticas orientadas a negocio.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_garaje_motos` y la tabla `motos_garaje` con tipos de datos adecuados y restricciones numéricas.
- **dml/inserts.sql**: Inserción de 8 registros reales de motocicletas con variadas marcas, cilindradas, precios y estados.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en negocio (filtros por estado, agregaciones `AVG`, `MAX`, `COUNT`, ordenamientos y `LIMIT`).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`