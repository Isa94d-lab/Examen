CREATE OR REPLACE PROCEDURE registrar_venta(
    IN p_id_cliente INT,
    IN p_id_producto INT,
    IN p_id_vendedor INT,
    IN p_cantidad INT
)

LANGUAGE plpgsql
AS $$
DECLARE
    v_stock INT;
    v_productoVenta_id INT;
BEGIN

    IF NOT EXISTS (SELECT 1 FROM Cliente WHERE id = p_id_cliente) THEN
        RAISE EXCEPTION 'Cliente no existe';
    END IF;


    SELECT stock INTO v_stock FROM Producto WHERE id = p_id_producto;
    IF v_stock IS NULL THEN
        RAISE EXCEPTION 'Producto no existe';
    ELSIF v_stock < p_cantidad THEN
        RAISE EXCEPTION 'Stock insuficiente';
    END IF;


    INSERT INTO ProductoVenta(id_producto) VALUES (p_id_producto)
    RETURNING id INTO v_productoVenta_id;


    INSERT INTO Venta(id_productoVenta, id_cliente, id_vendedor, fecha)
    VALUES (v_productoVenta_id, p_id_cliente, p_id_vendedor, CURRENT_DATE);


    UPDATE Producto SET stock = stock - p_cantidad WHERE id = p_id_producto;

EXCEPTION
    WHEN OTHERS THEN
        RAISE NOTICE 'Error en la transacciOn';
        RAISE;
END;
$$;
