INSERT INTO marcas (nombre_marca) VALUES
('H&M'), 
('FOREVER21'),
('ROTUNDA'),
('ZARA'),
('STRADIBARIUS'),
('DANIEL CASSIN'),
('ALLIE'),
('INDIAN OULET'),
('LEGACY'),
('LOS CUATRO ASES');

INSERT INTO metodos_pago (nombre) VALUES ('Efectivo'), ('Débito'), ('tarjeta de Crédito'), ('Transferencia'), ('Mercado Pago');

INSERT INTO sucursales (nombre_sucursal) VALUES ('Emperatriz - Centro'), ('Emperatriz - Pocitos');

INSERT INTO temporadas (nombre_temporada) VALUES ('Invierno 2025'), ('Primavera 2025'), ('Verano 2026'), ('Otoño 2026');

INSERT INTO estado_prenda (descripcion) VALUES ('Nuevo'), ('Usado impecable'), ('Vintage');

INSERT INTO categorias (nombre_categoria) VALUES ('Blusas'), ('Pantalones'), ('Vestidos'), ('Calzado'), ('Accesorios');

INSERT INTO talles (descripcion_talle) VALUES ('XS'), ('S'), ('M'), ('L'), ('XL'), ('XXL'), ('U (Único)');

INSERT INTO proveedores (cedula, nombre, telefono, email) VALUES
('1.234.567-8', 'Lucía Méndez', '099123456', 'lucia.mendez@mail.com'),
('3.456.789-0', 'Martín Rodríguez', '098765432', 'martin.rod@mail.com'),
('4.321.098-7', 'Valentina Silva', '094112233', 'vale.silva@mail.com'),
('2.987.654-3', 'Ana Clara García', '095445566', 'anacla@mail.com'),
('5.111.222-3', 'Diego Forlán', '091000111', 'diego.f@mail.com'),
('3.999.888-7', 'Mariana Sosa', '092333444', 'mariana.sosa@mail.com'),
('4.555.666-1', 'Nicolás González', '097778899', 'nico.gonza@mail.com'),
('1.888.777-2', 'Camila Torres', '096121314', 'cami.torres@mail.com'),
('2.666.555-4', 'Sofía Martínez', '093454545', 'sofia.mtz@mail.com'),
('3.123.321-9', 'Joaquín Pereyra', '099887766', 'joaco.p@mail.com');

INSERT INTO clientes (nombre, apellido, telefono, email) VALUES
('Mariana', 'Sosa', '099222333', 'marianasosa@email.com'),
('Ricardo', 'Díaz', '098444555', 'rdiaz_86@email.com'),
('Sofía', 'Méndez', '091666777', 'sofim@email.com'),
('Esteban', 'Quito', '097888999', 'equito@email.com'),
('Valeria', 'Gómez', '094111222', 'valeg@email.com'),
('Bautista', 'López', '092333444', 'bauti_l@email.com'),
('Camila', 'Torres', '095555666', 'camitorres@email.com'),
('Ignacio', 'Paz', '093777888', 'ipaz@email.com'),
('Florencia', 'Ruiz', '096999000', 'flor.ruiz@email.com'),
('Andrés', 'Silva', '099112233', 'asilva@email.com');

INSERT INTO productos (codigo, descripcion, precio_venta, id_marca, id_talle, id_temporada, id_categoria, id_proveedor, id_estado_fisico, stock) VALUES
('SAC-001', 'Saco de paño negro', 3200.00, 1, 3, 1, 3, 1, 1, 1),
('BLU-020', 'Blusa de seda blanca', 1500.00, 2, 2, 2, 2, 2, 1, 2),
('PAN-045', 'Pantalón de vestir azul', 1800.00, 1, 4, 1, 1, 1, 1, 1),
('VES-009', 'Vestido corto floreado', 1200.00, 3, 2, 2, 4, 2, 2, 1),
('CHQ-088', 'Chaqueta de cuero sintético', 2800.00, 2, 3, 1, 3, 3, 1, 1),
('REM-202', 'Remera básica gris', 400.00, 1, 2, 2, 2, 1, 1, 5),
('FAL-031', 'Falda midi plisada', 1100.00, 3, 2, 2, 1, 2, 1, 1),
('CAR-015', 'Cardigan tejido beige', 1900.00, 1, 3, 1, 3, 3, 2, 1),
('SHO-012', 'Short de jean tiro alto', 950.00, 2, 2, 2, 1, 1, 1, 2),
('BUF-005', 'Bufanda de lana artesanal', 600.00, 3, 1, 1, 5, 2, 1, 3);

INSERT INTO ventas (fecha, id_cliente, total, id_metodo_pago, id_sucursal) VALUES
('2026-03-01 10:30:00', 1, 3200.00, 1, 1),
('2026-03-01 14:15:00', 2, 1500.00, 2, 1),
('2026-03-02 11:00:00', 3, 1800.00, 1, 1),
('2026-03-02 16:45:00', 4, 1200.00, 3, 1),
('2026-03-03 09:20:00', 5, 2800.00, 1, 1),
('2026-03-03 12:00:00', 6, 400.00, 2, 1),
('2026-03-04 15:30:00', 7, 1100.00, 1, 1),
('2026-03-04 18:10:00', 8, 1900.00, 3, 1),
('2026-03-05 10:00:00', 9, 950.00, 1, 1),
('2026-03-05 13:45:00', 10, 600.00, 2, 1);

INSERT INTO detalle_ventas (id_venta, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 1, 3200.00),
(2, 2, 1, 1500.00), 
(3, 3, 1, 1800.00), 
(4, 4, 1, 1200.00), 
(5, 5, 1, 2800.00),
(6, 6, 1, 400.00),  
(7, 7, 1, 1100.00), 
(8, 8, 1, 1900.00),
(9, 9, 1, 950.00),
(10, 10, 1, 600.00);

INSERT INTO estados_pago (descripcion) VALUES 
('Pendiente'), 
('Realizado');

INSERT INTO pagos_proveedores (id_proveedor, monto_total, fecha_pago, id_estado) VALUES
(1, 1500.00, '2026-03-10', 2),
(2, 800.00, '2026-03-11', 2),
(3, 1200.00, '2026-03-12', 1),
(4, 2500.00, '2026-03-13', 2),
(5, 450.00, '2026-03-14', 1), 
(6, 1900.00, '2026-03-15', 2),
(7, 1100.00, '2026-03-16', 2),
(8, 650.00, '2026-03-17', 1),
(9, 2100.00, '2026-03-17', 2),
(10, 300.00, '2026-03-17', 2);

INSERT INTO promociones (nombre_promo, porcentaje_descuento, fecha_inicio, fecha_fin) 
VALUES ('Verano', 20.00, '2026-03-01', '2026-03-31');
