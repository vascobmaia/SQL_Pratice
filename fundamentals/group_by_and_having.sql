-- GROUP BY CHALLENGES
---How many payments were processed by each staff member?

SELECT staff_id, COUNT(*) AS total_payments
FROM payment
GROUP BY staff_id
ORDER BY total_payments DESC;

---What is the average replacement cost for each MPAA film rating?

SELECT rating, ROUND(AVG(replacement_cost), 2) AS avg_rating_cost
FROM film
GROUP BY rating;

---What are the customer IDs of the top five customers based off total expenditure or total spend?

SELECT customer_id, SUM(amount) AS top5_expenditure_costumers
FROM payment
GROUP BY customer_id
ORDER BY top5_expenditure_costumers DESC
LIMIT 5; 

---Which customer IDs have 40 or more payment transactions?

SELECT customer_id, COUNT (payment_id) 
FROM payment
GROUP BY customer_id
HAVING COUNT (payment_id) >= 40;

---Which customer IDs have spent more than $100 in payment transactions with staff?

SELECT customer_id, SUM (amount) 
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM (amount) >100