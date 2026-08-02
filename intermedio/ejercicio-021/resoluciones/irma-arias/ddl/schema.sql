DROP DATABASE IF EXISTS dibujo_digital_db;
CREATE DATABASE dibujo_digital_db;
USE dibujo_digital_db;

CREATE TABLE software_diseno (
    id_software INT AUTO_INCREMENT PRIMARY KEY,
    nombre_software VARCHAR(50) NOT NULL,
    desarrollador VARCHAR(50) NOT NULL
);

CREATE TABLE proyectos_dibujo (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    titulo_proyecto VARCHAR(100) NOT NULL,
    resolucion_ancho INT UNSIGNED CHECK (resolucion_ancho >= 500),
    resolucion_alto INT UNSIGNED CHECK (resolucion_alto >= 500),
    costo_licencia_usd DECIMAL(7,2) CHECK (costo_licencia_usd >= 0.00),
    id_software INT NOT NULL,
    estado ENUM('borrador', 'en_proceso', 'finalizado') DEFAULT 'en_proceso',
    FOREIGN KEY (id_software) REFERENCES software_diseno(id_software) ON DELETE CASCADE
);
