-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_hiperdeportivos;
CREATE DATABASE db_hiperdeportivos;
USE db_hiperdeportivos;

-- Tabla principal: Autos Hiperdeportivos
CREATE TABLE autos_hiperdeportivos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_modelo VARCHAR(30) NOT NULL UNIQUE,
    nombre_auto VARCHAR(60) NOT NULL,
    fabricante VARCHAR(40) NOT NULL,
    velocidad_max_kmh INT NOT NULL,
    precio_usd DECIMAL(12,2) NOT NULL,
    potencia_hp INT NOT NULL,
    estado ENUM('disponible', 'produccion_limitada', 'reservado', 'agotado') DEFAULT 'disponible',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_velocidad CHECK (velocidad_max_kmh > 0),
    CONSTRAINT chk_precio_auto CHECK (precio_usd > 0),
    CONSTRAINT chk_potencia CHECK (potencia_hp > 0)
);

-- Creación de índice avanzado para optimizar búsquedas y consultas analíticas con EXPLAIN
CREATE INDEX idx_fabricante_estado ON autos_hiperdeportivos(fabricante, estado);