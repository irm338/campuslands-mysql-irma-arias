USE estudio_tatuajes_db;

INSERT INTO estilos_tatuaje (nombre_estilo, descripcion) VALUES
('Realismo', 'Retratos y figuras con detalle fotografico'),
('Tradicional / Old School', 'Lineas gruesas y colores solidos'),
('Blackwork', 'Disenos basados enteramente en tinta negra'),
('Japones / Irezumi', 'Mitologia oriental, dragones y cerezos'),
('Minimalista', 'Lineas finas y formas delicadas');

INSERT INTO tatuajes_catalogo (nombre_diseno, precio_usd, horas_estimadas, id_estilo, estado) VALUES
('Retrato de Leon Realista', 450.00, 6, 1, 'completado'),
('Pantera Tradicional con Daga', 250.00, 3, 2, 'reservado'),
('Manga Geometrica Blackwork', 600.00, 10, 3, 'disponible'),
('Dragon Japones en la Espalda', 900.00, 15, 4, 'completado'),
('Rosa Minimalista en el Antebrazo', 120.00, 1, 5, 'disponible'),
('Ojo Realista con Reloj', 500.00, 7, 1, 'disponible'),
('Barco Old School en Tormenta', 300.00, 4, 2, 'disponible'),
('Hannya Blackwork Abstracto', 400.00, 5, 3, 'reservado');
