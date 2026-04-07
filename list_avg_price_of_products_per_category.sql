USE electronics_retail;

-- Purpose: Displays the average price of products per category.
-- SELECT specifies the fields to be returned: category name and average price.
-- CAST is used to format the average price to two decimal places for readability.
-- FROM specifies the table to query (products as alias p).
-- JOIN joins the products table with the categories table wherever the category IDs match.
-- GROUP BY groups the results by category name so that the AVG function calculates the average price per category.
SELECT
  c.category_name,
  CAST(AVG(p.unit_price) AS DECIMAL(10, 2)) AS avg_price
FROM
  products p
  JOIN categories c ON p.category_id = c.category_id
GROUP BY
  c.category_name;
