DROP DATABASE IF EXISTS taller_mecanico_motos_db;
CREATE DATABASE taller_mecanico_motos_db;
USE taller_mecanico_motos_db;

CREATE TABLE mecanicos (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    nombre_mecanico VARCHAR(60) NOT NULL,
    especialidad VARCHAR(40) NOT NULL,
    experiencia_anios INT UNSIGNED CHECK (experiencia_anios BETWEEN 1 AND 35)
);

CREATE TABLE ordenes_reparacion (
    id_orden INT AUTO_INCREMENT PRIMARY KEY,
    modelo_moto VARCHAR(80) NOT NULL,
    motivo_ingreso VARCHAR(120) NOT NULL,
    costo_total_usd DECIMAL(9,2) CHECK (costo_total_usd >= 0.00),
    id_mecanico INT NOT NULL,
    estado_orden ENUM('recibida', 'en_diagnostico', 'reparacion_en_curso', 'finalizada', 'entregada') DEFAULT 'recibida',
    FOREIGN KEY (id_mecanico) REFERENCES mecanicos(id_mecanico) ON DELETE CASCADE
);
