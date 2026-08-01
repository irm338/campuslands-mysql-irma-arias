-- DQL: Consultas avanzadas, reportes y agregaciones
USE db_futbol_sala_avanzado;

-- 1. Tabla general ordenada por rendimiento
SELECT id, codigo_equipo, nombre_equipo, puntos, partidos_ganados, goles_anotados, goles_recibidos, estado
FROM equipos_sala
ORDER BY puntos DESC, goles_anotados DESC;

-- 2. Filtro de equipos activos ordenados por goles
SELECT codigo_equipo, nombre_equipo, goles_anotados, puntos, estado
FROM equipos_sala
WHERE estado = 'activo'
ORDER BY goles_anotados DESC;

-- 3. Resumen agrupado por estado
SELECT estado, COUNT(*) AS total_equipos, SUM(puntos) AS suma_puntos_estado
FROM equipos_sala
GROUP BY estado
ORDER BY total_equipos DESC;

-- 4. Top 3 de equipos ganadores
SELECT codigo_equipo, nombre_equipo, partidos_ganados, puntos, estado
FROM equipos_sala
ORDER BY partidos_ganados DESC
LIMIT 3;

-- 5. Métricas globales de la liga
SELECT SUM(goles_anotados) AS total_goles_liga, ROUND(AVG(puntos), 2) AS promedio_puntos_equipos, MAX(puntos) AS puntaje_lider
FROM equipos_sala;