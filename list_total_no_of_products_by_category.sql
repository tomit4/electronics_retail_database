USE electronics_retail;

-- Purpose: shows the total number of products grouped by category.
-- SELECT the specified fields (category.category_name).
-- COUNT counts the amount of products using the product_id field as the counter.
-- FROM specifies the table to query (products as alias p).
-- JOIN joins the products table and the categories table wherever the two table's category IDs match.
-- GROUP BY groups the results wherever the results have the same category name.
SELECT
  c.category_name,
  COUNT(p.product_id) AS number_of_products
FROM
  products p
  JOIN categories c ON p.category_id = c.category_id
GROUP BY
  c.category_name;
