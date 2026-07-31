# Módulo de Datos - Autos Hiperdeportivos (Ejercicio 036)

Solución desarrollada en **MySQL** aplicando filtrado avanzado con la cláusula `WHERE`, validaciones numéricas `CHECK` y reportes analíticos para el sector automotriz de alta gama.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos `db_hiperdeportivos` y la tabla `autos_hiperdeportivos` con restricciones de integridad.
- **dml/inserts.sql**: Inserción de 8 registros de hiperdeportivos reales con especificaciones extremas de velocidad, precios millonarios y estados.
- **dql/consultas.sql**: 5 consultas analíticas haciendo uso exhaustivo de la cláusula `WHERE`, operadores lógicos, funciones de agregación (`AVG`, `MAX`, `COUNT`) y límites.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`