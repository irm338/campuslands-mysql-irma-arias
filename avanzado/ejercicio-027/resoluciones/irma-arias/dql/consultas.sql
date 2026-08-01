-- DQL: Consultas de modelado, filtrado y análisis para videojuego de acción y aventura
USE db_accion_aventura;

-- 1. Listado completo de misiones ordenadas de mayor a menor nivel de dificultad técnica
SELECT codigo_mision, nombre_mision, region_mapa, nivel_dificultad, recompensas_oro, estado_mision
FROM misiones_aventura
ORDER BY nivel_dificultad DESC;

-- 2. Filtrar misiones que se encuentren en estado 'completada' o 'en_progreso' ordenadas por recompensa en oro
SELECT codigo_mision, nombre_mision, region_mapa, nivel_dificultad, recompensas_oro, estado_mision
FROM misiones_aventura
WHERE estado_mision IN ('completada', 'en_progreso')
ORDER BY recompensas_oro DESC;

-- 3. Agrupar por región del mapa para analizar el total de misiones, la dificultad máxima y el promedio de oro ofrecido
SELECT region_mapa, COUNT(*) AS total_misiones, MAX(nivel_dificultad) AS dificultad_maxima, ROUND(AVG(recompensas_oro), 2) AS oro_promedio
FROM misiones_aventura
GROUP BY region_mapa
ORDER BY oro_promedio DESC;

-- 4. Ranking TOP 3 de las misiones con mayores recompensas de oro en todo el mundo abierto
SELECT codigo_mision, nombre_mision, region_mapa, nivel_dificultad, recompensas_oro, estado_mision
FROM misiones_aventura
ORDER BY recompensas_oro DESC
LIMIT 3;

-- 5. Resumen financiero y de desafío global del juego (Dificultad promedio general y suma total de oro disponible en misiones)
SELECT ROUND(AVG(nivel_dificultad), 2) AS dificultad_promedio_general, SUM(recompensas_oro) AS suma_total_oro_mundo
FROM misiones_aventura;