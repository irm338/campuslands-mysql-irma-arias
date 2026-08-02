USE pingpong_db;

INSERT INTO categorias_pingpong (nombre_nivel, edad_minima) VALUES
('Juvenil Sub-18', 14),
('Profesional Elite', 18),
('Master Senior', 35),
('Open Aficionado', 16);

INSERT INTO jugadores_pingpong (nombre_jugador, ranking_mundial, partidos_ganados, partidos_perdidos, id_categoria, estado) VALUES
('Fan Zhendong', 1, 150, 15, 2, 'activo'),
('Ma Long', 2, 210, 30, 2, 'activo'),
('Truls Moregard', 5, 85, 40, 2, 'activo'),
('Felix Lebrun', 3, 95, 25, 1, 'activo'),
('Hugo Calderano', 6, 120, 50, 2, 'activo'),
('Timo Boll', 12, 180, 70, 3, 'lesionado'),
('Dimitrij Ovtcharov', 15, 160, 80, 3, 'activo'),
('Alexis Lebrun', 18, 60, 35, 1, 'inactivo');
