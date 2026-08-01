-- DML: Inserción de datos y operaciones UPDATE avanzadas
USE db_futbol_sala_avanzado;

INSERT INTO equipos_sala (codigo_equipo, nombre_equipo, goles_anotados, goles_recibidos, partidos_ganados, puntos, estado) VALUES
('SAL-01', 'Leones Futsal Club', 25, 10, 8, 24, 'activo'),
('SAL-02', 'Deportivo Fénix FS', 22, 12, 7, 21, 'activo'),
('SAL-03', 'Tiburones Sala', 18, 15, 5, 16, 'activo'),
('SAL-04', 'Academia Gol Futsal', 14, 14, 4, 13, 'activo'),
('SAL-05', 'Guerreros del Sur FS', 12, 18, 3, 10, 'activo'),
('SAL-06', 'Titanes Futsal', 10, 20, 2, 7, 'lesionado_equipo'),
('SAL-07', 'Relámpagos FS', 8, 22, 1, 4, 'suspendido'),
('SAL-08', 'Estrellas de la Cancha', 6, 25, 1, 3, 'activo');

-- Actualizaciones de negocio (UPDATE)
UPDATE equipos_sala SET estado = 'activo' WHERE codigo_equipo = 'SAL-06';
UPDATE equipos_sala SET puntos = puntos + 3, goles_anotados = goles_anotados + 3, partidos_ganados = partidos_ganados + 1, estado = 'campeon' WHERE codigo_equipo = 'SAL-01';
UPDATE equipos_sala SET goles_recibidos = 20 WHERE codigo_equipo = 'SAL-07';