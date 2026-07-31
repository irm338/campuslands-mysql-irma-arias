USE db_garaje_motos;

-- Consulta 1: Listar las motocicletas disponibles ordenadas por precio comercial de mayor a menor
SELECT id, marca, modelo, cilindrada, precio_comercial, fecha_ingreso 
FROM motos_garaje 
WHERE estado = 'disponible' 
ORDER BY precio_comercial DESC;

-- Consulta 2: Resumen agrupado por marca, mostrando la cantidad de motos y el precio promedio
SELECT marca, COUNT(*) AS total_motos, AVG(precio_comercial) AS precio_promedio
FROM motos_garaje
GROUP BY marca;

-- Consulta 3: Top 3 de motos más costosas del garaje (Ranking de valor)
SELECT marca, modelo, cilindrada, precio_comercial, estado
FROM motos_garaje
ORDER BY precio_comercial DESC
LIMIT 3;

-- Consulta 4: Filtrar motocicletas cuya cilindrada sea mayor a 400cc y se encuentren disponibles
SELECT marca, modelo, cilindrada, precio_comercial, fecha_ingreso
FROM motos_garaje
WHERE estado = 'disponible' AND cilindrada > 400;

-- Consulta 5: Conteo y valor máximo agrupado por el estado actual de las motocicletas en el garaje
SELECT estado, COUNT(*) AS cantidad_motos, MAX(precio_comercial) AS precio_maximo
FROM motos_garaje
GROUP BY estado;