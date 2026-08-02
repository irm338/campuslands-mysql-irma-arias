DROP DATABASE IF EXISTS estudio_tatuajes_db;
CREATE DATABASE estudio_tatuajes_db;
USE estudio_tatuajes_db;

CREATE TABLE estilos_tatuaje (
    id_estilo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_estilo VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE tatuajes_catalogo (
    id_tatuaje INT AUTO_INCREMENT PRIMARY KEY,
    nombre_diseno VARCHAR(100) NOT NULL,
    precio_usd DECIMAL(7,2) CHECK (precio_usd > 0.00),
    horas_estimadas INT UNSIGNED CHECK (horas_estimadas > 0),
    id_estilo INT NOT NULL,
    estado ENUM('disponible', 'reservado', 'completado') DEFAULT 'disponible',
    FOREIGN KEY (id_estilo) REFERENCES estilos_tatuaje(id_estilo) ON DELETE CASCADE
);
