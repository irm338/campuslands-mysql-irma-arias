# Ejercicio 023 - Normalización 3FN para Arquitectura 3D

## Descripción
Módulo relacional en MySQL diseñado para cumplir estrictamente con la **Tercera Forma Normal (3FN)** (partiendo de la 2FN y eliminando toda dependencia transitiva, asegurando que los atributos no clave dependan exclusivamente de la clave primaria), estructurando información sobre software de render, estilos arquitectónicos y proyectos de construcción 3D.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional normalizado en 3FN con llaves primarias, foráneas, restricciones CHECK y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para motores de render, clasificaciones de estilo y maquetas arquitectónicas.
3. dql/consultas.sql - Consultas analíticas orientadas al reporte gerencial mediante uniones avanzadas (JOIN) y funciones de agregación.
## Decisiones Técnicas
- Se separaron los atributos descriptivos de los estilos arquitectónicos en una entidad independiente (estilos_arquitectonicos), eliminando dependencias transitivas dentro de la tabla de proyectos.
- Se implementaron restricciones de integridad referencial con eliminación en cascada (ON DELETE CASCADE) para preservar la consistencia relacional del modelo.
