# Ejercicio 027 - Consultas de Informes para Videojuego de Acción y Aventura

## Descripción
Módulo relacional en MySQL optimizado para la generación de **consultas de informes analíticos y gerenciales**, estructurando información sobre regiones de mapa, niveles de peligro, misiones de aventura, recompensas de oro y puntos de experiencia.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves primarias, foráneas, restricciones CHECK para niveles de peligro, experiencia y oro, y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para el entorno del videojuego de acción y aventura.
3. dql/consultas.sql - Consultas de informes profesionales orientadas al análisis de negocio mediante uniones (JOIN), funciones de agregación y filtros avanzados.
## Decisiones Técnicas
- Se diseñó un esquema relacional 1:N entre las regiones del mapa y las misiones para permitir la agregación precisa de métricas de recompensa y dificultad.
- Se implementaron consultas estructuradas con alias claros orientadas a la visualización rápida de indicadores de rendimiento del juego.
