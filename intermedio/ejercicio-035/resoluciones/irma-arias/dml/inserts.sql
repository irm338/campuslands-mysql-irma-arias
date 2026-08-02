USE taller_mecanico_motos_db;

INSERT INTO mecanicos (nombre_mecanico, especialidad, experiencia_anios) VALUES
('Carlos Ramírez', 'Motor y Transmisión', 12),
('Esteban Morales', 'Sistema Eléctrico e Inyección', 8),
('Daniela Soto', 'Suspensión y Frenos', 6),
('Marcos Vargas', 'Diagnóstico General y Mantenimiento', 4);

INSERT INTO ordenes_reparacion (modelo_moto, motivo_ingreso, costo_total_usd, id_mecanico, estado_orden) VALUES
('Yamaha MT-09', 'Reparación completa de caja de cambios', 850.00, 1, 'finalizada'),
('Honda CB650R', 'Rebobinado de estator y falla de alternador', 320.00, 2, 'en_diagnostico'),
('Suzuki V-Strom 650', 'Mantenimiento preventivo y ajuste de válvulas', 180.00, 1, 'entregada'),
('Kawasaki Z900', 'Cambio de kit de arrastre y pastillas de freno', 290.00, 3, 'finalizada'),
('KTM Duke 390', 'Corto circuito en tablero digital', 210.00, 2, 'reparacion_en_curso'),
('BMW G310R', 'Reemplazo de retenes de barras telescópicas', 250.00, 3, 'entregada'),
('Yamaha FZ25', 'Sincronización de cuerpos de aceleración', 95.00, 4, 'finalizada'),
('Honda Navi 110', 'Reparación de sistema de transmisión automática', 110.00, 4, 'recibida');
