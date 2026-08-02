# Ejercicio 015 - Carga de Datos para Biblioteca Gamer

## Descripción
Módulo relacional en MySQL optimizado para la **carga de datos** estructurados (DML) orientada a una biblioteca gamer, permitiendo la gestión eficiente de plataformas, inventario de títulos, control de horas de juego y estados de avance.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves foráneas, restricciones CHECK para precios y horas, y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales coherentes y robustos para plataformas y videojuegos.
3. dql/consultas.sql - Consultas analíticas orientadas a la extracción de reportes gerenciales mediante JOIN, funciones de agregación y filtros avanzados.
## Decisiones Técnicas
- Se estructuró una relación 1:N utilizando FOREIGN KEY con eliminación en cascada para asociar cada videojuego con su respectiva plataforma de hardware.
- Se diseñaron cargas de datos equilibradas para validar correctamente métricas de inversión y tiempos de juego.
