USE soldadura_db;

INSERT INTO procesos_soldadura (nombre_proceso, siglas, descripcion) VALUES
('Shielded Metal Arc Welding', 'SMAW', 'Soldadura por arco metalico protegido (Electrodo revestido)'),
('Gas Metal Arc Welding', 'GMAW / MIG', 'Soldadura por arco con gas protector y alambre macizo'),
('Gas Tungsten Arc Welding', 'GTAW / TIG', 'Soldadura con electrodo de tungsteno y gas inerte'),
('Flux-Cored Arc Welding', 'FCAW', 'Soldadura por arco con alambre tubular');

INSERT INTO trabajos_soldadura (titulo_trabajo, amperaje_recomendado, costo_material_usd, id_proceso, estado) VALUES
('Reparacion de Chasis en Acero al Carbono', 130, 150.00, 1, 'completado'),
('Fabricacion de Estructura Tubular Liviana', 110, 220.50, 2, 'en_proceso'),
('Union de Tuberia Inoxidable Grado Alimenticio', 90, 340.00, 3, 'completado'),
('Blindaje de Maquinaria Pesada Minera', 250, 890.00, 4, 'inspeccionado'),
('Montaje de Rejas Metalicas Residenciales', 120, 180.00, 1, 'completado'),
('Soldadura de Carroceria Automotriz', 95, 210.00, 2, 'pendiente'),
('Fabricacion de Colector de Escape de Titania', 85, 450.00, 3, 'en_proceso'),
('Ensamblaje de Vigas de Acero Estructural', 280, 1150.00, 4, 'inspeccionado');
