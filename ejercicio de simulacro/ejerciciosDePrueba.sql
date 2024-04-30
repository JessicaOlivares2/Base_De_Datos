1 codigo:
SELECT title FROM film
ORDER by title ASC

2 codigo:
SELECT DISTINCT title, rating FROM film
ORDER by title ASC

3 codigo:
SELECT DISTINCT title, replacement_cost,rating FROM film
WHERE rating like 'PG%'
ORDER by replacement_cost desc, title asc

4 codigo:
SELECT city, p.country FROM city c
JOIN country p ON c.country_id = p.country_id
GROUP by p.country_id

5 codigo:
SELECT  city, p.country,count(*) AS ciudades FROM city c
JOIN country p ON c.country_id = p.country_id
GROUP by p.country_id
ORDER by ciudades DESC

6 codigo:
SELECT  city, p.country,count(*) AS ciudades FROM city c
JOIN country p ON c.country_id = p.country_id
GROUP by p.country_id
HAVING ciudades > 2
ORDER by ciudades DESC

7 codigo:
SELECT
min(return_date) as vieja,
max(return_date) as actual
FROM rental
WHERE return_date IS NOT NULL

8 codigo:
SELECT  p.title, count(*) AS cantidad  FROM film_actor f
JOIN film p ON f.film_id = p.film_id
group by p.film_id
ORDER by cantidad ASC
LIMIT 10;

9 codigo;
SELECT f.title, count(*) as alquilada FROM rental r
JOIN inventory i ON r.rental_id = i.inventory_id
JOIN  film f ON r.inventory_id = f.film_id
GROUP by f.film_id
ORDER by alquilada DESC
LIMIT 1 OFFSET 2

