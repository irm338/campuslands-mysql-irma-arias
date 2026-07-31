-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_taller_mecanico;
CREATE DATABASE db_taller_mecanico;
USE db_taller_mecanico;

-- Tabla principal: Órdenes de Servicio y Reparaciones en el Taller Mecánico
CREATE TABLE ordenes_reparacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente VARCHAR(60) NOT NULL,
    moto_modelo VARCHAR(50) NOT NULL,
    tipo_servicio VARCHAR(40) NOT NULL, -- Ej: Mantenimiento, Frenos, Motor, Eléctrico
    costo_total DECIMAL(10,2) NOT NULL,
    estado ENUM('pendiente', 'en_proceso', 'finalizado', 'entregado') DEFAULT 'pendiente',
    fecha_ingreso DATE NOT NULL,
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_costo_positivo CHECK (costo_total >= 0)
);