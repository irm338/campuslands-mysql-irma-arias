USE biblioteca_gamer_db;

INSERT INTO plataformas_gamer (nombre_plataforma, fabricante) VALUES
('PC Steam', 'Valve'),
('PlayStation 5', 'Sony'),
('Nintendo Switch', 'Nintendo'),
('Xbox Series X', 'Microsoft');

INSERT INTO videojuegos (titulo, precio_usd, horas_jugadas, id_plataforma, estado) VALUES
('Cyberpunk 2077', 59.99, 85, 1, 'completado'),
('God of War Ragnarok', 69.99, 45, 2, 'completado'),
('The Legend of Zelda: Tears of the Kingdom', 59.99, 110, 3, 'completado'),
('Halo Infinite', 39.99, 25, 4, 'pendiente'),
('Baldur Gate 3', 59.99, 140, 1, 'completado'),
('Elden Ring', 49.99, 95, 1, 'completado'),
('Mario Kart 8 Deluxe', 49.99, 30, 3, 'instalado'),
('Spider-Man 2', 69.99, 15, 2, 'instalado');
