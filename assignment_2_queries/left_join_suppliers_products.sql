USE electronics_retail;

-- Purpose: lists all suppliers and any products they supply (including those with none).
-- SELECT specifies the fields to be returned
-- COALESCE displays the text "No Products" if the return value for the product's product name is NULL.
-- FROM specifies the table to be queried (suppliers as alias s)
-- LEFT JOIN joins the suppliers table to the products table, where products will be filled in with corresponding values from the products table wherever their supplier IDs match.
-- ORDER BY orders the table alphabetically by the supplier table's supplier_name field.
SELECT
  s.supplier_name,
  COALESCE(p.product_name, "No Products") AS product_name
FROM
  suppliers s
  LEFT JOIN products p ON s.supplier_id = p.supplier_id
ORDER BY
  s.supplier_name;
