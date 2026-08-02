DROP DATABASE IF EXISTS viajes_turismo_db;
CREATE DATABASE viajes_turismo_db;
USE viajes_turismo_db;

CREATE TABLE continentes_destinos (
    id_continente INT AUTO_INCREMENT PRIMARY KEY,
    nombre_continente VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE paquetes_turisticos (
    id_paquete INT AUTO_INCREMENT PRIMARY KEY,
    nombre_paquete VARCHAR(100) NOT NULL,
    precio_usd DECIMAL(8,2) CHECK (precio_usd > 0.00),
    duracion_dias INT UNSIGNED CHECK (duracion_dias > 0),
    calificacion_promedio DECIMAL(3,1) CHECK (calificacion_promedio BETWEEN 0.0 AND 10.0),
    id_continente INT NOT NULL,
    estado ENUM('disponible', 'agotado', 'cancelado') DEFAULT 'disponible',
    FOREIGN KEY (id_continente) REFERENCES continentes_destinos(id_continente) ON DELETE CASCADE
);
