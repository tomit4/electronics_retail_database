USE electronics_retail;

-- Explanation: An Index on product_id in the order_items table
-- is created to speed up query performance. The product_id field
-- is often utilized in multiple JOIN statements when generating reports.
-- Creating an index instructs the DBMS to construct a B-Tree
-- data structure with the product_id fields as data.
-- This results in faster look up times.

CREATE INDEX product_id ON order_items(product_id);
