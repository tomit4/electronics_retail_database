USE electronics_retail;

-- Purpose: Calculate a 20% discounted price for the most expensive product.
-- Logic: ORDER BY unit_price DESC ensures the highest priced product is first.
-- Multiplying unit_price by 0.8 applies a 20% discount. LIMIT 1 returns only
-- the single most expensive product.
-- Expected Outcome: Displays the product name and its discounted price.
SELECT
  p.product_name AS most_expensive_product,
  p.unit_price * 0.8 AS discounted_price
FROM
  products p
ORDER BY
  p.unit_price DESC
LIMIT
  1;
