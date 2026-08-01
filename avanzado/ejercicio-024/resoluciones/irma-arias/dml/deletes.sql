-- DML: Inserción inicial de datos para inspecciones de soldadura
USE db_taller_soldadura;

INSERT INTO inspecciones_soldadura (codigo_cordon, tipo_proceso_soldadura, espesor_material_mm, longitud_cordon_cm, resultado_inspeccion) VALUES
('WLD-01', 'SMAW', 12.50, 150.00, 'aprobado'),
('WLD-02', 'GMAW', 8.00, 90.50, 'rechazado'),
('WLD-03', 'GTAW', 4.50, 45.00, 'aprobado'),
('WLD-04', 'FCAW', 15.00, 200.00, 'suspendido'),
('WLD-05', 'SMAW', 10.00, 120.00, 'revision_pendiente'),
('WLD-06', 'GTAW', 3.00, 30.00, 'rechazado'),
('WLD-07', 'GMAW', 9.50, 110.00, 'aprobado'),
('WLD-08', 'FCAW', 14.00, 180.00, 'suspendido');