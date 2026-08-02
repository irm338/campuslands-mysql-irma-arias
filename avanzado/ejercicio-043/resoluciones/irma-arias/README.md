# Ejercicio 043 - Filtros por Estado para Catálogo de Películas de Miedo

## Descripción
Módulo de base de datos relacional en MySQL optimizado para la gestión, filtrado por estado y análisis de métricas de un catálogo de películas de terror.

## Orden de Ejecución de Scripts
1. `ddl/schema.sql` - Creación de la base de datos, tablas y restricciones (CHECK, ENUM).
2. `dml/inserts.sql` - Inserción de 8 registros de prueba variados.
3. `dql/consultas.sql` - Consultas analíticas y reportes de negocio.

## Decisiones Técnicas
- Se implementó un campo tipo `ENUM` para manejar de forma estricta el estado operativo de cada película (`disponible`, `proximamente`, `retirado`).
- Se aplicaron restricciones `CHECK` para validar rangos lógicos en la calificación (0 a 10) y el año de estreno.