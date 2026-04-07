USE electronics_retail;

-- Purpose: joins the products and suppliers tables, listing the product name, supplier name, and contact details.
-- SELECT specifies the fields from each table to be retrieved
-- FROM specifies which table to query (products as alias p)
-- INNER JOIN specifies the table to join (suppliers as alias s) wherever the product and supplier's supplier ID match.
SELECT
  p.product_name,
  s.supplier_name,
  s.phone,
  s.email
FROM
  products p
  INNER JOIN suppliers s ON p.supplier_id = s.supplier_id;
