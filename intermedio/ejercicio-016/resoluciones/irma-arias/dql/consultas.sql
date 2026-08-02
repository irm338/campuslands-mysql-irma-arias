USE comida_urbana_db;

-- 1. Listar platillos disponibles vinculados estrictamente con su categoría mediante INNER JOIN
SELECT p.nombre_platillo, c.nombre_categoria, p.precio_usd, p.tiempo_preparacion_min, p.estado
FROM platillos_urbanos p
INNER JOIN categorias_comida c ON p.id_categoria = c.id_categoria
WHERE p.estado = 'disponible'
ORDER BY p.precio_usd DESC;

-- 2. Conteo de platillos y promedio de precios agrupados por categoría de comida urbana
SELECT c.nombre_categoria, COUNT(p.id_platillo) AS total_platillos, AVG(p.precio_usd) AS precio_promedio_usd
FROM categorias_comida c
INNER JOIN platillos_urbanos p ON c.id_categoria = p.id_categoria
GROUP BY c.nombre_categoria
ORDER BY total_platillos DESC;

-- 3. Ranking TOP 3 de los platillos más económicos del restaurante utilizando INNER JOIN
SELECT p.nombre_platillo, c.nombre_categoria, p.precio_usd, p.tiempo_preparacion_min
FROM platillos_urbanos p
INNER JOIN categorias_comida c ON p.id_categoria = c.id_categoria
ORDER BY p.precio_usd ASC
LIMIT 3;

-- 4. Filtrar platillos que tarden menos de 15 minutos en preparación y estén disponibles
SELECT p.nombre_platillo, c.nombre_categoria, p.tiempo_preparacion_min, p.precio_usd
FROM platillos_urbanos p
INNER JOIN categorias_comida c ON p.id_categoria = c.id_categoria
WHERE p.estado = 'disponible' AND p.tiempo_preparacion_min < 15
ORDER BY p.tiempo_preparacion_min ASC;

-- 5. Promedio de tiempo de preparación agrupado por el estado del platillo
SELECT estado, COUNT(*) AS cantidad_platillos, AVG(tiempo_preparacion_min) AS tiempo_promedio_min
FROM platillos_urbanos
GROUP BY estado
ORDER BY tiempo_promedio_min DESC;
