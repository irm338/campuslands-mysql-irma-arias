USE biblioteca_gamer_db;

-- 1. Listar videojuegos con el nombre de su plataforma y detalles mediante JOIN
SELECT v.titulo, p.nombre_plataforma, v.precio_usd, v.horas_jugadas, v.estado
FROM videojuegos v
JOIN plataformas_gamer p ON v.id_plataforma = p.id_plataforma
ORDER BY v.horas_jugadas DESC;

-- 2. Conteo de videojuegos y total de horas jugadas agrupados por plataforma gamer
SELECT p.nombre_plataforma, COUNT(v.id_juego) AS total_juegos, SUM(v.horas_jugadas) AS horas_totales
FROM plataformas_gamer p
LEFT JOIN videojuegos v ON p.id_plataforma = v.id_plataforma
GROUP BY p.nombre_plataforma
ORDER BY horas_totales DESC;

-- 3. Ranking TOP 3 de los videojuegos con mayor cantidad de horas jugadas
SELECT v.titulo, p.nombre_plataforma, v.horas_jugadas, v.estado
FROM videojuegos v
JOIN plataformas_gamer p ON v.id_plataforma = p.id_plataforma
ORDER BY v.horas_jugadas DESC
LIMIT 3;

-- 4. Filtrar videojuegos completados que hayan requerido más de 50 horas de juego
SELECT v.titulo, p.nombre_plataforma, v.horas_jugadas, v.precio_usd
FROM videojuegos v
JOIN plataformas_gamer p ON v.id_plataforma = p.id_plataforma
WHERE v.estado = 'completado' AND v.horas_jugadas > 50
ORDER BY v.horas_jugadas DESC;

-- 5. Promedio de precio e inversión total de juegos agrupados por estado actual en la biblioteca
SELECT estado, COUNT(*) AS cantidad_juegos, AVG(precio_usd) AS precio_promedio, SUM(precio_usd) AS inversion_total
FROM videojuegos
GROUP BY estado
ORDER BY inversion_total DESC;
