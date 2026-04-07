USE electronics_retail;

SELECT
  c.category_name,
  COUNT(p.product_id) AS number_of_products
FROM
  products p
  JOIN categories c ON p.category_id = c.category_id
GROUP BY
  c.category_name;
