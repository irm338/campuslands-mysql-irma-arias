USE mercado_accesorios_db;

INSERT INTO categorias_accesorio (nombre_categoria, descripcion) VALUES
('Joyería y Bisutería', 'Anillos, collares, pulseras y accesorios finos'),
('Tecnología y Gadgets', 'Correas para smartwatch, soportes y fundas'),
('Marroquinería', 'Bolsos, carteras y tarjeteros de cuero'),
('Complementos de Invierno', 'Bufandas, guantes y gorros');

INSERT INTO accesorios (nombre_accesorio, precio_usd, stock, id_categoria, estado) VALUES
('Collar de Plata Ley 925 con Zirconia', 45.50, 35, 1, 'disponible'),
('Correa de Acero Inoxidable Smartwatch', 22.99, 50, 2, 'disponible'),
('Cartera Minimalista de Cuero genuino', 38.00, 20, 3, 'disponible'),
('Bufanda de Lana Tejida a Mano', 25.00, 15, 4, 'disponible'),
('Anillo Ajustable Bañado en Oro', 29.99, 40, 1, 'disponible'),
('Soporte Magnético de Aluminio para Teléfono', 19.50, 60, 2, 'disponible'),
('Bolso Bandolera de Cuero Ejecutivo', 85.00, 8, 3, 'agotado'),
('Gorro Térmico de Lana Polar', 18.00, 0, 4, 'descontinuado');
