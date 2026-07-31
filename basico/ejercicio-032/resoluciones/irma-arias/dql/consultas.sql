USE db_ranking_battle_royale;

-- Consulta 1: Listar jugadores activos ordenados por su puntuación total de mayor a menor (Ranking principal)
SELECT id, nombre_jugador, rango_actual, eliminaciones, puntuacion_total, partidas_jugadas 
FROM ranking_jugadores 
WHERE estado = 'activo' 
ORDER BY puntuacion_total DESC;

-- Consulta 2: Resumen agrupado por rango actual, contando jugadores y calculando el promedio de eliminaciones
SELECT rango_actual, COUNT(*) AS total_jugadores, AVG(eliminaciones) AS promedio_eliminaciones
FROM ranking_jugadores
GROUP BY rango_actual;

-- Consulta 3: Top 3 de mejores jugadores con mayor puntuación total sin importar el estado (Podio)
SELECT nombre_jugador, rango_actual, puntuacion_total, eliminaciones, estado
FROM ranking_jugadores
ORDER BY puntuacion_total DESC
LIMIT 3;

-- Consulta 4: Filtrar jugadores activos cuya puntuación supere los 1500 puntos y tengan más de 50 partidas jugadas
SELECT nombre_jugador, rango_actual, puntuacion_total, partidas_jugadas, fecha_ultima_partida
FROM ranking_jugadores
WHERE estado = 'activo' AND puntuacion_total > 1500.00 AND partidas_jugadas > 50;

-- Consulta 5: Conteo y puntaje máximo alcanzado agrupado por el estado actual de las cuentas
SELECT estado, COUNT(*) AS total_cuentas, MAX(puntuacion_total) AS puntaje_maximo
FROM ranking_jugadores
GROUP BY estado;