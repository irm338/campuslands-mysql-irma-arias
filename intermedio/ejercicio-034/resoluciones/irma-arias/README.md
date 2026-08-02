# Ejercicio 034 - HAVING para Garaje de Motos

## Descripción
Módulo relacional en MySQL enfocado en practicar el uso avanzado de la cláusula **HAVING** para filtrar resultados agrupados, estructurando información sobre marcas de motocicletas, países de origen, modelos, cilindradas (cc), precios comerciales y estados operativos en el garaje.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos, diseño relacional con llaves primarias, foráneas, restricciones CHECK para cilindrada y precios, y campos ENUM.
2. dml/inserts.sql - Inserción de registros relacionales robustos y coherentes que simulan el inventario de un garaje de motocicletas de alta gama.
3. dql/consultas.sql - Consultas orientadas a explotar la cláusula HAVING para aplicar filtros sobre funciones de agregación como COUNT, SUM, AVG y MAX.
## Decisiones Técnicas
- Se estructuró una relación 1:N entre las marcas de motocicletas y los modelos específicos para permitir análisis comparativos precisos del inventario.
- Se diseñaron consultas que diferencian explícitamente el uso de WHERE (para filtrar filas individuales antes de agrupar) y HAVING (para filtrar grupos estadísticos ya calculados).
