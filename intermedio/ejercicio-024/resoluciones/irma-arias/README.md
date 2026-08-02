# Ejercicio 024 - FOREIGN KEY para Soldadura

## Descripción
Módulo relacional en MySQL optimizado para practicar la implementación y validación estricta de **Llaves Foráneas (FOREIGN KEY)**, estructurando información sobre procesos de soldadura industrial, especificaciones técnicas de amperaje, costos y estados operativos de los proyectos.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves primarias, foráneas, restricciones CHECK para amperajes y costos, y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para procesos metalúrgicos y trabajos de soldadura.
3. dql/consultas.sql - Consultas analíticas orientadas a la verificación de integridad referencial mediante uniones (JOIN) y funciones estadísticas.
## Decisiones Técnicas
- Se estableció una relación fuerte de uno a muchos (1:N) entre la tabla de procesos (procesos_soldadura) y los trabajos de taller (	rabajos_soldadura) utilizando restricciones de clave foránea con eliminación en cascada (ON DELETE CASCADE).
- Se aplicaron validaciones mediante restricciones CHECK para garantizar que los parámetros de amperaje se mantengan dentro de rangos operativos seguros.
