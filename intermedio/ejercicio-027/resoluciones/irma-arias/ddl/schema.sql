DROP DATABASE IF EXISTS videojuego_accion_db;
CREATE DATABASE videojuego_accion_db;
USE videojuego_accion_db;

CREATE TABLE regiones_mapa (
    id_region INT AUTO_INCREMENT PRIMARY KEY,
    nombre_region VARCHAR(50) NOT NULL,
    nivel_peligro INT UNSIGNED CHECK (nivel_peligro BETWEEN 1 AND 10)
);

CREATE TABLE misiones_aventura (
    id_mision INT AUTO_INCREMENT PRIMARY KEY,
    titulo_mision VARCHAR(100) NOT NULL,
    puntos_experiencia INT UNSIGNED CHECK (puntos_experiencia >= 100),
    recompensa_oro DECIMAL(9,2) CHECK (recompensa_oro >= 0.00),
    id_region INT NOT NULL,
    estado ENUM('disponible', 'en_curso', 'completada', 'bloqueada') DEFAULT 'disponible',
    FOREIGN KEY (id_region) REFERENCES regiones_mapa(id_region) ON DELETE CASCADE
);
