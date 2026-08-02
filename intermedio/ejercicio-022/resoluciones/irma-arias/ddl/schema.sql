DROP DATABASE IF EXISTS animacion_3d_db;
CREATE DATABASE animacion_3d_db;
USE animacion_3d_db;

CREATE TABLE software_animacion (
    id_software INT AUTO_INCREMENT PRIMARY KEY,
    nombre_software VARCHAR(50) NOT NULL,
    desarrollador VARCHAR(50) NOT NULL
);

CREATE TABLE proyectos_animacion (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    titulo_proyecto VARCHAR(100) NOT NULL,
    fotogramas_por_segundo INT UNSIGNED CHECK (fotogramas_por_segundo IN (24, 30, 60)),
    presupuesto_usd DECIMAL(9,2) CHECK (presupuesto_usd >= 0.00),
    id_software INT NOT NULL,
    estado ENUM('preproduccion', 'produccion', 'postproduccion', 'finalizado') DEFAULT 'produccion',
    FOREIGN KEY (id_software) REFERENCES software_animacion(id_software) ON DELETE CASCADE
);

CREATE TABLE tareas_animacion (
    id_tarea INT AUTO_INCREMENT PRIMARY KEY,
    nombre_tarea VARCHAR(100) NOT NULL,
    id_proyecto INT NOT NULL,
    horas_estimadas INT UNSIGNED CHECK (horas_estimadas > 0),
    estado_tarea ENUM('pendiente', 'en_proceso', 'completada') DEFAULT 'pendiente',
    FOREIGN KEY (id_proyecto) REFERENCES proyectos_animacion(id_proyecto) ON DELETE CASCADE
);
