USE db_hiperdeportivos;

-- Consulta 1: Análisis EXPLAIN para la búsqueda de autos filtrados por fabricante y estado usando el índice creado
EXPLAIN 
SELECT id, codigo_modelo, nombre_auto, fabricante, velocidad_max_kmh, precio_usd, estado
FROM autos_hiperdeportivos
WHERE fabricante = 'Bugatti' AND estado = 'produccion_limitada';

-- Consulta 2: Análisis EXPLAIN para el listado ordenado de los hiperdeportivos con mayor potencia (HP)
EXPLAIN 
SELECT nombre_auto, fabricante, potencia_hp, velocidad_max_kmh, precio_usd
FROM autos_hiperdeportivos
ORDER BY potencia_hp DESC;

-- Consulta 3: Análisis EXPLAIN para el resumen agrupado por fabricante calculando el promedio de velocidad máxima y potencia
EXPLAIN 
SELECT fabricante, COUNT(*) AS total_modelos, ROUND(AVG(velocidad_max_kmh), 1) AS promedio_velocidad, ROUND(AVG(potencia_hp), 1) AS promedio_potencia
FROM autos_hiperdeportivos
GROUP BY fabricante
ORDER BY promedio_potencia DESC;

-- Consulta 4: Análisis EXPLAIN para filtrar autos con velocidad máxima superior a 380 km/h y estado 'disponible' o 'reservado'
EXPLAIN 
SELECT codigo_modelo, nombre_auto, fabricante, velocidad_max_kmh, estado
FROM autos_hiperdeportivos
WHERE velocidad_max_kmh > 380 AND estado IN ('disponible', 'reservado');

-- Consulta 5: Análisis EXPLAIN para el reporte global evaluando métricas de la flota de hiperdeportivos
EXPLAIN 
SELECT COUNT(*) AS total_flota, MAX(velocidad_max_kmh) AS velocidad_maxima_absoluta, SUM(precio_usd) AS valor_total_flota
FROM autos_hiperdeportivos;