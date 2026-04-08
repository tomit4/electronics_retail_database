USE electronics_retail;

-- Purpose: Calculate total sales by product category.
-- Logic: JOIN categories → products → order_items to connect sales with categories.
-- SUM(oi.unit_price * oi.quantity) computes total revenue per category.
-- GROUP BY category_name aggregates totals for each category.
-- Expected Outcome: Each category with its total sales amount.
SELECT
  c.category_name,
  SUM(oi.unit_price * oi.quantity) as total_sales
FROM
  categories c
  JOIN products p ON p.category_id = c.category_id
  JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY
  c.category_name;
