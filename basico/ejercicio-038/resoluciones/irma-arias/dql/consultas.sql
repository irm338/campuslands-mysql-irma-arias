USE db_futbol_sala;

-- Consulta 1: Listar jugadores activos ordenados por su cantidad de goles de mayor a menor (Tabla de goleadores)
SELECT id, nombre_jugador, posicion, goles_anotados, asistencias, partidos_jugados 
FROM jugadores_sala 
WHERE estado = 'activo' 
ORDER BY goles_anotados DESC;

-- Consulta 2: Resumen agrupado por posición en la cancha, mostrando el total de jugadores y promedio de goles
SELECT posicion, COUNT(*) AS total_jugadores, AVG(goles_anotados) AS promedio_goles
FROM jugadores_sala
GROUP BY posicion;

-- Consulta 3: Top 3 de máximos asistidores del torneo de fútbol sala
SELECT nombre_jugador, posicion, asistencias, goles_anotados, estado
FROM jugadores_sala
ORDER BY asistencias DESC
LIMIT 3;

-- Consulta 4: Filtrar jugadores activos que tengan más de 10 goles anotados y al menos 5 asistencias
SELECT nombre_jugador, posicion, goles_anotados, asistencias, partidos_jugados
FROM jugadores_sala
WHERE estado = 'activo' AND goles_anotados > 10 AND asistencias >= 5;

-- Consulta 5: Conteo y total general de goles anotados agrupados por el estado actual de los jugadores
SELECT estado, COUNT(*) AS cantidad_jugadores, SUM(goles_anotados) AS goles_totales_estado
FROM jugadores_sala
GROUP BY estado;