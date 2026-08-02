USE laboratorio_quimico_db;

-- 1. Listar las fórmulas químicas junto con su tipo de compuesto y código CAS único mediante JOIN
SELECT f.nombre_formula, f.codigo_cas, t.nombre_tipo, f.pureza_porcentaje, f.estado
FROM formulas_quimicas f
JOIN tipos_compuesto t ON f.id_tipo = t.id_tipo
ORDER BY f.pureza_porcentaje DESC;

-- 2. Conteo de fórmulas y promedio de pureza agrupados por tipo de compuesto con JOIN y funciones estadísticas
SELECT t.nombre_tipo, COUNT(f.id_formula) AS total_formulas, AVG(f.pureza_porcentaje) AS pureza_promedio
FROM tipos_compuesto t
LEFT JOIN formulas_quimicas f ON t.id_tipo = f.id_tipo
GROUP BY t.id_tipo, t.nombre_tipo
ORDER BY total_formulas DESC;

-- 3. Ranking TOP 3 de las fórmulas químicas con mayor porcentaje de pureza en el laboratorio
SELECT f.nombre_formula, f.codigo_cas, t.nombre_tipo, f.pureza_porcentaje, f.estado
FROM formulas_quimicas f
JOIN tipos_compuesto t ON f.id_tipo = t.id_tipo
ORDER BY f.pureza_porcentaje DESC
LIMIT 3;

-- 4. Filtrar fórmulas químicas aprobadas que posean una pureza igual o superior al 98.00 por ciento
SELECT f.nombre_formula, f.codigo_cas, t.nombre_tipo, f.pureza_porcentaje
FROM formulas_quimicas f
JOIN tipos_compuesto t ON f.id_tipo = t.id_tipo
WHERE f.estado = 'aprobado' AND f.pureza_porcentaje >= 98.00
ORDER BY f.pureza_porcentaje DESC;

-- 5. Agrupar fórmulas químicas por su estado operativo actual y calcular el promedio de pureza
SELECT estado, COUNT(*) AS cantidad_formulas, AVG(pureza_porcentaje) AS pureza_media
FROM formulas_quimicas
GROUP BY estado
ORDER BY pureza_media DESC;
