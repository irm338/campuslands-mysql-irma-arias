-- DQL: Consultas analíticas y ordenamientos con ORDER BY para animación 3D
USE db_animacion_3d;

-- 1. Ordenar todos los proyectos de animación de menor a mayor tiempo de render en horas
SELECT codigo_proyecto, titulo_secuencia, software_render, tiempo_render_horas, presupuesto_dolares, estado
FROM proyectos_3d
ORDER BY tiempo_render_horas ASC;

-- 2. Ordenar los proyectos por presupuesto de mayor a menor (Proyectos más costosos primero)
SELECT codigo_proyecto, titulo_secuencia, software_render, tiempo_render_horas, presupuesto_dolares, estado
FROM proyectos_3d
ORDER BY presupuesto_dolares DESC;

-- 3. Ordenamiento múltiple: Ordenar alfabéticamente por software de render y, a su vez, por mayor presupuesto
SELECT codigo_proyecto, titulo_secuencia, software_render, tiempo_render_horas, presupuesto_dolares, estado
FROM proyectos_3d
ORDER BY software_render ASC, presupuesto_dolares DESC;

-- 4. Ranking TOP 4 de secuencias con mayor tiempo de render requerido en la producción 3D
SELECT codigo_proyecto, titulo_secuencia, software_render, tiempo_render_horas, presupuesto_dolares, estado
FROM proyectos_3d
ORDER BY tiempo_render_horas DESC
LIMIT 4;

-- 5. Agrupar por software de render ordenando el reporte final por el presupuesto promedio descendente
SELECT software_render, COUNT(*) AS total_proyectos, SUM(tiempo_render_horas) AS horas_totales_render, ROUND(AVG(presupuesto_dolares), 2) AS presupuesto_promedio
FROM proyectos_3d
GROUP BY software_render
ORDER BY presupuesto_promedio DESC;