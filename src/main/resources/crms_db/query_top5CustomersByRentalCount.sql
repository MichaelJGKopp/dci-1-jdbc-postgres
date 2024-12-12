SELECT c.name, c.address, COUNT(r.total_cost) AS total_rental_count--, SUM(r.total_cost) AS total_paid
FROM customers c
JOIN rentals r on c.customer_id = r.customer_id
GROUP BY c.name, c.address
ORDER BY total_rental_count DESC, SUM(r.total_cost) DESC
-- LIMIT 5