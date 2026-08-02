DROP DATABASE IF EXISTS peliculas_miedo_db;
CREATE DATABASE peliculas_miedo_db;
USE peliculas_miedo_db;

CREATE TABLE peliculas (
    id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    director VARCHAR(100) NOT NULL,
    subgenero VARCHAR(50) NOT NULL, -- Ej: Slasher, Sobrenatural, Psicológico
    calificacion DECIMAL(3,1) CHECK (calificacion >= 0 AND calificacion <= 10),
    anio_estreno INT CHECK (anio_estreno > 1900),
    estado ENUM('disponible', 'proximamente', 'retirado') DEFAULT 'disponible'
);
