# Ejercicio 011 - CHECK para Ping Pong

## Descripción
Módulo relacional en MySQL especializado en la implementación de restricciones CHECK para asegurar la integridad de dominios de datos (como validación de edades mínimas y rankings positivos), estructurado para una academia o torneo de ping pong.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional con restricciones CHECK, UNIQUE, FOREIGN KEY y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para categorías y atletas de tenis de mesa.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de indicadores deportivos mediante JOIN y funciones de agregación.
## Decisiones Técnicas
- Se aplicaron restricciones CHECK estrictas para garantizar que los valores de ranking mundial sean mayores a cero y que las edades mínimas sean lógicas.
- Se integraron relaciones 1:N mediante llaves foráneas para vincular de forma segura a los competidores con sus respectivas categorías.
