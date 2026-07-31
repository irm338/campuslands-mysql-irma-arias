# Módulo de Datos - Ranking Battle Royale (Ejercicio 032)

Solución desarrollada en **MySQL** aplicando criterios profesionales de diseño de tipos de datos, validaciones y consultas analíticas para un entorno de videojuegos competitivo.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_ranking_battle_royale` y la tabla `ranking_jugadores` con restricciones `CHECK` para garantizar datos coherentes.
- **dml/inserts.sql**: Inserción de 8 registros de jugadores con distintos rangos, eliminaciones, puntuaciones y estados.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en negocio (filtrado por estados, funciones de agregación `AVG`, `MAX`, `COUNT`, ordenamientos por puntaje y límites).

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`