USE playlist_musical_db;

INSERT INTO generos_musicales (nombre_genero, descripcion) VALUES
('Rock Alternativo', 'Guitarras electricas y melodias enérgicas'),
('Pop Latino', 'Ritmos modernos y pegadizos en español'),
('Lo-Fi Hip Hop', 'Sonidos relajantes para estudiar y concentrarse'),
('Electronica', 'Beats sinteticos y musica de baile');

INSERT INTO canciones_playlist (titulo, artista, duracion_segundos, reproducciones, id_genero, estado) VALUES
('Everlong', 'Foo Fighters', 250, 1450000, 1, 'activa'),
('Calma', 'Pedro Capo', 238, 2300000, 2, 'activa'),
('Snowfall', 'Oneheart', 135, 950000, 3, 'activa'),
('Titanium', 'David Guetta ft. Sia', 245, 3100000, 4, 'activa'),
('Smells Like Teen Spirit', 'Nirvana', 301, 4200000, 1, 'activa'),
('Despacito', 'Luis Fonsi', 228, 5500000, 2, 'archivada'),
('Coffee Shop', 'Yung Bird', 110, 450000, 3, 'pausada'),
('Strobe', 'Deadmau5', 637, 1800000, 4, 'activa');
