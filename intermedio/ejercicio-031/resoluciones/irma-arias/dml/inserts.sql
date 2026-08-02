USE torneo_moba_db;

INSERT INTO equipos_esports (nombre_equipo, region_origen, estado_equipo) VALUES
('T1 Esports', 'Corea del Sur (LCK)', 'campeon'),
('Fnatic', 'Europa (LEC)', 'activo'),
('Cloud9', 'Norteamérica (LCS)', 'eliminado'),
('Bilibili Gaming', 'China (LPL)', 'activo');

INSERT INTO jugadores_moba (alias_jugador, rol_principal, asesinatos_totales, muertes_totales, asistencias_totales, id_equipo) VALUES
('Faker', 'mid', 145, 62, 210, 1),
('Zeus', 'top', 98, 75, 140, 1),
('Rekkles', 'adc', 120, 50, 180, 2),
('Humanoid', 'mid', 110, 85, 165, 2),
('Berserker', 'adc', 135, 60, 150, 3),
('Blaber', 'jg', 105, 90, 220, 3),
('Knight', 'mid', 160, 45, 195, 4),
('Bin', 'top', 125, 70, 130, 4);
