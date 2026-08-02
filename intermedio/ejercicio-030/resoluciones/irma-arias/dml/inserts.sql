USE equipo_streaming_db;

INSERT INTO categorias_equipo (nombre_categoria, tipo_dispositivo) VALUES
('Capturadoras de Video', 'Hardware Externo / Interno'),
('Micrófonos Profesionales', 'Audio de Estudio XLR / USB'),
('Iluminación LED', 'Paneles y Luces de Relleno RGB'),
('Cámaras Mirrorless / Webcams', 'Óptica y Captura de Imagen');

INSERT INTO dispositivos_streaming (nombre_dispositivo, precio_usd, resolucion_maxima, tasa_bits_kbps, id_categoria, estado_equipo) VALUES
('Elgato 4K X Capture Card', 229.99, '4K 60FPS', 60000, 1, 'disponible'),
('Shure SM7B Studio Microphone', 399.00, 'Audio Hi-Res', 24000, 2, 'en_uso'),
('Elgato Key Light Air', 129.99, '1400 Lumens', 10000, 3, 'disponible'),
('Sony Alpha ZV-E10 Mirrorless Camera', 699.99, '4K 30FPS', 45000, 4, 'en_uso'),
('HyperX QuadCast S USB Microphone', 159.99, 'Audio 48kHz/16-bit', 16000, 2, 'disponible'),
('Loupedeck Live Controller', 269.00, 'Interfaz Táctil', 12000, 1, 'mantenimiento'),
('AverMedia Live Gamer 2 Plus', 149.50, '4K 30FPS / 1080P 120FPS', 35000, 1, 'disponible'),
('Neewer RGB Panel LED Kit', 89.99, 'RGB Full Color', 8000, 3, 'retirado');
