CREATE TABLE `menu`(
    `id_producto` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombre_producto` BIGINT NOT NULL,
    `tamaño` BIGINT NOT NULL,
    `ingredientes` BIGINT NOT NULL
);
CREATE TABLE `pedido`(
    `id_pedido` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cliente` BIGINT NOT NULL,
    `direccion` BIGINT NOT NULL,
    `cantidad` BIGINT NOT NULL,
    `numero` BIGINT NOT NULL,
    `valor` BIGINT NOT NULL,
    `medio_pago` BIGINT NOT NULL,
    `domicilio` BIGINT NOT NULL
);
CREATE TABLE `venta`(
    `id_venta` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `ingresos` BIGINT NOT NULL,
    `factura` BIGINT NOT NULL,
    `inventario` BIGINT NOT NULL,
    `datos` BIGINT NOT NULL
);
CREATE TABLE `cliente`(
    `id_cliente` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombre_cliente` BIGINT NOT NULL,
    `numero` BIGINT NOT NULL,
    `información` BIGINT NOT NULL,
    `cantidad_pedido` BIGINT NOT NULL,
    `pago` BIGINT NOT NULL,
    `new_column` BIGINT NOT NULL
);
CREATE TABLE `combo`(
    `id_combo` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `tamaño` BIGINT NOT NULL,
    `descuento` BIGINT NOT NULL,
    `promociones` BIGINT NOT NULL,
    `adiciones` BIGINT NOT NULL
);
CREATE TABLE `comida`(
    `id_comida` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `pizza` BIGINT NOT NULL,
    `panserotti` BIGINT NOT NULL,
    `bebidad` BIGINT NOT NULL,
    `postres` BIGINT NOT NULL
);
CREATE TABLE `tipos`(
    `id_ingrediente` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `tipos_sabor` BIGINT NOT NULL,
    `tipo_adicion` BIGINT NOT NULL,
    `tipo_bebidad` BIGINT NOT NULL,
    `tipo_postre` BIGINT NOT NULL
);
CREATE TABLE `adicion`(
    `id-extra` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `porcion` BIGINT NOT NULL,
    `personalizado` BIGINT NOT NULL,
    `adicion_ingredientes` BIGINT NOT NULL,
    `edicion_ingrediente` BIGINT NOT NULL
);
ALTER TABLE
    `menu` ADD CONSTRAINT `menu_ingredientes_foreign` FOREIGN KEY(`ingredientes`) REFERENCES `tipos`(`tipos_sabor`);
ALTER TABLE
    `comida` ADD CONSTRAINT `comida_pizza_foreign` FOREIGN KEY(`pizza`) REFERENCES `tipos`(`id_ingrediente`);
ALTER TABLE
    `menu` ADD CONSTRAINT `menu_tamaño_foreign` FOREIGN KEY(`tamaño`) REFERENCES `combo`(`id_combo`);
ALTER TABLE
    `comida` ADD CONSTRAINT `comida_id_comida_foreign` FOREIGN KEY(`id_comida`) REFERENCES `menu`(`id_producto`);
ALTER TABLE
    `pedido` ADD CONSTRAINT `pedido_cliente_foreign` FOREIGN KEY(`cliente`) REFERENCES `cliente`(`información`);
ALTER TABLE
    `venta` ADD CONSTRAINT `venta_id_venta_foreign` FOREIGN KEY(`id_venta`) REFERENCES `cliente`(`id_cliente`);
ALTER TABLE
    `combo` ADD CONSTRAINT `combo_promociones_foreign` FOREIGN KEY(`promociones`) REFERENCES `pedido`(`id_pedido`);
ALTER TABLE
    `tipos` ADD CONSTRAINT `tipos_id_ingrediente_foreign` FOREIGN KEY(`id_ingrediente`) REFERENCES `adicion`(`id-extra`);
ALTER TABLE
    `combo` ADD CONSTRAINT `combo_adiciones_foreign` FOREIGN KEY(`adiciones`) REFERENCES `adicion`(`personalizado`);
ALTER TABLE
    `pedido` ADD CONSTRAINT `pedido_cantidad_foreign` FOREIGN KEY(`cantidad`) REFERENCES `menu`(`tamaño`);
ALTER TABLE
    `venta` ADD CONSTRAINT `venta_ingresos_foreign` FOREIGN KEY(`ingresos`) REFERENCES `pedido`(`cliente`);