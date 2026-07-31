-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_liga_futbol;
CREATE DATABASE db_liga_futbol;
USE db_liga_futbol;

-- Tabla principal: Equipos en la Liga de Fútbol
CREATE TABLE equipos_liga (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(50) NOT NULL,
    puntos INT NOT NULL DEFAULT 0,
    partidos_jugados INT NOT NULL DEFAULT 0,
    goles_a_favor INT NOT NULL DEFAULT 0,
    goles_en_contra INT NOT NULL DEFAULT 0,
    estado ENUM('activo', 'sancionado', 'descansando') DEFAULT 'activo',
    fecha_fundacion DATE NOT NULL,
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_puntos_positivos CHECK (puntos >= 0),
    CONSTRAINT chk_partidos_positivos CHECK (partidos_jugados >= 0),
    CONSTRAINT chk_goles_favor_positivos CHECK (goles_a_favor >= 0),
    CONSTRAINT chk_goles_contra_positivos CHECK (goles_en_contra >= 0)
);