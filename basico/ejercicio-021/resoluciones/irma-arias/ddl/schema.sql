DROP DATABASE IF EXISTS db_dibujo_digital_irma;
CREATE DATABASE db_dibujo_digital_irma;
USE db_dibujo_digital_irma;

CREATE TABLE proyectos_dibujo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo_obra VARCHAR(80) NOT NULL,
    software_utilizado VARCHAR(30) NOT NULL CHECK (software_utilizado IN ('Photoshop', 'Procreate', 'Clip Studio', 'Illustrator', 'Krita')),
    capas_totales INT NOT NULL CHECK (capas_totales > 0),
    tiempo_horas DECIMAL(6,2) NOT NULL CHECK (tiempo_horas > 0.00),
    estado_proyecto VARCHAR(20) NOT NULL DEFAULT 'En Progreso' CHECK (estado_proyecto IN ('En Progreso', 'Finalizado', 'Pausado'))
);