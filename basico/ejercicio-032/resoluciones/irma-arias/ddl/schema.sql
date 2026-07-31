-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_ranking_battle_royale;
CREATE DATABASE db_ranking_battle_royale;
USE db_ranking_battle_royale;

-- Tabla principal: Ranking de Jugadores en el Battle Royale
CREATE TABLE ranking_jugadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(50) NOT NULL,
    rango_actual VARCHAR(30) NOT NULL, -- Ej: Bronce, Plata, Oro, Diamante, Maestro
    eliminaciones INT NOT NULL,
    puntuacion_total DECIMAL(8,2) NOT NULL,
    partidas_jugadas INT NOT NULL,
    estado ENUM('activo', 'suspendido', 'inactivo') DEFAULT 'activo',
    fecha_ultima_partida DATE NOT NULL,
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_eliminaciones_no_negativas CHECK (eliminaciones >= 0),
    CONSTRAINT chk_puntuacion_positiva CHECK (puntuacion_total >= 0),
    CONSTRAINT chk_partidas_positivas CHECK (partidas_jugadas >= 0)
);