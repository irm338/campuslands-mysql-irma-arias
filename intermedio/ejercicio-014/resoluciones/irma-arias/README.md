# Ejercicio 014 - Vistas Simples para Saga de Ciencia Ficción

## Descripción
Módulo relacional en MySQL diseñado para practicar la creación y consulta de **vistas simples** (CREATE VIEW), estructurando información sobre una saga de ciencia ficción con facciones y películas espaciales.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves foráneas, restricciones CHECK, campos ENUM y la vista simple w_peliculas_cartelera.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para facciones y producciones cinematográficas.
3. dql/consultas.sql - Consultas analíticas que explotan la vista simple y realizan operaciones con JOIN y funciones de agregación.
## Decisiones Técnicas
- Se implementó la vista simple w_peliculas_cartelera para abstraer la unión entre películas y facciones, permitiendo consultas limpias de las producciones vigentes en cartelera.
- Se aplicaron restricciones de integridad con FOREIGN KEY y validaciones numéricas para presupuestos y calificaciones.
