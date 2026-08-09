1. ¿Cuántas filas devuelve cada consulta y por qué son distintas? 
Explicá con ejemplos concretos de los datos qué filas se eliminaron con UNION.
Cada tabla tiene 7 filas con valores, en total son 14 filas pero el UNION elimina duplicados por lo tanto muestra
11 filas con valores.Los valores eliminados son: 
103Monitor 4K 27"Computación
104Teclado MecánicoAccesorios
106SSD Externo 1TBAlmacenamiento

2. ¿Por qué UNION ALL es más eficiente que UNION?
   UNION ALL es más eficiente porque simplemente concatena los resultados.
   ¿Qué operación adicional realiza UNION internamente que consume más recursos?
   union consume mas recursos porque combina los resultados, compara las filas y elimina los duplicados. 
3. ¿En qué casos de negocio usarías cada uno? Dá al menos dos ejemplos reales distintos a los del ejercicio.
   UNION se utilizaria por ejemplo para bases unicas de clientes o para definicion de catalogos de productos
   UNION ALL puede usarse para consolidar ventas o para consolidar ordenes de compra.
5. ¿Qué pasa si las columnas de ambas consultas no coinciden en número o tipo? ¿Qué error genera SQL?
   si no coinciden se genera un error de tipo incompatible cuando por ejemplo compara int con varchar.
