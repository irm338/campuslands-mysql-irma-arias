USE arquitectura_3d_db;

INSERT INTO software_render (nombre_software, motor_render) VALUES
('Autodesk Revit', 'Mental Ray / Arnold'),
('Autodesk 3ds Max', 'V-Ray'),
('SketchUp Pro', 'Enscape'),
('Rhino 3D', 'Lumion');

INSERT INTO estilos_arquitectonicos (nombre_estilo, descripcion_estilo) VALUES
('Minimalista Moderno', 'Lineas puras, espacios abiertos y grandes ventanales'),
('Brutalismo Contemporaneo', 'Uso predominante de concreto visto y formas solidas'),
('Biofilico Sostenible', 'Integracion con la naturaleza y materiales ecologicos'),
('Industrial Urbano', 'Estructuras metalicas vistas y acabados rusticos');

INSERT INTO proyectos_arquitectura (nombre_proyecto, area_construccion_m2, presupuesto_usd, id_software, id_estilo, estado) VALUES
('Residencia Lumina Minimalista', 350.50, 180000.00, 1, 1, 'aprobado'),
('Torre de Apartamentos Brutalista', 1200.00, 950000.00, 2, 2, 'en_renderizado'),
('Eco-Hotel Bosque Nuboso', 850.00, 620000.00, 3, 3, 'anteproyecto'),
('Loft Estudio Creativo Urbano', 180.00, 95000.00, 4, 4, 'finalizado'),
('Casa de Playa Horizon', 420.00, 240000.00, 1, 1, 'finalizado'),
('Centro Cultural Metropolitano', 2500.00, 2100000.00, 2, 2, 'en_renderizado'),
('Villas Sostenibles Selva', 600.00, 450000.00, 3, 3, 'aprobado'),
('Oficinas Co-Working Industrial', 520.00, 310000.00, 4, 4, 'finalizado');
