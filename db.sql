CREATE DATABASE TeachZone;

USE TeachZone;


CREATE TABLE IF NOT EXISTS Proveedor (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20),
    direccion VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS CategoriaProducto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20)
);


CREATE TABLE IF NOT EXISTS Vendedor (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20),
    apellido VARCHAR(20)
);


CREATE TABLE IF NOT EXISTS Cliente (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20),
    apellido VARCHAR(20),
    correo VARCHAR(20),
    telefono VARCHAR(20)
);


CREATE TABLE IF NOT EXISTS ProveedorProductos (
    id SERIAL PRIMARY KEY,
    id_proveedor INTEGER,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id)
);


CREATE TABLE IF NOT EXISTS Producto (
    id SERIAL PRIMARY KEY,
    id_proveedorProductos INTEGER,
    nombre VARCHAR(20),
    stock INT,
    precio_unidad DECIMAL,
    FOREIGN KEY (id_proveedorProductos) REFERENCES ProveedorProductos(id)
);


CREATE TABLE IF NOT EXISTS ProductoVenta (
    id SERIAL PRIMARY KEY,
    id_producto INTEGER,
    FOREIGN KEY (id_producto) REFERENCES Producto(id)
);

CREATE TABLE IF NOT EXISTS Venta (
    id SERIAL PRIMARY KEY,
    id_productoVenta INTEGER,
    id_cliente INTEGER,
    id_vendedor INTEGER,
    fecha DATE,
    FOREIGN KEY (id_productoVenta) REFERENCES ProductoVenta(id),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id),
    FOREIGN KEY (id_vendedor) REFERENCES Vendedor(id)
);
