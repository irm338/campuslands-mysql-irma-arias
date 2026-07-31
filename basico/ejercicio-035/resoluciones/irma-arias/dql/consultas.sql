USE db_taller_mecanico;

-- Consulta 1: Listar las órdenes pendientes o en proceso ordenadas por costo de mayor a menor
SELECT id, cliente, moto_modelo, tipo_servicio, costo_total, fecha_ingreso 
FROM ordenes_reparacion 
WHERE estado IN ('pendiente', 'en_proceso') 
ORDER BY costo_total DESC;

-- Consulta 2: Resumen agrupado por tipo de servicio, mostrando cantidad de órdenes y costo promedio
SELECT tipo_servicio, COUNT(*) AS total_ordenes, AVG(costo_total) AS costo_promedio
FROM ordenes_reparacion
GROUP BY tipo_servicio;

-- Consulta 3: Top 3 de reparaciones más costosas del taller (Ranking de costos)
SELECT cliente, moto_modelo, tipo_servicio, costo_total, estado
FROM ordenes_reparacion
ORDER BY costo_total DESC
LIMIT 3;

-- Consulta 4: Filtrar servicios de 'Mantenimiento' cuyo costo sea mayor o igual a 100.00
SELECT cliente, moto_modelo, tipo_servicio, costo_total, fecha_ingreso
FROM ordenes_reparacion
WHERE tipo_servicio = 'Mantenimiento' AND costo_total >= 100.00;

-- Consulta 5: Conteo y valor acumulado de ingresos agrupado por el estado actual de las órdenes
SELECT estado, COUNT(*) AS cantidad_ordenes, SUM(costo_total) AS ingresos_totales
FROM ordenes_reparacion
GROUP BY estado;