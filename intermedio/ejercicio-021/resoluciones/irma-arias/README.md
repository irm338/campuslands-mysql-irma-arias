# Ejercicio 021 - Normalización 1FN para Dibujo Digital

## Descripción
Módulo relacional en MySQL diseñado para cumplir estrictamente con la **Primera Forma Normal (1FN)**, eliminando grupos repetitivos, asegurando la atomicidad de los datos por celda y estructurando información sobre software y proyectos de dibujo digital.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional normalizado en 1FN con llaves primarias, foráneas, restricciones CHECK y campos ENUM.
2. dml/inserts.sql - Inserción de registros atómicos y coherentes para software de diseño e ilustraciones digitales.
3. dql/consultas.sql - Consultas analíticas orientadas al reporte gerencial mediante JOIN y funciones estadísticas.
## Decisiones Técnicas
- Se atomizaron los atributos de resolución dividiéndolos en columnas independientes (esolucion_ancho y esolucion_alto), cumpliendo con el principio de dominios atómicos de la 1FN.
- Se estructuró una relación 1:N entre el software de diseño y los proyectos para evitar redundancias de texto.
