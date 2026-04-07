USE electronics_retail;

SELECT
  s.supplier_name,
  COALESCE(p.product_name, "No Products") AS product_name
FROM
  suppliers s
  LEFT JOIN products p ON s.supplier_id = p.supplier_id
ORDER BY
  s.supplier_name;
