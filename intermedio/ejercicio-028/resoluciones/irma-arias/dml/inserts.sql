USE academia_tech_db;

INSERT INTO estudiantes (nombre_completo, correo, estado_estudiante) VALUES
('Irma Arias', 'irma.arias@campuslands.com', 'activo'),
('Carlos Mendoza', 'carlos.mendoza@campuslands.com', 'activo'),
('Sofia Ruiz', 'sofia.ruiz@campuslands.com', 'egresado'),
('Alejandro Gomez', 'alejandro.gomez@campuslands.com', 'activo');

INSERT INTO cursos_tech (nombre_curso, creditos, costo_usd) VALUES
('Programacion en Python Avanzado', 5, 250.00),
('Bases de Datos Relacionales MySQL', 4, 200.00),
('Desarrollo Web Frontend Moderno', 5, 220.00),
('Automatizacion con n8n y APIs', 3, 180.00);

INSERT INTO inscripciones_cursos (id_estudiante, id_curso, fecha_inscripcion, calificacion_final, estado_inscripcion) VALUES
(1, 1, '2026-02-10', 9.50, 'aprobado'),
(1, 2, '2026-03-01', 9.20, 'aprobado'),
(2, 2, '2026-03-05', 8.50, 'aprobado'),
(2, 3, '2026-04-12', 7.80, 'aprobado'),
(3, 1, '2026-01-15', 9.80, 'aprobado'),
(3, 4, '2026-02-20', 8.90, 'aprobado'),
(4, 3, '2026-05-01', 6.50, 'cursando'),
(4, 4, '2026-05-10', 7.00, 'cursando');
