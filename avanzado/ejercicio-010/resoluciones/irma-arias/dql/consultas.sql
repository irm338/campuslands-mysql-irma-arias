-- DQL: Consultas analíticas con COUNT y SUM para carreras urbanas
USE db_carreras_urbanas;

-- 1. Conteo total de corredores y suma total recaudada en inscripciones agrupados por categoría de edad
SELECT categoria_edad, COUNT(*) AS total_corredores, SUM(inscripcion_pagada) AS recaudacion_total
FROM participantes_carrera
GROUP BY categoria_edad
ORDER BY recaudacion_total DESC;

-- 2. Conteo de corredores según su estado actual en la competición y suma de distancias recorridas
SELECT estado, COUNT(*) AS cantidad_corredores, SUM(distancia_km) AS kilometros_acumulados_estado
FROM participantes_carrera
GROUP BY estado
ORDER BY cantidad_corredores DESC;

-- 3. Reporte detallado filtrando solo a los que finalizaron, ordenados por menor tiempo (mayor velocidad)
SELECT codigo_corredor, nombre_completo, categoria_edad, distancia_km, tiempo_minutos, inscripcion_pagada
FROM participantes_carrera
WHERE estado = 'finalizado'
ORDER BY tiempo_minutos ASC;

-- 4. Resumen global de la carrera utilizando COUNT y SUM generales
SELECT COUNT(*) AS total_inscritos_general, SUM(inscripcion_pagada) AS fondo_total_recaudado, SUM(distancia_km) AS kilometros_totales_evento
FROM participantes_carrera;

-- 5. Top 3 de categorías con mayor cantidad de corredores inscritos
SELECT categoria_edad, COUNT(*) AS total_inscritos
FROM participantes_carrera
GROUP BY categoria_edad
ORDER BY total_inscritos DESC
LIMIT 3;