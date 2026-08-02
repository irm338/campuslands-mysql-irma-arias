USE arquitectura_3d_db;

-- 1. Listar proyectos arquitectónicos con su respectivo software de render y estilo mediante JOIN multitabla en 3FN
SELECT p.nombre_proyecto, s.nombre_software, s.motor_render, e.nombre_estilo, p.area_construccion_m2, p.presupuesto_usd, p.estado
FROM proyectos_arquitectura p
JOIN software_render s ON p.id_software = s.id_software
JOIN estilos_arquitectonicos e ON p.id_estilo = e.id_estilo
ORDER BY p.presupuesto_usd DESC;

-- 2. Conteo de proyectos, presupuesto total y área promedio construida agrupados por estilo arquitectónico
SELECT e.nombre_estilo, COUNT(p.id_proyecto) AS total_proyectos, SUM(p.presupuesto_usd) AS presupuesto_total_usd, AVG(p.area_construccion_m2) AS area_promedio_m2
FROM estilos_arquitectonicos e
LEFT JOIN proyectos_arquitectura p ON e.id_estilo = p.id_estilo
GROUP BY e.nombre_estilo
ORDER BY presupuesto_total_usd DESC;

-- 3. Conteo de proyectos y presupuesto promedio agrupados por el software de render utilizado
SELECT s.nombre_software, s.motor_render, COUNT(p.id_proyecto) AS cantidad_proyectos, AVG(p.presupuesto_usd) AS presupuesto_promedio_usd
FROM software_render s
LEFT JOIN proyectos_arquitectura p ON s.id_software = p.id_software
GROUP BY s.id_software, s.nombre_software, s.motor_render
ORDER BY cantidad_proyectos DESC;

-- 4. Ranking TOP 3 de los proyectos con mayor presupuesto en el estudio de arquitectura 3D
SELECT p.nombre_proyecto, e.nombre_estilo, p.area_construccion_m2, p.presupuesto_usd, p.estado
FROM proyectos_arquitectura p
JOIN estilos_arquitectonicos e ON p.id_estilo = e.id_estilo
ORDER BY p.presupuesto_usd DESC
LIMIT 3;

-- 5. Filtrar proyectos finalizados o aprobados cuyo presupuesto supere los 200000 USD
SELECT p.nombre_proyecto, s.nombre_software, e.nombre_estilo, p.presupuesto_usd, p.estado
FROM proyectos_arquitectura p
JOIN software_render s ON p.id_software = s.id_software
JOIN estilos_arquitectonicos e ON p.id_estilo = e.id_estilo
WHERE p.estado IN ('aprobado', 'finalizado') AND p.presupuesto_usd > 200000.00
ORDER BY p.presupuesto_usd ASC;
