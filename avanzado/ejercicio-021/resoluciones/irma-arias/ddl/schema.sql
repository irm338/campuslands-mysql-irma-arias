-- DDL: Estructura avanzada para Dibujo Digital (Cláusula WHERE y restricciones)
DROP DATABASE IF EXISTS db_dibujo_digital;
CREATE DATABASE db_dibujo_digital;
USE db_dibujo_digital;

CREATE TABLE proyectos_dibujo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_proyecto VARCHAR(20) NOT NULL UNIQUE,
    titulo_obra VARCHAR(60) NOT NULL,
    software_utilizado VARCHAR(30) NOT NULL,
    capas_totales INT NOT NULL,
    precio_comision DECIMAL(10,2) NOT NULL,
    estado ENUM('borrador', 'en_progreso', 'completado', 'archivado') DEFAULT 'borrador',
    
    -- Restricciones de validación profesional
    CONSTRAINT chk_capas_proyecto CHECK (capas_totales > 0),
    CONSTRAINT chk_precio_comision CHECK (precio_comision >= 0)
);