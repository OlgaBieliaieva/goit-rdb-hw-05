USE hw_3;
DROP FUNCTION IF EXISTS Calculate;

DELIMITER //
CREATE FUNCTION Calculate(first_param FLOAT, second_param FLOAT)
RETURNS FLOAT
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result FLOAT;
    SET result = first_param / second_param;
    RETURN result;
END //
DELIMITER ;

SELECT *, Calculate(quantity, 1) AS calc_quantity FROM order_details;