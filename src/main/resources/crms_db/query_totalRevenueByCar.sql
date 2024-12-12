SELECT c.brand, c.model, SUM(r.total_cost) AS total_revenue
FROM cars c
JOIN rentals r on c.car_id = r.car_id
GROUP BY c.brand, c.model
ORDER BY total_revenue DESC