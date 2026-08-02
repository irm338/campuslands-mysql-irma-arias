USE ciencia_ficcion_db;

INSERT INTO facciones_scifi (nombre_faccion, sistema_origen) VALUES
('Alianza Rebelde', 'Sistema Yavin'),
('Imperio Galáctico', 'Coruscant'),
('Federación Unida de Planetas', 'Sol'),
('Colonia Marciana', 'Marte');

INSERT INTO peliculas_scifi (titulo, anio_estreno, presupuesto_millones, calificacion, id_faccion, estado) VALUES
('Blade Runner 2049', 2017, 150.00, 8.0, 4, 'en_cartelera'),
('Dune: Parte Dos', 2024, 190.00, 8.6, 1, 'estreno'),
('Interstellar', 2014, 165.00, 8.7, 3, 'en_cartelera'),
('Matrix', 1999, 63.00, 8.7, 4, 'en_cartelera'),
('Star Wars: Una Nueva Esperanza', 1977, 11.00, 8.6, 1, 'archivada'),
('Star Wars: El Imperio Contraataca', 1980, 18.00, 8.7, 2, 'en_cartelera'),
('Avatar: El Sentido del Agua', 2022, 350.00, 7.6, 3, 'estreno'),
('Origen', 2010, 160.00, 8.8, 4, 'archivada');
