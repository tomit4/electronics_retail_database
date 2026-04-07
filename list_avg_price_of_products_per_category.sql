USE electronics_retail;

SELECT
  c.category_name,
  CAST(AVG(p.unit_price) AS DECIMAL(10, 2)) AS avg_price
FROM
  products p
  JOIN categories c ON p.category_id = c.category_id
GROUP BY
  c.category_name;
