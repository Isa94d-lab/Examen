CREATE OR REPLACE PROCEDURE registrar_venta(
IN p_id_producto INT,
IN p_id_cliente INT,
IN p_id_vendedor INT,
IN p_fecha DATE
)
LANGUAGE plpgsql
AS $$
DECLARE
stock_actual_producto INT;
id_registrado_producto_venta INT;
cliente_existe BOOLEAN;
BEGIN
BEGIN
SELECT EXISTS (
SELECT 1 FROM Cliente WHERE Cliente.id = p_id_cliente
) INTO cliente_existe;

IF NOT cliente_existe THEN
RAISE EXCEPTION 'El cliente con ID % no existe.', p_id_cliente;
END IF;

SELECT Producto.stock INTO stock_actual_producto
FROM Producto
WHERE Producto.id = p_id_producto;

IF stock_actual_producto IS NULL THEN
RAISE EXCEPTION 'El producto con ID % no existe.', p_id_producto;
END IF;

IF stock_actual_producto < 1 THEN
RAISE EXCEPTION 'Stock insuficiente para el producto con ID %.', p_id_producto;
END IF;

INSERT INTO ProductoVenta (id_producto)
VALUES (p_id_producto)
RETURNING ProductoVenta.id INTO id_registrado_producto_venta;

INSERT INTO Venta (id_productoVenta, id_cliente, id_vendedor, fecha)
VALUES (id_registrado_producto_venta, p_id_cliente, p_id_vendedor, p_fecha);

UPDATE Producto
SET stock = stock - 1
WHERE Producto.id = p_id_producto;

COMMIT;

RAISE NOTICE 'Venta registrada exitosamente.';

EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
RAISE NOTICE 'Ocurrio un error al registrar la venta: %', SQLERRM;
END;
END;
$$;
