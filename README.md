1. ¿Por qué es mala práctica usar SELECT * en producción?
SELEC* se considera una mala practica por razones de rendimiento
ya que devuelve todas las columnas de la tabla, incluso aquellas que no son necesarias para el análisis o la aplicación
y esto provoca:
Mayor consumo de ancho de banda entre la base de datos y la aplicación.
Más uso de memoria y procesamiento.
Consultas más lentas cuando las tablas tienen muchas columnas o contienen datos pesados (por ejemplo, imágenes o documentos).
en cuanto a Mantenibilidad: en casos donde la estructura de la tabla cambia (por ejemplo, se agrega una columna nueva), una
consulta con SELECT * devuelve automáticamente datos adicionales. Esto puede: Romper reportes o aplicaciones que esperan un
conjunto fijo de columnas o generar confusión al interpretar los resultados.
y referido a seguridad Puede exponer información sensible sin necesidad, como Contraseñas cifradas o Datos personales.
2. ¿Por qué son importantes los alias para un stakeholder no técnico?
Los alias permiten reemplazar nombres técnicos de columnas por nombres claros y comprensibles para usuarios del negocio.
Un stakeholder de finanzas probablemente no conozca el significado de: "total_amount"
Pero entenderá inmediatamente "Monto Total de Venta", esta segunda forma de nombrar la columna
es mucho más intuitiva porque no requiere conocer términos técnicos ni convenciones de programación.
El beneficio es que los alias mejoran la comunicación entre el área técnica y las áreas de negocio, facilitando la interpretación
de reportes, dashboards y análisis sin necesidad de conocimientos de bases de datos.
