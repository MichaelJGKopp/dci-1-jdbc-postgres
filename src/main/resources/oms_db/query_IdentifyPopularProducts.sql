SELECT p.name,
       SUM(od.quantity) AS total_quantity,
       p.price * SUM(od.quantity) AS total_revenue
FROM products p
JOIN public.order_details od on p.product_id = od.product_id
GROUP BY p.name, p.price
ORDER BY total_quantity DESC, total_revenue DESC
LIMIT 3