use sakila;

-- SUM(), AVG(), COUNT();
SELECT customer_id FROM payment;

SELECT COUNT(*)

-- Cantidad de rentas que tuvo el trabajador
SELECT COUNT(*) FROM payment WHERE staff_id = 1;

-- Cantidad de cliente distintos
SELECT COUNT(DISTINCT customer_id) FROM payment;

SELECT SUM(amount) AS 'Total de Rentas' FROM payment;

SELECT SUM(amount) AS 'Total de Rentas' FROM payment WHERE staff_id= 2;

-- ¿Cual cliente realizo mas rentas?
SELECT customer_id, COUNT(*) FROM payment GROUP BY customer_id ORDER BY COUNT(*) ASC;

-- Group By
-- ORDER BY ordena 
SELECT * FROM payment ORDER BY staff_id;
SELECT * FROM payment GROUP BY staff_id;

SELECT customer_id, SUM(amount) AS total FROM payment GROUP BY customer_id ORDER BY total ASC;

-- AVG() - regresa el promedio
SELECT AVG(amount) AS Promdedio FROM payment;

-- ¿Cual cliente gasto más en promedio?
SELECT customer_ id, AVG(amount) FROM payment GROUP BY customer_id ORDER BY AVG(amount) DESC;

