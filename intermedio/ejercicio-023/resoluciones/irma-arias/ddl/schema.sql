DROP DATABASE IF EXISTS arquitectura_3d_db;
CREATE DATABASE arquitectura_3d_db;
USE arquitectura_3d_db;

CREATE TABLE software_render (
    id_software INT AUTO_INCREMENT PRIMARY KEY,
    nombre_software VARCHAR(50) NOT NULL,
    motor_render VARCHAR(50) NOT NULL
);

CREATE TABLE estilos_arquitectonicos (
    id_estilo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_estilo VARCHAR(50) NOT NULL,
    descripcion_estilo VARCHAR(100)
);

CREATE TABLE proyectos_arquitectura (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_proyecto VARCHAR(100) NOT NULL,
    area_construccion_m2 DECIMAL(8,2) CHECK (area_construccion_m2 > 0.00),
    presupuesto_usd DECIMAL(10,2) CHECK (presupuesto_usd >= 0.00),
    id_software INT NOT NULL,
    id_estilo INT NOT NULL,
    estado ENUM('anteproyecto', 'en_renderizado', 'aprobado', 'finalizado') DEFAULT 'anteproyecto',
    FOREIGN KEY (id_software) REFERENCES software_render(id_software) ON DELETE CASCADE,
    FOREIGN KEY (id_estilo) REFERENCES estilos_arquitectonicos(id_estilo) ON DELETE CASCADE
);
