SELECT c.first_name, c.last_name, COUNT(o.id) AS number_of_orders
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.id;