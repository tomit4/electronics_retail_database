USE electronics_retail;

SELECT
  product_name,
  category_id,
  unit_price,
  quantity_on_hand
FROM
  products
WHERE
  unit_price BETWEEN 100 AND 500;
