•	¿Por qué usaste LEFT JOIN para la Consulta 1 y no INNER JOIN? ¿Qué se perdería si usaras INNER JOIN?
El LEFT JOIN devuelve todos los productos de la tabla productos, tengan o no ventas asociadas, si hubiéramos usado INNER JOIN solo aparecerían los productos que tienen al menos una venta, se perderían los productos que  nunca fueron vendidos y no tienen coincidencias en la tabla ventas.
•	¿Por qué usaste RIGHT JOIN para la Consulta 2? ¿Qué tabla está a la izquierda y cuál a la derecha en tu consulta?
Porque un RIGHT JOIN devuelve todos los registros de la tabla ubicada a la derecha.
En este caso: Tabla izquierda: productos p y Tabla derecha: ventas v
Por lo tanto, se muestran todas las ventas, incluso aquellas que no tienen un producto válido en el catálogo.
•	¿Qué representan los valores NULL en cada resultado? Explicá con un ejemplo concreto de los datos qué significa que venta_id sea NULL en la Consulta 1 y que producto_id de productos sea NULL en la Consulta 2.
Los valores NULL indican que no existe una coincidencia entre las tablas. En la consulta 1 venta_id es NULL porque esos productos existen en el catálogo, pero nunca fueron vendidos.
En la consulta 2 las columnas de productos aparecen como NULL porque la venta existe, pero no se encontró ningún producto con código 999 en el catálogo.
•	¿Cuándo usarías FULL OUTER JOIN en un caso real de negocio?
Utilizaría un FULL OUTER JOIN cuando necesite realizar una auditoría completa de datos y no quiera perder ningún registro de ninguna tabla.
Ejemplos reales: Comparar catálogo de productos vs. Ventas, Comparar órdenes de compra vs. recepciones de materiales, Comparar empleados vs. registros de asistencia, Comparar clientes vs. facturación.
