USE academia_tech_db;

-- 1. Listar las inscripciones completas relacionando estudiantes y cursos mediante la tabla puente y JOIN multitabla
SELECT e.nombre_completo AS estudiante, c.nombre_curso, c.creditos, i.fecha_inscripcion, i.calificacion_final, i.estado_inscripcion
FROM inscripciones_cursos i
JOIN estudiantes e ON i.id_estudiante = e.id_estudiante
JOIN cursos_tech c ON i.id_curso = c.id_curso
ORDER BY i.calificacion_final DESC;

-- 2. Reporte analítico por curso: Conteo de estudiantes inscritos y promedio de calificación final agrupados por curso
SELECT c.nombre_curso, c.costo_usd, COUNT(i.id_estudiante) AS total_estudiantes, AVG(i.calificacion_final) AS calificacion_promedio
FROM cursos_tech c
LEFT JOIN inscripciones_cursos i ON c.id_curso = i.id_curso
GROUP BY c.id_curso, c.nombre_curso, c.costo_usd
ORDER BY total_estudiantes DESC;

-- 3. Ranking TOP 3 de los estudiantes con mejor desempeño académico basado en sus calificaciones promedio
SELECT e.nombre_completo, e.correo, COUNT(i.id_curso) AS cursos_cursados, AVG(i.calificacion_final) AS promedio_general
FROM estudiantes e
JOIN inscripciones_cursos i ON e.id_estudiante = i.id_estudiante
GROUP BY e.id_estudiante, e.nombre_completo, e.correo
ORDER BY promedio_general DESC
LIMIT 3;

-- 4. Filtrar inscripciones aprobadas cuya calificación final sea igual o superior a 9.00
SELECT e.nombre_completo, c.nombre_curso, i.calificacion_final, i.estado_inscripcion
FROM inscripciones_cursos i
JOIN estudiantes e ON i.id_estudiante = e.id_estudiante
JOIN cursos_tech c ON i.id_curso = c.id_curso
WHERE i.estado_inscripcion = 'aprobado' AND i.calificacion_final >= 9.00
ORDER BY i.calificacion_final DESC;

-- 5. Resumen estadístico agrupado por el estado actual de las inscripciones en la tabla puente
SELECT estado_inscripcion, COUNT(*) AS cantidad_registros, AVG(calificacion_final) AS calificacion_media
FROM inscripciones_cursos
GROUP BY estado_inscripcion
ORDER BY cantidad_registros DESC;
