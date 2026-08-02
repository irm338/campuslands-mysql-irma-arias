# Ejercicio 020 - Subconsultas para Estudio de Tatuajes

## Descripción
Módulo relacional en MySQL optimizado para practicar el uso avanzado de **subconsultas** (subqueries), incluyendo subconsultas escalares, correlacionadas, con operadores IN / EXISTS y tablas derivadas, estructurando información sobre estilos y catálogos de un estudio de tatuajes.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves foráneas, restricciones CHECK para precios y horas, y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para estilos de arte corporal y diseños de tatuaje.
3. dql/consultas.sql - Consultas analíticas complejas basadas en diferentes tipos de subconsultas en MySQL.
## Decisiones Técnicas
- Se estructuró una relación 1:N entre estilos de tatuaje y los diseños del catálogo, permitiendo aislar criterios de filtrado complejos mediante consultas anidadas.
- Se implementaron subconsultas escalares y correlacionadas para resolver reportes gerenciales avanzados sin requerir tablas temporales adicionales.
