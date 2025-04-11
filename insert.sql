-- Insertar proveedores
INSERT INTO Proveedor (nombre, direccion) VALUES
('Juanitosa', 'Calle Ficticia 123'),
('BabyScore', 'Avenida Central 45'),
('Mando', 'Plaza Mayor 67'),
('Dijimond', 'Calle Real 89'),
('EstemanComputers', 'Avenida Libertad 12');

-- Insertar categorías de productos
INSERT INTO CategoriaProducto (nombre) VALUES
('Electrónica'),
('Muebles'),
('Ropa'),
('Alimentos'),
('Juguetes');

-- Insertar vendedores
INSERT INTO Vendedor (nombre, apellido) VALUES
('Carlos', 'Gómez'),
('Ana', 'Martínez'),
('Luis', 'Pérez'),
('María', 'Rodríguez'),
('Javier', 'Hernández');

-- Insertar clientes
INSERT INTO Cliente (nombre, apellido, correo, telefono) VALUES
('Juan', 'Pérez', 'juan.perez@email.com', '123456789'),
('Maria', 'González', 'maria.gonzalez@email.com', '987654321'),
('Carlos', 'Sánchez', 'carlos.sanchez@email.com', '456123789'),
('Ana', 'López', 'ana.lopez@email.com', '321654987'),
('Luis', 'Martín', 'luis.martin@email.com', '789123456'),
('Marta', 'Fernández', 'marta.fernandez@email.com', '654987321'),
('Pedro', 'Rodríguez', 'pedro.rodriguez@email.com', '321789654'),
('Laura', 'García', 'laura.garcia@email.com', '963852741'),
('José', 'Jiménez', 'jose.jimenez@email.com', '741258963'),
('David', 'Hernández', 'david.hernandez@email.com', '852369741'),
('Sofia', 'Vázquez', 'sofia.vazquez@email.com', '258963741'),
('Raúl', 'Moreno', 'raul.moreno@email.com', '369741258'),
('Elena', 'Ruiz', 'elena.ruiz@email.com', '147258369'),
('Felipe', 'Torres', 'felipe.torres@email.com', '753159846'),
('Sara', 'Martínez', 'sara.martinez@email.com', '951753684');



-- Insertar ProveedorProductos
INSERT INTO ProveedorProductos (id_proveedor) VALUES
(1),
(2),
(3),
(4),
(5);



-- Insertar productos
INSERT INTO Producto (id_proveedorProductos, nombre, stock, precio_unidad) VALUES
(1, 'Laptop', 30, 1000.00),
(1, 'Smartphone', 50, 500.00),
(1, 'Tablet', 20, 300.00),
(2, 'Sofa', 15, 200.00),
(2, 'Chair', 40, 50.00),
(2, 'Table', 25, 120.00),
(3, 'T-shirt', 100, 15.00),
(3, 'Jeans', 80, 30.00),
(3, 'Jacket', 60, 50.00),
(4, 'Chocolate', 200, 5.00),
(4, 'Cookies', 150, 2.50),
(4, 'Juice', 100, 3.00),
(5, 'Toy Car', 120, 10.00),
(5, 'Doll', 100, 15.00),
(5, 'Lego Set', 50, 40.00);

-- Insertar ProductoVenta
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


-- Insertar Ventas
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
