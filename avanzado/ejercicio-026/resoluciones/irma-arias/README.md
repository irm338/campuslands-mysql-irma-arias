# Módulo de Datos - Videojuego RPG (Ejercicio 026 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la implementación de validaciones simples, restricciones de integridad robustas (`CHECK`), filtrado condicional y reportes analíticos para la gestión de personajes de un videojuego RPG.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `personajes_rpg` con validaciones estrictas para rangos de nivel de experiencia (1 a 100) y puntos de vida mediante `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de personajes con diversas clases, niveles, estadísticas de vida y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en filtrados por estado, ordenamientos descendentes, agrupamientos por clase RPG y rankings de jugadores.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`