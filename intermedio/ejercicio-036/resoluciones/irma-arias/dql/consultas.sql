USE autos_hiperdeportivos_db;

-- 1. Listar todos los hiperdeportivos con su respectivo fabricante, potencia, velocidad máxima y precio, ordenados por velocidad descendente
SELECT f.nombre_fabricante, h.modelo, h.potencia_hp, h.velocidad_max_kmh, h.precio_usd, h.estado_produccion
FROM hiperdeportivos h
JOIN fabricantes f ON h.id_fabricante = f.id_fabricante
ORDER BY h.velocidad_max_kmh DESC;

-- 2. Explotar la atomicidad de la tabla 1FN consultando los detalles técnicos (componentes y atributos atómicos) de cada hiperdeportivo
SELECT h.modelo, f.nombre_fabricante, e.componente, e.detalle_atomico
FROM especificaciones_tecnicas_1fn e
JOIN hiperdeportivos h ON e.id_auto = h.id_auto
JOIN fabricantes f ON h.id_fabricante = f.id_fabricante
ORDER BY h.modelo;

-- 3. Análisis agrupado por fabricante: Calcular la potencia promedio, la velocidad máxima alcanzada y el precio promedio de sus vehículos
SELECT f.nombre_fabricante, COUNT(h.id_auto) AS total_modelos, MAX(h.velocidad_max_kmh) AS maxima_velocidad_marca, AVG(h.potencia_hp) AS potencia_promedio
FROM fabricantes f
JOIN hiperdeportivos h ON f.id_fabricante = h.id_fabricante
GROUP BY f.id_fabricante, f.nombre_fabricante
ORDER BY maxima_velocidad_marca DESC;

-- 4. Filtrar hiperdeportivos cuyo estado de producción sea 'en_produccion' o 'limitado' y cuya velocidad máxima supere los 400 km/h
SELECT h.modelo, f.nombre_fabricante, h.velocidad_max_kmh, h.estado_produccion, h.precio_usd
FROM hiperdeportivos h
JOIN fabricantes f ON h.id_fabricante = f.id_fabricante
WHERE h.estado_produccion IN ('en_produccion', 'limitado') AND h.velocidad_max_kmh > 400
ORDER BY h.precio_usd DESC;

-- 5. Ranking TOP 3 de los hiperdeportivos más caros del mercado global aplicando formato claro y uniones relacionales
SELECT h.modelo, f.nombre_fabricante, f.pais_origen, h.precio_usd, h.potencia_hp
FROM hiperdeportivos h
JOIN fabricantes f ON h.id_fabricante = f.id_fabricante
ORDER BY h.precio_usd DESC
LIMIT 3;
