-- DML: Inserción de datos y operaciones DELETE controladas
USE db_kickboxing_avanzado;

INSERT INTO luchadores_kickboxing (codigo_luchador, nombre_completo, categoria_peso, peleas_ganadas, peleas_perdidas, nocauts, estado) VALUES
('KB-01', 'Alex "The Blade" Turner', 'Peso Ligero', 15, 2, 10, 'activo'),
('KB-02', 'Marco "El Toro" Silva', 'Peso Wélter', 12, 4, 7, 'activo'),
('KB-03', 'Sergei Vanev', 'Peso Pesado', 18, 1, 14, 'activo'),
('KB-04', 'Kenji Sato', 'Peso Pluma', 10, 5, 4, 'activo'),
('KB-05', 'Carlos Santana', 'Peso Mediano', 8, 6, 3, 'inactivo'),
('KB-06', 'Dmitri Voronov', 'Peso Pesado', 6, 8, 2, 'suspendido'),
('KB-07', 'Liam O Connor', 'Peso Ligero', 4, 9, 1, 'retirado'),
('KB-08', 'Mateo Fernandez', 'Peso Wélter', 2, 10, 0, 'inactivo');

-- PRÁCTICA DE DELETE CONTROLADO: Eliminación justificada de registros bajo criterios específicos
-- 1. Eliminar luchadores con estado 'retirado' que ya no participan en la academia
DELETE FROM luchadores_kickboxing 
WHERE estado = 'retirado';

-- 2. Eliminar un registro específico por su código debido a baja definitiva o error administrativo
DELETE FROM luchadores_kickboxing 
WHERE codigo_luchador = 'KB-08';