
START TRANSACTION;
SELECT COUNT(*) AS rented_copies
FROM rental
WHERE inventory_id = 5 AND return_date IS NULL;
INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id) 
VALUES (CURDATE(), 5, 1, 1);

UPDATE inventory 
SET quantity_in_stock = quantity_in_stock - 1 
WHERE inventory_id = 5;

COMMIT;