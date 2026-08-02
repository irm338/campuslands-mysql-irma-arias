USE paracaidismo_db;

-- 1. Agrupar saltos por categoría y utilizar HAVING para mostrar solo aquellas con un costo promedio mayor a 300 USD
SELECT c.nombre_categoria, COUNT(s.id_salto) AS total_saltos, AVG(s.costo_usd) AS costo_promedio_usd
FROM categorias_salto c
JOIN saltos_paracaidismo s ON c.id_categoria = s.id_categoria
GROUP BY c.nombre_categoria
HAVING AVG(s.costo_usd) > 300.00
ORDER BY costo_promedio_usd DESC;

-- 2. Agrupar saltos completados por categoría y filtrar con HAVING las que acumulen 2 o más registros
SELECT c.nombre_categoria, COUNT(s.id_salto) AS saltos_completados, MAX(s.altura_pies) AS altura_maxima_pies
FROM categorias_salto c
JOIN saltos_paracaidismo s ON c.id_categoria = s.id_categoria
WHERE s.estado = 'completado'
GROUP BY c.nombre_categoria
HAVING COUNT(s.id_salto) >= 2
ORDER BY saltos_completados DESC;

-- 3. Agrupar por estado de los saltos calculando el costo total y filtrar con HAVING estados cuyo costo acumulado supere los 1000 USD
SELECT estado, COUNT(*) AS cantidad_saltos, SUM(costo_usd) AS inversion_total_usd
FROM saltos_paracaidismo
GROUP BY estado
HAVING SUM(costo_usd) > 1000.00
ORDER BY inversion_total_usd DESC;

-- 4. Agrupar por categoría de salto calculando la altura promedio y filtrar con HAVING aquellas cuya altura supere los 13000 pies
SELECT c.nombre_categoria, AVG(s.altura_pies) AS altura_promedio_pies, MIN(s.costo_usd) AS costo_minimo_usd
FROM categorias_salto c
JOIN saltos_paracaidismo s ON c.id_categoria = s.id_categoria
GROUP BY c.nombre_categoria
HAVING AVG(s.altura_pies) > 13000
ORDER BY altura_promedio_pies DESC;

-- 5. Listar las categorías cuyo costo máximo de salto sea igual o superior a 400 USD utilizando HAVING sobre funciones de agregación
SELECT c.nombre_categoria, MAX(s.costo_usd) AS costo_maximo_usd, COUNT(s.id_salto) AS total_registros
FROM categorias_salto c
JOIN saltos_paracaidismo s ON c.id_categoria = s.id_categoria
GROUP BY c.nombre_categoria
HAVING MAX(s.costo_usd) >= 400.00
ORDER BY costo_maximo_usd DESC;
