USE electronics_retail;

-- Purpose: Joins Products, Categories, and Orders to display the product name, category name, quantity sold, and date of sale of each product.
-- SELECT specifies the fields from each table to be retrieved.
-- FROM specifies the table to query (products p)
-- INNER JOIN first joins the categories table wherever the product table's category id matches the category's category id
-- INNER JOIN then joins the order items table wherever the product table's product id matches the order items table's product id
-- INNER JOIN then joins the orders table wherever the order items table's order id matches the order table's order id
SELECT
  p.product_name,
  c.category_name,
  oi.quantity AS quantity_sold,
  o.order_date
FROM
  products p
  INNER JOIN categories c ON p.category_id = c.category_id
  INNER JOIN order_items oi ON p.product_id = oi.product_id
  INNER JOIN orders o ON oi.order_id = o.order_id;
