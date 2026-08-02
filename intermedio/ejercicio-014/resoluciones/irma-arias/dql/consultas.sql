USE ciencia_ficcion_db;

-- 1. Consultar la vista simple de películas en cartelera ordenadas por calificación
SELECT * FROM vw_peliculas_cartelera
ORDER BY calificacion DESC;

-- 2. Listar todas las películas con su respectiva facción y presupuesto mediante JOIN explícito
SELECT p.titulo, p.anio_estreno, f.nombre_faccion, f.sistema_origen, p.presupuesto_millones, p.calificacion, p.estado
FROM peliculas_scifi p
JOIN facciones_scifi f ON p.id_faccion = f.id_faccion
ORDER BY p.anio_estreno ASC;

-- 3. Conteo de películas y presupuesto total invertido agrupados por facción galáctica
SELECT f.nombre_faccion, COUNT(p.id_pelicula) AS total_peliculas, SUM(p.presupuesto_millones) AS presupuesto_total_millones
FROM facciones_scifi f
LEFT JOIN peliculas_scifi p ON f.id_faccion = p.id_faccion
GROUP BY f.nombre_faccion
ORDER BY presupuesto_total_millones DESC;

-- 4. Ranking TOP 3 de las películas de ciencia ficción mejor calificadas de la saga
SELECT titulo, anio_estreno, calificacion, estado
FROM peliculas_scifi
ORDER BY calificacion DESC
LIMIT 3;

-- 5. Promedio de presupuesto y calificación agrupados por el estado actual de la producción
SELECT estado, COUNT(*) AS cantidad_producciones, AVG(presupuesto_millones) AS promedio_presupuesto, AVG(calificacion) AS promedio_calificacion
FROM peliculas_scifi
GROUP BY estado
ORDER BY promedio_calificacion DESC;
