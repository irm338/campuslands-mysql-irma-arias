USE peliculas_miedo_db;

INSERT INTO subgeneros_terror (nombre_subgenero, descripcion) VALUES
('Sobrenatural', 'Fantasmas, demonios y fenomenos paranormales'),
('Slasher', 'Asesinos seriales y persecuciones'),
('Psicologico', 'Terror mental, paranoia y suspenso'),
('Gore / Splatter', 'Exceso de sangre y violencia grafica');

INSERT INTO peliculas_terror (titulo, anio_estreno, calificacion, estado) VALUES
('El Conjuro', 2013, 7.5, 'disponible'),
('Halloween', 1978, 7.7, 'disponible'),
('El Exorcista', 1973, 8.1, 'disponible'),
('Hereditary', 2018, 7.3, 'disponible'),
('Scream', 1996, 7.4, 'disponible'),
('El Resplandor', 1980, 8.4, 'disponible'),
('Saw', 2004, 7.6, 'disponible'),
('La Monja', 2018, 5.3, 'archivada');

INSERT INTO pelicula_subgenero (id_pelicula, id_subgenero) VALUES
(1, 1),
(2, 2),
(3, 1),
(3, 4),
(4, 1),
(4, 3),
(5, 2),
(5, 3),
(6, 3),
(7, 2),
(7, 4),
(8, 1);
