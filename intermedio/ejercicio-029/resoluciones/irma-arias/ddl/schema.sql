DROP DATABASE IF EXISTS mercado_accesorios_db;
CREATE DATABASE mercado_accesorios_db;
USE mercado_accesorios_db;

CREATE TABLE categorias_accesorio (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE accesorios (
    id_accesorio INT AUTO_INCREMENT PRIMARY KEY,
    nombre_accesorio VARCHAR(100) NOT NULL,
    precio_usd DECIMAL(8,2) CHECK (precio_usd >= 0.00),
    stock INT UNSIGNED CHECK (stock >= 0),
    id_categoria INT NOT NULL,
    estado ENUM('disponible', 'agotado', 'descontinuado') DEFAULT 'disponible',
    FOREIGN KEY (id_categoria) REFERENCES categorias_accesorio(id_categoria) ON DELETE CASCADE
);

-- Creacion de vistas simples para encapsular consultas de negocio
CREATE VIEW vw_accesorios_disponibles AS
SELECT a.id_accesorio, a.nombre_accesorio, c.nombre_categoria, a.precio_usd, a.stock
FROM accesorios a
JOIN categorias_accesorio c ON a.id_categoria = c.id_categoria
WHERE a.estado = 'disponible';

CREATE VIEW vw_resumen_inventario AS
SELECT c.nombre_categoria, COUNT(a.id_accesorio) AS total_productos, SUM(a.stock) AS stock_total, AVG(a.precio_usd) AS precio_promedio
FROM categorias_accesorio c
LEFT JOIN accesorios a ON c.id_categoria = a.id_categoria
GROUP BY c.id_categoria, c.nombre_categoria;
