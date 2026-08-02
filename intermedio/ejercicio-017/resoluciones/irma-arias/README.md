# Ejercicio 017 - LEFT JOIN para Tienda de Ropa

## Descripción
Módulo relacional en MySQL optimizado para practicar el uso de **LEFT JOIN** (Unión Izquierda), estructurando información de una tienda de ropa con categorías y prendas, permitiendo evaluar tanto registros asociados como entidades vacías.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves foráneas, restricciones CHECK para precios y stock, y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales estratégicos, incluyendo categorías sin prendas para probar la unión izquierda.
3. dql/consultas.sql - Consultas analíticas que explotan el LEFT JOIN, funciones de agregación y filtros de nulidad (IS NULL).
## Decisiones Técnicas
- Se implementó la cláusula LEFT JOIN para garantizar que el listado general de categorías muestre la totalidad del catálogo de la tienda de ropa, independientemente de si poseen o no mercancía activa asignada.
- Se utilizaron funciones como COALESCE para manejar de forma profesional los valores nulos resultantes en reportes estadísticos.
