DROP DATABASE IF EXISTS laboratorio_quimico_db;
CREATE DATABASE laboratorio_quimico_db;
USE laboratorio_quimico_db;

CREATE TABLE tipos_compuesto (
    id_tipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_tipo VARCHAR(50) NOT NULL UNIQUE,
    descripcion VARCHAR(100)
);

CREATE TABLE formulas_quimicas (
    id_formula INT AUTO_INCREMENT PRIMARY KEY,
    nombre_formula VARCHAR(100) NOT NULL UNIQUE,
    codigo_cas VARCHAR(20) NOT NULL UNIQUE,
    pureza_porcentaje DECIMAL(5,2) CHECK (pureza_porcentaje BETWEEN 50.00 AND 100.00),
    id_tipo INT NOT NULL,
    estado ENUM('investigacion', 'aprobado', 'sintetizado', 'suspendido') DEFAULT 'investigacion',
    FOREIGN KEY (id_tipo) REFERENCES tipos_compuesto(id_tipo) ON DELETE CASCADE
);
