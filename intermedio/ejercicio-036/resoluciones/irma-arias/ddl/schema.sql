DROP DATABASE IF EXISTS autos_hiperdeportivos_db;
CREATE DATABASE autos_hiperdeportivos_db;
USE autos_hiperdeportivos_db;

CREATE TABLE fabricantes (
    id_fabricante INT AUTO_INCREMENT PRIMARY KEY,
    nombre_fabricante VARCHAR(50) NOT NULL,
    pais_origen VARCHAR(40) NOT NULL
);

CREATE TABLE hiperdeportivos (
    id_auto INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(80) NOT NULL,
    potencia_hp INT UNSIGNED CHECK (potencia_hp BETWEEN 500 AND 3000),
    velocidad_max_kmh INT UNSIGNED CHECK (velocidad_max_kmh BETWEEN 300 AND 600),
    precio_usd DECIMAL(12,2) CHECK (precio_usd >= 0.00),
    id_fabricante INT NOT NULL,
    estado_produccion ENUM('concept', 'limitado', 'en_produccion', 'descontinuado') DEFAULT 'limitado',
    FOREIGN KEY (id_fabricante) REFERENCES fabricantes(id_fabricante) ON DELETE CASCADE
);

CREATE TABLE especificaciones_tecnicas_1fn (
    id_especificacion INT AUTO_INCREMENT PRIMARY KEY,
    id_auto INT NOT NULL,
    componente VARCHAR(50) NOT NULL,
    detalle_atomico VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_auto) REFERENCES hiperdeportivos(id_auto) ON DELETE CASCADE
);
