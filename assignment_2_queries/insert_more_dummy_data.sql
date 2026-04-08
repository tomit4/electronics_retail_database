USE electronics_retail;

INSERT INTO
  suppliers (supplier_name, phone, email)
VALUES
  (
    "Alpha Electronics",
    "555-111-0001",
    "contact@alpha.com"
  ),
  ("Beta Gadgets", "555-111-0002", "sales@beta.com"),
  (
    "Gamma Tech",
    "555-111-0003",
    "info@gammatech.com"
  );

INSERT INTO
  customers (customer_name, phone, email)
VALUES
  (
    "Frank Wilson",
    "555-222-0001",
    "frank@example.com"
  ),
  ("Grace Kim", "555-222-0002", "grace@example.com"),
  (
    "Henry Adams",
    "555-222-0003",
    "henry@example.com"
  ),
  ("Ivy Chen", "555-222-0004", "ivy@example.com"),
  ("Jack Brown", "555-222-0005", "jack@example.com");

INSERT INTO
  categories (category_name)
VALUES
  ("Monitors"),
  ("Networking");

INSERT INTO
  products (
    product_name,
    category_id,
    supplier_id,
    unit_price,
    quantity_on_hand
  )
VALUES
  ("4K Monitor", 6, 6, 399.99, 15),
  ("HD Monitor", 6, 7, 199.99, 25),
  ("Gaming Router", 7, 7, 249.99, 30),
  ("WiFi Extender", 7, 6, 89.99, 0), -- OUT OF STOCK
  ("Mechanical Keyboard", 4, 2, 129.99, 40),
  ("USB-C Cable", 4, 3, 19.99, 0), -- OUT OF STOCK
  ("External SSD 1TB", 4, 1, 149.99, 60),
  ("Budget Smartphone", 2, 6, 299.99, 80),
  ("Flagship Smartphone", 2, 2, 1199.99, 20),
  ("Business Laptop", 1, 3, 899.99, 35),
  ("Chromebook", 1, 7, 349.99, 50),
  ("Graphics Tablet", 3, 6, 499.99, 10);

INSERT INTO
  orders (customer_id, order_date, order_time)
VALUES
  (6, "2026-04-07", "2026-04-07 13:00:00"),
  (7, "2026-04-07", "2026-04-07 13:30:00"),
  (8, "2026-04-07", "2026-04-07 14:00:00"),
  (9, "2026-04-07", "2026-04-07 14:30:00"),
  (10, "2026-04-07", "2026-04-07 15:00:00");

INSERT INTO
  order_items (
    order_id,
    product_id,
    quantity,
    unit_price,
    line_total
  )
VALUES
  (6, 6, 1, 399.99, 399.99),
  (6, 10, 2, 899.99, 1799.98),
  (7, 7, 1, 199.99, 199.99),
  (7, 12, 1, 19.99, 19.99),
  (8, 8, 2, 249.99, 499.98),
  (8, 9, 1, 89.99, 89.99),
  (9, 13, 1, 129.99, 129.99),
  (9, 14, 1, 149.99, 149.99),
  (10, 15, 1, 299.99, 299.99),
  (10, 16, 1, 1199.99, 1199.99);
