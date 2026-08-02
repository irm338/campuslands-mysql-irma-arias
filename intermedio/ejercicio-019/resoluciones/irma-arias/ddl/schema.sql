DROP DATABASE IF EXISTS paracaidismo_db;
CREATE DATABASE paracaidismo_db;
USE paracaidismo_db;

CREATE TABLE categorias_salto (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    nivel_experiencia VARCHAR(50) NOT NULL
);

CREATE TABLE saltos_paracaidismo (
    id_salto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_salto VARCHAR(100) NOT NULL,
    altura_pies INT UNSIGNED CHECK (altura_pies >= 3000),
    costo_usd DECIMAL(7,2) CHECK (costo_usd > 0.00),
    id_categoria INT NOT NULL,
    estado ENUM('programado', 'completado', 'cancelado') DEFAULT 'programado',
    FOREIGN KEY (id_categoria) REFERENCES categorias_salto(id_categoria) ON DELETE CASCADE
);
