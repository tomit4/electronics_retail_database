USE electronics_retail;

-- Purpose: Format product names and supplier contact info into a single
-- string for easy reading and reporting.
-- Logic: CONCAT combines product name, supplier name, phone, and email.
-- UPPER is used to capitalize product names for emphasis.
-- Expected Outcome: Each row displays a product with its supplier and
-- contact information in a single formatted string.
SELECT
  CONCAT (
    "Product: ",
    UPPER(p.product_name),
    " | Supplier: ",
    s.supplier_name,
    " | Contact: ",
    s.phone,
    ", ",
    s.email
  ) as products_with_supplier_contact_info
FROM
  products p
  JOIN suppliers s ON p.supplier_id = s.supplier_id;
