# Ejercicio 016 - INNER JOIN para Restaurante de Comida Urbana

## Descripción
Módulo relacional en MySQL optimizado para practicar el uso estricto de **INNER JOIN**, estructurando información de un restaurante de comida urbana con categorías, platillos, precios, tiempos de preparación y estados operativos.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves foráneas, restricciones CHECK para precios y tiempos, y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para categorías y platillos urbanos.
3. dql/consultas.sql - Consultas analíticas basadas en el uso de INNER JOIN, funciones de agregación y filtros condicionales.
## Decisiones Técnicas
- Se aplicó la cláusula INNER JOIN de forma rigurosa para garantizar que los reportes de negocio unan exclusivamente los platillos que poseen una categoría válida asignada.
- Se configuraron restricciones de integridad referencial con eliminación en cascada (ON DELETE CASCADE).
