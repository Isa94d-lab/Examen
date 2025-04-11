--1. Listar los productos con stock menor a 5 unidades.

SELECT nombre, stock, precio_unidad
FROM Producto
WHERE Producto.stock < 5;

--2. Calcular ventas totales de un mes específico.

SELECT 
    COUNT(Producto.precio_unidad) AS ventas_totales
FROM Venta
INNER JOIN ProductoVenta ON Venta.id_productoVenta = ProductoVenta.id
INNER JOIN Producto ON ProductoVenta.id_producto = Producto.id
WHERE Venta.fecha BETWEEN '2025-02-01' AND '2025-02-28';


--3. Obtener el cliente con más compras realizadas.

SELECT Cliente.nombre, Cliente.apellido, Cliente.correo, COUNT(Venta.id) AS total_compras
FROM Venta
INNER JOIN Cliente ON Venta.id_cliente = Cliente.id
GROUP BY Cliente.id, Cliente.nombre, Cliente.apellido, Cliente.correo
ORDER BY total_compras DESC
LIMIT 1;


--4. Listar los productos más vendidos.

SELECT id, nombre, precio_unidad
FROM Producto 
INNER JOIN ProductoVenta ON Producto.id = ProductoVenta.id_producto
INNER JOIN Venta ON PorductoVenta.id = Venta.id_productoVenta  
WHERE 



--5. Consultar ventas realizadas en un rango de fechas.


SELECT Venta.id, Cliente.nombre, Cliente.apellido Producto.nombre, Venta.fecha, Venta.id_vendedor
FROM 
    Venta
JOIN 
    ProductoVenta ON Venta.id_productoVenta = ProductoVenta.id
JOIN 
    Producto ON ProductoVenta.id_producto = Producto.id
JOIN 
    Cliente ON Venta.id_cliente = Cliente.id
WHERE 
    Venta.fecha BETWEEN '2024-12-01' AND '2025-04-01'
ORDER BY 
    Venta.fecha DESC;


--6. Identificar clientes que no han comprado en los últimos 6 meses.



SELECT 
    Cliente.id AS cliente_id,
    Cliente.nombre AS cliente_nombre,
    Cliente.apellido AS cliente_apellido
FROM 
    Cliente
LEFT JOIN 
    Venta ON Cliente.id = Venta.id_cliente
WHERE 
    Venta.fecha IS NULL OR Venta.fecha < CURRENT_DATE - INTERVAL '6 months'
GROUP BY 
    Cliente.id, Cliente.nombre, Cliente.apellido;
