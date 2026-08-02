USE videojuego_accion_db;

-- 1. Informe General: Listado detallado de misiones con su región, nivel de peligro y recompensas utilizando JOIN
SELECT m.titulo_mision, r.nombre_region, r.nivel_peligro, m.puntos_experiencia, m.recompensa_oro, m.estado
FROM misiones_aventura m
JOIN regiones_mapa r ON m.id_region = r.id_region
ORDER BY m.recompensa_oro DESC;

-- 2. Informe Financiero y de Experiencia por Región: Conteo de misiones, oro total e incremento promedio de XP agrupados por región
SELECT r.nombre_region, r.nivel_peligro, COUNT(m.id_mision) AS total_misiones, SUM(m.recompensa_oro) AS oro_total_region, AVG(m.puntos_experiencia) AS xp_promedio
FROM regiones_mapa r
LEFT JOIN misiones_aventura m ON r.id_region = m.id_region
GROUP BY r.id_region, r.nombre_region, r.nivel_peligro
ORDER BY oro_total_region DESC;

-- 3. Informe de Ranking TOP 3: Las misiones de aventura más lucrativas del juego
SELECT m.titulo_mision, r.nombre_region, m.puntos_experiencia, m.recompensa_oro, m.estado
FROM misiones_aventura m
JOIN regiones_mapa r ON m.id_region = r.id_region
ORDER BY m.recompensa_oro DESC
LIMIT 3;

-- 4. Informe de Estado Operativo: Filtrar misiones completadas o en curso que otorguen más de 1000 puntos de experiencia
SELECT m.titulo_mision, r.nombre_region, m.puntos_experiencia, m.recompensa_oro, m.estado
FROM misiones_aventura m
JOIN regiones_mapa r ON m.id_region = r.id_region
WHERE m.estado IN ('completada', 'en_curso') AND m.puntos_experiencia > 1000
ORDER BY m.puntos_experiencia DESC;

-- 5. Informe de Resumen por Estado: Estadísticas de volumen de oro y experiencia agrupadas por el estado actual de las misiones
SELECT estado, COUNT(*) AS cantidad_misiones, SUM(puntos_experiencia) AS xp_acumulada, AVG(recompensa_oro) AS promedio_recompensa_oro
FROM misiones_aventura
GROUP BY estado
ORDER BY xp_acumulada DESC;
