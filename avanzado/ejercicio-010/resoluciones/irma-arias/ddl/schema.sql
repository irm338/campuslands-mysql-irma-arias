-- DDL: Estructura avanzada para Carreras Urbanas
DROP DATABASE IF EXISTS db_carreras_urbanas;
CREATE DATABASE db_carreras_urbanas;
USE db_carreras_urbanas;

CREATE TABLE participantes_carrera (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_corredor VARCHAR(20) NOT NULL UNIQUE,
    nombre_completo VARCHAR(60) NOT NULL,
    categoria_edad VARCHAR(30) NOT NULL,
    distancia_km DECIMAL(5,2) NOT NULL,
    tiempo_minutos INT NOT NULL,
    inscripcion_pagada DECIMAL(10,2) NOT NULL,
    estado ENUM('inscrito', 'en_ruta', 'finalizado', 'retirado') DEFAULT 'inscrito',
    
    CONSTRAINT chk_distancia CHECK (distancia_km > 0),
    CONSTRAINT chk_tiempo CHECK (tiempo_minutos > 0),
    CONSTRAINT chk_pago CHECK (inscripcion_pagada >= 0)
);