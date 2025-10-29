-- CHALLENGE STATEMENT FUNDAMENTALS
---How many payment transactions were greater than $5.00?
SELECT COUNT (*) AS payments_over_5
FROM payment
WHERE amount > 5;

---How many actors have a first name that starts with the letter P?
SELECT COUNT (*) AS actors_P
FROM actor
WHERE first_name LIKE 'P%';

---How many unique districts are our customers from?
SELECT COUNT (DISTINCT(district)) AS unique_districts
FROM address;

---Retrieve the list of names for those distinct districts from the previous question.
SELECT DISTINCT district AS unique_districts_names
FROM address
ORDER BY district;

---How many films have a rating of R and a replacement cost between $5 and $15?
SELECT COUNT (*) AS Rrating_between5_15
FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

---How many films have the word Truman somewhere in the title?
SELECT COUNT (*) AS num_Truman_films
FROM film
WHERE title LIKE '%Truman%';
