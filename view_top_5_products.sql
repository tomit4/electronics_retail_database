USE electronics_retail;

-- Purpose: Create a view showing the top 5 best-selling products
-- Logic:
-- LEFT JOIN ensures all products are included, even if they have no sales.
-- SUM(oi.quantity) calculates total units sold per product.
-- COALESCE(..., 0) converts NULLs to 0 for products with no sales.
-- GROUP BY p.product_id aggregates sales at the product level.
-- ORDER BY SUM(oi.quantity) DESC sorts products by units sold in descending order.
-- LIMIT 5 restricts the view to the top 5 best-selling products.
CREATE
OR REPLACE VIEW five_best_selling_products AS
SELECT
  p.product_id,
  p.product_name,
  p.category_id,
  p.supplier_id,
  p.unit_price,
  p.quantity_on_hand,
  COALESCE(SUM(oi.quantity), 0) AS total_quantity_sold
FROM
  products p
  LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY
  p.product_id
ORDER BY
  SUM(oi.quantity) DESC
LIMIT
  5;

SELECT
  *
FROM
  five_best_selling_products;
