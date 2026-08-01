-- DDL: Estructura avanzada para la Academia de Kickboxing
DROP DATABASE IF EXISTS db_kickboxing_avanzado;
CREATE DATABASE db_kickboxing_avanzado;
USE db_kickboxing_avanzado;

CREATE TABLE luchadores_kickboxing (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_luchador VARCHAR(20) NOT NULL UNIQUE,
    nombre_completo VARCHAR(60) NOT NULL,
    categoria_peso VARCHAR(30) NOT NULL,
    peleas_ganadas INT NOT NULL DEFAULT 0,
    peleas_perdidas INT NOT NULL DEFAULT 0,
    nocauts INT NOT NULL DEFAULT 0,
    estado ENUM('activo', 'inactivo', 'retirado', 'suspendido') DEFAULT 'activo',
    
    CONSTRAINT chk_ganadas CHECK (peleas_ganadas >= 0),
    CONSTRAINT chk_perdidas CHECK (peleas_perdidas >= 0),
    CONSTRAINT chk_nocauts CHECK (nocauts >= 0)
);