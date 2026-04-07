USE electronics_retail;

-- Purpose: Displays the products priced between $100 and $500.
-- SELECT the specified fields (product_name, category_id, unit_price, quantity_on_hand).
-- FROM specifies which table to query for the desired data (products).
-- WHERE specifies a boolean comparison operation to filter results
-- BETWEEN expects two values to compare the specified field (unit_price) and returns only results that are greater than or equal to the first specified value and less than or equal to the secondary value (between 100 and 500).
SELECT
  product_name,
  category_id,
  unit_price,
  quantity_on_hand
FROM
  products
WHERE
  unit_price BETWEEN 100 AND 500;
