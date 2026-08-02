USE pingpong_db;

-- 1. Listar jugadores activos con su ranking mundial y categoría mediante JOIN
SELECT j.ranking_mundial, j.nombre_jugador, c.nombre_nivel, j.partidos_ganados, j.partidos_perdidos, j.estado
FROM jugadores_pingpong j
JOIN categorias_pingpong c ON j.id_categoria = c.id_categoria
WHERE j.estado = 'activo'
ORDER BY j.ranking_mundial ASC;

-- 2. Conteo de jugadores y promedio de partidos ganados agrupados por categoría de nivel
SELECT c.nombre_nivel, COUNT(j.id_jugador) AS total_jugadores, AVG(j.partidos_ganados) AS promedio_victorias
FROM categorias_pingpong c
LEFT JOIN jugadores_pingpong j ON c.id_categoria = j.id_categoria
GROUP BY c.nombre_nivel
ORDER BY total_jugadores DESC;

-- 3. Ranking TOP 3 de los mejores jugadores del mundo según su posición en el ranking
SELECT j.ranking_mundial, j.nombre_jugador, c.nombre_nivel, j.partidos_ganados
FROM jugadores_pingpong j
JOIN categorias_pingpong c ON j.id_categoria = c.id_categoria
ORDER BY j.ranking_mundial ASC
LIMIT 3;

-- 4. Filtrar jugadores activos que tengan más de 100 partidos ganados
SELECT j.nombre_jugador, c.nombre_nivel, j.partidos_ganados, j.partidos_perdidos
FROM jugadores_pingpong j
JOIN categorias_pingpong c ON j.id_categoria = c.id_categoria
WHERE j.estado = 'activo' AND j.partidos_ganados > 100
ORDER BY j.partidos_ganados DESC;

-- 5. Promedio de victorias y derrotas agrupadas por el estado actual del jugador
SELECT estado, COUNT(*) AS cantidad_jugadores, AVG(partidos_ganados) AS promedio_ganados, AVG(partidos_perdidos) AS promedio_perdidos
FROM jugadores_pingpong
GROUP BY estado;
