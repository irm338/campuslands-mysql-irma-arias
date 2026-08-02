# Ejercicio 018 - GROUP BY para Viajes y Turismo

## Descripción
Módulo relacional en MySQL optimizado para practicar el uso avanzado de la cláusula **GROUP BY** y funciones de agregación, estructurando información sobre paquetes turísticos, continentes, costos, duraciones y calificaciones de servicio.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves foráneas, restricciones CHECK para precios y calificaciones, y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes para continentes y ofertas de viajes.
3. dql/consultas.sql - Consultas analíticas orientadas al agrupamiento de datos con GROUP BY, filtros HAVING y funciones estadísticas.
## Decisiones Técnicas
- Se estructuró una relación 1:N entre continentes y paquetes turísticos para permitir agrupaciones analíticas precisas por región geográfica.
- Se implementaron funciones estadísticas de agregación con alias descriptivos para facilitar la lectura de indicadores de negocio gerenciales.
