USE equipo_streaming_db;

-- 1. Listado detallado de dispositivos con su categoría, tipo y especificaciones técnicas usando JOIN
SELECT d.nombre_dispositivo, c.nombre_categoria, c.tipo_dispositivo, d.precio_usd, d.resolucion_maxima, d.tasa_bits_kbps, d.estado_equipo
FROM dispositivos_streaming d
JOIN categorias_equipo c ON d.id_categoria = c.id_categoria
ORDER BY d.precio_usd DESC;

-- 2. Resumen analítico por categoría: Conteo de dispositivos cargados, inversión total y precio promedio de equipos
SELECT c.nombre_categoria, COUNT(d.id_dispositivo) AS total_dispositivos, SUM(d.precio_usd) AS inversion_total, AVG(d.precio_usd) AS precio_promedio
FROM categorias_equipo c
LEFT JOIN dispositivos_streaming d ON c.id_categoria = d.id_categoria
GROUP BY c.id_categoria, c.nombre_categoria
ORDER BY inversion_total DESC;

-- 3. Ranking TOP 3 de los dispositivos de streaming más costosos cargados en el inventario
SELECT d.nombre_dispositivo, c.nombre_categoria, d.precio_usd, d.resolucion_maxima, d.estado_equipo
FROM dispositivos_streaming d
JOIN categorias_equipo c ON d.id_categoria = c.id_categoria
ORDER BY d.precio_usd DESC
LIMIT 3;

-- 4. Filtrar equipos disponibles o en uso cuyo precio supere los 150 USD
SELECT d.nombre_dispositivo, c.nombre_categoria, d.precio_usd, d.estado_equipo
FROM dispositivos_streaming d
JOIN categorias_equipo c ON d.id_categoria = c.id_categoria
WHERE d.precio_usd > 150.00 AND d.estado_equipo IN ('disponible', 'en_uso')
ORDER BY d.precio_usd DESC;

-- 5. Resumen estadístico agrupado por el estado actual de los equipos de streaming
SELECT estado_equipo, COUNT(*) AS cantidad_equipos, AVG(precio_usd) AS promedio_precio, MAX(tasa_bits_kbps) AS max_bitrate_kbps
FROM dispositivos_streaming
GROUP BY estado_equipo
ORDER BY cantidad_equipos DESC;
