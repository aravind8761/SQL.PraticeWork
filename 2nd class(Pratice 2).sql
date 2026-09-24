CREATE DATABASE shop_db;

USE shop_db;

CREATE TABLE products
(
    product_id INT AUTO_INCREMENT NOT NULL,
    sku VARCHAR(20) NOT NULL,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(80) NOT NULL,
    brand VARCHAR(80),
    unit_price DECIMAL(12,2) NOT NULL,
    quantity_in_stock INT UNSIGNED NOT NULL DEFAULT 0,
    reorder_level INT UNSIGNED NOT NULL DEFAULT 5,
    manufacture_date DATE,
    expiry_date DATE,
    product_status VARCHAR(15) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_product_id PRIMARY KEY(product_id),
    CONSTRAINT uq_sku UNIQUE(sku),
    CONSTRAINT chk_unit_price CHECK(unit_price > 0),
    CONSTRAINT chk_expiry_date CHECK(
        expiry_date IS NULL
        OR manufacture_date IS NULL
        OR expiry_date >= manufacture_date
    ),
    CONSTRAINT chk_product_status CHECK(
        product_status IN ('ACTIVE', 'OUT_OF_STOCK', 'DISCONTINUED')
    )
);

INSERT INTO products
(sku, product_name, category, brand, unit_price,
quantity_in_stock, reorder_level, manufacture_date,
expiry_date, product_status)

VALUES
('SKU001', 'Wireless Mouse', 'Electronics', 'Logitech', 799.00,
20, 5, '2026-01-10', '2028-01-10', 'ACTIVE');

INSERT INTO products
(sku, product_name, category, brand, unit_price,
quantity_in_stock, reorder_level, manufacture_date,
expiry_date, product_status)

VALUES
('SKU002', 'Notebook', 'Stationery', 'Classmate', 60.00,
50, 10, '2026-05-01', NULL, 'ACTIVE');

INSERT INTO products
(sku, product_name, category, brand, unit_price,
quantity_in_stock, reorder_level, manufacture_date,
expiry_date, product_status)

VALUES
('SKU003', 'Keyboard', 'Electronics', 'HP', -500.00,
10, 5, '2026-02-01', '2028-02-01', 'ACTIVE');

SELECT * FROM products;