-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_garaje_motos;
CREATE DATABASE db_garaje_motos;
USE db_garaje_motos;

-- Tabla principal: Inventario y Registro de Motocicletas en el Garaje
CREATE TABLE motos_garaje (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(40) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    cilindrada INT NOT NULL, -- Ej: 125, 250, 600, 1000 cc
    precio_comercial DECIMAL(10,2) NOT NULL,
    estado ENUM('disponible', 'en_reparacion', 'reservada') DEFAULT 'disponible',
    fecha_ingreso DATE NOT NULL,
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_cilindrada_positiva CHECK (cilindrada > 0),
    CONSTRAINT chk_precio_positivo CHECK (precio_comercial >= 0)
);