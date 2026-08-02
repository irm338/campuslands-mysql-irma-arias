# Ejercicio 030 - Carga de Datos para Equipo de Streaming

## Descripción
Módulo relacional en MySQL enfocado en practicar las mejores prácticas de **carga de datos y gestión de inventario**, estructurando información sobre categorías de hardware, especificaciones de dispositivos de streaming, precios, resoluciones, tasas de bits (itrate) y estados operativos.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves primarias, foráneas, restricciones CHECK para precios y tasas de bits, y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales robustos y coherentes para poblar el sistema de equipamiento de streaming.
3. dql/consultas.sql - Consultas orientadas a verificar la integridad de la carga de datos mediante uniones (JOIN), agregaciones estadísticas y filtros analíticos.
## Decisiones Técnicas
- Se estructuró una relación 1:N entre las categorías de equipamiento y los dispositivos específicos para garantizar una carga de datos normalizada y evitar redundancias de texto.
- Se implementaron restricciones CHECK para validar que los valores de precios sean positivos y que las tasas de bits se mantengan dentro de rangos operativos realistas.
