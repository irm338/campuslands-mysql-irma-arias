USE dibujo_digital_db;

-- 1. Listar los proyectos de dibujo digital vinculados con su respectivo software mediante JOIN, mostrando resoluciones atómicas
SELECT p.titulo_proyecto, s.nombre_software, CONCAT(p.resolucion_ancho, 'x', p.resolucion_alto) AS resolucion_px, p.costo_licencia_usd, p.estado
FROM proyectos_dibujo p
JOIN software_diseno s ON p.id_software = s.id_software
ORDER BY p.resolucion_ancho DESC;

-- 2. Conteo de proyectos y promedio de costos de licencia agrupados por software de diseño
SELECT s.nombre_software, COUNT(p.id_proyecto) AS total_proyectos, AVG(p.costo_licencia_usd) AS costo_promedio_licencia
FROM software_diseno s
LEFT JOIN proyectos_dibujo p ON s.id_software = p.id_software
GROUP BY s.nombre_software
ORDER BY total_proyectos DESC;

-- 3. Ranking TOP 3 de los proyectos con mayor resolución horizontal (ancho en píxeles)
SELECT p.titulo_proyecto, s.nombre_software, p.resolucion_ancho, p.resolucion_alto, p.estado
FROM proyectos_dibujo p
JOIN software_diseno s ON p.id_software = s.id_software
ORDER BY p.resolucion_ancho DESC
LIMIT 3;

-- 4. Filtrar proyectos finalizados que superen una resolución de 3000 píxeles de ancho
SELECT p.titulo_proyecto, s.nombre_software, p.resolucion_ancho, p.resolucion_alto
FROM proyectos_dibujo p
JOIN software_diseno s ON p.id_software = s.id_software
WHERE p.estado = 'finalizado' AND p.resolucion_ancho > 3000
ORDER BY p.resolucion_ancho ASC;

-- 5. Agrupar proyectos por su estado actual y calcular el promedio de resolución en anchura y altura
SELECT estado, COUNT(*) AS cantidad_proyectos, AVG(resolucion_ancho) AS promedio_ancho_px, AVG(resolucion_alto) AS promedio_alto_px
FROM proyectos_dibujo
GROUP BY estado
ORDER BY promedio_ancho_px DESC;
