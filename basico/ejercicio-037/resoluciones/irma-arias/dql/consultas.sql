USE db_liga_futbol;

-- Consulta 1: Tabla de posiciones general ordenada por puntos de mayor a menor y diferencia de goles
SELECT id, nombre_equipo, puntos, partidos_jugados, goles_a_favor, goles_en_contra, (goles_a_favor - goles_en_contra) AS diferencia_goles
FROM equipos_liga 
WHERE estado = 'activo' 
ORDER BY puntos DESC, diferencia_goles DESC;

-- Consulta 2: Listar todos los equipos ordenados alfabéticamente por su nombre de la A a la Z
SELECT nombre_equipo, puntos, goles_a_favor, goles_en_contra, estado, fecha_fundacion
FROM equipos_liga
ORDER BY nombre_equipo ASC;

-- Consulta 3: Top 5 de los equipos más goleadores de la liga ordenados por goles a favor de forma descendente
SELECT nombre_equipo, goles_a_favor, partidos_jugados, puntos, estado
FROM equipos_liga
ORDER BY goles_a_favor DESC
LIMIT 5;

-- Consulta 4: Equipos ordenados por la menor cantidad de goles en contra (mejor defensa)
SELECT nombre_equipo, goles_en_contra, partidos_jugados, puntos, estado
FROM equipos_liga
ORDER BY goles_en_contra ASC;

-- Consulta 5: Resumen agrupado por estado actual de los clubes, mostrando cantidad y promedio de puntos
SELECT estado, COUNT(*) AS total_clubes, AVG(puntos) AS promedio_puntos
FROM equipos_liga
GROUP BY estado
ORDER BY promedio_puntos DESC;