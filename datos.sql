USE pizzeria;

INSERT INTO cliente (nombre, telefono, email) VALUES
('Juan Pérez', '123456789', 'juan@example.com'),
('María García', '987654321', 'maria@example.com'),
('Carlos López', '555666777', 'carlos@example.com'),
('Ana Rodríguez', '111222333', 'ana@example.com'),
('Pedro Martínez', '444555666', 'pedro@example.com');

INSERT INTO ingrediente (nombre) VALUES
('Queso'),
('Tomate'),
('Pepperoni'),
('Champiñones'),
('Jamón');

INSERT INTO producto (nombre, categoria, precio) VALUES
('Pizza Margherita', 'pizza', 50000),
('Pizza Pepperoni', 'pizza', 56000),
('Pizza Hawaiana', 'pizza', 60000),
('Panzarotti de Queso', 'panzarotti', 32000),
('Panzarotti de Carne', 'panzarotti', 38000);

INSERT INTO producto_ingrediente (id_producto, id_ingrediente) VALUES
(1, 1), (1, 2),
(2, 1), (2, 2), (2, 3),
(3, 1), (3, 2), (3, 5),
(4, 1),
(5, 1), (5, 5);

INSERT INTO adicion (nombre, precio) VALUES
('Extra Queso', 8000),
('Extra Pepperoni', 12000),
('Champiñones', 6000),
('Aceitunas', 4000),
('Cebolla', 4000);

INSERT INTO combo (nombre, precio) VALUES
('Combo Familiar', 100000),
('Combo Pareja', 72000);

INSERT INTO combo_producto (id_combo, id_producto, cantidad) VALUES
(1, 1, 1), (1, 6, 2),
(2, 2, 1), (2, 7, 1);

INSERT INTO pedido (id_cliente, tipo, total) VALUES
(1, 'consumir_en_lugar', 0),
(2, 'recoger', 0),
(3, 'consumir_en_lugar', 0),
(1, 'recoger', 0),
(4, 'consumir_en_lugar', 0);

INSERT INTO detalle_pedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 1, 50000),
(2, 2, 1, 56000),
(3, 3, 1, 60000),
(4, 4, 1, 32000),
(5, 5, 1, 38000);

INSERT INTO detalle_adicion (id_detalle, id_adicion) VALUES
(1, 1),
(2, 2),
(3, 3);

UPDATE pedido SET total = (
    SELECT SUM(dp.cantidad * dp.precio_unitario) + COALESCE(SUM(da.precio), 0)
    FROM detalle_pedido dp
    LEFT JOIN detalle_adicion dad ON dp.id_detalle = dad.id_detalle
    LEFT JOIN adicion da ON dad.id_adicion = da.id_adicion
    WHERE dp.id_pedido = pedido.id_pedido
) WHERE id_pedido IN (1,2,3,4,5);
