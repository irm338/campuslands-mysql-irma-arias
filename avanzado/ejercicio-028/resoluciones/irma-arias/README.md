# Módulo de Datos - Academia Tech (Ejercicio 028 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la práctica profesional de filtros por estado (`WHERE`, `IN`), restricciones de integridad robustas (`CHECK`) y consultas analíticas para una academia de tecnología.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `cursos_academia` con validaciones estrictas para horas de duración y precios mediante `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de cursos con diversas tecnologías, duraciones, costos y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en filtrados por estado individual y múltiple, ordenamientos, agrupamientos y reportes financieros.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`