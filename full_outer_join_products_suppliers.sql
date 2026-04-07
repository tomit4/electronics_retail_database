USE electronics_retail;

SELECT
  s.supplier_id,
  s.supplier_name,
  s.phone,
  s.email,
  p.product_id,
  p.product_name,
  p.category_id,
  p.unit_price,
  p.quantity_on_hand
FROM
  suppliers s
  LEFT JOIN products p ON s.supplier_id = p.supplier_id
UNION
SELECT
  s.supplier_id,
  s.supplier_name,
  s.phone,
  s.email,
  p.product_id,
  p.product_name,
  p.category_id,
  p.unit_price,
  p.quantity_on_hand
FROM
  suppliers s
  RIGHT JOIN products p ON s.supplier_id = p.supplier_id;
