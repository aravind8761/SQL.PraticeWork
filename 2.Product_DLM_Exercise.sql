USE shop_db;

SELECT * FROM products;

TRUNCATE TABLE products;

INSERT INTO products
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, product_status)
VALUES ('SKU-CBL-001', 'USB-C Cable', 'Accessories', 'TechLine', '399.00', '50','10', 'ACTIVE' );

INSERT INTO products
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level,manufacture_date, product_status)
VALUES ('SKU-KBD-002', 'Wireless Keyboard', 'Accessories', 'KeyPro', 1499.00, 8, 5, '2026-01-15', 'ACTIVE');

INSERT INTO products
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level,manufacture_date, expiry_date, product_status)
VALUES ('SKU-JCE-003', 'Orange Juice', 'Beverages', 'FreshDrop', 120.00, 0, 20, '2026-09-01', '2026-12-01', 'OUT_OF_STOCK');

INSERT INTO products
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, product_status)
VALUES ('SKU-NTB-004', 'A5 Notebook', 'Stationery', 'PaperNest', 75.00, 120, -25, 'ACTIVE' );

INSERT INTO products
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, product_status)
VALUES ('SKU-NTB-006', 'A5 Notebook', 'Stationery', 'PaperNest', 75.00, 120, 25, 'ACTIVE' ),
('SKU-OLD-005', 'Legacy Adapter', 'Accessories', 'WireMax', 299.00, 0, 0, 'DISCONTINUED');

UPDATE products
SET quantity_in_stock = quantity_in_stock + 60,
product_status = 'ACTIVE'
WHERE product_name = 'Orange Juice';

SELECT * FROM products;

-- ROUND(value, 2)
UPDATE products 
SET unit_price = ROUND(unit_price * 1.05, 2)
WHERE category = 'Accessories'; 

UPDATE products
SET brand = NULL
WHERE product_name = 'A5 Notebook';

UPDATE products
SET reorder_level = 15
WHERE product_status = 'ACTIVE'
  AND quantity_in_stock < 10;

UPDATE products
SET quantity_in_stock = -1
WHERE sku = 'SKU-CBL-001';

SELECT * FROM products;

SELECT * FROM products WHERE sku = 'SKU-OLD-005';

DELETE FROM products WHERE sku = 'SKU-OLD-005';

INSERT INTO products
(sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, product_status)
VALUES ('SKU-TEMP-999', 'USB-C Cable', 'Accessories', 'TechLine', '399.00', '50','10', 'ACTIVE' );

SELECT * FROM products WHERE sku = 'SKU-TEMP-999';

DELETE FROM products WHERE sku = 'SKU-TEMP-999';

SELECT * FROM products;

