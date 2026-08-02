DROP DATABASE IF EXISTS garaje_motos_db;
CREATE DATABASE garaje_motos_db;
USE garaje_motos_db;

CREATE TABLE marcas_moto (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    nombre_marca VARCHAR(50) NOT NULL,
    pais_origen VARCHAR(40) NOT NULL
);

CREATE TABLE motos_garaje (
    id_moto INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(80) NOT NULL,
    cilindrada_cc INT UNSIGNED CHECK (cilindrada_cc BETWEEN 50 AND 3000),
    precio_comercial_usd DECIMAL(9,2) CHECK (precio_comercial_usd >= 0.00),
    id_marca INT NOT NULL,
    estado_moto ENUM('disponible', 'en_reparacion', 'en_exhibicion', 'vendida') DEFAULT 'disponible',
    FOREIGN KEY (id_marca) REFERENCES marcas_moto(id_marca) ON DELETE CASCADE
);
