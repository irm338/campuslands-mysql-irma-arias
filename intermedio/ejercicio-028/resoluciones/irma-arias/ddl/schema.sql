DROP DATABASE IF EXISTS academia_tech_db;
CREATE DATABASE academia_tech_db;
USE academia_tech_db;

CREATE TABLE estudiantes (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    estado_estudiante ENUM('activo', 'inactivo', 'egresado') DEFAULT 'activo'
);

CREATE TABLE cursos_tech (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    creditos INT UNSIGNED CHECK (creditos BETWEEN 1 AND 10),
    costo_usd DECIMAL(8,2) CHECK (costo_usd >= 0.00)
);

CREATE TABLE inscripciones_cursos (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    calificacion_final DECIMAL(4,2) CHECK (calificacion_final BETWEEN 0.00 AND 10.00),
    estado_inscripcion ENUM('cursando', 'aprobado', 'reprobado', 'retirado') DEFAULT 'cursando',
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante) ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES cursos_tech(id_curso) ON DELETE CASCADE,
    UNIQUE (id_estudiante, id_curso)
);
