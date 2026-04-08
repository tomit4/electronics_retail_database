USE electronics_retail;

-- Purpose: List all orders sorted by purchase month in descending order.
-- Logic: YEAR() and MONTH() functions extract the year and month from
-- order_date. ORDER BY uses these to sort most recent months first.
-- Expected Outcome: Orders are displayed with newest purchase months at
-- the top, facilitating chronological analysis of sales activity.
SELECT
  o.order_id,
  o.customer_id,
  o.order_date,
  o.order_time
FROM
  orders o
ORDER BY
  YEAR (o.order_date) DESC,
  MONTH (o.order_date) DESC;
