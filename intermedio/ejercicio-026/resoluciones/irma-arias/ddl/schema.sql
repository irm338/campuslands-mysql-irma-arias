DROP DATABASE IF EXISTS videojuego_rpg_db;
CREATE DATABASE videojuego_rpg_db;
USE videojuego_rpg_db;

CREATE TABLE clases_personaje (
    id_clase INT AUTO_INCREMENT PRIMARY KEY,
    nombre_clase VARCHAR(50) NOT NULL,
    rol_principal VARCHAR(50) NOT NULL
);

CREATE TABLE personajes_rpg (
    id_personaje INT AUTO_INCREMENT PRIMARY KEY,
    nombre_personaje VARCHAR(100) NOT NULL,
    nivel INT UNSIGNED CHECK (nivel BETWEEN 1 AND 100),
    puntos_vida INT UNSIGNED CHECK (puntos_vida BETWEEN 100 AND 9999),
    oro DECIMAL(10,2) CHECK (oro >= 0.00),
    id_clase INT NOT NULL,
    estado ENUM('activo', 'inactivo', 'en_combate', 'retirado') DEFAULT 'activo',
    FOREIGN KEY (id_clase) REFERENCES clases_personaje(id_clase) ON DELETE CASCADE
);
