# Módulo de Datos - Dibujo Digital (Ejercicio 021 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el dominio y práctica avanzada de la cláusula de filtrado condicional (`WHERE`), operadores lógicos, rangos, patrones (`LIKE`) y restricciones de integridad para un estudio de arte digital.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `proyectos_dibujo` con validaciones de capas y comisiones mediante `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de proyectos artísticos variados con metadatos de software, número de capas, costos y estados.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en el uso exhaustivo de la cláusula `WHERE` (comparaciones numéricas, conjuntos, operadores lógicos, patrones de texto y exclusiones).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`