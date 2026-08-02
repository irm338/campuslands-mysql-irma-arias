USE inventario_skins_db;

INSERT INTO categorias_arma (nombre_categoria, tipo_arma) VALUES
('Rifles de Asalto', 'Automático'),
('Subfusiles (SMG)', 'Cercano / Rápido'),
('Pistolas', 'Secundaria'),
('Armas de Precisión', 'Sniper / Largo Alcance');

INSERT INTO skins_shooter (nombre_skin, rareza, desgaste, precio_mercado_usd, id_categoria, estado_skin) VALUES
('AK-47 | Fire Serpent', 'contraband', 'Factory New', 350.00, 1, 'equipado'),
('M4A4 | Asiimov', 'legendaria', 'Field-Tested', 85.50, 1, 'en_venta'),
('MP9 | Airlock', 'epica', 'Minimal Wear', 14.99, 2, 'disponible'),
('USP-S | Kill Confirmed', 'legendaria', 'Field-Tested', 120.00, 3, 'equipado'),
('AWP | Dragon Lore', 'contraband', 'Factory New', 2500.00, 4, 'archivado'),
('Glock-18 | Water Elemental', 'epica', 'Minimal Wear', 18.50, 3, 'disponible'),
('P90 | Asiimov', 'rara', 'Field-Tested', 9.75, 2, 'en_venta'),
('SSG 08 | Blood in the Water', 'legendaria', 'Minimal Wear', 45.00, 4, 'disponible');
