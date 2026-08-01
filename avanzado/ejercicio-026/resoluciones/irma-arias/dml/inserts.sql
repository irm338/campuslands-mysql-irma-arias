-- DML: Inserción de datos para personajes del videojuego RPG
USE db_videojuego_rpg;

INSERT INTO personajes_rpg (codigo_personaje, nombre_personaje, clase_rpg, nivel_experiencia, puntos_vida, estado_jugador) VALUES
('RPG-01', 'Aragorn Shadow', 'Guerrero', 85, 1250.00, 'en_combate'),
('RPG-02', 'Lyra Windrunner', 'Arquero', 72, 850.50, 'activo'),
('RPG-03', 'Gandalf Storm', 'Mago', 95, 920.00, 'activo'),
('RPG-04', 'Thor Ironfist', 'Guerrero', 60, 1400.00, 'descansando'),
('RPG-05', 'Elrond Moonlight', 'Mago', 88, 980.00, 'activo'),
('RPG-06', 'Valkyria Night', 'Asesino', 78, 750.00, 'en_combate'),
('RPG-07', 'Sylvanas Dark', 'Arquero', 90, 1100.00, 'retirado'),
('RPG-08', 'Grommash Hellscream', 'Guerrero', 82, 1600.00, 'en_combate');