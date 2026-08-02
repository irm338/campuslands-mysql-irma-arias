USE taller_mecanico_motos_db;

-- 1. Subconsulta escalar en el WHERE: Listar las órdenes de reparación cuyo costo sea mayor que el costo promedio de todas las órdenes del taller
SELECT id_orden, modelo_moto, motivo_ingreso, costo_total_usd, estado_orden
FROM ordenes_reparacion
WHERE costo_total_usd > (SELECT AVG(costo_total_usd) FROM ordenes_reparacion)
ORDER BY costo_total_usd DESC;

-- 2. Subconsulta con IN: Mostrar los mecánicos que tienen al menos una orden en estado 'finalizada' o 'entregada'
SELECT id_mecanico, nombre_mecanico, especialidad, experiencia_anios
FROM mecanicos
WHERE id_mecanico IN (
    SELECT id_mecanico 
    FROM ordenes_reparacion 
    WHERE estado_orden IN ('finalizada', 'entregada')
)
ORDER BY experiencia_anios DESC;

-- 3. Subconsulta en la cláusula FROM (tabla derivada): Calcular el promedio del costo de reparación agrupado por mecánico utilizando una subconsulta como origen de datos
SELECT sub.nombre_mecanico, sub.especialidad, sub.total_ordenes_mecanico, sub.costo_promedio_reparacion
FROM (
    SELECT m.nombre_mecanico, m.especialidad, COUNT(o.id_orden) AS total_ordenes_mecanico, AVG(o.costo_total_usd) AS costo_promedio_reparacion
    FROM mecanicos m
    JOIN ordenes_reparacion o ON m.id_mecanico = o.id_mecanico
    GROUP BY m.id_mecanico, m.nombre_mecanico, m.especialidad
) AS sub
WHERE sub.costo_promedio_reparacion > 200.00
ORDER BY sub.costo_promedio_reparacion DESC;

-- 4. Subconsulta correlacionada: Encontrar las órdenes de reparación cuyo costo sea el más alto registrado para su respectivo mecánico
SELECT o1.id_orden, o1.modelo_moto, o1.id_mecanico, o1.costo_total_usd
FROM ordenes_reparacion o1
WHERE o1.costo_total_usd = (
    SELECT MAX(o2.costo_total_usd)
    FROM ordenes_reparacion o2
    WHERE o2.id_mecanico = o1.id_mecanico
)
ORDER BY o1.costo_total_usd DESC;

-- 5. Subconsulta con EXISTS: Listar los mecánicos que cuentan con órdenes de reparación cuyo costo supere los 300 USD
SELECT m.id_mecanico, m.nombre_mecanico, m.especialidad
FROM mecanicos m
WHERE EXISTS (
    SELECT 1 
    FROM ordenes_reparacion o 
    WHERE o.id_mecanico = m.id_mecanico AND o.costo_total_usd > 300.00
)
ORDER BY m.nombre_mecanico;
