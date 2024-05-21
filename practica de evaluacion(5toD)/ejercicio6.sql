-- 6) Contar la cantidad de autos de cada
-- marca, ordenadas desde la que tiene más 
-- autos a la que tiene menos.  Descartar
-- las marcas que tienen menos de 100 autos
SELECT name, d.car_make,count(*) as autosMarca,d.car_model,d.plate_number from person p
join drivers_license d on p.license_id = d.id	
GROUP by car_make
HAVING autosMarca >100
ORDER by autosMarca DESC