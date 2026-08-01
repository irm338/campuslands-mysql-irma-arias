-- DQL: Consultas de validación, filtrado y análisis para videojuego RPG
USE db_videojuego_rpg;

-- 1. Listado completo de personajes ordenados de mayor a menor nivel de experiencia
SELECT codigo_personaje, nombre_personaje, clase_rpg, nivel_experiencia, puntos_vida, estado_jugador
FROM personajes_rpg
ORDER BY nivel_experiencia DESC;

-- 2. Filtrar personajes activos o en combate que posean un nivel de experiencia superior a 75
SELECT codigo_personaje, nombre_personaje, clase_rpg, nivel_experiencia, puntos_vida, estado_jugador
FROM personajes_rpg
WHERE estado_jugador IN ('activo', 'en_combate') AND nivel_experiencia > 75
ORDER BY puntos_vida DESC;

-- 3. Agrupar por clase RPG para evaluar la cantidad de personajes, el nivel máximo y el promedio de puntos de vida
SELECT clase_rpg, COUNT(*) AS total_personajes, MAX(nivel_experiencia) AS nivel_maximo, ROUND(AVG(puntos_vida), 2) AS vida_promedio
FROM personajes_rpg
GROUP BY clase_rpg
ORDER BY vida_promedio DESC;

-- 4. Ranking TOP 3 de los personajes con mayor cantidad de puntos de vida en el servidor
SELECT codigo_personaje, nombre_personaje, clase_rpg, nivel_experiencia, puntos_vida, estado_jugador
FROM personajes_rpg
ORDER BY puntos_vida DESC
LIMIT 3;

-- 5. Resumen general de estadísticas del servidor RPG (Nivel promedio global y suma total de vida de todos los personajes)
SELECT ROUND(AVG(nivel_experiencia), 2) AS nivel_experiencia_promedio_global, SUM(puntos_vida) AS suma_total_vida_servidor
FROM personajes_rpg;