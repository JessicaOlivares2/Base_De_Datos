-- 6) Contar la cantidad de autos de cada
-- marca, ordenadas desde la que tiene más 
-- autos a la que tiene menos.  Descartar
-- las marcas que tienen menos de 100 autos
SELECT  car_make,count(*) as autosMarca from drivers_license d
GROUP by car_make
HAVING autosMarca >100
ORDER by autosMarca DESC