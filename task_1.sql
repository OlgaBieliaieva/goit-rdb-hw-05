USE hw_3;

SELECT *, 
(SELECT customer_id FROM orders WHERE id = order_details.order_id ) AS customer_id
FROM order_details;