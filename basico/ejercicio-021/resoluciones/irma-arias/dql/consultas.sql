USE db_dibujo_digital_irma;

-- Consulta 1: Obras finalizadas que requirieron más de 15 horas de trabajo, ordenadas de mayor a menor tiempo
SELECT 
    titulo_obra AS ObraFinalizada, 
    software_utilizado AS Software, 
    capas_totales AS Capas, 
    tiempo_horas AS HorasInvertidas
FROM proyectos_dibujo
WHERE estado_proyecto = 'Finalizado' AND tiempo_horas > 15.00
ORDER BY tiempo_horas DESC;

-- Consulta 2: Proyectos filtrados por software (Procreate o Photoshop) con gran volumen de capas (> 50 capas)
SELECT 
    titulo_obra AS ObraCompleja, 
    software_utilizado AS Software, 
    capas_totales AS CapasTotales, 
    estado_proyecto AS Estado
FROM proyectos_dibujo
WHERE software_utilizado IN ('Procreate', 'Photoshop') AND capas_totales > 50
ORDER BY capas_totales DESC;

-- Consulta 3: Conteo y tiempo promedio de obras agrupadas por estado utilizando filtros de negocio
SELECT 
    estado_proyecto AS EstadoProyecto, 
    COUNT(*) AS TotalObras, 
    AVG(tiempo_horas) AS PromedioHoras
FROM proyectos_dibujo
GROUP BY estado_proyecto;

-- Consulta 4: Proyectos que se encuentran actualmente en estado 'En Progreso' o 'Pausado'
SELECT 
    titulo_obra AS ObraPendiente, 
    software_utilizado AS Software, 
    estado_proyecto AS EstadoActual, 
    tiempo_horas AS HorasAcumuladas
FROM proyectos_dibujo
WHERE estado_proyecto != 'Finalizado'
ORDER BY tiempo_horas DESC;

-- Consulta 5: Top 3 de obras con mayor cantidad de capas creadas (filtrando proyectos activos o terminados)
SELECT 
    titulo_obra AS ObraDetallada, 
    software_utilizado AS Software, 
    capas_totales AS CapasMaximas, 
    estado_proyecto AS Estado
FROM proyectos_dibujo
WHERE capas_totales >= 40
ORDER BY capas_totales DESC
LIMIT 3;