DROP DATABASE IF EXISTS peliculas_miedo_db;
CREATE DATABASE peliculas_miedo_db;
USE peliculas_miedo_db;

CREATE TABLE peliculas_terror (
    id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    anio_estreno INT CHECK (anio_estreno >= 1900),
    calificacion DECIMAL(3,1) CHECK (calificacion BETWEEN 0.0 AND 10.0),
    estado ENUM('estreno', 'disponible', 'archivada') DEFAULT 'disponible'
);

CREATE TABLE subgeneros_terror (
    id_subgenero INT AUTO_INCREMENT PRIMARY KEY,
    nombre_subgenero VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE pelicula_subgenero (
    id_pelicula INT NOT NULL,
    id_subgenero INT NOT NULL,
    PRIMARY KEY (id_pelicula, id_subgenero),
    FOREIGN KEY (id_pelicula) REFERENCES peliculas_terror(id_pelicula) ON DELETE CASCADE,
    FOREIGN KEY (id_subgenero) REFERENCES subgeneros_terror(id_subgenero) ON DELETE CASCADE
);
