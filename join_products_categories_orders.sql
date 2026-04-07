USE electronics_retail;

SELECT
  p.product_name,
  c.category_name,
  oi.quantity AS quantity_sold,
  o.order_date
FROM
  products p
  INNER JOIN categories c ON p.category_id = c.category_id
  INNER JOIN order_items oi ON p.product_id = oi.product_id
  INNER JOIN orders o ON oi.order_id = o.order_id;
