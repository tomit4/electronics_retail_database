USE electronics_retail;

SELECT
  c.category_name,
  SUM(p.quantity_on_hand) AS total_stock
FROM
  products p
  JOIN categories c ON p.category_id = c.category_id
GROUP BY
  c.category_name
HAVING
  SUM(p.quantity_on_hand) > 10;
