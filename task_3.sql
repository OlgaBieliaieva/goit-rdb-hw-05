USE hw_3;

SELECT order_id, AVG (quantity)
FROM (SELECT * FROM order_details WHERE quantity > 10) AS temp_table
GROUP BY order_id;