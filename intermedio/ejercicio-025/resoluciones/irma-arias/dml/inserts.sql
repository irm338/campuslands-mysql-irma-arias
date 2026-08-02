USE laboratorio_quimico_db;

INSERT INTO tipos_compuesto (nombre_tipo, descripcion) VALUES
('Acido Mineral', 'Compuestos acidos de origen inorganico altamente reactivos'),
('Solvente Organico', 'Liquidos carbonados empleados para disolucion y extraccion'),
('Sal Inorganica', 'Compuestos ionicos cristalinos estables'),
('Oxido Metalico', 'Compuestos binarios de metal y oxigeno');

INSERT INTO formulas_quimicas (nombre_formula, codigo_cas, pureza_porcentaje, id_tipo, estado) VALUES
('Acido Sulfurico Concentrado', '7664-93-9', 98.50, 1, 'aprobado'),
('Acetona Analitica', '67-64-1', 99.90, 2, 'sintetizado'),
('Cloruro de Sodio Puro', '7647-14-5', 99.50, 3, 'aprobado'),
('Dioxido de Titanio Nano', '13463-67-7', 97.20, 4, 'investigacion'),
('Acido Nitrico Fumante', '7697-37-2', 95.00, 1, 'aprobado'),
('Alcohol Isopropilico', '67-63-0', 99.80, 2, 'sintetizado'),
('Nitrato de Potasio Cristal', '7757-79-1', 98.00, 3, 'suspendido'),
('Oxido de Zinc Farmaceutico', '1314-13-2', 99.00, 4, 'aprobado');
