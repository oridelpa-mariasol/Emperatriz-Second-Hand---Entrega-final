DELIMITER //

CREATE PROCEDURE sp_ver_precios_ordenados()
BEGIN
     SELECT * FROM productos 
    ORDER BY precio_venta DESC; 
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE sp_buscar_por_marca(IN p_nombre_marca VARCHAR(50))
BEGIN
    SELECT p.descripcion, p.precio_venta, m.nombre_marca
    FROM productos p
    JOIN marcas m ON p.id_marca = m.id_marca
    WHERE m.nombre_marca = p_nombre_marca;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER tr_actualizar_stock_venta
AFTER INSERT ON detalle_ventas
FOR EACH ROW
BEGIN
    UPDATE productos 
    SET stock = stock - NEW.cantidad
    WHERE id_producto = NEW.id_producto;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER tr_auditoria_precios
BEFORE UPDATE ON productos
FOR EACH ROW
BEGIN
       IF OLD.precio_venta <> NEW.precio_venta THEN
        INSERT INTO log_cambios_precios (id_producto, precio_viejo, precio_nuevo, usuario, fecha_cambio)
        VALUES (OLD.id_producto, OLD.precio_venta, NEW.precio_venta, USER(), NOW());
    END IF;
END //

DELIMITER ;