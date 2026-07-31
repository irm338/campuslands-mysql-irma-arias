-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_hiperdeportivos;
CREATE DATABASE db_hiperdeportivos;
USE db_hiperdeportivos;

-- Tabla principal: Catálogo y Registro de Autos Hiperdeportivos
CREATE TABLE autos_hiperdeportivos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(40) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    velocidad_maxima INT NOT NULL, -- en km/h
    precio DECIMAL(12,2) NOT NULL, -- en USD
    estado ENUM('disponible', 'reservado', 'vendido') DEFAULT 'disponible',
    fecha_fabricacion DATE NOT NULL,
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_velocidad_positiva CHECK (velocidad_maxima > 0),
    CONSTRAINT chk_precio_positivo CHECK (precio >= 0)
);