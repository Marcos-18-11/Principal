DELIMITER $$

CREATE TRIGGER prevent_film_deletion
BEFORE DELETE ON film
FOR EACH ROW
BEGIN
    DECLARE inventory_count INT;

    -- Check if there are any inventory items linked to the film
    SELECT COUNT(*) INTO inventory_count
    FROM inventory
    WHERE film_id = OLD.film_id;

    -- If inventory items exist, prevent deletion
    IF inventory_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete film: Inventory items exist for this film.';
    END IF;
END$$

DELIMITER ;