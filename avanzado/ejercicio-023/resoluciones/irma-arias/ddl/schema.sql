-- DDL: Estructura avanzada para Arquitectura 3D (Sentencias UPDATE y restricciones)
DROP DATABASE IF EXISTS db_arquitectura_3d;
CREATE DATABASE db_arquitectura_3d;
USE db_arquitectura_3d;

CREATE TABLE proyectos_arquitectura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_proyecto VARCHAR(20) NOT NULL UNIQUE,
    nombre_proyecto VARCHAR(60) NOT NULL,
    tipo_inmueble VARCHAR(30) NOT NULL,
    area_construccion_m2 INT NOT NULL,
    honorarios_dolares DECIMAL(10,2) NOT NULL,
    estado ENUM('anteproyecto', 'modelado_3d', 'renderizado', 'aprobado', 'entregado') DEFAULT 'anteproyecto',
    
    -- Restricciones de validación profesional
    CONSTRAINT chk_area_construccion CHECK (area_construccion_m2 > 0),
    CONSTRAINT chk_honorarios_arquitectura CHECK (honorarios_dolares >= 0)
);