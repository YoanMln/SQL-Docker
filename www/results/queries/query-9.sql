SELECT o.id AS order_number, SUM(op.quantity * op.unit_price) AS total_price
FROM orders o
JOIN order_product op ON o.id = op.order_id
JOIN customers c ON o.customer_id = c.id
WHERE c.first_name = 'Charlize'
GROUP BY o.id;