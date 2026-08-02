USE videojuego_rpg_db;

-- 1. Listar los personajes RPG junto con su clase, rol principal y estadísticas verificadas mediante JOIN
SELECT p.nombre_personaje, c.nombre_clase, c.rol_principal, p.nivel, p.puntos_vida, p.oro, p.estado
FROM personajes_rpg p
JOIN clases_personaje c ON p.id_clase = c.id_clase
ORDER BY p.nivel DESC;

-- 2. Conteo de personajes, nivel promedio y oro acumulado agrupados por clase de personaje
SELECT c.nombre_clase, COUNT(p.id_personaje) AS total_personajes, AVG(p.nivel) AS nivel_promedio, SUM(p.oro) AS oro_total_acumulado
FROM clases_personaje c
LEFT JOIN personajes_rpg p ON c.id_clase = p.id_clase
GROUP BY c.id_clase, c.nombre_clase
ORDER BY oro_total_acumulado DESC;

-- 3. Ranking TOP 3 de los personajes con mayor nivel de experiencia en el servidor RPG
SELECT p.nombre_personaje, c.nombre_clase, p.nivel, p.puntos_vida, p.estado
FROM personajes_rpg p
JOIN clases_personaje c ON p.id_clase = c.id_clase
ORDER BY p.nivel DESC
LIMIT 3;

-- 4. Filtrar personajes activos o en combate cuyo nivel sea igual o superior a 80
SELECT p.nombre_personaje, c.nombre_clase, p.nivel, p.oro, p.estado
FROM personajes_rpg p
JOIN clases_personaje c ON p.id_clase = c.id_clase
WHERE p.nivel >= 80 AND p.estado IN ('activo', 'en_combate')
ORDER BY p.nivel DESC;

-- 5. Agrupar personajes por su estado actual y calcular el promedio de puntos de vida y oro
SELECT estado, COUNT(*) AS cantidad_personajes, AVG(puntos_vida) AS vida_promedio, AVG(oro) AS oro_promedio
FROM personajes_rpg
GROUP BY estado
ORDER BY vida_promedio DESC;
