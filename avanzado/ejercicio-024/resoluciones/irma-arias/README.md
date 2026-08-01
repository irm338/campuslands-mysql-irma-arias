# Módulo de Datos - Taller de Soldadura (Ejercicio 024 - Avanzado)

Solución desarrollada en **MySQL** enfocada en la práctica profesional de eliminación controlada de registros mediante la instrucción `DELETE`, respaldada por restricciones de integridad y consultas de auditoría para un módulo de soldadura industrial.

## Estructura de la Solución
- **ddl/schema.sql**: Creación de la base de datos y la tabla `inspecciones_soldadura` con validaciones estrictas para espesores en milímetros y longitudes de cordón mediante `CHECK`.
- **dml/inserts.sql**: Inserción inicial de 8 registros de inspección con diversos procesos (SMAW, GMAW, GTAW, FCAW), medidas técnicas y estados.
- **dml/deletes.sql**: Sentencias de eliminación controlada (`DELETE`) enfocadas en remover registros específicos por código, eliminaciones masivas por estado crítico y filtros compuestos.
- **dql/consultas.sql**: 5 consultas analíticas para auditar la integridad de los datos remanentes, calcular métricas globales y verificar rangos de producción.

## Instrucciones de Ejecución
Ejecuta los scripts en tu gestor MySQL en orden estricto:
1. Ejecutar `ddl/schema.sql`
2. Ejecutar `dml/inserts.sql`
3. Ejecutar `dml/deletes.sql`
4. Ejecutar `dql/consultas.sql`