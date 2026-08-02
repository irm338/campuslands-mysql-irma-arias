# Ejercicio 012 - Consultas de Informes para Playlist Musical

## Descripción
Módulo relacional en MySQL diseñado para la generación de informes gerenciales y analíticos sobre listas de reproducción musicales, aplicando relaciones estructuradas entre géneros y pistas de audio.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional con llaves primarias, foráneas, restricciones CHECK y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para géneros y canciones musicales.
3. dql/consultas.sql - Consultas de informes analíticos avanzados utilizando JOIN, funciones de agregación y filtros condicionales.
## Decisiones Técnicas
- Se implementó una relación 1:N utilizando FOREIGN KEY para categorizar de forma limpia cada canción dentro de su género musical correspondiente.
- Se estructuraron reportes corporativos con alias claros para evaluar el rendimiento de reproducción y popularidad de los temas.
