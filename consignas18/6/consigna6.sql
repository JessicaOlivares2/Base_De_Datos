/*utilizando in y subquery pasar los paises que se encuentran en la regio africa y middle east (5 y 6)
a la nueva region*/
UPDATE countries SET region_id = 7
WHERE country_name in (
SELECT country_name from countries
where region_id = 5 or region_id = 6);
