-- DML: Inserción de datos para playlist musical
USE db_playlist_musical;

INSERT INTO canciones_playlist (codigo_cancion, titulo_cancion, artista, genero_musical, duracion_minutos, reproducciones, estado_cancion) VALUES
('SONG-01', 'Blinding Lights', 'The Weeknd', 'Synthwave', 3.20, 450000, 'activa'),
('SONG-02', 'Levitating', 'Dua Lipa', 'Pop', 3.23, 380000, 'activa'),
('SONG-03', 'Shape of You', 'Ed Sheeran', 'Pop', 3.53, 520000, 'activa'),
('SONG-04', 'Starboy', 'The Weeknd', 'R&B', 3.50, 310000, 'activa'),
('SONG-05', 'Titanium', 'David Guetta ft. Sia', 'Electronic', 4.05, 290000, 'activa'),
('SONG-06', 'Wake Me Up', 'Avicii', 'EDM', 4.09, 410000, 'archivada'),
('SONG-07', 'Bad Guy', 'Billie Eilish', 'Alternative', 3.14, 275000, 'activa'),
('SONG-08', 'Despacito', 'Luis Fonsi', 'Reggaeton', 3.48, 600000, 'pausada');
