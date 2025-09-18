SELECT SUM(op.quantity * op.unit_price) AS total_today
FROM orders o
JOIN order_product op ON o.id = op.order_id
WHERE DATE(o.order_date) = CURDATE();