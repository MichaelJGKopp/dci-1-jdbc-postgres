SELECT c.brand, c.model, COUNT(r.total_cost) AS total_rental_count--, SUM(r.total_cost) AS total_paid
FROM cars c
JOIN rentals r on c.car_id = r.car_id
GROUP BY c.brand, c.model
ORDER BY total_rental_count DESC, SUM(r.total_cost) DESC
LIMIT 1