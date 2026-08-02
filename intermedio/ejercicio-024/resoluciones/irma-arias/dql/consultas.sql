USE soldadura_db;

-- 1. Listar los trabajos de soldadura vinculados estrictamente con su proceso técnico mediante FOREIGN KEY y JOIN
SELECT t.titulo_trabajo, p.nombre_proceso, p.siglas, t.amperaje_recomendado, t.costo_material_usd, t.estado
FROM trabajos_soldadura t
JOIN procesos_soldadura p ON t.id_proceso = p.id_proceso
ORDER BY t.costo_material_usd DESC;

-- 2. Conteo de trabajos y costo total de materiales agrupados por cada proceso de soldadura
SELECT p.nombre_proceso, p.siglas, COUNT(t.id_trabajo) AS total_trabajos, SUM(t.costo_material_usd) AS inversion_total_usd
FROM procesos_soldadura p
LEFT JOIN trabajos_soldadura t ON p.id_proceso = t.id_proceso
GROUP BY p.id_proceso, p.nombre_proceso, p.siglas
ORDER BY inversion_total_usd DESC;

-- 3. Ranking TOP 3 de los trabajos de soldadura más costosos en material
SELECT t.titulo_trabajo, p.nombre_proceso, t.amperaje_recomendado, t.costo_material_usd, t.estado
FROM trabajos_soldadura t
JOIN procesos_soldadura p ON t.id_proceso = p.id_proceso
ORDER BY t.costo_material_usd DESC
LIMIT 3;

-- 4. Filtrar trabajos de soldadura cuyo amperaje sea igual o mayor a 150 amperios y estén inspeccionados o completados
SELECT t.titulo_trabajo, p.nombre_proceso, t.amperaje_recomendado, t.costo_material_usd, t.estado
FROM trabajos_soldadura t
JOIN procesos_soldadura p ON t.id_proceso = p.id_proceso
WHERE t.amperaje_recomendado >= 150 AND t.estado IN ('completado', 'inspeccionado')
ORDER BY t.amperaje_recomendado DESC;

-- 5. Promedio de amperaje y costo agrupados por el estado operativo de los trabajos
SELECT estado, COUNT(*) AS cantidad_trabajos, AVG(amperaje_recomendado) AS amperaje_promedio, AVG(costo_material_usd) AS costo_promedio_usd
FROM trabajos_soldadura
GROUP BY estado
ORDER BY costo_promedio_usd DESC;
