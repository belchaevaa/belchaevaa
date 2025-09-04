-- Задача: Найти всех пользователей, которые сделали хотя бы 1 заказ
SELECT users.customer_id, users.company_name, COUNT(orders.order_id) AS orders_count
FROM users
JOIN orders ON users.customer_id = orders.customer_id
GROUP BY users.customer_id, users.company_name
HAVING COUNT(orders.order_id) >= 1
ORDER BY orders_count DESC;