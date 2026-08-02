DROP DATABASE IF EXISTS ciencia_ficcion_db;
CREATE DATABASE ciencia_ficcion_db;
USE ciencia_ficcion_db;

CREATE TABLE facciones_scifi (
    id_faccion INT AUTO_INCREMENT PRIMARY KEY,
    nombre_faccion VARCHAR(50) NOT NULL,
    sistema_origen VARCHAR(50) NOT NULL
);

CREATE TABLE peliculas_scifi (
    id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    anio_estreno INT CHECK (anio_estreno >= 1950),
    presupuesto_millones DECIMAL(6,2) CHECK (presupuesto_millones > 0),
    calificacion DECIMAL(3,1) CHECK (calificacion BETWEEN 0.0 AND 10.0),
    id_faccion INT NOT NULL,
    estado ENUM('estreno', 'en_cartelera', 'archivada') DEFAULT 'en_cartelera',
    FOREIGN KEY (id_faccion) REFERENCES facciones_scifi(id_faccion) ON DELETE CASCADE
);

-- Creación de una Vista Simple para consultar películas destacadas en cartelera
CREATE VIEW vw_peliculas_cartelera AS
SELECT p.titulo, p.anio_estreno, f.nombre_faccion, p.presupuesto_millones, p.calificacion
FROM peliculas_scifi p
JOIN facciones_scifi f ON p.id_faccion = f.id_faccion
WHERE p.estado = 'en_cartelera';
