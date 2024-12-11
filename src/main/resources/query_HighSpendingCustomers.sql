SELECT c.name, c.email, SUM(o.total_amount) AS total_amount
FROM customers c
JOIN public.orders o on c.customer_id = o.customer_id
JOIN public.order_details od on o.order_id = od.order_id
GROUP BY c.email, c.name
HAVING SUM(o.total_amount) > 500.00
ORDER BY total_amount DESC