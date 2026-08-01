# Módulo de Datos - Mercado de Accesorios (Ejercicio 029 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la práctica profesional del manejo de fechas (`DATE`), restricciones de integridad robustas (`CHECK`), filtrados cronológicos y consultas analíticas para un mercado de accesorios.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `accesorios_mercado` con validaciones estrictas para precios y stock mediante `CHECK`, implementando el tipo `DATE` para las fechas de ingreso.
- **dml/inserts.sql**: Inserción de 8 registros de accesorios con diversas categorías, precios, stock y fechas de ingreso distribuidas en el tiempo.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en ordenamientos cronológicos, filtros por rangos de fechas, agrupamientos por categoría y métricas de inventario.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`