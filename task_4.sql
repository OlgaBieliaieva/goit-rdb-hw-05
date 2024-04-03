USE hw_3;

WITH temp_table AS (SELECT * FROM order_details WHERE quantity > 10)
SELECT order_id, AVG (quantity)
FROM temp_table
GROUP BY order_id;