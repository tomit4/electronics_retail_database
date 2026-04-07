USE electronics_retail;

-- Purpose: Finds all categories with more than 10 products in stock.
-- SELECT specifies the fields to be returned
-- SUM sums up the product table's quantity on hand amounts (alias as total_stock)
-- FROM specifies the table to be queried (products as alias p)
-- JOIN joins the products table and categories table wherever their category IDs match
-- GROUP BY groups the results according by their category name
-- HAVING filters the results after having grouped the results according to some boolean condition
-- SUM comparison filters the results, returning only products which have a total_stock of greater than 10.
SELECT
  c.category_name,
  SUM(p.quantity_on_hand) AS total_stock
FROM
  products p
  JOIN categories c ON p.category_id = c.category_id
GROUP BY
  c.category_name
HAVING
  SUM(p.quantity_on_hand) > 10;
