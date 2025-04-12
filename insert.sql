
INSERT INTO Proveedor (nombre, direccion) VALUES
('Juanitosa', 'Calle Ficticia 123'),
('BabyScore', 'Avenida Central 45'),
('Mando', 'Plaza Mayor 67'),
('Dijimond', 'Calle Real 89'),
('EstemanComputers', 'Avenida Libertad 12');




INSERT INTO CategoriaProducto (nombre) VALUES
('Computadores y portatiles'),
('Dispositivos moviles'),
('Componentes y accesorios'),
('Redes y conectividad'),
('Software y servicios');



INSERT INTO Vendedor (nombre, apellido) VALUES
('Carlos', 'Gomez'),
('Ana', 'Martinez'),
('Luis', 'Perez'),
('Maria', 'Rodriguez'),
('Javier', 'Hernandez');




INSERT INTO Cliente (nombre, apellido, correo, telefono) VALUES
('Juan', 'Perez', 'juan.perez@email.com', '3178232743'),
('Maria', 'Gonzalez', 'maria.gonzalez@email.com', '3219476421'),
('Carlos', 'Sanchez', 'carlos.sanchez@email.com', '315658765439'),
('Ana', 'Lopez', 'ana.lopez@email.com', '321654987'),
('Luis', 'Martin', 'luis.martin@email.com', '3224782999'),
('Marta', 'Fernandez', 'marta.fernandez@email.com', '3176395732'),
('Pedro', 'Rodriguez', 'pedro.rodriguez@email.com', '3229485907'),
('Laura', 'Garcia', 'laura.garcia@email.com', '3225748392'),
('Jose', 'Jimenez', 'jose.jimenez@email.com', '31185906004'),
('David', 'Hernandez', 'david.hernandez@email.com', '3148602312'),
('Sofia', 'Vazquez', 'sofia.vazquez@email.com', '3228112039'),
('Raul', 'Moreno', 'raul.moreno@email.com', '3178901231'),
('Elena', 'Ruiz', 'elena.ruiz@email.com', '3156783908'),
('Felipe', 'Torres', 'felipe.torres@email.com', '3112314654'),
('Sara', 'Martinez', 'sara.martinez@email.com', '3178394890');



INSERT INTO ProveedorProductos (id_proveedor) VALUES
(1),
(2),
(3),
(4),
(5);


INSERT INTO Producto (id_proveedorProductos, id_categoriaProducto, nombre, stock, precio_unidad) VALUES
(1, 1, 'Laptop', 30, 1000.00),
(1, 2, 'Smartphone', 50, 500.00),
(1, 1, 'Tablet', 20, 300.00),
(2, 3, 'Mouse', 100, 20.00),
(2, 3, 'Keyboard', 80, 40.00),
(2, 3, 'Monitor', 40, 150.00),
(2, 3, 'External Hard Drive', 30, 80.00),
(3, 4, 'Router', 25, 50.00),
(3, 4, 'Switch', 20, 120.00),
(3, 4, 'Access Point', 15, 70.00),
(4, 5, 'Software Antivirus', 100, 30.00),
(4, 5, 'Operating System', 50, 100.00),
(5, 3, 'USB Cable', 150, 5.00),
(5, 3, 'HDMI Cable', 120, 10.00),
(1, 1, 'Gaming Laptop', 15, 900.00);



INSERT INTO ProductoVenta (id_producto) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15);


INSERT INTO Venta (id_productoVenta, id_cliente, id_vendedor, fecha) VALUES
(1, 1, 1, '2025-02-11'),
(2, 2, 2, '2025-02-03'),
(3, 3, 3, '2024-02-10'),
(4, 4, 4, '2024-12-23'),
(5, 5, 5, '2025-01-04'),
(6, 6, 1, '2025-01-13'),
(7, 7, 2, '2024-04-23'),
(8, 8, 3, '2024-04-17'),
(9, 9, 4, '2025-04-21'),
(10, 10, 5, '2024-04-22'),
(11, 11, 1, '2024-04-06'),
(12, 12, 2, '2024-04-09'),
(13, 13, 3, '2024-04-19'),
(14, 14, 4, '2024-04-12'),
(15, 15, 5, '2024-04-11'), 
(3, 1, 2, '2025-04-10');
