use sakila;

SELECT  * FROM address GROUP BY city_id ORDER BY country_id;
-- seleciono todas las peliculas
select * from film;
-- las ordeno por la duracion de las rentas
select * from film order by rental_duration;
-- Multiplicar rental_duration por rental_rate

SELECT title, language_id FROM film;

SELECT title, name FROM film, language; 


SELECT film.title as TituloDePeli FROM film INNER JOIN language on language.name = film.title Order by TituloDePeli;

SELECT customer_id, SUM(amount) AS total_dia FROM payment WHERE payment_date BETWEEN '2005-06-15 00:00:00' AND '2005-06-15 23:59:59' GROUP BY customer_id ORDER BY total_dia DESC;

