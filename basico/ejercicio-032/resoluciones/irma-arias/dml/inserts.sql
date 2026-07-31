USE db_ranking_battle_royale;

-- Inserción de mínimo 8 registros variados de jugadores
INSERT INTO ranking_jugadores (nombre_jugador, rango_actual, eliminaciones, puntuacion_total, partidas_jugadas, estado, fecha_ultima_partida) VALUES
('ShadowKiller99', 'Maestro', 145, 3450.50, 120, 'activo', '2026-07-28'),
('ViperQueen', 'Diamante', 98, 2800.00, 95, 'activo', '2026-07-29'),
('AlphaSniper', 'Oro', 65, 1650.75, 80, 'activo', '2026-07-25'),
('NoobMaster2026', 'Bronce', 12, 450.25, 30, 'inactivo', '2026-06-10'),
('CyberNinja', 'Diamante', 110, 2950.00, 105, 'activo', '2026-07-30'),
('StormBreaker', 'Plata', 40, 1120.00, 50, 'activo', '2026-07-20'),
('PhoenixFlame', 'Maestro', 160, 3800.00, 140, 'activo', '2026-07-30'),
('GhostRider', 'Bronce', 8, 320.50, 25, 'suspendido', '2026-05-15');