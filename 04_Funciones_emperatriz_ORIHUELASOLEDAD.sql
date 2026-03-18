DELIMITER //

CREATE FUNCTION fn_total_ventas_sucursal(p_id_sucursal INT) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE v_resultado DECIMAL(10,2);

    SELECT SUM(total) INTO v_resultado
    FROM ventas
    WHERE id_sucursal = p_id_sucursal;

    RETURN IFNULL(v_resultado, 0);
END //

DELIMITER ;

DELIMITER //

CREATE FUNCTION fn_deuda_por_proveedor(p_id_proveedor INT) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE v_deuda_total DECIMAL(10,2);

    SELECT SUM(monto_total) INTO v_deuda_total
    FROM pagos_proveedores
    WHERE id_proveedor = p_id_proveedor 
      AND id_estado = 1; -- El 1 es 'Pendiente' en tu tabla estados_pago

    RETURN IFNULL(v_deuda_total, 0);
END //

DELIMITER ;