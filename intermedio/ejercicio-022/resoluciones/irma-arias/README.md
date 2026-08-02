# Ejercicio 022 - Normalización 2FN para Animación 3D

## Descripción
Módulo relacional en MySQL diseñado para cumplir estrictamente con la **Segunda Forma Normal (2FN)** (partiendo de la 1FN y eliminando dependencias parciales de atributos que no dependen de la totalidad de la llave candidata), estructurando información sobre software, proyectos y tareas de animación 3D.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional normalizado en 2FN con llaves primarias, foráneas, restricciones CHECK y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para software de animación, proyectos multimedia y tareas técnicas.
3. dql/consultas.sql - Consultas analíticas orientadas al reporte gerencial mediante uniones avanzadas (JOIN) y funciones de agregación.
## Decisiones Técnicas
- Se separaron las tareas de producción en una entidad independiente (	areas_animacion) relacionada mediante clave foránea, garantizando que los atributos descriptivos dependan totalmente de su clave primaria y evitando redundancias en la tabla de proyectos.
- Se establecieron restricciones de integridad referencial con eliminación en cascada para mantener la consistencia del modelo de datos.
