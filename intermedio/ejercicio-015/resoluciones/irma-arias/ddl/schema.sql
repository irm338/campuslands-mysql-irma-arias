DROP DATABASE IF EXISTS biblioteca_gamer_db;
CREATE DATABASE biblioteca_gamer_db;
USE biblioteca_gamer_db;

CREATE TABLE plataformas_gamer (
    id_plataforma INT AUTO_INCREMENT PRIMARY KEY,
    nombre_plataforma VARCHAR(50) NOT NULL,
    fabricante VARCHAR(50) NOT NULL
);

CREATE TABLE videojuegos (
    id_juego INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    precio_usd DECIMAL(6,2) CHECK (precio_usd >= 0.00),
    horas_jugadas INT UNSIGNED DEFAULT 0,
    id_plataforma INT NOT NULL,
    estado ENUM('instalado', 'pendiente', 'completado') DEFAULT 'pendiente',
    FOREIGN KEY (id_plataforma) REFERENCES plataformas_gamer(id_plataforma) ON DELETE CASCADE
);
