USE videojuego_rpg_db;

INSERT INTO clases_personaje (nombre_clase, rol_principal) VALUES
('Guerrero', 'Tanque / Cuerpo a Cuerpo'),
('Mago Elemental', 'Daño Magico en Area'),
('Arquero Cazador', 'Daño Fisico a Distancia'),
('Clerigo Sanador', 'Soporte y Curacion');

INSERT INTO personajes_rpg (nombre_personaje, nivel, puntos_vida, oro, id_clase, estado) VALUES
('Thorn Ironfist', 85, 4500, 12500.50, 1, 'activo'),
('Lyra Stormweaver', 90, 3200, 18900.00, 2, 'en_combate'),
('Aelion Swiftwind', 75, 2800, 9400.25, 3, 'activo'),
('Seraphina Dawn', 88, 3600, 15200.75, 4, 'activo'),
('Garrick Stonebreaker', 60, 5200, 5400.00, 1, 'inactivo'),
('Ignis Pyromancer', 95, 3100, 24500.00, 2, 'activo'),
('Kiran Shadowhunter', 82, 2900, 11300.50, 3, 'en_combate'),
('Valkyrie Shieldmaiden', 45, 4100, 3200.00, 1, 'retirado');
