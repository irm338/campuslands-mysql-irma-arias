-- DDL: Estructura avanzada para Videojuego de Acción y Aventura (Modelado de Entidad)
DROP DATABASE IF EXISTS db_accion_aventura;
CREATE DATABASE db_accion_aventura;
USE db_accion_aventura;

CREATE TABLE misiones_aventura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_mision VARCHAR(20) NOT NULL UNIQUE,
    nombre_mision VARCHAR(60) NOT NULL,
    region_mapa VARCHAR(30) NOT NULL,
    nivel_dificultad INT NOT NULL,
    recompensas_oro DECIMAL(10,2) NOT NULL,
    estado_mision ENUM('disponible', 'en_progreso', 'completada', 'bloqueada') DEFAULT 'disponible',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_nivel_dificultad CHECK (nivel_dificultad >= 1 AND nivel_dificultad <= 50),
    CONSTRAINT chk_recompensas_oro CHECK (recompensas_oro >= 0)
);