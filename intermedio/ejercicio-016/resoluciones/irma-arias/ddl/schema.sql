DROP DATABASE IF EXISTS comida_urbana_db;
CREATE DATABASE comida_urbana_db;
USE comida_urbana_db;

CREATE TABLE categorias_comida (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE platillos_urbanos (
    id_platillo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_platillo VARCHAR(100) NOT NULL,
    precio_usd DECIMAL(5,2) CHECK (precio_usd > 0.00),
    tiempo_preparacion_min INT UNSIGNED CHECK (tiempo_preparacion_min > 0),
    id_categoria INT NOT NULL,
    estado ENUM('disponible', 'agotado', 'descontinuado') DEFAULT 'disponible',
    FOREIGN KEY (id_categoria) REFERENCES categorias_comida(id_categoria) ON DELETE CASCADE
);
