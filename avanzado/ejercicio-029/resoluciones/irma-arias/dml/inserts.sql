-- DML: Inserción de datos con manejo de fechas para mercado de accesorios
USE db_mercado_accesorios;

INSERT INTO accesorios_mercado (codigo_accesorio, nombre_accesorio, categoria_accesorio, precio_unitario, stock_disponible, fecha_ingreso, estado_accesorio) VALUES
('ACC-01', 'Reloj de Pulsera Minimalista', 'Joyeria', 120.00, 45, '2026-01-15', 'disponible'),
('ACC-02', 'Bolso de Cuero Sintetico', 'Marroquineria', 85.50, 30, '2026-02-10', 'en_oferta'),
('ACC-03', 'Gafas de Sol Polarizadas', 'Optica', 65.00, 50, '2026-03-01', 'disponible'),
('ACC-04', 'Pulsera de Plata Esterlina', 'Joyeria', 45.00, 15, '2026-03-20', 'agotado'),
('ACC-05', 'Cinturon de Cuero Clasico', 'Marroquineria', 40.00, 25, '2026-04-05', 'disponible'),
('ACC-06', 'Mochila Antirrobo Ejecutiva', 'Marroquineria', 110.00, 10, '2026-04-18', 'en_oferta'),
('ACC-07', 'Collar con Dije de Cristal', 'Joyeria', 55.00, 0, '2025-11-10', 'descontinuado'),
('ACC-08', 'Sombrero de Paja playero', 'Temporada', 30.00, 60, '2026-05-01', 'disponible');