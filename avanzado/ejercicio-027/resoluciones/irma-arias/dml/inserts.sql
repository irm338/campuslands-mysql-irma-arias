-- DML: Inserción de datos para misiones de acción y aventura
USE db_accion_aventura;

INSERT INTO misiones_aventura (codigo_mision, nombre_mision, region_mapa, nivel_dificultad, recompensas_oro, estado_mision) VALUES
('MSN-01', 'El Secreto de las Ruinas Ancestrales', 'Bosque Oscuro', 15, 2500.00, 'completada'),
('MSN-02', 'Emboscada en el Paso de la Montaña', 'Cumbres Nevadas', 28, 4800.50, 'en_progreso'),
('MSN-03', 'Rescate en la Fortaleza Abandonada', 'Pantano Putrefacto', 22, 3500.00, 'disponible'),
('MSN-04', 'La Caza del Dragon de Fuego', 'Volcan Cenizo', 45, 15000.00, 'bloqueada'),
('MSN-05', 'Tesoro Escondido del Capitan Drake', 'Isla Calavera', 12, 1800.00, 'completada'),
('MSN-06', 'Defensa del Poblado Fronterizo', 'Llanuras Verdes', 8, 1200.00, 'disponible'),
('MSN-07', 'Infiltracion en la Torre de Hechizos', 'Ciudadela Arcana', 35, 8500.00, 'en_progreso'),
('MSN-08', 'El Laberinto de las Sombras', 'Inframundo', 40, 11000.00, 'bloqueada');