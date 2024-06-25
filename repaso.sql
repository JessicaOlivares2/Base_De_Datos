--consultas de seleccion (SELECT)

combinacion de tablas (JOIN y on)

 SELECT name, Composer, milliseconds  from tracks t
join albums a ON t.AlbumId = a.AlbumId

eliminacion de repetidos (DISTINCT)

SELECT DISTINCT BillingCity FROM invoices
WHERE BillingState is not NULL
ORDER BY BillingCity DESC;

agrupamientos (GROUP BY)

SELECT city, c.country FROM city p
JOIN country c on p.country_id = c.country_id
GROUP by c.country_id

SELECT c.country, count(city) as cantidad_de_ciudades FROM city o
JOIN country c ON o.country_id = c.country_id
GROUP by c.country_id
ORDER by cantidad_de_ciudades DESC

SELECT country_name, r.region_name FROM countries c
JOIN regions r on c.region_id = r.region_id
GROUP by c.country_id

filtrado (WHERE and HAVING)
HAVING = GROUP by
WHERE =  sin GROUP

SELECT count(country_name) as paises_cantidad, region_name as nombre_region FROM countries c
JOIN regions r on c.region_id = r.region_id
GROUP BY r.region_id
HAVING paises_cantidad > 5

SELECT title, rating, replacement_cost FROM film
WHERE rating like 'PG' OR rating like 'PG-13'
ORDER by replacement_cost DESC, title ASC;

funciones de agreagacion (count, avg , min, max  )

SELECT max(return_date) as actual, min(return_date) as vieja  FROM rental

avg
 La función AVG devuelve el valor medio de una columna de tipo numérico.

SELECT AVG(precio)
AS preciomedio
FROM pedidos

count
SELECT title , count(actor_id) as cant_actor from film f
JOIN film_actor a on f.film_id = a.actor_id
GROUP by a.actor_id
ORDER by  cant_actor ASC
limit 10

operadores (=, <,>, <=,>=, !=; LIKE , %, IS NULL , IS NOT NULL,
 BETWEEN, NOT , OR , AND , IN, NOT IN )

-- =! (no igual a )
SELECT VALUE product FROM AdventureWorksEntities.Products
    AS product WHERE product.ListPrice != @price

-- % (pa dividir)
SELECT VALUE product FROM AdventureWorksEntities.Products
  AS product WHERE product.ListPrice = @price1 % @price2

-- = (true si la expresión izquierda es igual a la expresión derecha; de lo contrario, false.)
SELECT VALUE product FROM AdventureWorksEntities.Products
    AS product WHERE product.ListPrice = @price

-- LIKE (Es como un comodin) (%of% = entre o antes o despues)
-- (%of) (que termine con of si o si)
-- (of%) (que empieze con of si o si y despues lo que sea)
SELECT Title FROM albums
WHERE Title LIKE "%of%"
ORDER BY Title ASC ;

-- IS NULL
 SELECT name, Milliseconds  from  tracks
where Composer is NULL and Milliseconds > 2900000

-- NOT NULL
 SELECT  LastName, FirstName,Company  from  customers
where Company is NOT NULL

-- NOT IN (En la consulta que viene sin  rotornar todos los productos de tu tienda sin incluir los que tengan como id 1,2,3,4,7 0 9)
SELECT * FROM products WHERE `id_product` NOT IN (1,2,3,4,7,9)

-- LIMIT ( se utiliza para limitr el numero de filas que se recupera en una consulta )
SELECT *
FROM empleados
LIMIT 3; -- trae los primeros 3

-- OFFSET ( usualmente va despues del limit y es que como que saltea las filas que le pidas )
 select * from libros limit 4 offset 5;
 -- aca recupera desde la fila 5 y te muestra 4 pa adelante osea recuperamos cuatro resultados desde el 5 al 8

 -- AS (con as podemos renombrar columnas)
 SELECT last_name AS apellido from customers

 -- ORDER BY
 -- ASC ordena de forma asencidiente : de menor a mayor
 -- DESC ordena de forma desendiente : de may
left JOIN
--muestra los valores nulos de las tablas
ejemplo 1
SELECT E.FirstName as 'nombre', D.State as 'compania' FROM employees E
LEFT JOIN customers D ON E.EmployeeId = D.CustomerId
--left join es mostrar los valores nulos de la tabla izquierda y normales
--muestra todo de la tabla izquierda
ejemplo 2 : 
SELECT name, Composer, Title FROM tracks t
left JOIN albums a ON t.AlbumId = a.AlbumId
--REPASO DE CONSULTAS
