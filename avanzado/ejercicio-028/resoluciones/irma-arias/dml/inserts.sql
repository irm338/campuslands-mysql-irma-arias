-- DML: Inserción de datos para cursos de academia tech
USE db_academia_tech;

INSERT INTO cursos_academia (codigo_curso, nombre_curso, tecnologia_principal, horas_duracion, precio_curso, estado_curso) VALUES
('TECH-01', 'Fundamentos de Python y Automatizacion', 'Python', 40, 250.00, 'activo'),
('TECH-02', 'Desarrollo Frontend con HTML y CSS', 'HTML/CSS', 60, 300.00, 'activo'),
('TECH-03', 'Bases de Datos Relacionales con MySQL', 'MySQL', 45, 280.50, 'activo'),
('TECH-04', 'Integracion de APIs con n8n', 'n8n', 30, 350.00, 'en_desarrollo'),
('TECH-05', 'Programacion Avanzada en JavaScript', 'JavaScript', 70, 400.00, 'activo'),
('TECH-06', 'Control de Versiones Profesional con Git', 'Git', 20, 150.00, 'pausado'),
('TECH-07', 'Desarrollo Backend con Node.js', 'Node.js', 80, 450.00, 'en_desarrollo'),
('TECH-08', 'Introduccion a la Inteligencia Artificial', 'Python', 50, 500.00, 'finalizado');