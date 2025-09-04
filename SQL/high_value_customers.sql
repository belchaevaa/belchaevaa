Задача: Найти клиентов, у которых общая сумма заказов больше 10,000
SELECT customers.customer_id, customers.company_name,
       SUM(order_details.unit_price * order_details.quantity) AS total_spent
FROM customers 
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY customers.customer_id, customers.company_name
HAVING SUM(order_details.unit_price * order_details.quantity) > 10000
ORDER BY total_spent DESC;