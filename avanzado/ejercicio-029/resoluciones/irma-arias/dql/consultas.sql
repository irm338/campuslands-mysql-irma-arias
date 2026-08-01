-- DQL: Consultas analíticas con fechas y filtros para mercado de accesorios
USE db_mercado_accesorios;

-- 1. Listado completo de accesorios ordenados de la fecha de ingreso más reciente a la más antigua
SELECT codigo_accesorio, nombre_accesorio, categoria_accesorio, precio_unitario, stock_disponible, fecha_ingreso, estado_accesorio
FROM accesorios_mercado
ORDER BY fecha_ingreso DESC;

-- 2. Filtrar accesorios que ingresaron al inventario a partir del 1 de marzo de 2026 en adelante
SELECT codigo_accesorio, nombre_accesorio, categoria_accesorio, precio_unitario, stock_disponible, fecha_ingreso, estado_accesorio
FROM accesorios_mercado
WHERE fecha_ingreso >= '2026-03-01'
ORDER BY fecha_ingreso ASC;

-- 3. Agrupar por categoría de accesorio utilizando funciones de fecha y agregación para conocer la fecha de ingreso más antigua y el precio promedio por categoría
SELECT categoria_accesorio, COUNT(*) AS total_articulos, MIN(fecha_ingreso) AS primera_fecha_ingreso, ROUND(AVG(precio_unitario), 2) AS precio_promedio
FROM accesorios_mercado
GROUP BY categoria_accesorio
ORDER BY precio_promedio DESC;

-- 4. Ranking TOP 3 de los accesorios con mayor precio unitario que se encuentran con stock disponible o en oferta
SELECT codigo_accesorio, nombre_accesorio, categoria_accesorio, precio_unitario, stock_disponible, fecha_ingreso, estado_accesorio
FROM accesorios_mercado
WHERE estado_accesorio IN ('disponible', 'en_oferta')
ORDER BY precio_unitario DESC
LIMIT 3;

-- 5. Resumen global del inventario activo (Suma total del stock disponible y precio unitario promedio general)
SELECT SUM(stock_disponible) AS stock_total_disponible, ROUND(AVG(precio_unitario), 2) AS precio_promedio_general
FROM accesorios_mercado;