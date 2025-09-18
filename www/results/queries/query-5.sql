SELECT p.name, op.quantity, op.unit_price
FROM order_product op
JOIN products p ON op.product_id = p.id
WHERE op.order_id = 1;