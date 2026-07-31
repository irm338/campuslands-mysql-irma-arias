-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_saga_scifi;
CREATE DATABASE db_saga_scifi;
USE db_saga_scifi;

-- Tabla principal: Eventos, Capítulos o Lanzamientos de la Saga de Ciencia Ficción
CREATE TABLE eventos_saga (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo_evento VARCHAR(80) NOT NULL,
    tipo_evento VARCHAR(40) NOT NULL, -- Ej: Película, Novela, Serie, Cuento
    fecha_lanzamiento DATE NOT NULL,
    anio_cronologico INT NOT NULL, -- Año dentro de la línea de tiempo de la historia
    presupuesto_millones DECIMAL(8,2) NOT NULL,
    estado ENUM('canon', 'leyendas', 'en_produccion') DEFAULT 'canon',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_anio_cronologico CHECK (anio_cronologico >= -5000 AND anio_cronologico <= 5000),
    CONSTRAINT chk_presupuesto CHECK (presupuesto_millones >= 0)
);