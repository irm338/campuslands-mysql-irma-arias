# Ejercicio 021 - WHERE para Dibujo Digital

## Descripción
Módulo de datos diseñado para la gestión y filtrado analítico de proyectos de dibujo digital, aplicando de forma rigurosa la cláusula `WHERE`, operadores relacionales y lógicos, restricciones de integridad y reportes con alias claros.

## Orden de Ejecución
1. `ddl/schema.sql`
2. `dml/inserts.sql`
3. `dql/consultas.sql`

## Decisiones Técnicas
* Se estructuró la tabla `proyectos_dibujo` utilizando tipos precisos (`DECIMAL` para el tiempo en horas, `INT` para las capas).
* Se diseñaron consultas con múltiples condiciones en `WHERE` (`AND`, `IN`, `!=`) para evaluar rendimientos, tiempos y complejidad de las ilustraciones.