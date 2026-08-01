
USE db_hiperdeportivos;

-- Inserción de mínimo 8 registros variados de autos hiperdeportivos
INSERT INTO autos_hiperdeportivos (codigo_modelo, nombre_auto, fabricante, velocidad_max_kmh, precio_usd, potencia_hp, estado) VALUES
('BUG-01', 'Bugatti Chiron Super Sport', 'Bugatti', 440, 3800000.00, 1600, 'produccion_limitada'),
('KOE-01', 'Koenigsegg Jesko Absolut', 'Koenigsegg', 531, 3400000.00, 1600, 'reservado'),
('PAG-01', 'Pagani Utopia', 'Pagani', 380, 2500000.00, 864, 'disponible'),
('REM-01', 'Rimac Nevera', 'Rimac', 412, 2100000.00, 1914, 'disponible'),
('FER-01', 'Ferrari Daytona SP3', 'Ferrari', 340, 2250000.00, 829, 'agotado'),
('LAM-01', 'Lamborghini Sián FKP 37', 'Lamborghini', 355, 3700000.00, 819, 'produccion_limitada'),
('AST-01', 'Aston Martin Valkyrie', 'Aston Martin', 402, 3500000.00, 1160, 'reservado'),
('LOT-01', 'Lotus Evija', 'Lotus', 320, 2300000.00, 2000, 'disponible');