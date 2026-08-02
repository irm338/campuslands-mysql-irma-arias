USE viajes_turismo_db;

-- 1. Agrupar la cantidad de paquetes turísticos, precio promedio y duración promedio por continente
SELECT c.nombre_continente, COUNT(p.id_paquete) AS total_paquetes, AVG(p.precio_usd) AS precio_promedio_usd, AVG(p.duracion_dias) AS duracion_promedia_dias
FROM continentes_destinos c
JOIN paquetes_turisticos p ON c.id_continente = p.id_continente
GROUP BY c.nombre_continente
ORDER BY total_paquetes DESC;

-- 2. Agrupar por el estado operativo de los paquetes para calcular inversión total e ingresos potenciales
SELECT estado, COUNT(*) AS cantidad_paquetes, SUM(precio_usd) AS valor_total_portafolio, AVG(calificacion_promedio) AS calificacion_global
FROM paquetes_turisticos
GROUP BY estado
ORDER BY valor_total_portafolio DESC;

-- 3. Agrupar por continente obteniendo el paquete más costoso y el más económico de cada región
SELECT c.nombre_continente, MAX(p.precio_usd) AS precio_maximo_usd, MIN(p.precio_usd) AS precio_minimo_usd
FROM continentes_destinos c
JOIN paquetes_turisticos p ON c.id_continente = p.id_continente
GROUP BY c.nombre_continente
ORDER BY precio_maximo_usd DESC;

-- 4. Filtrar mediante HAVING aquellos continentes que acumulen 2 o más paquetes turísticos activos
SELECT c.nombre_continente, COUNT(p.id_paquete) AS paquetes_registrados, AVG(p.calificacion_promedio) AS promedio_calificacion
FROM continentes_destinos c
JOIN paquetes_turisticos p ON c.id_continente = p.id_continente
WHERE p.estado = 'disponible'
GROUP BY c.nombre_continente
HAVING COUNT(p.id_paquete) >= 2
ORDER BY promedio_calificacion DESC;

-- 5. Agrupar y clasificar la duración de los viajes para conocer el total de destinos y costo promedio por categoría de días
SELECT CASE
           WHEN duracion_dias <= 7 THEN 'Corto (Hasta 7 dias)'
           WHEN duracion_dias BETWEEN 8 AND 11 THEN 'Medio (8 a 11 dias)'
           ELSE 'Largo (12 dias o mas)'
       END AS categoria_duracion,
       COUNT(*) AS total_paquetes,
       AVG(precio_usd) AS precio_promedio
FROM paquetes_turisticos
GROUP BY categoria_duracion
ORDER BY precio_promedio DESC;
