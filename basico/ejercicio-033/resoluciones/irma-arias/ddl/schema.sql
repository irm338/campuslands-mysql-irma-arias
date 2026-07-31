-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_inventario_skins;
CREATE DATABASE db_inventario_skins;
USE db_inventario_skins;

-- Tabla principal: Inventario de Skins para Shooter
CREATE TABLE skins_shooter (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Clave primaria estricta
    nombre_skin VARCHAR(80) NOT NULL,
    arma_asociada VARCHAR(50) NOT NULL, -- Ej: AK-47, M4A1, AWP, Pistola
    rareza VARCHAR(30) NOT NULL, -- Ej: Común, Rara, Épica, Legendaria, Coleccionista
    valor_mercado DECIMAL(10,2) NOT NULL,
    estado ENUM('disponible', 'equipada', 'en_venta') DEFAULT 'disponible',
    fecha_obtencion DATE NOT NULL,
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_valor_positivo CHECK (valor_mercado >= 0)
);