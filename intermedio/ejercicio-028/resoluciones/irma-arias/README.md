# Ejercicio 028 - Tablas Puente para Academia Tech

## Descripción
Módulo relacional en MySQL optimizado para implementar y explotar una **tabla puente (junction table)**, resolviendo una relación de muchos a muchos (N:M) entre estudiantes y cursos en el ecosistema de una academia tecnológica.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con tablas principales (estudiantes, cursos_tech) y la tabla puente (inscripciones_cursos) con restricciones de unicidad compuesta, llaves foráneas y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para alumnos, oferta académica y cruces de matrícula.
3. dql/consultas.sql - Consultas analíticas orientadas a la gestión académica mediante múltiples uniones (JOIN) y funciones estadísticas.
## Decisiones Técnicas
- Se implementó una tabla intermedia (inscripciones_cursos) para conectar estudiantes con múltiples cursos, evitando redundancias y aplicando un índice UNIQUE compuesto para prevenir matriculaciones duplicadas en un mismo curso.
- Se configuró integridad referencial con eliminación en cascada (ON DELETE CASCADE) para mantener la consistencia relacional.
