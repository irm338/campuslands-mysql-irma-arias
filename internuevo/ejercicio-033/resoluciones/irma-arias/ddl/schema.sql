DROP DATABASE IF EXISTS saga_scifi_db;
CREATE DATABASE saga_scifi_db;
USE saga_scifi_db;

CREATE TABLE peliculas_saga (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    anio_estreno INT NOT NULL,
    director VARCHAR(100) NOT NULL,
    presupuesto DECIMAL(12, 2)
);
