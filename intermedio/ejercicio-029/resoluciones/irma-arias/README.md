# Ejercicio 029 - Vistas Simples para Mercado de Accesorios

## Descripción
Módulo relacional en MySQL optimizado para practicar la creación y explotación de **vistas simples (VIEW)**, estructurando información sobre categorías de accesorios, control de inventario de productos, precios, stock y estados operativos en un mercado comercial.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves primarias, foráneas, restricciones CHECK, campos ENUM y la definición de dos vistas simples (w_accesorios_disponibles y w_resumen_inventario).
2. dml/inserts.sql - Inserción de registros relacionales coherentes para categorías de mercado y accesorios comerciales.
3. dql/consultas.sql - Consultas orientadas al uso directo de vistas simples, filtros avanzados, rankings y cálculo de valor total de inventario.
## Decisiones Técnicas
- Se implementó la vista w_accesorios_disponibles para abstraer la unión entre categorías y productos, filtrando automáticamente aquellos elementos listos para la venta.
- Se creó la vista w_resumen_inventario para encapsular operaciones de agregación (COUNT, SUM, AVG), facilitando la lectura de reportes gerenciales sin necesidad de reescribir uniones complejas.
