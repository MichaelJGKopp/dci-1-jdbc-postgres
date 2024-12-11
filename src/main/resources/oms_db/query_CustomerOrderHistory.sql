SELECT c.name, o.order_date, p.name, od.quantity, (od.quantity) * p.price AS total_amount
FROM customers c
JOIN public.orders o on c.customer_id = o.customer_id
JOIN public.order_details od on o.order_id = od.order_id
JOIN public.products p on p.product_id = od.product_id
WHERE c.name = 'John Doe'
ORDER BY order_date DESC, p.name