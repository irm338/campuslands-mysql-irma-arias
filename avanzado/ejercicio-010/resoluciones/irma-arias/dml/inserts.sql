-- DML: Inserción de datos para carreras urbanas
USE db_carreras_urbanas;

INSERT INTO participantes_carrera (codigo_corredor, nombre_completo, categoria_edad, distancia_km, tiempo_minutos, inscripcion_pagada, estado) VALUES
('RUN-01', 'Claudia Gomez', 'Libre (18-39)', 10.00, 45, 50.00, 'finalizado'),
('RUN-02', 'Andres Poveda', 'Master A (40-49)', 21.09, 95, 75.00, 'finalizado'),
('RUN-03', 'Valeria Rios', 'Libre (18-39)', 10.00, 52, 50.00, 'finalizado'),
('RUN-04', 'Esteban Morales', 'Master B (50+)', 5.00, 28, 35.00, 'en_ruta'),
('RUN-05', 'Daniela Ospina', 'Libre (18-39)', 21.09, 110, 75.00, 'finalizado'),
('RUN-06', 'Julián Castro', 'Master A (40-49)', 10.00, 48, 50.00, 'inscrito'),
('RUN-07', 'Sofia Benitez', 'Libre (18-39)', 5.00, 25, 35.00, 'finalizado'),
('RUN-08', 'Ricardo Tapia', 'Master B (50+)', 21.09, 130, 75.00, 'retirado');