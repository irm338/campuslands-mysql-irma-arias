USE inventario_skins_db;

-- 1. Agrupar las skins por categoría de arma para obtener el total de elementos, la inversión total y el precio promedio usando GROUP BY
SELECT c.nombre_categoria, COUNT(s.id_skin) AS total_skins, SUM(s.precio_mercado_usd) AS valor_total_inventario, AVG(s.precio_mercado_usd) AS precio_promedio
FROM categorias_arma c
JOIN skins_shooter s ON c.id_categoria = s.id_categoria
GROUP BY c.id_categoria, c.nombre_categoria
ORDER BY valor_total_inventario DESC;

-- 2. Agrupar las skins por su nivel de rareza para evaluar la cantidad de ítems por tier y su precio máximo de mercado
SELECT rareza, COUNT(*) AS cantidad_skins, AVG(precio_mercado_usd) AS precio_promedio, MAX(precio_mercado_usd) AS precio_maximo
FROM skins_shooter
GROUP BY rareza
ORDER BY cantidad_skins DESC;

-- 3. Agrupar las skins por su estado actual en el inventario para calcular estadísticas operativas y financieras
SELECT estado_skin, COUNT(*) AS total_items, SUM(precio_mercado_usd) AS valor_acumulado_estado
FROM skins_shooter
GROUP BY estado_skin
ORDER BY valor_acumulado_estado DESC;

-- 4. Agrupar por categoría y rareza combinadas para obtener un reporte detallado del inventario de skins de alto valor
SELECT c.nombre_categoria, s.rareza, COUNT(*) AS total_por_grupo, SUM(s.precio_mercado_usd) AS suma_valor
FROM skins_shooter s
JOIN categorias_arma c ON s.id_categoria = c.id_categoria
GROUP BY c.nombre_categoria, s.rareza
ORDER BY suma_valor DESC;

-- 5. Consulta analítica avanzada con GROUP BY y filtro HAVING para mostrar solo aquellas categorías cuyo valor total de inventario supere los 50 USD
SELECT c.nombre_categoria, COUNT(s.id_skin) AS total_skins, SUM(s.precio_mercado_usd) AS valor_total_categoria
FROM categorias_arma c
JOIN skins_shooter s ON c.id_categoria = s.id_categoria
GROUP BY c.id_categoria, c.nombre_categoria
HAVING valor_total_categoria > 50.00
ORDER BY valor_total_categoria DESC;
