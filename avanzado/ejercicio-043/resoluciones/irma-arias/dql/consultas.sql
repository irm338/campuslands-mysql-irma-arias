USE peliculas_miedo_db;

-- 1. Total de películas y calificación promedio por subgénero (solo disponibles)
SELECT subgenero, COUNT(*) AS total_peliculas, AVG(calificacion) AS promedio_calificacion
FROM peliculas
WHERE estado = 'disponible'
GROUP BY subgenero
ORDER BY promedio_calificacion DESC;

-- 2. Ranking TOP 3 de las películas con mayor calificación
SELECT titulo, director, calificacion
FROM peliculas
ORDER BY calificacion DESC
LIMIT 3;

-- 3. Listado de películas filtradas por estado específico (disponibles)
SELECT titulo, director, anio_estreno
FROM peliculas
WHERE estado = 'disponible'
ORDER BY anio_estreno ASC;

-- 4. Conteo de películas según su estado actual en la plataforma
SELECT estado, COUNT(*) AS cantidad_por_estado
FROM peliculas
GROUP BY estado;

-- 5. Películas clásicas estrenadas antes de 1990 ordenadas por año
SELECT titulo, director, anio_estreno, calificacion
FROM peliculas
WHERE anio_estreno < 1990
ORDER BY anio_estreno ASC;