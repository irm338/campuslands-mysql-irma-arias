USE paracaidismo_db;

INSERT INTO categorias_salto (nombre_categoria, nivel_experiencia) VALUES
('Tandem', 'Principiante / Sin experiencia'),
('AFF (Accelerated Freefall)', 'Intermedio / Estudiante'),
('Freefly', 'Avanzado / Maniobras libres'),
('Salto BASE / Wingsuit', 'Extremo / Profesional');

INSERT INTO saltos_paracaidismo (nombre_salto, altura_pies, costo_usd, id_categoria, estado) VALUES
('Salto Tandem Basico', 10000, 220.00, 1, 'completado'),
('Salto Tandem VIP con Video', 15000, 300.00, 1, 'completado'),
('Primer Nivel AFF', 12000, 350.00, 2, 'completado'),
('AFF Nivel 5 - Giros', 13000, 380.00, 2, 'programado'),
('Freefly Pro Acrobatico', 14000, 250.00, 3, 'completado'),
('Freefly Formacion Avanzada', 15000, 270.00, 3, 'completado'),
('Wingsuit Canyons Flight', 16000, 450.00, 4, 'completado'),
('Salto Nocturno Extremo', 14000, 400.00, 4, 'cancelado');
