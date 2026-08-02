DROP DATABASE IF EXISTS tienda_ropa_db;
CREATE DATABASE tienda_ropa_db;
USE tienda_ropa_db;

CREATE TABLE categorias_ropa (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE prendas_tienda (
    id_prenda INT AUTO_INCREMENT PRIMARY KEY,
    nombre_prenda VARCHAR(100) NOT NULL,
    precio_usd DECIMAL(6,2) CHECK (precio_usd > 0.00),
    stock INT UNSIGNED DEFAULT 0,
    id_categoria INT NOT NULL,
    estado ENUM('disponible', 'agotado', 'descontinuado') DEFAULT 'disponible',
    FOREIGN KEY (id_categoria) REFERENCES categorias_ropa(id_categoria) ON DELETE CASCADE
);
