-- DDL: Estructura avanzada para Mercado de Accesorios (Fechas Básicas)
DROP DATABASE IF EXISTS db_mercado_accesorios;
CREATE DATABASE db_mercado_accesorios;
USE db_mercado_accesorios;

CREATE TABLE accesorios_mercado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_accesorio VARCHAR(20) NOT NULL UNIQUE,
    nombre_accesorio VARCHAR(60) NOT NULL,
    categoria_accesorio VARCHAR(30) NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    stock_disponible INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    estado_accesorio ENUM('disponible', 'agotado', 'en_oferta', 'descontinuado') DEFAULT 'disponible',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_precio_unitario CHECK (precio_unitario > 0),
    CONSTRAINT chk_stock_disponible CHECK (stock_disponible >= 0)
);