USE db_garaje_motos;

-- Inserción de mínimo 8 registros variados de motocicletas
INSERT INTO motos_garaje (marca, modelo, cilindrada, precio_comercial, estado, fecha_ingreso) VALUES
('Yamaha', 'MT-07', 689, 7500.00, 'disponible', '2026-06-10'),
('Honda', 'CB500F', 471, 6200.50, 'disponible', '2026-06-15'),
('Kawasaki', 'Ninja 400', 399, 5800.00, 'reservada', '2026-07-01'),
('Suzuki', 'GSX-R750', 750, 11500.00, 'en_reparacion', '2026-05-20'),
('KTM', 'Duke 200', 199, 3400.00, 'disponible', '2026-07-10'),
('BMW', 'G 310 R', 313, 5100.00, 'disponible', '2026-07-12'),
('Yamaha', 'YZF-R3', 321, 5400.00, 'reservada', '2026-07-18'),
('Honda', 'Navi 110', 110, 1800.00, 'en_reparacion', '2026-07-20');