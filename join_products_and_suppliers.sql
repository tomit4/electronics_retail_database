USE electronics_retail;

SELECT
  p.product_name,
  s.supplier_name,
  s.phone,
  s.email
FROM
  products p
  INNER JOIN suppliers s ON p.supplier_id = s.supplier_id;
