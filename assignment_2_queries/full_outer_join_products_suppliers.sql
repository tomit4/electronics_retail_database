USE electronics_retail;

-- Purpose: Simulate a FULL OUTER JOIN between suppliers and products
-- This query shows all suppliers and all products, including those that do not have a match
-- Logic: Since MariaDB does not support FULL OUTER JOIN natively, we use a UNION of a LEFT JOIN and a RIGHT JOIN
--   LEFT JOIN part ensures all suppliers appear, even if they supply no products
--   RIGHT JOIN part ensures all products appear, even if they have no supplier
--   UNION combines both result sets while removing duplicate rows, mimicking a true FULL OUTER JOIN
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
