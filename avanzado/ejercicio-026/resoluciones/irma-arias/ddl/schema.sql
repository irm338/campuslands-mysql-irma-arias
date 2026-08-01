-- DDL: Estructura avanzada para Videojuego RPG (Validaciones simples y restricciones)
DROP DATABASE IF EXISTS db_videojuego_rpg;
CREATE DATABASE db_videojuego_rpg;
USE db_videojuego_rpg;

CREATE TABLE personajes_rpg (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_personaje VARCHAR(20) NOT NULL UNIQUE,
    nombre_personaje VARCHAR(50) NOT NULL,
    clase_rpg VARCHAR(30) NOT NULL,
    nivel_experiencia INT NOT NULL,
    puntos_vida DECIMAL(8,2) NOT NULL,
    estado_jugador ENUM('activo', 'en_combate', 'descansando', 'retirado') DEFAULT 'activo',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_nivel_experiencia CHECK (nivel_experiencia >= 1 AND nivel_experiencia <= 100),
    CONSTRAINT chk_puntos_vida CHECK (puntos_vida > 0)
);