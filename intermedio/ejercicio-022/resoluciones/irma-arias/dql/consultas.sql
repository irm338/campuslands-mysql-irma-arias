USE animacion_3d_db;

-- 1. Listar proyectos de animación con su software y tareas asociadas mediante JOIN multitabla
SELECT p.titulo_proyecto, s.nombre_software, t.nombre_tarea, t.horas_estimadas, t.estado_tarea
FROM proyectos_animacion p
JOIN software_animacion s ON p.id_software = s.id_software
JOIN tareas_animacion t ON p.id_proyecto = t.id_proyecto
ORDER BY t.horas_estimadas DESC;

-- 2. Conteo de proyectos, presupuesto total y presupuesto promedio agrupados por software 3D
SELECT s.nombre_software, COUNT(p.id_proyecto) AS total_proyectos, SUM(p.presupuesto_usd) AS presupuesto_total_usd, AVG(p.presupuesto_usd) AS presupuesto_promedio_usd
FROM software_animacion s
LEFT JOIN proyectos_animacion p ON s.id_software = p.id_software
GROUP BY s.nombre_software
ORDER BY presupuesto_total_usd DESC;

-- 3. Ranking TOP 3 de los proyectos con mayor presupuesto en el estudio de animación 3D
SELECT p.titulo_proyecto, s.nombre_software, p.fotogramas_por_segundo, p.presupuesto_usd, p.estado
FROM proyectos_animacion p
JOIN software_animacion s ON p.id_software = s.id_software
ORDER BY p.presupuesto_usd DESC
LIMIT 3;

-- 4. Filtrar proyectos en estado 'produccion' cuyo presupuesto supere los 40000 USD
SELECT p.titulo_proyecto, s.nombre_software, p.presupuesto_usd, p.fotogramas_por_segundo
FROM proyectos_animacion p
JOIN software_animacion s ON p.id_software = s.id_software
WHERE p.estado = 'produccion' AND p.presupuesto_usd > 40000.00
ORDER BY p.presupuesto_usd DESC;

-- 5. Agrupar tareas por su estado actual y calcular el total de horas estimadas requeridas
SELECT estado_tarea, COUNT(*) AS cantidad_tareas, SUM(horas_estimadas) AS horas_totales_estimadas, AVG(horas_estimadas) AS promedio_horas_tarea
FROM tareas_animacion
GROUP BY estado_tarea
ORDER BY horas_totales_estimadas DESC;
