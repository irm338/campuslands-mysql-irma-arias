USE db_futbol_sala;

-- Inserción de mínimo 8 registros variados de jugadores de fútbol sala
INSERT INTO jugadores_sala (nombre_jugador, posicion, goles_anotados, asistencias, partidos_jugados, estado, fecha_registro) VALUES
('Alejandro Silva', 'Pívot', 18, 5, 12, 'activo', '2026-02-10'),
('Mateo Fernández', 'Ala', 12, 14, 12, 'activo', '2026-02-12'),
('Lucas Gómez', 'Cierre', 4, 8, 11, 'activo', '2026-02-15'),
('Diego Morales', 'Portero', 1, 3, 12, 'activo', '2026-02-10'),
('Carlos Ruiz', 'Pívot', 15, 6, 10, 'lesionado', '2026-03-01'),
('Joaquín Torres', 'Ala', 9, 10, 11, 'activo', '2026-03-05'),
('Santiago Castro', 'Cierre', 2, 5, 9, 'suspendido', '2026-03-10'),
('Gabriel Rojas', 'Ala', 7, 9, 10, 'activo', '2026-03-12');

-- Práctica profesional de UPDATE: Actualizar estadísticas tras una nueva jornada y cambiar estados
UPDATE jugadores_sala 
SET goles_anotados = goles_anotados + 2, asistencias = asistencias + 1, partidos_jugados = partidos_jugados + 1 
WHERE nombre_jugador = 'Alejandro Silva';

UPDATE jugadores_sala 
SET estado = 'activo' 
WHERE nombre_jugador = 'Carlos Ruiz';