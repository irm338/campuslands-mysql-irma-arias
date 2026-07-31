USE db_liga_futbol;

-- Inserción de mínimo 8 registros variados de equipos de fútbol
INSERT INTO equipos_liga (nombre_equipo, puntos, partidos_jugados, goles_a_favor, goles_en_contra, estado, fecha_fundacion) VALUES
('Real Madrid', 45, 18, 42, 15, 'activo', '1902-03-06'),
('FC Barcelona', 43, 18, 39, 18, 'activo', '1899-11-29'),
('Atlético de Madrid', 38, 18, 31, 16, 'activo', '1903-04-26'),
('Athletic Club', 32, 18, 28, 20, 'activo', '1898-01-30'),
('Villarreal CF', 28, 18, 25, 26, 'activo', '1923-03-10'),
('Real Betis', 26, 18, 22, 25, 'activo', '1907-09-12'),
('Valencia CF', 18, 18, 17, 30, 'sancionado', '1919-03-18'),
('CA Osasuna', 21, 18, 19, 28, 'activo', '1920-10-24');