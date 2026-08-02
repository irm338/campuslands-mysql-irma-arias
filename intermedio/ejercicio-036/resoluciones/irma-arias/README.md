# Ejercicio 036 - Normalización 1FN para Autos Hiperdeportivos

## Descripción
Módulo relacional en MySQL enfocado en aplicar rigurosamente los principios de la **Primera Forma Normal (1FN)**, estructurando información atómica sobre fabricantes de automóviles hiperdeportivos, países de origen, modelos, potencias en caballos de fuerza (hp), velocidades máximas, precios de mercado y componentes técnicos desglosados.

## Orden de Ejecución de Scripts
1. ddl/schema.sql - Creación de la base de datos y diseño relacional cumpliendo estrictamente con la 1FN (atributos atómicos, ausencia de grupos repetitivos, llaves primarias, restricciones CHECK y tipos enumerados).
2. dml/inserts.sql - Inserción de registros relacionales normalizados, robustos y coherentes que simulan el mercado de hiperdeportivos de élite.
3. dql/consultas.sql - Consultas orientadas a explotar la atomicidad de los datos mediante uniones relacionales, funciones de agregación y reportes de rendimiento.
## Decisiones Técnicas
- Se separaron las especificaciones técnicas en una tabla satélite independiente (especificaciones_tecnicas_1fn) para garantizar que cada celda contenga un único valor atómico, cumpliendo formalmente con la 1FN.
- Se implementaron restricciones CHECK para validar dominios lógicos en potencias, velocidades y precios comerciales.
