SELECT o.id AS order_number, SUM(op.quantity * op.unit_price) AS total_price
FROM orders o
JOIN order_product op ON o.id = op.order_id
GROUP BY o.id
HAVING total_price BETWEEN 100 AND 550;