-- DML: Inserción inicial de datos para proyectos de arquitectura 3D
USE db_arquitectura_3d;

INSERT INTO proyectos_arquitectura (codigo_proyecto, nombre_proyecto, tipo_inmueble, area_construccion_m2, honorarios_dolares, estado) VALUES
('ARQ-01', 'Torre Residencial Altamira', 'Edificio', 4500, 35000.00, 'anteproyecto'),
('ARQ-02', 'Casa Minimalista Bosque', 'Residencial', 320, 8500.50, 'modelado_3d'),
('ARQ-03', 'Centro Comercial Plaza Central', 'Comercial', 8500, 65000.00, 'anteproyecto'),
('ARQ-04', 'Oficinas Corporativas Nexus', 'Corporativo', 2400, 28000.00, 'renderizado'),
('ARQ-05', 'Complex Deportivo Arena', 'Institucional', 12000, 90000.00, 'anteproyecto'),
('ARQ-06', 'Loft Urbano Vanguardia', 'Residencial', 180, 5200.00, 'modelado_3d'),
('ARQ-07', 'Clinica Medica San Rafael', 'Institucional', 1500, 21000.00, 'anteproyecto'),
('ARQ-08', 'Hotel Boutique Costa Azul', 'Comercial', 3800, 42000.00, 'renderizado');