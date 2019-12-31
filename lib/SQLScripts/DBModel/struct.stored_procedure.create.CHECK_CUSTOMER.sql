DELIMITER $$

CREATE PROCEDURE CHECK_CUSTOMER(
	naturalid INT UNSIGNED,
    legalid INT UNSIGNED
)
BEGIN
	IF NOT (ISNULL(naturalid) XOR ISNULL(legalid)) THEN
		 SIGNAL SQLSTATE '45000'
		 	SET MESSAGE_TEXT = 'Customer must be a, and only one, legal or a natural person.';
    END IF;
END$$

DELIMITER ;