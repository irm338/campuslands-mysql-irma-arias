-- DDL: Estructura avanzada para Taller de Soldadura (Sentencias DELETE y restricciones)
DROP DATABASE IF EXISTS db_taller_soldadura;
CREATE DATABASE db_taller_soldadura;
USE db_taller_soldadura;

CREATE TABLE inspecciones_soldadura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_cordon VARCHAR(20) NOT NULL UNIQUE,
    tipo_proceso_soldadura VARCHAR(30) NOT NULL,
    espesor_material_mm DECIMAL(6,2) NOT NULL,
    longitud_cordon_cm DECIMAL(8,2) NOT NULL,
    resultado_inspeccion ENUM('aprobado', 'rechazado', 'revision_pendiente', 'suspendido') DEFAULT 'revision_pendiente',
    
    -- Restricciones de validación profesional
    CONSTRAINT chk_espesor_material CHECK (espesor_material_mm > 0),
    CONSTRAINT chk_longitud_cordon CHECK (longitud_cordon_cm > 0)
);