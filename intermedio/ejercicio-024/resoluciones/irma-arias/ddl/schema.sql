DROP DATABASE IF EXISTS soldadura_db;
CREATE DATABASE soldadura_db;
USE soldadura_db;

CREATE TABLE procesos_soldadura (
    id_proceso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_proceso VARCHAR(50) NOT NULL,
    siglas VARCHAR(10) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE trabajos_soldadura (
    id_trabajo INT AUTO_INCREMENT PRIMARY KEY,
    titulo_trabajo VARCHAR(100) NOT NULL,
    amperaje_recomendado INT UNSIGNED CHECK (amperaje_recomendado BETWEEN 30 AND 500),
    costo_material_usd DECIMAL(7,2) CHECK (costo_material_usd > 0.00),
    id_proceso INT NOT NULL,
    estado ENUM('pendiente', 'en_proceso', 'completado', 'inspeccionado') DEFAULT 'pendiente',
    FOREIGN KEY (id_proceso) REFERENCES procesos_soldadura(id_proceso) ON DELETE CASCADE
);
