# Ejercicio 033 - GROUP BY para Inventario de Skins Shooter

## Descripción
Módulo relacional en MySQL enfocado en practicar el uso avanzado de agrupaciones mediante **GROUP BY**, estructurando información sobre categorías de armas, skins de juegos shooter, niveles de rareza, estados de desgaste, precios de mercado y estados operativos en el inventario.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves primarias, foráneas, restricciones CHECK para precios y campos ENUM para rareza y estados.
2. dml/inserts.sql - Inserción de registros relacionales robustos y coherentes que simulan un inventario real de skins de videojuegos.
3. dql/consultas.sql - Consultas orientadas a explotar operaciones de agregación con GROUP BY, funciones estadísticas (COUNT, SUM, AVG, MAX) y filtrado avanzado con HAVING.
## Decisiones Técnicas
- Se implementó una relación 1:N entre las categorías de armas y las skins individuales para permitir un análisis estructurado del valor del inventario por tipo de armamento.
- Se diseñaron consultas agrupadas para generar reportes gerenciales automáticos sobre la distribución de rarezas, estados operativos y valoración económica de los ítems.
