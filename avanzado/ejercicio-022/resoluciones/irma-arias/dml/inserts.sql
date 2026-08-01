-- DML: Inserción de datos para proyectos de animación 3D
USE db_animacion_3d;

INSERT INTO proyectos_3d (codigo_proyecto, titulo_secuencia, software_render, tiempo_render_horas, presupuesto_dolares, estado) VALUES
('ANI-01', 'Vuelo de Dragon Epico', 'Blender', 72, 1200.00, 'completado'),
('ANI-02', 'Persecucion en Ciber Ciudad', 'Maya', 120, 2500.50, 'render_final'),
('ANI-03', 'Transformacion Mecha Robot', 'Blender', 48, 950.00, 'animacion'),
('ANI-04', 'Explosion Reactor Nuclear', 'Houdini', 150, 3100.00, 'render_final'),
('ANI-05', 'Carrera de Naves Espaciales', 'Cinema 4D', 96, 1800.00, 'completado'),
('ANI-06', 'Bosque Encantado Magical', 'Blender', 36, 600.00, 'rigging'),
('ANI-07', 'Batalla de Kaijus en Tokio', 'Maya', 200, 4500.00, 'animacion'),
('ANI-08', 'Caida de Meteorito en Oceano', 'Houdini', 110, 2200.00, 'completado');