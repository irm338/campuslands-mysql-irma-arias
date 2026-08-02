USE comida_urbana_db;

INSERT INTO categorias_comida (nombre_categoria, descripcion) VALUES
('Hamburguesas Artesanales', 'Carne jugosa al carbon y pan brioche'),
('Tacos Callejeros', 'Tortillas de maiz y carnes marinadas'),
('Salchipapas Urbanas', 'Papas crujientes con salsas de la casa'),
('Bebidas Refrescantes', 'Gaseosas, jugos naturales y malteadas');

INSERT INTO platillos_urbanos (nombre_platillo, precio_usd, tiempo_preparacion_min, id_categoria, estado) VALUES
('Burger Doble Tocineta', 12.99, 15, 1, 'disponible'),
('Tacos al Pastor (Orden)', 9.50, 10, 2, 'disponible'),
('Salchipapa Monster', 14.00, 20, 3, 'disponible'),
('Malteada de Oreo', 5.50, 8, 4, 'disponible'),
('Burger Vegana de Lentejas', 11.00, 15, 1, 'disponible'),
('Tacos de Birria con Consome', 13.50, 18, 2, 'disponible'),
('Salchipapa Clasica', 8.50, 12, 3, 'agotado'),
('Limonada de Coco', 4.50, 5, 4, 'disponible');
