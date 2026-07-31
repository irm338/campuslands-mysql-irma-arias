# Módulo de Datos - Fútbol Sala (Ejercicio 038)

Solución desarrollada en **MySQL** aplicando operaciones de actualización (`UPDATE`), restricciones de integridad numérica (`CHECK`) y consultas analíticas para el seguimiento de estadísticas deportivas.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_futbol_sala` y la tabla `jugadores_sala` con validaciones robustas.
- **dml/inserts.sql**: Inserción de 8 registros de jugadores y ejecución de sentencias `UPDATE` para simular actualización de rendimiento y cambios de estado.
- **dql/consultas.sql**: 5 consultas analíticas orientadas a tablas de goleo, asistencias, filtros por rendimiento y resúmenes agrupados.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`