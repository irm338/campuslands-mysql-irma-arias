# Ejercicio 026 - CHECK para Videojuego RPG

## Descripción
Módulo relacional en MySQL optimizado para practicar la implementación y validación de restricciones de control (**CHECK**), estructurando información sobre clases de personajes, estadísticas de nivel, puntos de vida, cantidades de oro y estados operativos en un videojuego RPG.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves primarias, foráneas, restricciones CHECK para rangos de nivel, vida y oro, y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para clases y avatares de jugadores.
3. dql/consultas.sql - Consultas analíticas orientadas al reporte gerencial y de balance de juego mediante uniones (JOIN) y funciones estadísticas.
## Decisiones Técnicas
- Se implementaron restricciones CHECK avanzadas para asegurar que los niveles de personaje permanezcan dentro del rango de 1 a 100 y que los puntos de vida se mantengan en umbrales lógicos (100 a 9999).
- Se estructuró una relación 1:N entre las clases de personaje y los registros de avatares mediante claves foráneas con eliminación en cascada.
