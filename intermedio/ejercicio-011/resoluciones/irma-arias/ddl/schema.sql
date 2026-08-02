DROP DATABASE IF EXISTS pingpong_db;
CREATE DATABASE pingpong_db;
USE pingpong_db;

CREATE TABLE categorias_pingpong (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_nivel VARCHAR(50) NOT NULL,
    edad_minima INT CHECK (edad_minima >= 5)
);

CREATE TABLE jugadores_pingpong (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(100) NOT NULL,
    ranking_mundial INT UNIQUE CHECK (ranking_mundial > 0),
    partidos_ganados INT UNSIGNED DEFAULT 0,
    partidos_perdidos INT UNSIGNED DEFAULT 0,
    id_categoria INT NOT NULL,
    estado ENUM('activo', 'lesionado', 'inactivo') DEFAULT 'activo',
    FOREIGN KEY (id_categoria) REFERENCES categorias_pingpong(id_categoria) ON DELETE CASCADE
);
