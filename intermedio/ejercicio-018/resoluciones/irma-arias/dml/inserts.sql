USE viajes_turismo_db;

INSERT INTO continentes_destinos (nombre_continente, descripcion) VALUES
('Europa', 'Historia, arte y arquitectura clasica'),
('America del Sur', 'Paisajes naturales, selva y cordillera'),
('Asia', 'Cultura milenaria, templos y metropoles'),
('Oceania', 'Playas paradisiacas y fauna exotica');

INSERT INTO paquetes_turisticos (nombre_paquete, precio_usd, duracion_dias, calificacion_promedio, id_continente, estado) VALUES
('Tour Historico por Italia y Francia', 2499.00, 12, 9.2, 1, 'disponible'),
('Aventura en la Patagonia Argentina', 1599.00, 8, 8.8, 2, 'disponible'),
('Exploracion Cultural en Japon', 2899.00, 14, 9.6, 3, 'disponible'),
('Playas y Arrecifes en Australia', 2199.00, 10, 8.9, 4, 'disponible'),
('Ruta de los Castillos en Escocia', 1899.00, 7, 8.7, 1, 'disponible'),
('Machu Picchu y Valle Sagrado', 1299.00, 6, 9.4, 2, 'disponible'),
('Templos y Playas de Tailandia', 1499.00, 9, 8.5, 3, 'agotado'),
('Sydney y Costa Dorada', 2099.00, 10, 9.0, 4, 'disponible');
