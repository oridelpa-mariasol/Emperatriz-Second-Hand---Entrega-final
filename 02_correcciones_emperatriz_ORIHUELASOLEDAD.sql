ALTER TABLE detalle_ventas
ADD COLUMN cantidad INT DEFAULT 1,
ADD COLUMN precio_unitario DECIMAL(10,2) NOT NULL;

ALTER TABLE ventas
ADD COLUMN id_sucursal INT,
ADD FOREIGN KEY (id_sucursal) REFERENCES sucursales(id_sucursal);

ALTER TABLE productos
ADD COLUMN stock INT DEFAULT 1;

ALTER TABLE proveedores
ADD CONSTRAINT unique_cedula
UNIQUE (cedula);

ALTER TABLE productos 
ADD COLUMN id_promocion INT NULL;

ALTER TABLE productos 
ADD CONSTRAINT fk_producto_promocion
FOREIGN KEY (id_promocion) REFERENCES promociones(id_promocion)
ON DELETE SET NULL;