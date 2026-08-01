# Módulo de Datos - Autos Hiperdeportivos (Ejercicio 006 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el análisis avanzado de rendimiento mediante el uso de la instrucción **EXPLAIN**, indexación optimizada, restricciones de validación numérica (`CHECK`) y consultas analíticas sobre flotas de alto rendimiento.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_hiperdeportivos`, la tabla `autos_hiperdeportivos` con validaciones estrictas y la creación de un índice compuesto (`idx_fabricante_estado`) para optimizar planes de ejecución.
- **dml/inserts.sql**: Inserción de 8 registros detallados de hiperdeportivos de marcas exclusivas con especificaciones reales de velocidad, potencia y precio.
- **dql/consultas.sql**: 5 consultas analíticas precedidas por la sentencia `EXPLAIN` para verificar el uso de índices, escaneos de tabla y costos de ejecución.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`