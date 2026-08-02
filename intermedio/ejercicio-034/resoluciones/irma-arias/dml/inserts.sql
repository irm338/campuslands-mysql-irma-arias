USE garaje_motos_db;

INSERT INTO marcas_moto (nombre_marca, pais_origen) VALUES
('Yamaha', 'Japón'),
('Ducati', 'Italia'),
('BMW Motorrad', 'Alemania'),
('Harley-Davidson', 'Estados Unidos');

INSERT INTO motos_garaje (modelo, cilindrada_cc, precio_comercial_usd, id_marca, estado_moto) VALUES
('Yamaha MT-09 SP', 890, 10500.00, 1, 'disponible'),
('Yamaha YZF-R1', 998, 17999.00, 1, 'en_exhibicion'),
('Ducati Panigale V4', 1103, 24500.00, 2, 'en_reparacion'),
('Ducati Monster 937', 937, 12999.00, 2, 'disponible'),
('BMW S1000RR', 999, 18950.00, 3, 'disponible'),
('BMW R 1250 GS', 1254, 21900.00, 3, 'vendida'),
('Harley-Davidson Fat Boy 114', 1868, 20500.00, 4, 'en_exhibicion'),
('Harley-Davidson Iron 883', 883, 9999.00, 4, 'vendida');
