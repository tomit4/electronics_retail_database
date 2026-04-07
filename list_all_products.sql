USE electronics_retail;

-- Purpose: Displays all products, showing their product name, category ID, price, and QOH (Quantity on Hand).
-- SELECT returns all data within the specified fields.
-- FROM specifies which table to query for the desired data (products).
SELECT
  product_name,
  category_id,
  unit_price,
  quantity_on_hand
FROM
  products;
