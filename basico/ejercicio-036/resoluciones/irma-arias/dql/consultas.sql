USE db_hiperdeportivos;

-- Consulta 1: Filtrar autos disponibles cuya velocidad máxima sea superior a 350 km/h ordenados por precio
SELECT id, marca, modelo, velocidad_maxima, precio, fecha_fabricacion 
FROM autos_hiperdeportivos 
WHERE estado = 'disponible' AND velocidad_maxima > 350 
ORDER BY precio DESC;

-- Consulta 2: Resumen agrupado por estado del auto, mostrando cantidad total y precio promedio
SELECT estado, COUNT(*) AS total_autos, AVG(precio) AS precio_promedio
FROM autos_hiperdeportivos
GROUP BY estado;

-- Consulta 3: Top 3 de hiperdeportivos más costosos sin importar su estado (Ranking de valor)
SELECT marca, modelo, velocidad_maxima, precio, estado
FROM autos_hiperdeportivos
ORDER BY precio DESC
LIMIT 3;

-- Consulta 4: Filtrar vehículos cuyo precio sea inferior a 3,000,000 USD y estén en estado 'disponible' o 'reservado'
SELECT marca, modelo, velocidad_maxima, precio, estado
FROM autos_hiperdeportivos
WHERE precio < 3000000.00 AND estado IN ('disponible', 'reservado');

-- Consulta 5: Conteo y velocidad máxima registrada agrupada por el estado actual del inventario
SELECT estado, COUNT(*) AS cantidad_vehiculos, MAX(velocidad_maxima) AS velocidad_maxima_registrada
FROM autos_hiperdeportivos
GROUP BY estado;