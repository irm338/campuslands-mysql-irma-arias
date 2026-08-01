-- DQL: Consultas analíticas y reportes de la academia de kickboxing
USE db_kickboxing_avanzado;

-- 1. Listado general de luchadores ordenados por cantidad de nocauts y peleas ganadas
SELECT id, codigo_luchador, nombre_completo, categoria_peso, peleas_ganadas, peleas_perdidas, nocauts, estado
FROM luchadores_kickboxing
ORDER BY nocauts DESC, peleas_ganadas DESC;

-- 2. Filtrar únicamente a los luchadores activos ordenados alfabéticamente
SELECT codigo_luchador, nombre_completo, categoria_peso, peleas_ganadas, estado
FROM luchadores_kickboxing
WHERE estado = 'activo'
ORDER BY nombre_completo ASC;

-- 3. Agrupar por categoría de peso para ver cuántos luchadores activos o inactivos hay por división
SELECT categoria_peso, COUNT(*) AS total_luchadores, SUM(nocauts) AS total_nocauts_division
FROM luchadores_kickboxing
GROUP BY categoria_peso
ORDER BY total_luchadores DESC;

-- 4. Top 3 de luchadores con mayor cantidad de nocauts (ranking de pegada)
SELECT codigo_equipo_o_luchador AS codigo_luchador, nombre_completo, nocauts, categoria_peso, estado
FROM (
    SELECT codigo_luchador AS codigo_equipo_o_luchador, nombre_completo, nocauts, categoria_peso, estado 
    FROM luchadores_kickboxing
) AS ranking_nocauts
ORDER BY nocauts DESC
LIMIT 3;

-- 5. Métricas globales de la academia (promedio de peleas ganadas y máximo de nocauts registrados)
SELECT ROUND(AVG(peleas_ganadas), 2) AS promedio_victorias, MAX(nocauts) AS maximo_nocauts, SUM(peleas_ganadas) AS total_victorias_academia
FROM luchadores_kickboxing;