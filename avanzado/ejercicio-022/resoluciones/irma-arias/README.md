# Módulo de Datos - Animación 3D (Ejercicio 022 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el dominio y práctica avanzada de la cláusula de ordenamiento (`ORDER BY`), ordenamientos múltiples de columnas, limitación de resultados (`LIMIT`) y agregaciones para un estudio de animación 3D.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `proyectos_3d` con validaciones de tiempo de render y presupuestos mediante `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de secuencias animadas con diversos software de render, horas de procesamiento, costos y estados.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en el uso exhaustivo de la cláusula `ORDER BY` (ascendente, descendente, criterios múltiples, rankings top y ordenamientos en agrupamientos).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`