USE db_saga_scifi;

-- Inserción de mínimo 8 registros variados de la saga de ciencia ficción
INSERT INTO eventos_saga (titulo_evento, tipo_evento, fecha_lanzamiento, anio_cronologico, presupuesto_millones, estado) VALUES
('El Amanecer Galáctico', 'Película', '1977-05-25', 0, 11.00, 'canon'),
('El Imperio Resurge', 'Película', '1980-05-21', 3, 18.00, 'canon'),
('Crónicas de la Nebulosa', 'Novela', '1991-04-12', -100, 0.50, 'leyendas'),
('La Última Esperanza', 'Película', '1983-05-25', 4, 32.50, 'canon'),
('Génesis Sintética', 'Serie', '2019-11-12', 15, 120.00, 'canon'),
('La Rebelión de los Androides', 'Novela', '2005-09-15', 22, 1.20, 'leyendas'),
('Odisea en el Espacio Profundo', 'Película', '2015-12-18', 30, 245.00, 'canon'),
('Protocolo Cero', 'En_Produccion', '2027-12-20', 45, 180.00, 'en_produccion');