-- DDL: Estructura avanzada para Fútbol Sala
DROP DATABASE IF EXISTS db_futbol_sala_avanzado;
CREATE DATABASE db_futbol_sala_avanzado;
USE db_futbol_sala_avanzado;

CREATE TABLE equipos_sala (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_equipo VARCHAR(20) NOT NULL UNIQUE,
    nombre_equipo VARCHAR(50) NOT NULL,
    goles_anotados INT NOT NULL DEFAULT 0,
    goles_recibidos INT NOT NULL DEFAULT 0,
    partidos_ganados INT NOT NULL DEFAULT 0,
    puntos INT NOT NULL DEFAULT 0,
    estado ENUM('activo', 'lesionado_equipo', 'suspendido', 'campeon') DEFAULT 'activo',
    
    CONSTRAINT chk_goles_anotados CHECK (goles_anotados >= 0),
    CONSTRAINT chk_goles_recibidos CHECK (goles_recibidos >= 0),
    CONSTRAINT chk_partidos_ganados CHECK (partidos_ganados >= 0),
    CONSTRAINT chk_puntos_sala CHECK (puntos >= 0)
);