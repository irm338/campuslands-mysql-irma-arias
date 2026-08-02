-- DDL: Estructura para Playlist Musical
DROP DATABASE IF EXISTS db_playlist_musical;
CREATE DATABASE db_playlist_musical;
USE db_playlist_musical;

CREATE TABLE canciones_playlist (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_cancion VARCHAR(10) NOT NULL UNIQUE,
    titulo_cancion VARCHAR(80) NOT NULL,
    artista VARCHAR(60) NOT NULL,
    genero_musical VARCHAR(40) NOT NULL,
    duracion_minutos DECIMAL(4,2) NOT NULL,
    reproducciones INT NOT NULL DEFAULT 0,
    estado_cancion ENUM('activa', 'pausada', 'archivada') DEFAULT 'activa',
    CONSTRAINT chk_duracion CHECK (duracion_minutos > 0.00),
    CONSTRAINT chk_reproducciones CHECK (reproducciones >= 0)
);
