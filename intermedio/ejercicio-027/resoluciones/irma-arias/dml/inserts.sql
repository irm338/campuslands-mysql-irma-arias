USE videojuego_accion_db;

INSERT INTO regiones_mapa (nombre_region, nivel_peligro) VALUES
('Valle de los Susurros', 2),
('Ruinas Ancestrales de Eldoria', 6),
('Picos Vulcanicos de Ignis', 9),
('Bosque Sombrio de Ebonwood', 4);

INSERT INTO misiones_aventura (titulo_mision, puntos_experiencia, recompensa_oro, id_region, estado) VALUES
('Rescate del Alalde Perdido', 500, 1200.00, 1, 'completada'),
('Exploracion del Templo Prohibido', 1500, 3500.00, 2, 'en_curso'),
('Caza del Dragon de Magma', 3000, 8500.50, 3, 'disponible'),
('Emboscada en el Sendero Oscuro', 800, 1900.00, 4, 'completada'),
('Recoleccion de Hierbas Misticas', 350, 600.00, 1, 'completada'),
('Desactivacion de Runas Corruptas', 1800, 4200.00, 2, 'disponible'),
('Defensa del Puesto Avanzado', 1200, 2800.00, 4, 'en_curso'),
('Ascenso a la Cumbre de Fuego', 2500, 6000.00, 3, 'bloqueada');
