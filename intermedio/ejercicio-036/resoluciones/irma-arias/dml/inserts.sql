USE autos_hiperdeportivos_db;

INSERT INTO fabricantes (nombre_fabricante, pais_origen) VALUES
('Bugatti', 'Francia'),
('Koenigsegg', 'Suecia'),
('Rimac', 'Croacia'),
('Pagani', 'Italia');

INSERT INTO hiperdeportivos (modelo, potencia_hp, velocidad_max_kmh, precio_usd, id_fabricante, estado_produccion) VALUES
('Bugatti Chiron Super Sport 300+', 1600, 490, 3900000.00, 1, 'limitado'),
('Bugatti Bolide', 1825, 500, 4400000.00, 1, 'concept'),
('Koenigsegg Jesko Absolut', 1600, 531, 3400000.00, 2, 'en_produccion'),
('Koenigsegg Regera', 1500, 410, 2900000.00, 2, 'descontinuado'),
('Rimac Nevera', 1914, 412, 2400000.00, 3, 'en_produccion'),
('Pagani Huayra R', 850, 383, 3100000.00, 4, 'limitado'),
('Pagani Utopia', 864, 370, 2500000.00, 4, 'en_produccion'),
('Bugatti Divo', 1500, 380, 5400000.00, 1, 'descontinuado');

INSERT INTO especificaciones_tecnicas_1fn (id_auto, componente, detalle_atomico) VALUES
(1, 'Motor', 'W16 Cuatriturbo 8.0L'),
(1, 'Transmision', 'Doble embrague 7 velocidades'),
(2, 'Motor', 'W16 Cuatriturbo 8.0L Track-Only'),
(3, 'Motor', 'V8 Biturbo 5.0L'),
(3, 'Transmision', 'Light Speed Transmission 9V'),
(4, 'Motor', 'V8 Biturbo 5.0L Hybrid'),
(5, 'Motor', '4 Motores Electricos Independientes'),
(6, 'Motor', 'V12 Atmosferico 6.0L AMG');
