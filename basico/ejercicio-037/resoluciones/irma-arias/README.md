# Módulo de Datos - Liga de Fútbol (Ejercicio 037)

Solución desarrollada en **MySQL** aplicando ordenamientos avanzados con la cláusula `ORDER BY`, cálculos derivados (diferencia de goles), restricciones `CHECK` y reportes analíticos deportivos.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_liga_futbol` y la tabla `equipos_liga` con restricciones de integridad numérica.
- **dml/inserts.sql**: Inserción de 8 registros de equipos de fútbol con estadísticas reales de puntos, partidos y goles.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en tablas de posición, ordenamientos alfabéticos, tops de goleadores, estadísticas defensivas y agrupaciones con `ORDER BY`.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`