USE playlist_musical_db;

-- 1. Listar canciones activas con el nombre de su género musical y reproducciones mediante JOIN
SELECT c.titulo, c.artista, g.nombre_genero, c.duracion_segundos, c.reproducciones, c.estado
FROM canciones_playlist c
JOIN generos_musicales g ON c.id_genero = g.id_genero
WHERE c.estado = 'activa'
ORDER BY c.reproducciones DESC;

-- 2. Conteo de canciones y total de reproducciones acumuladas agrupados por género musical
SELECT g.nombre_genero, COUNT(c.id_cancion) AS total_canciones, SUM(c.reproducciones) AS reproducciones_totales
FROM generos_musicales g
LEFT JOIN canciones_playlist c ON g.id_genero = c.id_genero
GROUP BY g.nombre_genero
ORDER BY reproducciones_totales DESC;

-- 3. Ranking TOP 3 de las canciones más reproducidas de la plataforma musical
SELECT c.titulo, c.artista, g.nombre_genero, c.reproducciones
FROM canciones_playlist c
JOIN generos_musicales g ON c.id_genero = g.id_genero
ORDER BY c.reproducciones DESC
LIMIT 3;

-- 4. Filtrar canciones activas que tengan más de 1.000.000 de reproducciones
SELECT c.titulo, c.artista, g.nombre_genero, c.reproducciones
FROM canciones_playlist c
JOIN generos_musicales g ON c.id_genero = g.id_genero
WHERE c.estado = 'activa' AND c.reproducciones > 1000000
ORDER BY c.reproducciones DESC;

-- 5. Promedio de duración y reproducciones agrupadas por el estado actual de la pista
SELECT estado, COUNT(*) AS total_pistas, AVG(duracion_segundos) AS duracion_promedio_seg, AVG(reproducciones) AS promedio_reproducciones
FROM canciones_playlist
GROUP BY estado
ORDER BY promedio_reproducciones DESC;
