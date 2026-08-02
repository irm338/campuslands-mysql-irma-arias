USE mercado_accesorios_db;

-- 1. Consultar la vista simple de accesorios disponibles ordenada por precio descendente
SELECT * FROM vw_accesorios_disponibles
ORDER BY precio_usd DESC;

-- 2. Consultar la vista de resumen de inventario por categoría para obtener estadísticas generales
SELECT * FROM vw_resumen_inventario
ORDER BY stock_total DESC;

-- 3. Ranking TOP 3 de los accesorios más costosos disponibles en el mercado utilizando la vista simple
SELECT nombre_accesorio, nombre_categoria, precio_usd, stock
FROM vw_accesorios_disponibles
ORDER BY precio_usd DESC
LIMIT 3;

-- 4. Filtrar productos de la vista de disponibles cuyo precio sea menor o igual a 30 USD
SELECT nombre_accesorio, nombre_categoria, precio_usd, stock
FROM vw_accesorios_disponibles
WHERE precio_usd <= 30.00
ORDER BY precio_usd ASC;

-- 5. Consulta analítica sobre la tabla base combinada para evaluar el valor total del inventario (precio x stock) por accesorio
SELECT a.nombre_accesorio, c.nombre_categoria, a.precio_usd, a.stock, (a.precio_usd * a.stock) AS valor_total_inventario, a.estado
FROM accesorios a
JOIN categorias_accesorio c ON a.id_categoria = c.id_categoria
ORDER BY valor_total_inventario DESC;
