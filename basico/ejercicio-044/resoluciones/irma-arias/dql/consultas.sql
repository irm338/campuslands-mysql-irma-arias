USE db_saga_scifi;

-- Consulta 1: Listar todos los eventos de la saga ordenados por su fecha de lanzamiento real de la más antigua a la más reciente
SELECT id, titulo_evento, tipo_evento, fecha_lanzamiento, anio_cronologico, presupuesto_millones, estado
FROM eventos_saga
ORDER BY fecha_lanzamiento ASC;

-- Consulta 2: Extraer el año de lanzamiento real usando YEAR() y agrupar por dicho año calculando el presupuesto total
SELECT YEAR(fecha_lanzamiento) AS anio_real, COUNT(*) AS total_lanzamientos, SUM(presupuesto_millones) AS presupuesto_total_millones
FROM eventos_saga
GROUP BY anio_real
ORDER BY anio_real ASC;

-- Consulta 3: Top 3 de obras o eventos con mayor presupuesto asignado en la saga
SELECT titulo_evento, tipo_evento, fecha_lanzamiento, presupuesto_millones, estado
FROM eventos_saga
ORDER BY presupuesto_millones DESC
LIMIT 3;

-- Consulta 4: Filtrar eventos lanzados antes del año 2000 que pertenezcan al estado 'canon' o 'leyendas'
SELECT titulo_evento, tipo_evento, fecha_lanzamiento, estado
FROM eventos_saga
WHERE fecha_lanzamiento < '2000-01-01' AND estado IN ('canon', 'leyendas')
ORDER BY fecha_lanzamiento ASC;

-- Consulta 5: Resumen agrupado por estado de la saga, mostrando la cantidad de registros y el promedio de presupuesto
SELECT estado, COUNT(*) AS cantidad_registros, ROUND(AVG(presupuesto_millones), 2) AS promedio_presupuesto
FROM eventos_saga
GROUP BY estado
ORDER BY cantidad_registros DESC;