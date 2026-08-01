# Módulo de Datos - Arquitectura 3D (Ejercicio 023 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la práctica profesional de modificación y actualización de registros mediante la instrucción `UPDATE`, acompañada de restricciones de integridad y consultas analíticas para una oficina de diseño arquitectónico 3D.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `proyectos_arquitectura` con validaciones para áreas en $m^2$ y honorarios mediante `CHECK`.
- **dml/inserts.sql**: Inserción de 8 registros iniciales de proyectos arquitectónicos con diversos tipos de inmuebles, metadatos y estados.
- **dml/updates.sql**: Sentencias de actualización (`UPDATE`) especializadas para modificar estados individuales, realizar aumentos masivos de honorarios por porcentaje y actualizar criterios complejos con condiciones lógicas (`WHERE`).
- **dql/consultas.sql**: 5 consultas analíticas y de auditoría para verificar los cambios aplicados en los datos, rangos y métricas globales.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dml/updates.sql`
4. Ejecutar `dql/consultas.sql`