Задача: Вывести топ-5 самых продаваемых продуктов по количеству заказов
SELECT products.product_id, products.product_name, COUNT(order_details.order_id) AS total_orders
FROM products
JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_id, products.product_name
ORDER BY total_orders DESC
LIMIT 5;