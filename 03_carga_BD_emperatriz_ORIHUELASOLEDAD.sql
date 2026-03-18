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

INSERT INTO productos (codigo, descripcion, precio_venta, id_marca, id_talle, id_temporada, id_categoria, id_proveedor, id_estado_fisico, stock) VALUES
('VAQ-100', 'Jeans rectos clásicos', 750.00, 1, 3, 1, 2, 1, 2, 5),
('VAQ-101', 'Vaquero nevado vintage', 890.00, 2, 2, 3, 2, 4, 3, 3),
('VAQ-102', 'Jeans tiro bajo celeste', 690.00, 4, 1, 3, 2, 2, 2, 4),
('VAQ-103', 'Pantalón denim gris', 950.00, 5, 4, 2, 2, 6, 1, 3),
('VAQ-104', 'Jeans pata de elefante', 850.00, 3, 2, 1, 2, 8, 2, 2),
('VAQ-105', 'Vaquero negro gastado', 780.00, 1, 3, 1, 2, 9, 2, 6),
('VAQ-106', 'Mom Jean azul oscuro', 820.00, 4, 2, 2, 2, 3, 2, 4);

INSERT INTO productos (codigo, descripcion, precio_venta, id_marca, id_talle, id_temporada, id_categoria, id_proveedor, id_estado_fisico, stock) VALUES
('VES-300', 'Vestido corto de fibrana', 450.00, 8, 2, 3, 3, 3, 2, 10),
('VES-301', 'Vestido de verano a rayas', 550.00, 1, 3, 3, 3, 5, 2, 7),
('VES-302', 'Vestido corto negro básico', 650.00, 3, 1, 1, 3, 1, 1, 4),
('VES-303', 'Vestido de flores primaveral', 490.00, 6, 2, 2, 3, 7, 2, 5),
('VES-304', 'Vestido corto con volados', 520.00, 2, 4, 3, 3, 10, 2, 3),
('VES-305', 'Vestido sport de algodón', 450.00, 5, 2, 3, 3, 4, 2, 8),
('VES-306', 'Vestido corto seda fría', 580.00, 3, 3, 1, 3, 2, 2, 4);

INSERT INTO productos (codigo, descripcion, precio_venta, id_marca, id_talle, id_temporada, id_categoria, id_proveedor, id_estado_fisico, stock) VALUES
('CAM-400', 'Camisa blanca de oficina', 550.00, 6, 3, 1, 1, 2, 2, 6),
('CAM-401', 'Camisa de jean clarito', 580.00, 4, 2, 2, 1, 6, 2, 4),
('CAM-402', 'Camisa rayada celeste', 490.00, 5, 4, 1, 1, 8, 2, 5),
('CAM-403', 'Blusa de gasa con lazo', 420.00, 3, 2, 3, 1, 9, 2, 7),
('CAM-404', 'Camisa de lino rústico', 560.00, 10, 3, 3, 1, 1, 2, 3),
('CAM-405', 'Blusa estampada flores', 350.00, 8, 1, 3, 1, 3, 3, 9);


INSERT INTO productos (codigo, descripcion, precio_venta, id_marca, id_talle, id_temporada, id_categoria, id_proveedor, id_estado_fisico, stock) VALUES
('ACC-500', 'Cinturón eco-cuero negro', 250.00, 7, 7, 1, 5, 5, 1, 12),
('ACC-501', 'Pañuelo seda vintage', 180.00, 3, 7, 2, 5, 7, 2, 15),
('ACC-502', 'Cartera mano marrón', 450.00, 9, 7, 1, 5, 10, 3, 2),
('ACC-503', 'Gorro lana invierno', 290.00, 1, 7, 1, 5, 4, 1, 6);


INSERT INTO ventas (fecha, id_cliente, total, id_metodo_pago, id_sucursal) VALUES
('2026-01-05 10:00:00', 1, 1200.00, 1, 1),
('2026-01-12 15:30:00', 4, 850.00, 3, 1),
('2026-01-18 11:20:00', 6, 2500.00, 4, 2),
('2026-01-22 17:45:00', 2, 450.00, 1, 1),
('2026-01-29 19:00:00', 9, 1100.00, 5, 2);

INSERT INTO ventas (fecha, id_cliente, total, id_metodo_pago, id_sucursal) VALUES
('2026-02-02 10:15:00', 3, 1500.00, 2, 1),
('2026-02-10 14:00:00', 5, 950.00, 4, 1),
('2026-02-14 18:30:00', 7, 2200.00, 3, 2),
('2026-02-20 11:45:00', 8, 750.00, 1, 1),
('2026-02-26 16:00:00', 10, 1800.00, 5, 2);

INSERT INTO ventas (fecha, id_cliente, total, id_metodo_pago, id_sucursal) VALUES
('2026-03-01 09:30:00', 1, 450.00, 1, 1),
('2026-03-05 12:00:00', 4, 1350.00, 2, 1),
('2026-03-10 15:20:00', 6, 690.00, 4, 2),
('2026-03-12 17:00:00', 2, 550.00, 3, 1),
('2026-03-15 11:00:00', 9, 2100.00, 1, 2);

INSERT INTO detalle_ventas (id_venta, id_producto, cantidad, precio_unitario) VALUES
(11, 11, 1, 750.00), (11, 17, 1, 450.00),
(12, 21, 1, 850.00),
(13, 18, 1, 650.00), (13, 30, 1, 600.00), (13, 22, 2, 1250.00),
(14, 17, 1, 450.00),
(15, 20, 1, 520.00), (15, 24, 1, 580.00),
(16, 12, 1, 890.00), (16, 25, 1, 610.00),
(17, 14, 1, 950.00),
(18, 18, 2, 1300.00), (18, 31, 2, 500.00),
(19, 15, 1, 750.00),
(20, 19, 1, 550.00), (20, 26, 1, 490.00), (20, 32, 1, 310.00),
(21, 17, 1, 450.00),
(22, 11, 1, 750.00), (22, 30, 1, 600.00),
(23, 13, 1, 690.00),
(24, 19, 1, 550.00),
(25, 21, 2, 1700.00), (25, 29, 1, 400.00);
