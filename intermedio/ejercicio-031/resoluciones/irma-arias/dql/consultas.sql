USE torneo_moba_db;

-- 1. Listado detallado de jugadores profesionales y sus respectivos equipos utilizando INNER JOIN
SELECT j.alias_jugador, j.rol_principal, e.nombre_equipo, e.region_origen, e.estado_equipo
FROM jugadores_moba j
INNER JOIN equipos_esports e ON j.id_equipo = e.id_equipo
ORDER BY j.asesinatos_totales DESC;

-- 2. Reporte analítico por equipo: Conteo de jugadores, total de asesinatos y asistencias acumuladas usando INNER JOIN y GROUP BY
SELECT e.nombre_equipo, e.region_origen, COUNT(j.id_jugador) AS total_jugadores, SUM(j.asesinatos_totales) AS total_asesinatos_equipo, SUM(j.asistencias_totales) AS total_asistencias_equipo
FROM equipos_esports e
INNER JOIN jugadores_moba j ON e.id_equipo = j.id_equipo
GROUP BY e.id_equipo, e.nombre_equipo, e.region_origen
ORDER BY total_asesinatos_equipo DESC;

-- 3. Ranking TOP 3 de los jugadores con mayor número de asesinatos en el torneo mediante INNER JOIN y LIMIT
SELECT j.alias_jugador, j.rol_principal, e.nombre_equipo, j.asesinatos_totales, j.muertes_totales
FROM jugadores_moba j
INNER JOIN equipos_esports e ON j.id_equipo = e.id_equipo
ORDER BY j.asesinatos_totales DESC
LIMIT 3;

-- 4. Filtrar jugadores cuyo rol sea 'mid' o 'adc' pertenecientes a equipos activos o campeones usando INNER JOIN y WHERE
SELECT j.alias_jugador, j.rol_principal, e.nombre_equipo, e.estado_equipo, j.asesinatos_totales
FROM jugadores_moba j
INNER JOIN equipos_esports e ON j.id_equipo = e.id_equipo
WHERE j.rol_principal IN ('mid', 'adc') AND e.estado_equipo IN ('activo', 'campeon')
ORDER BY j.asesinatos_totales DESC;

-- 5. Consulta analítica de rendimiento individual: Calcular el KDA aproximado (Asesinatos + Asistencias / Muertes) mediante INNER JOIN
SELECT j.alias_jugador, j.rol_principal, e.nombre_equipo, j.asesinatos_totales, j.muertes_totales, j.asistencias_totales, ROUND((j.asesinatos_totales + j.asistencias_totales) / NULLIF(j.muertes_totales, 0), 2) AS kda_aproximado
FROM jugadores_moba j
INNER JOIN equipos_esports e ON j.id_equipo = e.id_equipo
ORDER BY kda_aproximado DESC;
