-- DQL: Consultas de filtros por estado y análisis para academia tech
USE db_academia_tech;

-- 1. Filtrar todos los cursos que se encuentran estrictamente en estado 'activo' ordenados por precio
SELECT codigo_curso, nombre_curso, tecnologia_principal, horas_duracion, precio_curso, estado_curso
FROM cursos_academia
WHERE estado_curso = 'activo'
ORDER BY precio_curso DESC;

-- 2. Filtrar cursos utilizando múltiples estados ('activo' y 'en_desarrollo') ordenados por horas de duración
SELECT codigo_curso, nombre_curso, tecnologia_principal, horas_duracion, precio_curso, estado_curso
FROM cursos_academia
WHERE estado_curso IN ('activo', 'en_desarrollo')
ORDER BY horas_duracion DESC;

-- 3. Agrupar por estado del curso para analizar la cantidad de programas, el precio máximo y el promedio de horas de duración
SELECT estado_curso, COUNT(*) AS total_cursos, MAX(precio_curso) AS precio_maximo, ROUND(AVG(horas_duracion), 2) AS horas_promedio
FROM cursos_academia
GROUP BY estado_curso
ORDER BY total_cursos DESC;

-- 4. Ranking TOP 3 de los cursos con mayor valor de precio en toda la academia
SELECT codigo_curso, nombre_curso, tecnologia_principal, horas_duracion, precio_curso, estado_curso
FROM cursos_academia
ORDER BY precio_curso DESC
LIMIT 3;

-- 5. Resumen global de la academia filtrando únicamente los cursos activos (Precio promedio y suma total de horas ofrecidas)
SELECT ROUND(AVG(precio_curso), 2) AS precio_promedio_activos, SUM(horas_duracion) AS suma_total_horas_activos
FROM cursos_academia
WHERE estado_curso = 'activo';