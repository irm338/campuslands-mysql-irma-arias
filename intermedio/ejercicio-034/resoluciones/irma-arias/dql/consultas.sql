USE garaje_motos_db;

-- 1. Agrupar por marca y usar HAVING para mostrar solo aquellas marcas cuyo precio promedio de motos supere los 15,000 USD
SELECT m.nombre_marca, m.pais_origen, COUNT(moto.id_moto) AS total_motos, AVG(moto.precio_comercial_usd) AS promedio_precio
FROM marcas_moto m
JOIN motos_garaje moto ON m.id_marca = moto.id_marca
GROUP BY m.id_marca, m.nombre_marca, m.pais_origen
Having promedio_precio > 15000.00
ORDER BY promedio_precio DESC;

-- 2. Agrupar por estado de la moto y usar HAVING para filtrar estados que tengan 2 o más motocicletas registradas
SELECT estado_moto, COUNT(*) AS cantidad_motos, AVG(cilindrada_cc) AS cilindrada_promedio
FROM motos_garaje
GROUP BY estado_moto
Having cantidad_motos >= 2
ORDER BY cantidad_motos DESC;

-- 3. Agrupar por marca y usar HAVING para mostrar marcas que acumulen una inversión total superior a 20,000 USD en su inventario
SELECT m.nombre_marca, COUNT(moto.id_moto) AS cantidad_modelos, SUM(moto.precio_comercial_usd) AS inversion_total_marca
FROM marcas_moto m
JOIN motos_garaje moto ON m.id_marca = moto.id_marca
GROUP BY m.id_marca, m.nombre_marca
Having inversion_total_marca > 20000.00
ORDER BY inversion_total_marca DESC;

-- 4. Agrupar por cilindrada en rangos lógicos evaluando marcas con cilindrada máxima superior a 1000 cc por grupo
SELECT m.nombre_marca, MAX(moto.cilindrada_cc) AS mayor_cilindrada, AVG(moto.precio_comercial_usd) AS precio_promedio
FROM marcas_moto m
JOIN motos_garaje moto ON m.id_marca = moto.id_marca
GROUP BY m.id_marca, m.nombre_marca
Having mayor_cilindrada > 1000
ORDER BY mayor_cilindrada DESC;

-- 5. Consulta analítica combinada: Filtrar con WHERE estados activos en garaje y usar HAVING para mostrar marcas con 2 o más modelos disponibles
SELECT m.nombre_marca, COUNT(moto.id_moto) AS motos_disponibles
FROM marcas_moto m
JOIN motos_garaje moto ON m.id_marca = moto.id_marca
WHERE moto.estado_moto IN ('disponible', 'en_exhibicion')
GROUP BY m.id_marca, m.nombre_marca
Having motos_disponibles >= 2
ORDER BY motos_disponibles DESC;
