USE tienda_ropa_db;

-- 1. Listar todas las categorías de ropa y sus prendas mediante LEFT JOIN (incluye categorías sin prendas asignadas)
SELECT c.nombre_categoria, p.nombre_prenda, p.precio_usd, p.stock, p.estado
FROM categorias_ropa c
LEFT JOIN prendas_tienda p ON c.id_categoria = p.id_categoria
ORDER BY c.nombre_categoria ASC;

-- 2. Conteo total de prendas y stock acumulado por categoría usando LEFT JOIN para no excluir categorías vacías
SELECT c.nombre_categoria, COUNT(p.id_prenda) AS total_prendas, COALESCE(SUM(p.stock), 0) AS stock_total
FROM categorias_ropa c
LEFT JOIN prendas_tienda p ON c.id_categoria = p.id_categoria
GROUP BY c.nombre_categoria
ORDER BY total_prendas DESC;

-- 3. Identificar específicamente las categorías que actualmente NO tienen ninguna prenda registrada (LEFT JOIN + IS NULL)
SELECT c.id_categoria, c.nombre_categoria, c.descripcion
FROM categorias_ropa c
LEFT JOIN prendas_tienda p ON c.id_categoria = p.id_categoria
WHERE p.id_prenda IS NULL;

-- 4. Ranking TOP 3 de las prendas más costosas de la tienda de ropa
SELECT p.nombre_prenda, c.nombre_categoria, p.precio_usd, p.stock, p.estado
FROM prendas_tienda p
JOIN categorias_ropa c ON p.id_categoria = c.id_categoria
ORDER BY p.precio_usd DESC
LIMIT 3;

-- 5. Promedio de precios y stock agrupados por el estado operativo de las prendas
SELECT estado, COUNT(*) AS cantidad_prendas, AVG(precio_usd) AS precio_promedio_usd, SUM(stock) AS stock_acumulado
FROM prendas_tienda
GROUP BY estado
ORDER BY precio_promedio_usd DESC;
