-- DDL: Estructura avanzada para Animación 3D (Cláusula ORDER BY y restricciones)
DROP DATABASE IF EXISTS db_animacion_3d;
CREATE DATABASE db_animacion_3d;
USE db_animacion_3d;

CREATE TABLE proyectos_3d (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_proyecto VARCHAR(20) NOT NULL UNIQUE,
    titulo_secuencia VARCHAR(60) NOT NULL,
    software_render VARCHAR(30) NOT NULL,
    tiempo_render_horas INT NOT NULL,
    presupuesto_dolares DECIMAL(10,2) NOT NULL,
    estado ENUM('建模', 'rigging', 'animacion', 'render_final', 'completado') DEFAULT 'rigging',
    
    -- Restricciones de validación profesional
    CONSTRAINT chk_tiempo_render CHECK (tiempo_render_horas > 0),
    CONSTRAINT chk_presupuesto_3d CHECK (presupuesto_dolares >= 0)
);