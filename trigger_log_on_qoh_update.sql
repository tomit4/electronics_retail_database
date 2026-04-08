USE electronics_retail;

-- Purpose: Track changes to product inventory and prevent negative quantities
-- Logic:
-- The inventory_audit table stores a log of QOH (Quantity On Hand) changes,
-- including old and new values, timestamp, and user.
-- The trigger trigger_qoh_udpate fires BEFORE any update to the products table.
-- If the new quantity_on_hand would be negative, it is set to 0 to prevent invalid
-- inventory values.
-- Every update inserts a record into inventory_audit capturing the product ID,
-- previous quantity, and new quantity.
-- The UPDATE statement tests the trigger by modifying product_id 6, and the
-- SELECT verifies the audit entry
CREATE TABLE IF NOT EXISTS inventory_audit (
  audit_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  old_quantity INT NOT NULL,
  new_quantity INT NOT NULL,
  change_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  changed_by VARCHAR(100) DEFAULT "system",
  FOREIGN KEY (product_id) REFERENCES products (product_id)
);

DELIMITER $$

DROP TRIGGER IF EXISTS trigger_qoh_udpate;

CREATE TRIGGER trigger_qoh_udpate
BEFORE UPDATE
ON products FOR EACH ROW
BEGIN
  IF NEW.quantity_on_hand < 0 THEN
    SET NEW.quantity_on_hand = 0;
  END IF;
    INSERT INTO inventory_audit (product_id, old_quantity, new_quantity)
    VALUES (OLD.product_id, OLD.quantity_on_hand, NEW.quantity_on_hand);
END$$

DELIMITER ;

-- Test the Trigger
UPDATE products
SET quantity_on_hand = 10
WHERE product_id = 6;

SELECT * FROM inventory_audit WHERE product_id = 6;
