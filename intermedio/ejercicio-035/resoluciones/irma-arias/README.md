# Ejercicio 035 - Subconsultas para Taller Mecánico de Motos

## Descripción
Módulo relacional en MySQL enfocado en practicar el uso avanzado de **subconsultas**, estructurando información sobre mecánicos especialistas, años de experiencia, órdenes de reparación de motocicletas, motivos de ingreso, costos totales y estados operativos en el taller.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves primarias, foráneas con eliminación en cascada, restricciones CHECK para costos y campos ENUM para estados de orden.
2. dml/inserts.sql - Inserción de registros relacionales robustos y coherentes que simulan la gestión real de un taller mecánico de motos.
3. dql/consultas.sql - Consultas orientadas a explotar subconsultas escalares, subconsultas con operadores de conjuntos (IN), tablas derivadas en el FROM, subconsultas correlacionadas y validación con EXISTS.
## Decisiones Técnicas
- Se implementó una relación 1:N entre los mecánicos del taller y las órdenes de reparación para permitir evaluar el rendimiento individual y la complejidad financiera de los servicios prestados.
- Se diseñaron múltiples enfoques de subconsultas para resolver problemas analíticos complejos sin depender exclusivamente de uniones tradicionales (JOIN).
