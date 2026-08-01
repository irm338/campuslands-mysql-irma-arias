-- DQL: Consultas de verificación y análisis post-actualización para arquitectura 3D
USE db_arquitectura_3d;

-- 1. Listado completo de proyectos de arquitectura ordenados por honorarios actualizados de mayor a menor
SELECT codigo_proyecto, nombre_proyecto, tipo_inmueble, area_construccion_m2, honorarios_dolares, estado
FROM proyectos_arquitectura
ORDER BY honorarios_dolares DESC;

-- 2. Filtrar proyectos que se encuentren en estados avanzados ('aprobado' o 'entregado') ordenados por área
SELECT codigo_proyecto, nombre_proyecto, tipo_inmueble, area_construccion_m2, honorarios_dolares, estado
FROM proyectos_arquitectura
WHERE estado IN ('aprobado', 'entregado')
ORDER BY area_construccion_m2 DESC;

-- 3. Agrupar por tipo de inmueble para evaluar el total de registros, el área total construida y el promedio de honorarios
SELECT tipo_inmueble, COUNT(*) AS total_proyectos, SUM(area_construccion_m2) AS area_total_m2, ROUND(AVG(honorarios_dolares), 2) AS honorarios_promedio
FROM proyectos_arquitectura
GROUP BY tipo_inmueble
ORDER BY honorarios_promedio DESC;

-- 4. Ranking TOP 3 de los proyectos con mayores honorarios tras las actualizaciones de tarifas
SELECT codigo_proyecto, nombre_proyecto, tipo_inmueble, area_construccion_m2, honorarios_dolares, estado
FROM proyectos_arquitectura
ORDER BY honorarios_dolares DESC
LIMIT 3;

-- 5. Resumen financiero global de la oficina de arquitectura (Honorarios máximos, mínimos y suma total de ingresos proyectados)
SELECT MAX(honorarios_dolares) AS proyecto_mas_lucrativo, MIN(honorarios_dolares) AS proyecto_base, SUM(honorarios_dolares) AS ingresos_totales_cartera
FROM proyectos_arquitectura;