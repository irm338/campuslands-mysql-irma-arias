# Ejercicio 025 - UNIQUE para Laboratorio de Fórmulas Químicas

## Descripción
Módulo relacional en MySQL optimizado para practicar la implementación y validación de restricciones de unicidad (**UNIQUE**), estructurando información sobre tipos de compuestos químicos, nombres de fórmulas, identificadores CAS únicos, niveles de pureza y estados operativos.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves primarias, foráneas, restricciones UNIQUE en nombres comerciales y códigos CAS, restricciones CHECK de pureza y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para clasificaciones químicas y fórmulas de laboratorio.
3. dql/consultas.sql - Consultas analíticas orientadas al reporte gerencial mediante uniones avanzadas (JOIN) y funciones estadísticas.
## Decisiones Técnicas
- Se implementó la restricción UNIQUE en los campos 
ombre_formula y codigo_cas para garantizar la integridad de los datos científicos y prevenir duplicidad en registros de sustancias químicas.
- Se estructuró una relación 1:N entre los tipos de compuesto y las fórmulas del laboratorio mediante claves foráneas con eliminación en cascada.
