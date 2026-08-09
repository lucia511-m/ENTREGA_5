--m5_consultas_joins.sql 
-- Consulta 1 (INNER JOIN) — Vista base del proyecto
SELECT
v.fecha_venta,
c.Nombre_Cliente,
c.Ciudad,
p.nombre_producto,
cat.Nombre_Categoria AS categoria,
v.cantidad,
v.precio_unitario,
(v.cantidad * v.precio_unitario) AS total_venta
FROM Ventas v
INNER JOIN Clientes c
ON v.Id_Cliente = c.Id_Cliente
INNER JOIN Productos p
ON v.Id_Producto = p.Id_Producto
INNER JOIN Categorias cat
ON p.Id_Categoria = cat.Id_Categoria
ORDER BY v.fecha_venta;


-- Consulta 2 — Clientes sin ventas (LEFT JOIN)
SELECT
c.Nombre_Cliente,
c.Email_Cliente,
c.Fecha_registro
FROM Clientes c
LEFT JOIN Ventas v
ON c.Id_Cliente = v.Id_Cliente
WHERE v.Id_Cliente IS NULL;

-- consulta 3 - productos sin venta (LEFT JOIN)
SELECT
p.nombre_producto,
c.Nombre_Categoria AS categoria,
p.precio
FROM Productos p
LEFT JOIN Ventas v
ON p.Id_Producto = v.Id_Producto
INNER JOIN Categorias c
ON p.Id_Categoria = c.Id_Categoria
WHERE v.Id_Producto IS NULL;

-- Consulta 4 — Consolidado por canal (UNION ALL)
SELECT
canal,
COUNT(*) AS cantidad_ventas,
SUM(total_venta) AS total_facturado
FROM
(
SELECT
Id_Venta,
cantidad * precio_unitario AS total_venta,
'Online' AS canal
FROM Ventas
WHERE Id_Venta <= 5
UNION ALL
SELECT
Id_Venta,
cantidad * precio_unitario AS total_venta,
'Presencial' AS canal
FROM Ventas
WHERE Id_Venta > 5
) t
GROUP BY canal
ORDER BY canal;
