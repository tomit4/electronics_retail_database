USE electronics_retail;

-- Purpose: Retrieves all products that are out of stock (quantity = 0).
-- SELECT retrieves the specified fields to display (product_name, category_id, unit_price, quantity_on_hand)
-- FROM specifies which table to query for the desired data (products).
-- WHERE establishes a boolean comparison expression to filter results (where quantity = 0).
SELECT
  product_name,
  category_id,
  unit_price,
  quantity_on_hand
FROM
  products
WHERE
  quantity_on_hand = 0;
