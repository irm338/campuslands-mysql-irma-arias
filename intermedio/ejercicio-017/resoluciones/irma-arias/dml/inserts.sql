USE tienda_ropa_db;

INSERT INTO categorias_ropa (nombre_categoria, descripcion) VALUES
('Ropa Casual', 'Prendas comodas para el dia a dia'),
('Ropa Deportiva', 'Indumentaria flexible para entrenar'),
('Calzado', 'Zapatos, tenis y sandalias de moda'),
('Accesorios', 'Gorras, cinturones y bolsos'),
('Ropa Formal', 'Trajes y vestidos elegantes de gala'),
('Moda Infantil', 'Ropa colorida para ninos y bebes');

INSERT INTO prendas_tienda (nombre_prenda, precio_usd, stock, id_categoria, estado) VALUES
('Camiseta Oversized Algodon', 24.99, 50, 1, 'disponible'),
('Leggings Deportivos Antitranspirantes', 35.50, 40, 2, 'disponible'),
('Tenis Urbanos White Classic', 69.99, 25, 3, 'disponible'),
('Gorra Trucker Negra', 19.99, 60, 4, 'disponible'),
('Jeans Slim Fit Azul', 45.00, 30, 1, 'disponible'),
('Shorts de Running', 22.50, 45, 2, 'disponible'),
('Botas de Cuero Casuales', 89.99, 0, 3, 'agotado'),
('Bolso Tote de Cuero', 55.00, 15, 4, 'disponible');
