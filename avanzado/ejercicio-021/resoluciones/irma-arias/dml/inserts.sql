-- DML: Inserción de datos para proyectos de dibujo digital
USE db_dibujo_digital;

INSERT INTO proyectos_dibujo (codigo_proyecto, titulo_obra, software_utilizado, capas_totales, precio_comision, estado) VALUES
('ART-01', 'Cyberpunk Neon City', 'Photoshop', 145, 450.00, 'completado'),
('ART-02', 'Retrato Elfo Silvestre', 'Procreate', 85, 250.00, 'completado'),
('ART-03', 'Mecha Battle Armor', 'Clip Studio Paint', 210, 600.00, 'en_progreso'),
('ART-04', 'Paisaje Minimalista Sunset', 'Krita', 32, 120.00, 'borrador'),
('ART-05', 'Fantasy Dragon Concept', 'Photoshop', 170, 550.00, 'en_progreso'),
('ART-06', 'Chibi Avatar Style', 'Procreate', 45, 90.00, 'archivado'),
('ART-07', 'Dark Gothic Portrait', 'Clip Studio Paint', 115, 380.00, 'completado'),
('ART-08', 'Sci-Fi Spaceship Interior', 'Photoshop', 190, 700.00, 'borrador');