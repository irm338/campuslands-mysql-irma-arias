DROP DATABASE IF EXISTS torneo_moba_db;
CREATE DATABASE torneo_moba_db;
USE torneo_moba_db;

CREATE TABLE equipos_esports (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(60) NOT NULL,
    region_origen VARCHAR(40) NOT NULL,
    estado_equipo ENUM('activo', 'eliminado', 'campeon') DEFAULT 'activo'
);

CREATE TABLE jugadores_moba (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    alias_jugador VARCHAR(50) NOT NULL,
    rol_principal ENUM('top', 'jg', 'mid', 'adc', 'support') NOT NULL,
    asesinatos_totales INT UNSIGNED DEFAULT 0,
    muertes_totales INT UNSIGNED DEFAULT 0,
    asistencias_totales INT UNSIGNED DEFAULT 0,
    id_equipo INT NOT NULL,
    FOREIGN KEY (id_equipo) REFERENCES equipos_esports(id_equipo) ON DELETE CASCADE
);
