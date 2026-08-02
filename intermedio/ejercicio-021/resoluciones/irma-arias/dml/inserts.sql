USE dibujo_digital_db;

INSERT INTO software_diseno (nombre_software, desarrollador) VALUES
('Clip Studio Paint EX', 'Celsys'),
('Adobe Photoshop', 'Adobe Systems'),
('Procreate', 'Savage Interactive'),
('Krita', 'Krita Foundation');

INSERT INTO proyectos_dibujo (titulo_proyecto, resolucion_ancho, resolucion_alto, costo_licencia_usd, id_software, estado) VALUES
('Ilustracion Cyberpunk Neo-Tokyo', 3840, 2160, 219.00, 1, 'finalizado'),
('Retrato Realista Digital', 3000, 4000, 239.99, 2, 'finalizado'),
('Concept Art Criatura Fantastica', 4096, 2160, 12.99, 3, 'en_proceso'),
('Comic Manga Pagina 1', 2480, 3508, 219.00, 1, 'en_proceso'),
('Pintura Digital Paisaje de Montana', 3840, 2160, 0.00, 4, 'borrador'),
('Diseño de Personaje Mecha', 3000, 3000, 239.99, 2, 'finalizado'),
('Sketch Rapido de Rostro', 1920, 1080, 12.99, 3, 'borrador'),
('Texturas y Materiales 3D PBR', 4096, 4096, 0.00, 4, 'en_proceso');
