USE electronics_retail;

-- Purpose: Demonstrate a transaction block that updates inventory and
-- inserts a sales record in a single atomic operation.
-- Logic: START TRANSACTION begins the block; any failure before COMMIT
-- would prevent partial changes from persisting. COMMIT finalizes all
-- changes if successful.
-- Expected Outcome: Quantity_on_hand for the product is updated, a new
-- order is inserted, and the associated order_item is recorded.
START TRANSACTION;

  UPDATE products
  SET
    quantity_on_hand = 199
  WHERE
    product_id = 4;

  INSERT INTO
    orders (customer_id, order_date, order_time)
  VALUES
    (1, "2026-04-08", "2026-04-08 13:01:00");

  INSERT INTO
    order_items (
      order_id,
      product_id,
      quantity,
      unit_price,
      line_total
    )
  VALUES
    (LAST_INSERT_ID (), 4, 1, 29.99, 29.99);

COMMIT;
