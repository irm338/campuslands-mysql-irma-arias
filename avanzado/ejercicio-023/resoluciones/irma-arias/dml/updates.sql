-- DML: Actualizaciones de registros (UPDATE) para proyectos de arquitectura 3D
USE db_arquitectura_3d;

-- 1. Actualizar el estado de un proyecto específico basado en su código único (Avanzar a modelado_3d)
UPDATE proyectos_arquitectura 
SET estado = 'modelado_3d' 
WHERE codigo_proyecto = 'ARQ-01';

-- 2. Actualizar masivamente el estado y los honorarios de los proyectos comerciales aplicando un incremento del 10% por ajuste de mercado
UPDATE proyectos_arquitectura 
SET honorarios_dolares = honorarios_dolares * 1.10, 
    estado = 'renderizado' 
WHERE tipo_inmueble = 'Comercial';

-- 3. Actualizar el estado a 'aprobado' para aquellos proyectos cuyo análisis de área supere los 2000 metros cuadrados y estén en fases avanzadas
UPDATE proyectos_arquitectura 
SET estado = 'aprobado' 
WHERE area_construccion_m2 > 2000 AND estado = 'renderizado';

-- 4. Actualizar el nombre y los honorarios base de un proyecto residencial específico por solicitud del cliente
UPDATE proyectos_arquitectura 
SET nombre_proyecto = 'Casa Minimalista Bosque Real', 
    honorarios_dolares = 9200.00 
WHERE codigo_proyecto = 'ARQ-02';

-- 5. Actualización general de cierre: Cambiar a 'entregado' todos los proyectos institucionales con áreas menores a 2000 m2
UPDATE proyectos_arquitectura 
SET estado = 'entregado' 
WHERE tipo_inmueble = 'Institucional' AND area_construccion_m2 < 2000;