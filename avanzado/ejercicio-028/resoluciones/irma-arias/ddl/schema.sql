-- DDL: Estructura avanzada para Academia Tech (Filtros por Estado)
DROP DATABASE IF EXISTS db_academia_tech;
CREATE DATABASE db_academia_tech;
USE db_academia_tech;

CREATE TABLE cursos_academia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_curso VARCHAR(20) NOT NULL UNIQUE,
    nombre_curso VARCHAR(60) NOT NULL,
    tecnologia_principal VARCHAR(30) NOT NULL,
    horas_duracion INT NOT NULL,
    precio_curso DECIMAL(10,2) NOT NULL,
    estado_curso ENUM('activo', 'en_desarrollo', 'pausado', 'finalizado') DEFAULT 'activo',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_horas_duracion CHECK (horas_duracion > 0),
    CONSTRAINT chk_precio_curso CHECK (precio_curso >= 0)
);