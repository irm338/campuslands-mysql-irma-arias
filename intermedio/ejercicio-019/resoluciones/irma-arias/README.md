# Ejercicio 019 - HAVING para Paracaidismo

## Descripción
Módulo relacional en MySQL optimizado para practicar el uso avanzado de la cláusula **HAVING** en combinación con GROUP BY y funciones de agregación, estructurando información sobre categorías de salto de paracaidismo, alturas, costos y estados operativos.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves foráneas, restricciones CHECK para alturas y costos, y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para categorías y modalidades de saltos. 
3. dql/consultas.sql - Consultas analíticas orientadas a filtrar grupos estadísticos mediante la cláusula HAVING.
## Decisiones Técnicas
- Se estructuró una relación 1:N entre categorías de salto y los registros de paracaidismo para permitir análisis detallados de costos y alturas por nivel de experiencia.
- Se implementaron filtros con HAVING para aislar métricas gerenciales específicas (como promedios de costos superiores a umbrales definidos y conteos mínimos de actividad).
