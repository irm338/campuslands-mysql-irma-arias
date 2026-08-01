# Módulo de Datos - Videojuego de Acción y Aventura (Ejercicio 027 - Avanzado)

Solución desarrollada en **MySQL** enfocada en el modelado profesional de entidades, restricciones de integridad robustas (`CHECK`), diseño relacional y consultas analíticas para un videojuego de acción y aventura.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `misiones_aventura` con validaciones estrictas para niveles de dificultad (1 a 50) y recompensas monetarias mediante `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros de misiones con diversas regiones, niveles de dificultad, recompensas en oro y estados operativos.
- **dql/consultas.sql**: 5 consultas analíticas enfocadas en filtrados por estado, ordenamientos descendentes, agrupamientos por región de mapa y rankings de recompensas.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dql/consultas.sql`