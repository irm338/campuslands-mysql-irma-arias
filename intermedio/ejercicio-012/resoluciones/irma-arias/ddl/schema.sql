DROP DATABASE IF EXISTS playlist_musical_db;
CREATE DATABASE playlist_musical_db;
USE playlist_musical_db;

CREATE TABLE generos_musicales (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    nombre_genero VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE canciones_playlist (
    id_cancion INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    artista VARCHAR(100) NOT NULL,
    duracion_segundos INT UNSIGNED CHECK (duracion_segundos > 0),
    reproducciones INT UNSIGNED DEFAULT 0,
    id_genero INT NOT NULL,
    estado ENUM('activa', 'pausada', 'archivada') DEFAULT 'activa',
    FOREIGN KEY (id_genero) REFERENCES generos_musicales(id_genero) ON DELETE CASCADE
);
