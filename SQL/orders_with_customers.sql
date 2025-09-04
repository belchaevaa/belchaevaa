Задача: Показать список заказов с именами клиентов
SELECT orders.order_id, orders.order_date, customers.company_name AS customer_name, customers.contact_name
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
ORDER BY orders.order_date DESC;