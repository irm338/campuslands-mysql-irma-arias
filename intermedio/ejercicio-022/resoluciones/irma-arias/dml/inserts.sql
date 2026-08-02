USE animacion_3d_db;

INSERT INTO software_animacion (nombre_software, desarrollador) VALUES
('Autodesk Maya', 'Autodesk'),
('Blender', 'Blender Foundation'),
('Cinema 4D', 'Maxon'),
('Houdini', 'SideFX');

INSERT INTO proyectos_animacion (titulo_proyecto, fotogramas_por_segundo, presupuesto_usd, id_software, estado) VALUES
('Cortometraje Sci-Fi Neon Chase', 24, 45000.00, 1, 'produccion'),
('Animacion Personaje Stylized Hero', 30, 12000.00, 2, 'postproduccion'),
('Simulacion de Fluidos Oceanicos', 24, 65000.00, 4, 'finalizado'),
('Comercial 3D de Producto Tech', 60, 25000.00, 3, 'finalizado'),
('Secuencia de Accion Mecha Battle', 24, 85000.00, 1, 'produccion'),
('Rigging Avanzado de Criatura', 30, 15000.00, 2, 'preproduccion'),
('Efectos de Humo y Fuego Magico', 24, 40000.00, 4, 'produccion'),
('Motion Graphics Corporativo', 60, 18000.00, 3, 'postproduccion');

INSERT INTO tareas_animacion (nombre_tarea, id_proyecto, horas_estimadas, estado_tarea) VALUES
('Modelado 3D de Entorno Urbano', 1, 120, 'completada'),
('Rigging Facial y Corporal', 2, 80, 'completada'),
('Configuracion de Solver Oceanico', 3, 95, 'completada'),
('Modelado de Gadget Publicitario', 4, 45, 'completada'),
('Animacion de Esqueleto Mecha', 5, 150, 'en_proceso'),
('Creacion de Blendshapes Faciales', 6, 60, 'pendiente'),
('Simulacion Volumetrica de Explosiones', 7, 110, 'en_proceso'),
('Renderizado de Transiciones UI', 8, 30, 'completada');
