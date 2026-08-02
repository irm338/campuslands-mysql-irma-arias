USE peliculas_miedo_db;

-- 1. Listar películas con sus respectivos subgéneros de terror mediante la tabla puente
SELECT p.titulo, p.anio_estreno, s.nombre_subgenero, p.calificacion, p.estado
FROM peliculas_terror p
JOIN pelicula_subgenero ps ON p.id_pelicula = ps.id_pelicula
JOIN subgeneros_terror s ON ps.id_subgenero = s.id_subgenero
ORDER BY p.calificacion DESC;

-- 2. Conteo de películas asociadas y calificación promedio agrupadas por subgénero de terror
SELECT s.nombre_subgenero, COUNT(ps.id_pelicula) AS total_peliculas, AVG(p.calificacion) AS calificacion_promedio
FROM subgeneros_terror s
LEFT JOIN pelicula_subgenero ps ON s.id_subgenero = ps.id_subgenero
LEFT JOIN peliculas_terror p ON ps.id_pelicula = p.id_pelicula
GROUP BY s.nombre_subgenero
ORDER BY total_peliculas DESC;

-- 3. Ranking TOP 3 de las películas de terror mejor calificadas en el catálogo
SELECT p.titulo, p.anio_estreno, p.calificacion, p.estado
FROM peliculas_terror p
ORDER BY p.calificacion DESC
LIMIT 3;

-- 4. Filtrar películas disponibles cuya calificación sea mayor o igual a 7.5
SELECT p.titulo, p.anio_estreno, p.calificacion, p.estado
FROM peliculas_terror p
WHERE p.estado = 'disponible' AND p.calificacion >= 7.5
ORDER BY p.calificacion DESC;

-- 5. Conteo de asociaciones de subgéneros por cada título cinematográfico disponible
SELECT p.titulo, COUNT(ps.id_subgenero) AS cantidad_subgeneros, p.calificacion
FROM peliculas_terror p
JOIN pelicula_subgenero ps ON p.id_pelicula = ps.id_pelicula
GROUP BY p.titulo, p.calificacion
ORDER BY cantidad_subgeneros DESC;
