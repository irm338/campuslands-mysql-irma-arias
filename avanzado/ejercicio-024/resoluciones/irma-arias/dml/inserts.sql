-- DML: Eliminación controlada de registros (DELETE) para soldadura
USE db_taller_soldadura;

-- 1. Eliminar una inspección específica utilizando su código único (Eliminar cordón rechazado de prueba preliminar)
DELETE FROM inspecciones_soldadura 
WHERE codigo_cordon = 'WLD-06';

-- 2. Eliminar masivamente los registros que se encuentren en estado 'suspendido' por falta de trazabilidad en materiales
DELETE FROM inspecciones_soldadura 
WHERE resultado_inspeccion = 'suspendido';

-- 3. Eliminar registros con criterios compuestos: Cordones fabricados mediante 'GMAW' que hayan resultado 'rechazados'
DELETE FROM inspecciones_soldadura 
WHERE tipo_proceso_soldadura = 'GMAW' AND resultado_inspeccion = 'rechazado';

-- 4. Eliminar inspecciones antiguas o menores con longitudes de cordón extremadamente cortas (menores a 40 cm)
DELETE FROM inspecciones_soldadura 
WHERE longitud_cordon_cm < 40.00;