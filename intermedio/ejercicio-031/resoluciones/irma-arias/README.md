# Ejercicio 031 - INNER JOIN para Torneo Esports MOBA

## Descripción
Módulo relacional en MySQL enfocado en practicar el uso avanzado de **INNER JOIN**, estructurando información sobre equipos de deportes electrónicos, regiones de origen, estados competitivos, jugadores profesionales de MOBA, roles y estadísticas de combate (asesinatos, muertes y asistencias).

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves primarias, foráneas, restricciones y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales robustos y coherentes para poblar los datos del torneo de esports.
3. dql/consultas.sql - Consultas orientadas a explotar relaciones cruzadas mediante INNER JOIN, funciones de agregación, filtros analíticos y cálculo de métricas de rendimiento (KDA).
## Decisiones Técnicas
- Se implementó una relación 1:N estricta entre los equipos de esports y los jugadores para garantizar que cada competidor pertenezca obligatoriamente a una organización registrada.
- Se diseñaron consultas con INNER JOIN optimizadas para la generación de reportes gerenciales y estadísticas competitivas del torneo.
