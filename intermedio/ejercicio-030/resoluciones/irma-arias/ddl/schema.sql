DROP DATABASE IF EXISTS equipo_streaming_db;
CREATE DATABASE equipo_streaming_db;
USE equipo_streaming_db;

CREATE TABLE categorias_equipo (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    tipo_dispositivo VARCHAR(50) NOT NULL
);

CREATE TABLE dispositivos_streaming (
    id_dispositivo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_dispositivo VARCHAR(100) NOT NULL,
    precio_usd DECIMAL(8,2) CHECK (precio_usd >= 0.00),
    resolucion_maxima VARCHAR(20) NOT NULL,
    tasa_bits_kbps INT UNSIGNED CHECK (tasa_bits_kbps BETWEEN 1000 AND 60000),
    id_categoria INT NOT NULL,
    estado_equipo ENUM('disponible', 'en_uso', 'mantenimiento', 'retirado') DEFAULT 'disponible',
    FOREIGN KEY (id_categoria) REFERENCES categorias_equipo(id_categoria) ON DELETE CASCADE
);
