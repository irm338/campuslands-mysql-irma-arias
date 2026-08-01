-- DQL: Consultas de verificación y análisis post-eliminación para taller de soldadura
USE db_taller_soldadura;

-- 1. Listado completo de inspecciones vigentes ordenadas por espesor del material de mayor a menor
SELECT id, codigo_cordon, tipo_proceso_soldadura, espesor_material_mm, longitud_cordon_cm, resultado_inspeccion
FROM inspecciones_soldadura
ORDER BY espesor_material_mm DESC;

-- 2. Filtrar únicamente las inspecciones que se encuentren con el resultado 'aprobado'
SELECT codigo_cordon, tipo_proceso_soldadura, espesor_material_mm, longitud_cordon_cm, resultado_inspeccion
FROM inspecciones_soldadura
WHERE resultado_inspeccion = 'aprobado'
ORDER BY longitud_cordon_cm DESC;

-- 3. Agrupar por tipo de proceso de soldadura para conocer el total de registros activos, el espesor máximo y el promedio de longitud de cordón
SELECT tipo_proceso_soldadura, COUNT(*) AS total_inspecciones_activas, MAX(espesor_material_mm) AS espesor_maximo_mm, ROUND(AVG(longitud_cordon_cm), 2) AS longitud_promedio_cm
FROM inspecciones_soldadura
GROUP BY tipo_proceso_soldadura
ORDER BY total_inspecciones_activas DESC;

-- 4. Ranking TOP 3 de los cordones de soldadura con mayor longitud activa en el taller
SELECT codigo_cordon, tipo_proceso_soldadura, espesor_material_mm, longitud_cordon_cm, resultado_inspeccion
FROM inspecciones_soldadura
ORDER BY longitud_cordon_cm DESC
LIMIT 3;

-- 5. Resumen global de control de calidad (Espesor mínimo evaluado, espesor máximo y suma total de longitud de soldadura inspeccionada)
SELECT MIN(espesor_material_mm) AS espesor_minimo_mm, MAX(espesor_material_mm) AS espesor_maximo_mm, SUM(longitud_cordon_cm) AS longitud_total_acumulada_cm
FROM inspecciones_soldadura;