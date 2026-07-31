USE db_inventario_skins;

-- Consulta 1: Listar todas las skins disponibles en el inventario ordenadas por su valor de mayor a menor
SELECT id, nombre_skin, arma_asociada, rareza, valor_mercado, fecha_obtencion 
FROM skins_shooter 
WHERE estado = 'disponible' 
ORDER BY valor_mercado DESC;

-- Consulta 2: Resumen agrupado por rareza, mostrando el total de skins y el valor promedio en el mercado
SELECT rareza, COUNT(*) AS total_skins, AVG(valor_mercado) AS valor_promedio
FROM skins_shooter
GROUP BY rareza;

-- Consulta 3: Top 3 de skins más costosas del inventario (Ranking de valor)
SELECT nombre_skin, arma_asociada, rareza, valor_mercado, estado
FROM skins_shooter
ORDER BY valor_mercado DESC
LIMIT 3;

-- Consulta 4: Filtrar skins que estén en estado 'en_venta' y cuyo valor supere los 500.00
SELECT nombre_skin, arma_asociada, rareza, valor_mercado, fecha_obtencion
FROM skins_shooter
WHERE estado = 'en_venta' AND valor_mercado > 500.00;

-- Consulta 5: Conteo y valor máximo agrupado por el estado actual de las skins
SELECT estado, COUNT(*) AS cantidad_skins, MAX(valor_mercado) AS valor_maximo
FROM skins_shooter
GROUP BY estado;