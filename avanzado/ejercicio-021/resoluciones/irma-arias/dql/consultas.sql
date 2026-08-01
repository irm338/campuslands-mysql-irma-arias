-- DQL: Consultas analíticas y filtros con WHERE para proyectos de dibujo digital
USE db_dibujo_digital;

-- 1. Filtrar proyectos que tengan más de 100 capas totales ordenados de mayor a menor complejidad
SELECT codigo_proyecto, titulo_obra, software_utilizado, capas_totales, precio_comision, estado
FROM proyectos_dibujo
WHERE capas_totales > 100
ORDER BY capas_totales DESC;

-- 2. Filtrar obras que estén en estado 'completado' o 'en_progreso' utilizando el operador IN
SELECT codigo_proyecto, titulo_obra, software_utilizado, capas_totales, precio_comision, estado
FROM proyectos_dibujo
WHERE estado IN ('completado', 'en_progreso')
ORDER BY precio_comision DESC;

-- 3. Filtrar proyectos creados en 'Photoshop' o 'Clip Studio Paint' con un precio mayor o igual a 400 dólares
SELECT codigo_proyecto, titulo_obra, software_utilizado, capas_totales, precio_comision, estado
FROM proyectos_dibujo
WHERE software_utilizado IN ('Photoshop', 'Clip Studio Paint') AND precio_comision >= 400.00
ORDER BY precio_comision ASC;

-- 4. Filtrar obras cuyo título contenga la palabra 'Concept' utilizando el operador LIKE
SELECT codigo_proyecto, titulo_obra, software_utilizado, capas_totales, precio_comision, estado
FROM proyectos_dibujo
WHERE titulo_obra LIKE '%Concept%'
ORDER BY capas_totales DESC;

-- 5. Agrupar por software utilizado aplicando un filtro WHERE previo para excluir borradores y calcular métricas
SELECT software_utilizado, COUNT(*) AS total_proyectos_activos, SUM(capas_totales) AS capas_acumuladas, ROUND(AVG(precio_comision), 2) AS comision_promedio
FROM proyectos_dibujo
WHERE estado != 'borrador'
GROUP BY software_utilizado
ORDER BY comision_promedio DESC;