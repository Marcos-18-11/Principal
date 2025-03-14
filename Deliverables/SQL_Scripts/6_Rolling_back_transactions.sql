START TRANSACTION;

INSERT INTO rental (rental_date, inventory_id, customer_id) 
VALUES (CURDATE(), 1000, 1);  -- Assuming inventory_id 1000 is out of stock.

UPDATE inventory 
SET quantity_in_stock = quantity_in_stock - 1 
WHERE inventory_id = 1000;

ROLLBACK;
SELECT COUNT(*) AS rented_copies
FROM rental
WHERE inventory_id = 1000 AND return_date IS NULL;