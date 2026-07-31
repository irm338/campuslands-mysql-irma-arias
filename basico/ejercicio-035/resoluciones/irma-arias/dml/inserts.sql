USE db_taller_mecanico;

-- Inserción de mínimo 8 registros variados de órdenes de reparación
INSERT INTO ordenes_reparacion (cliente, moto_modelo, tipo_servicio, costo_total, estado, fecha_ingreso) VALUES
('Carlos Pérez', 'Yamaha FZ 25', 'Mantenimiento', 120.00, 'finalizado', '2026-07-20'),
('Ana Gómez', 'Honda CB160F', 'Frenos', 85.50, 'en_proceso', '2026-07-25'),
('Luis Torres', 'Suzuki Gixxer 150', 'Motor', 450.00, 'pendiente', '2026-07-28'),
('Sofia Ruiz', 'KTM Duke 200', 'Eléctrico', 150.00, 'finalizado', '2026-07-18'),
('Mateo Castro', 'Bajaj Pulsar NS200', 'Mantenimiento', 135.00, 'entregado', '2026-07-15'),
('Valentina Mora', 'Yamaha MT-03', 'Frenos', 220.00, 'en_proceso', '2026-07-27'),
('David Rojas', 'Kawasaki Z400', 'Motor', 680.00, 'pendiente', '2026-07-29'),
('Camila Ortiz', 'Honda Navi 110', 'Mantenimiento', 60.00, 'entregado', '2026-07-10');