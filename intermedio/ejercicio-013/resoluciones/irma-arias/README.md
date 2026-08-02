# Ejercicio 013 - Tablas Puente para Catálogo de Películas de Miedo

## Descripción
Módulo relacional en MySQL diseñado para implementar una **tabla puente** (relación Muchos a Muchos) que conecta películas de terror (peliculas_terror) con sus respectivos subgéneros (subgeneros_terror), permitiendo una categorización flexible y consultas analíticas avanzadas.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional con clave primaria compuesta en la tabla puente, claves foráneas, restricciones CHECK y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para subgéneros, películas y sus relaciones cruzadas.
3. dql/consultas.sql - Consultas analíticas complejas utilizando múltiples JOIN para explotar la tabla puente y funciones de agregación.
## Decisiones Técnicas
- Se implementó la tabla puente pelicula_subgenero con una llave primaria compuesta (id_pelicula, id_subgenero) para resolver eficientemente la relación N:M entre películas y subgéneros de terror.
- Se establecieron restricciones de integridad referencial con eliminación en cascada (ON DELETE CASCADE) para mantener la consistencia al remover registros.
