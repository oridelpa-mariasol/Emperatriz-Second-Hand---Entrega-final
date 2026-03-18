CREATE VIEW vista_detalle_ventas_sucursal AS
SELECT 
    v.fecha AS 'Fecha',
    s.nombre_sucursal AS 'Sucursal',
    p.descripcion AS 'Producto',
    dv.cantidad AS 'Cant',
    dv.precio_unitario AS 'Precio Unit',
    v.total AS 'Total Venta'
FROM ventas v
JOIN sucursales s ON v.id_sucursal = s.id_sucursal
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
JOIN productos p ON dv.id_producto = p.id_producto;

CREATE VIEW vista_pagos_proveedores_resumen AS
SELECT 
    pr.nombre AS 'Proveedor',
    SUM(CASE WHEN ep.descripcion = 'Realizado' THEN pp.monto_total ELSE 0 END) AS 'Total Pagado',
    SUM(CASE WHEN ep.descripcion = 'Pendiente' THEN pp.monto_total ELSE 0 END) AS 'Total Pendiente'
FROM proveedores pr
JOIN pagos_proveedores pp ON pr.id_proveedor = pp.id_proveedor
JOIN estados_pago ep ON pp.id_estado = ep.id_estado
GROUP BY pr.nombre;

CREATE VIEW vista_articulos_promo_verano AS
SELECT 
    p.descripcion AS 'Producto',
    p.precio_venta AS 'Precio Lista',
    (p.precio_venta * 0.80) AS 'Precio con 20% OFF',
    p.stock AS 'Stock Actual',
    (p.precio_venta * 0.80 * p.stock) AS 'Ganancia Potencial Total'
FROM productos p
JOIN temporadas t ON p.id_temporada = t.id_temporada
WHERE t.nombre_temporada = 'Verano 2026';

CREATE VIEW vista_ranking_clientes AS
SELECT 
    CONCAT(c.nombre, ' ', c.apellido) AS 'Cliente',
    COUNT(v.id_venta) AS 'Cant Compras',
    SUM(v.total) AS 'Inversión Total'
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
ORDER BY SUM(v.total) DESC;

CREATE VIEW vista_productos_por_proveedor AS
SELECT 
    pr.nombre AS 'Proveedor', 
    p.codigo AS 'SKU', 
    p.descripcion AS 'Producto',
    p.precio_venta AS 'Precio',
    p.stock AS 'Stock Actual'
FROM productos p  
JOIN proveedores pr
  ON p.id_proveedor = pr.id_proveedor; 
  