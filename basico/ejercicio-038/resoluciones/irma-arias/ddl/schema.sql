-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_futbol_sala;
CREATE DATABASE db_futbol_sala;
USE db_futbol_sala;

-- Tabla principal: Estadísticas de Jugadores de Fútbol Sala
CREATE TABLE jugadores_sala (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(50) NOT NULL,
    posicion VARCHAR(30) NOT NULL, -- Ej: Cierre, Ala, Pívot, Portero
    goles_anotados INT NOT NULL DEFAULT 0,
    asistencias INT NOT NULL DEFAULT 0,
    partidos_jugados INT NOT NULL DEFAULT 0,
    estado ENUM('activo', 'lesionado', 'suspendido') DEFAULT 'activo',
    fecha_registro DATE NOT NULL,
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_goles_positivos CHECK (goles_anotados >= 0),
    CONSTRAINT chk_asistencias_positivas CHECK (asistencias >= 0),
    CONSTRAINT chk_partidos_positivos CHECK (partidos_jugados >= 0)
);