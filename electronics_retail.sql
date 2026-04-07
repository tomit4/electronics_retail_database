DROP DATABASE IF EXISTS electronics_retail;

CREATE DATABASE IF NOT EXISTS electronics_retail;

USE electronics_retail;

/******************
* DDL Statements
******************/
DROP TABLE IF EXISTS suppliers;

DROP TABLE IF EXISTS customers;

DROP TABLE IF EXISTS categories;

DROP TABLE IF EXISTS products;

DROP TABLE IF EXISTS orders;

DROP TABLE IF EXISTS order_items;

CREATE TABLE suppliers (
  supplier_id int AUTO_INCREMENT NOT NULL,
  supplier_name varchar(100) NOT NULL,
  phone varchar(15) NOT NULL,
  email varchar(100) NOT NULL,
  PRIMARY KEY (supplier_id)
);

CREATE TABLE customers (
  customer_id int AUTO_INCREMENT NOT NULL,
  customer_name varchar(100) NOT NULL,
  phone varchar(15) NOT NULL,
  email varchar(100) NOT NULL,
  PRIMARY KEY (customer_id)
);

CREATE TABLE categories (
  category_id int AUTO_INCREMENT NOT NULL,
  category_name varchar(50),
  PRIMARY KEY (category_id)
);

CREATE TABLE products (
  product_id int AUTO_INCREMENT NOT NULL,
  product_name varchar(100) NOT NULL,
  category_id int,
  supplier_id int,
  unit_price decimal(10, 2) DEFAULT NULL,
  quantity_on_hand int,
  PRIMARY KEY (product_id),
  FOREIGN KEY (category_id) REFERENCES categories (category_id),
  FOREIGN KEY (supplier_id) REFERENCES suppliers (supplier_id)
);

CREATE TABLE orders (
  order_id int AUTO_INCREMENT NOT NULL,
  customer_id int,
  order_date date NOT NULL DEFAULT (CURRENT_DATE),
  order_time timestamp NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

CREATE TABLE order_items (
  order_item_id int AUTO_INCREMENT NOT NULL,
  order_id int,
  product_id int,
  quantity int,
  unit_price decimal(10, 2),
  line_total decimal(10, 2),
  PRIMARY KEY (order_item_id),
  FOREIGN KEY (order_id) REFERENCES orders (order_id),
  FOREIGN KEY (product_id) REFERENCES products (product_id)
);

/******************
* DML Statements
******************/
/* INSERT Statements */
INSERT INTO
  suppliers (supplier_name, phone, email)
VALUES
  (
    "TechCorp",
    "555-123-4567",
    "contact@techcorp.com"
  ),
  ("GigaTech", "555-234-5678", "sales@gigatech.com"),
  (
    "ElectroHub",
    "555-345-6789",
    "support@electrohub.com"
  ),
  (
    "DeviceWorld",
    "555-456-7890",
    "info@deviceworld.com"
  ),
  (
    "NextGen Electronics",
    "555-567-8901",
    "contact@nextgen.com"
  );

INSERT INTO
  customers (customer_name, phone, email)
VALUES
  (
    "Alice Johnson",
    "555-987-6543",
    "alice@example.com"
  ),
  ("Bob Smith", "555-876-5432", "bob@example.com"),
  (
    "Carol Davis",
    "555-765-4321",
    "carol@example.com"
  ),
  ("David Lee", "555-654-3210", "david@example.com"),
  ("Eve Martinez", "555-543-2109", "eve@example.com");

INSERT INTO
  categories (category_name)
VALUES
  ("Laptops"),
  ("Smartphones"),
  ("Tablets"),
  ("Accessories"),
  ("Desktops");

INSERT INTO
  products (
    product_name,
    category_id,
    supplier_id,
    unit_price,
    quantity_on_hand
  )
VALUES
  ("UltraLaptop X1", 1, 1, 1299.99, 50),
  ("Smartphone Pro 12", 2, 2, 999.99, 100),
  ("Tablet Max", 3, 3, 799.99, 75),
  ("Wireless Mouse", 4, 4, 29.99, 200),
  ("Gaming Desktop X", 4, 1, 1999.99, 25);

INSERT INTO
  orders (customer_id, order_date, order_time)
VALUES
  (1, "2026-04-06", "2026-04-06 10:15:00"),
  (2, "2026-04-06", "2026-04-06 11:00:00"),
  (3, "2026-04-06", "2026-04-06 11:30:00"),
  (4, "2026-04-06", "2026-04-06 12:00:00"),
  (5, "2026-04-06", "2026-04-06 12:30:00");

INSERT INTO
  order_items (
    order_id,
    product_id,
    quantity,
    unit_price,
    line_total
  )
VALUES
  (1, 1, 2, 1299.99, 2599.98),
  (2, 2, 1, 999.99, 999.99),
  (3, 3, 1, 799.99, 1599.98),
  (4, 4, 1, 29.99, 59.98),
  (5, 4, 2, 1999.99, 3999.98);

/* UPDATE Statements */
UPDATE suppliers
SET
  phone = "555-111-2222"
WHERE
  supplier_id = 1;

UPDATE customers
SET
  email = "alice.johnson@newmail.com"
WHERE
  customer_id = 1;

UPDATE categories
SET
  category_name = "Laptop Computers"
WHERE
  category_id = 1;

UPDATE products
SET
  unit_price = 1349.99
WHERE
  product_id = 1;

UPDATE orders
SET
  order_date = "2026-04-07"
WHERE
  order_id = 1;

UPDATE order_items
SET
  quantity = 3,
  line_total = 3899.97
WHERE
  order_item_id = 1;

/* DELETE Statements */
DELETE FROM order_items
WHERE
  order_item_id = 5;

DELETE FROM orders
WHERE
  order_id = 5;

DELETE FROM products
WHERE
  product_id = 5;

DELETE FROM categories
WHERE
  category_id = 5;

DELETE FROM suppliers
WHERE
  supplier_id = 5;

DELETE FROM customers
WHERE
  customer_id = 5;
